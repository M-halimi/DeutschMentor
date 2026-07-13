-- Advanced German Courses System (A1 → C2)
-- Phase 1: Core structure - Levels, Modules, Lessons, Vocabulary, Grammar, Exercises, Progress

-- ============================================================
-- COURSE LEVELS
-- ============================================================
create table if not exists public.course_levels (
  id text primary key,
  title text not null,
  description text,
  image_url text,
  color text,
  order_index integer not null default 0,
  is_active boolean default true,
  created_at timestamptz default now()
);

-- ============================================================
-- COURSE MODULES
-- ============================================================
create table if not exists public.course_modules (
  id uuid primary key default gen_random_uuid(),
  level_id text references public.course_levels(id) on delete cascade not null,
  title text not null,
  description text,
  objectives jsonb default '[]',
  order_index integer not null default 0,
  estimated_hours numeric(4,1) default 1.0,
  is_published boolean default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_course_modules_level on public.course_modules(level_id);

-- ============================================================
-- COURSE LESSONS
-- ============================================================
create table if not exists public.course_lessons (
  id uuid primary key default gen_random_uuid(),
  module_id uuid references public.course_modules(id) on delete cascade not null,
  title text not null,
  description text,
  topic text,
  objectives jsonb default '[]',
  duration_minutes integer default 30,
  order_index integer not null default 0,
  is_published boolean default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_course_lessons_module on public.course_lessons(module_id);

-- ============================================================
-- LESSON VOCABULARY
-- ============================================================
create table if not exists public.lesson_vocabulary (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  german_word text not null,
  arabic_translation text not null,
  english_translation text not null,
  article text,
  plural text,
  part_of_speech text default 'noun',
  example_sentence text,
  example_translation text,
  pronunciation_url text,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create index if not exists idx_lesson_vocabulary_lesson on public.lesson_vocabulary(lesson_id);

-- ============================================================
-- LESSON GRAMMAR
-- ============================================================
create table if not exists public.lesson_grammar (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  explanation text not null,
  rules jsonb default '[]',
  examples jsonb default '[]',
  common_mistakes jsonb default '[]',
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create index if not exists idx_lesson_grammar_lesson on public.lesson_grammar(lesson_id);

-- ============================================================
-- LESSON EXERCISES
-- ============================================================
create table if not exists public.lesson_exercises (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  exercise_type text not null check (exercise_type in ('multiple_choice', 'fill_gap', 'matching', 'sentence_order', 'translation')),
  question text not null,
  options jsonb default '[]',
  correct_answer text not null,
  explanation text,
  points integer default 1,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create index if not exists idx_lesson_exercises_lesson on public.lesson_exercises(lesson_id);

-- ============================================================
-- LESSON TEST QUESTIONS
-- ============================================================
create table if not exists public.lesson_test_questions (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  question_type text not null check (question_type in ('multiple_choice', 'true_false', 'fill_blank', 'matching')),
  question text not null,
  options jsonb default '[]',
  correct_answer text not null,
  points integer default 1,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create index if not exists idx_lesson_test_questions_lesson on public.lesson_test_questions(lesson_id);

-- ============================================================
-- USER COURSE PROGRESS
-- ============================================================
create table if not exists public.user_course_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  lesson_id uuid references public.course_lessons(id) on delete cascade,
  module_id uuid references public.course_modules(id) on delete cascade,
  completed boolean default false,
  score numeric(5,2),
  time_spent_minutes integer default 0,
  completed_at timestamptz,
  created_at timestamptz default now(),
  unique(user_id, lesson_id)
);

create index if not exists idx_user_course_progress_user on public.user_course_progress(user_id);
create index if not exists idx_user_course_progress_lesson on public.user_course_progress(lesson_id);

-- ============================================================
-- USER LESSON RESULTS
-- ============================================================
create table if not exists public.user_lesson_results (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  score integer not null,
  total_points integer not null,
  answers jsonb default '[]',
  passed boolean default false,
  attempt_number integer default 1,
  completed_at timestamptz default now(),
  created_at timestamptz default now()
);

create index if not exists idx_user_lesson_results_user on public.user_lesson_results(user_id);
create index if not exists idx_user_lesson_results_lesson on public.user_lesson_results(lesson_id);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================
alter table public.course_levels enable row level security;
alter table public.course_modules enable row level security;
alter table public.course_lessons enable row level security;
alter table public.lesson_vocabulary enable row level security;
alter table public.lesson_grammar enable row level security;
alter table public.lesson_exercises enable row level security;
alter table public.lesson_test_questions enable row level security;
alter table public.user_course_progress enable row level security;
alter table public.user_lesson_results enable row level security;

-- Course content: read-only for authenticated users
create policy "Authenticated users can view course levels"
  on public.course_levels for select
  using (auth.role() = 'authenticated' and is_active = true);

create policy "Authenticated users can view course modules"
  on public.course_modules for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Authenticated users can view course lessons"
  on public.course_lessons for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Authenticated users can view lesson vocabulary"
  on public.lesson_vocabulary for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can view lesson grammar"
  on public.lesson_grammar for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can view lesson exercises"
  on public.lesson_exercises for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can view lesson test questions"
  on public.lesson_test_questions for select
  using (auth.role() = 'authenticated');

-- Progress: users can only see their own
create policy "Users can view their own course progress"
  on public.user_course_progress for select
  using (auth.uid() = user_id);

create policy "Users can insert their own course progress"
  on public.user_course_progress for insert
  with check (auth.uid() = user_id);

create policy "Users can update their own course progress"
  on public.user_course_progress for update
  using (auth.uid() = user_id);

-- Test results: users can only see their own
create policy "Users can view their own lesson results"
  on public.user_lesson_results for select
  using (auth.uid() = user_id);

create policy "Users can insert their own lesson results"
  on public.user_lesson_results for insert
  with check (auth.uid() = user_id);

-- Admin full access
create policy "Admins have full access to course levels"
  on public.course_levels for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to course modules"
  on public.course_modules for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to course lessons"
  on public.course_lessons for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to lesson vocabulary"
  on public.lesson_vocabulary for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to lesson grammar"
  on public.lesson_grammar for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to lesson exercises"
  on public.lesson_exercises for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to lesson test questions"
  on public.lesson_test_questions for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to user course progress"
  on public.user_course_progress for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to user lesson results"
  on public.user_lesson_results for all
  using (auth.jwt() ->> 'role' = 'admin');

-- ============================================================
-- SEED: Course Levels (A1 → C2)
-- ============================================================
insert into public.course_levels (id, title, description, image_url, color, order_index) values
('A1', 'Beginner', 'Start your German journey from zero. Learn basic greetings, introductions, and everyday phrases.', NULL, 'from-green-500 to-emerald-600', 1),
('A2', 'Elementary', 'Build confidence with common situations: shopping, eating out, talking about your daily routine.', NULL, 'from-blue-500 to-cyan-600', 2),
('B1', 'Intermediate', 'Handle most everyday situations. Express opinions, talk about experiences, and manage simple work conversations.', NULL, 'from-yellow-500 to-orange-600', 3),
('B2', 'Upper Intermediate', 'Speak fluently and spontaneously. Discuss complex topics, argue positions, and understand detailed texts.', NULL, 'from-purple-500 to-violet-600', 4),
('C1', 'Advanced', 'Express yourself clearly and well-structured on complex subjects. Use German effectively in professional and academic settings.', NULL, 'from-red-500 to-rose-600', 5),
('C2', 'Mastery', 'Near-native proficiency. Understand virtually everything heard or read. Express yourself spontaneously with precision.', NULL, 'from-amber-500 to-yellow-600', 6)
on conflict (id) do nothing;

-- ============================================================
-- SEED: A1 Module 1 - "Hallo! Erste Schritte" (Hello! First Steps)
-- ============================================================
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

-- Lessons
insert into public.course_lessons (id, module_id, title, description, topic, objectives, duration_minutes, order_index, is_published) values
(
  '00000000-0000-0000-0000-000000000010',
  '00000000-0000-0000-0000-000000000001',
  'Begrüßungen und Vorstellungen',
  'Learn how to greet people, say goodbye, and introduce yourself in German.',
  'Greetings & Introductions',
  '["Use formal and informal greetings", "Introduce yourself with name and origin", "Ask Wie geht es Ihnen? and respond", "Say goodbye appropriately"]',
  30, 1, true
),
(
  '00000000-0000-0000-0000-000000000011',
  '00000000-0000-0000-0000-000000000001',
  'Das Alphabet und die Aussprache',
  'Master the German alphabet, special letters, and basic pronunciation rules.',
  'Alphabet & Pronunciation',
  '["Pronounce all German letters correctly", "Read and pronounce Umlauts (ä, ö, ü)", "Pronounce ß (Eszett)", "Spell your name in German"]',
  30, 2, true
),
(
  '00000000-0000-0000-0000-000000000012',
  '00000000-0000-0000-0000-000000000001',
  'Zahlen 1–100',
  'Learn numbers from 1 to 100, how to ask for and give prices and phone numbers.',
  'Numbers',
  '["Count from 1 to 100", "Ask for and give phone numbers", "Understand prices in shops", "Say your age"]',
  25, 3, true
);

-- Lesson 1: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000010', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 1),
('00000000-0000-0000-0000-000000000010', 'Tschüss', 'وداعاً', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 2),
('00000000-0000-0000-0000-000000000010', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 3),
('00000000-0000-0000-0000-000000000010', 'Guten Abend', 'مساء الخير', 'good evening', NULL, NULL, 'phrase', 'Guten Abend, Frau Schmidt.', 'Good evening, Ms. Schmidt.', 4),
('00000000-0000-0000-0000-000000000010', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Wie ist Ihr Name?', 'What is your name?', 5),
('00000000-0000-0000-0000-000000000010', 'heißen', 'يُدعى', 'to be called', NULL, NULL, 'verb', 'Ich heiße Anna.', 'My name is Anna.', 6),
('00000000-0000-0000-0000-000000000010', 'kommen', 'يأتي من', 'to come from', NULL, NULL, 'verb', 'Ich komme aus Deutschland.', 'I come from Germany.', 7),
('00000000-0000-0000-0000-000000000010', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 8),
('00000000-0000-0000-0000-000000000010', 'der', 'أداة تعريف للمذكر', 'the (masculine)', NULL, NULL, 'article', 'der Mann', 'the man', 9),
('00000000-0000-0000-0000-000000000010', 'die', 'أداة تعريف للمؤنث', 'the (feminine)', NULL, NULL, 'article', 'die Frau', 'the woman', 10);

-- Lesson 1: Grammar
insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
('00000000-0000-0000-0000-000000000010',
'Personalpronomen (Personal Pronouns)',
'Personal pronouns replace nouns and refer to people or things. In German, they change depending on the grammatical person (I, you, he, she, it, we, they) and formality level.',
'[
  {"rule": "ich = I (first person singular)", "note": "Always lowercase unless at the start of a sentence"},
  {"rule": "du = you (informal singular)", "note": "Used with friends, family, children, and peers"},
  {"rule": "Sie = you (formal singular AND plural)", "note": "Always capitalized. Used with strangers, colleagues, authority figures"},
  {"rule": "er/sie/es = he/she/it", "note": "Grammatical gender, not biological: der Tisch → er"},
  {"rule": "wir = we", "note": "First person plural"},
  {"rule": "ihr = you (informal plural)", "note": "When addressing multiple friends/family"},
  {"rule": "sie = they", "note": "Third person plural, lowercase"}
]',
'[
  {"german": "Ich heiße Anna.", "arabic": "اسمي آنا.", "english": "My name is Anna."},
  {"german": "Woher kommst du?", "arabic": "من أين أنت؟", "english": "Where are you from?"},
  {"german": "Kommen Sie aus Berlin?", "arabic": "هل أنت من برلين؟", "english": "Do you come from Berlin?"},
  {"german": "Er heißt Peter.", "arabic": "اسمه بيتر.", "english": "His name is Peter."},
  {"german": "Wir wohnen in München.", "arabic": "نحن نسكن في ميونخ.", "english": "We live in Munich."}
]',
'[
  {"mistake": "Using \"du\" with a professor or boss", "correction": "Use \"Sie\" for formal situations", "explanation": "German has a strict formal/informal distinction."},
  {"mistake": "Forgetting to capitalize \"Sie\" (formal you)", "correction": "Always write \"Sie\" with a capital S", "explanation": "Lowercase \"sie\" means \"they\" or \"she\"."},
  {"mistake": "Saying \"Ich ist\" instead of \"Ich bin\"", "correction": "\"ich\" takes the verb form \"bin\"", "explanation": "The verb \"sein\" (to be) is irregular: ich bin, du bist, er/sie/es ist."}
]',
1);

-- Lesson 1: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'How do you say "Good morning" in German?', '["Guten Abend", "Guten Morgen", "Hallo", "Tschüss"]', 'Guten Morgen', '"Guten Morgen" is used until about 10-11 AM.', 1, 1),
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'Which pronoun do you use with a teacher in Germany?', '["du", "Sie", "ihr", "er"]', 'Sie', 'In formal situations, always use "Sie" (capital S).', 1, 2),
('00000000-0000-0000-0000-000000000010', 'fill_gap', 'Complete: Ich ___ Anna.', '["bin", "heisse", "heiße", "ist"]', 'heiße', '"Ich heiße..." means "My name is..."', 1, 3),
('00000000-0000-0000-0000-000000000010', 'fill_gap', 'Complete: Woher ___ du?', '["kommst", "kommen", "komme", "kommt"]', 'kommst', '"du" takes the -st ending: du kommst.', 1, 4),
('00000000-0000-0000-0000-000000000010', 'translation', 'Translate to German: "My name is Peter."', '[]', 'Ich heiße Peter.', 'Use "Ich heiße" + name. No article needed.', 2, 5);

-- Lesson 1: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'What is the formal way to say "you" in German?', '["du", "Sie", "ihr", "wir"]', 'Sie', 1, 1),
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'How do you say "goodbye" informally?', '["Auf Wiedersehen", "Tschüss", "Guten Tag", "Hallo"]', 'Tschüss', 1, 2),
('00000000-0000-0000-0000-000000000010', 'true_false', '"Guten Abend" means "good night".', '["True", "False"]', 'False', 1, 3),
('00000000-0000-0000-0000-000000000010', 'fill_blank', 'Complete: Ich ___ aus Deutschland.', '["komme", "kommst", "kommen", "kommt"]', 'komme', 1, 4),
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'Which is correct for introducing yourself?', '["Ich ist Anna", "Ich bin Anna", "Ich heiße Anna", "Both B and C"]', 'Both B and C', 2, 5);

-- Lesson 2: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000011', 'das Alphabet', 'الأبجدية', 'alphabet', 'das', 'die Alphabete', 'noun', 'Das deutsche Alphabet hat 26 Buchstaben.', 'The German alphabet has 26 letters.', 1),
('00000000-0000-0000-0000-000000000011', 'der Buchstabe', 'الحرف', 'letter', 'der', 'die Buchstaben', 'noun', 'A ist der erste Buchstabe.', 'A is the first letter.', 2),
('00000000-0000-0000-0000-000000000011', 'der Umlaut', 'حرف علة مُعدّل', 'umlaut', 'der', 'die Umlaute', 'noun', 'Ä, Ö und Ü sind Umlaute.', 'Ä, Ö and Ü are umlauts.', 3),
('00000000-0000-0000-0000-000000000011', 'das ß', 'حرف الإسزيت', 'sharp s (Eszett)', 'das', NULL, 'noun', 'Das ß gibt es nur im Deutschen.', 'The ß only exists in German.', 4),
('00000000-0000-0000-0000-000000000011', 'aussprechen', 'ينطق', 'to pronounce', NULL, NULL, 'verb', 'Wie spricht man das aus?', 'How do you pronounce that?', 5),
('00000000-0000-0000-0000-000000000011', 'buchstabieren', 'يهجي', 'to spell', NULL, NULL, 'verb', 'Können Sie das buchstabieren?', 'Can you spell that?', 6),
('00000000-0000-0000-0000-000000000011', 'der Laut', 'الصوت', 'sound', 'der', 'die Laute', 'noun', 'Der Laut ist schwer.', 'The sound is difficult.', 7),
('00000000-0000-0000-0000-000000000011', 'betonen', 'يؤكد/يشدد على', 'to stress', NULL, NULL, 'verb', 'Man betont die erste Silbe.', 'You stress the first syllable.', 8),
('00000000-0000-0000-0000-000000000011', 'die Silbe', 'المقطع', 'syllable', 'die', 'die Silben', 'noun', 'Das Wort hat zwei Silben.', 'The word has two syllables.', 9),
('00000000-0000-0000-0000-000000000011', 'der Vokal', 'حرف العلة', 'vowel', 'der', 'die Vokale', 'noun', 'A, E, I, O, U sind Vokale.', 'A, E, I, O, U are vowels.', 10);

-- Lesson 2: Grammar
insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
('00000000-0000-0000-0000-000000000011',
'Die Aussprache (Pronunciation)',
'German pronunciation is largely phonetic — once you learn the rules, you can read any word. Pay special attention to umlauts (ä, ö, ü) and the ß, which are unique to German.',
'[
  {"rule": "ä = like the \u0027e\u0027 in \u0027bet\u0027", "note": "Short: Männer, Long: Käse"},
  {"rule": "ö = purse your lips as if to say \u0027o\u0027 but say \u0027e\u0027", "note": "Short: öffnen, Long: schön"},
  {"rule": "ü = say \u0027ee\u0027 with rounded lips", "note": "Short: müssen, Long: über"},
  {"rule": "ß = double \u0027s\u0027 sound, always voiceless", "note": "Only after long vowels and diphthongs: Straße, heißen"},
  {"rule": "W = pronounced like English \u0027v\u0027", "note": "Was? (Vas?), wo (vo)"},
  {"rule": "V = pronounced like English \u0027f\u0027", "note": "Vater (Father), Vogel (Fogel)"},
  {"rule": "Z = pronounced like \u0027ts\u0027", "note": "Zug (Tsug), Zeit (Tseit)"}
]',
'[
  {"german": "schön", "arabic": "جميل", "english": "beautiful — ö sound", "phonetic": "shurn"},
  {"german": "Mädchen", "arabic": "فتاة", "english": "girl — ä sound", "phonetic": "MEHT-chen"},
  {"german": "über", "arabic": "فوق/عن", "english": "above/about — ü sound", "phonetic": "UE-ber"},
  {"german": "Straße", "arabic": "شارع", "english": "street — ß sound", "phonetic": "SHTRAH-sseh"},
  {"german": "Zug", "arabic": "قطار", "english": "train — z sound", "phonetic": "tsook"}
]',
'[
  {"mistake": "Pronouncing W as English \u0027w\u0027", "correction": "W in German is always pronounced like English \u0027v\u0027", "explanation": "Was? is pronounced \u0027Vas?\u0027 not \u0027Was?\u0027"},
  {"mistake": "Pronouncing V as English \u0027v\u0027", "correction": "V in German is usually pronounced like \u0027f\u0027", "explanation": "Vater is \u0027Father\u0027, Vogel is \u0027Fogel\u0027"},
  {"mistake": "Ignoring umlauts", "correction": "Umlauts change the meaning: schon (already) vs schön (beautiful)", "explanation": "Always pronounce umlauts — they distinguish words."}
]',
1);

-- Lesson 2: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'How is "W" pronounced in German?', '["Like English W", "Like English V", "Like English F", "Like English TS"]', 'Like English V', 'German W is always pronounced as V: Wasser = Vasser.', 1, 1),
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'Which letters are German Umlauts?', '["A, E, I", "Ä, Ö, Ü", "ß, Ä, Ö", "Ü, Ö, ß"]', 'Ä, Ö, Ü', 'The three umlauts are Ä, Ö, and Ü.', 1, 2),
('00000000-0000-0000-0000-000000000011', 'fill_gap', 'The ß is called ___ in German.', '["Umlaut", "Eszett", "Scharfes V", "Doppel-S"]', 'Eszett', 'ß is called "Eszett" (from "sharp S").', 1, 3),
('00000000-0000-0000-0000-000000000011', 'translation', 'How do you spell your name? (in German)', '[]', 'Wie buchstabieren Sie Ihren Namen?', 'Use "buchstabieren" for spelling.', 2, 4);

-- Lesson 2: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'How is "Z" pronounced in German?', '["Like English Z", "Like TS", "Like S", "Like T"]', 'Like TS', 1, 1),
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'Where is ß used?', '["After short vowels", "After long vowels and diphthongs", "At the start of words", "Never"]', 'After long vowels and diphthongs', 1, 2),
('00000000-0000-0000-0000-000000000011', 'true_false', '"schön" and "schon" have the same meaning.', '["True", "False"]', 'False', 1, 3),
('00000000-0000-0000-0000-000000000011', 'fill_blank', 'Complete: Wie spricht man das ___?', '["aus", "aussprechen", "vor", "zu"]', 'aus', 1, 4);

-- Lesson 3: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000012', 'die Zahl', 'الرقم', 'number', 'die', 'die Zahlen', 'noun', 'Die Zahl 10 ist eine Zehn.', 'The number 10 is a ten.', 1),
('00000000-0000-0000-0000-000000000012', 'zählen', 'يعد', 'to count', NULL, NULL, 'verb', 'Ich zähle von 1 bis 10.', 'I count from 1 to 10.', 2),
('00000000-0000-0000-0000-000000000012', 'eins', 'واحد', 'one', NULL, NULL, 'numeral', 'Eins, zwei, drei, vier...', 'One, two, three, four...', 3),
('00000000-0000-0000-0000-000000000012', 'zehn', 'عشرة', 'ten', NULL, NULL, 'numeral', 'Zehn Minuten.', 'Ten minutes.', 4),
('00000000-0000-0000-0000-000000000012', 'hundert', 'مئة', 'hundred', NULL, NULL, 'numeral', 'Einhundert Euro.', 'One hundred euros.', 5),
('00000000-0000-0000-0000-000000000012', 'die Telefonnummer', 'رقم الهاتف', 'phone number', 'die', 'die Telefonnummern', 'noun', 'Meine Telefonnummer ist...', 'My phone number is...', 6),
('00000000-0000-0000-0000-000000000012', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist 5 Euro.', 'The price is 5 euros.', 7),
('00000000-0000-0000-0000-000000000012', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 20 Euro.', 'That costs 20 euros.', 8),
('00000000-0000-0000-0000-000000000012', 'kosten', 'يكلف', 'to cost', NULL, NULL, 'verb', 'Was kostet das?', 'How much does that cost?', 9),
('00000000-0000-0000-0000-000000000012', 'das Alter', 'العمر', 'age', 'das', NULL, 'noun', 'Mein Alter ist 25.', 'My age is 25.', 10);

-- Lesson 3: Grammar
insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
('00000000-0000-0000-0000-000000000012',
'Zahlen und Mengenangaben (Numbers and Quantities)',
'German numbers follow a logical pattern. Learn the basics and you can build any number. The key rule: ones come BEFORE tens (like saying "five-and-twenty" instead of "twenty-five").',
'[
  {"rule": "1-12 are unique words: eins, zwei, drei, vier, fünf, sechs, sieben, acht, neun, zehn, elf, zwölf"},
  {"rule": "13-19: root + zehn (dreizehn, vierzehn...)", "note": "Watch for slight changes: sieben → siebzehn"},
  {"rule": "20-90: root + zig (zwanzig, dreißig, vierzig...)", "note": "30 is dreißig (not dreizig)"},
  {"rule": "Two-digit numbers: ones + und + tens", "note": "21 = einundzwanzig (one-and-twenty)"},
  {"rule": "100 = (ein)hundert, 1000 = (ein)tausend", "note": "Optional \u0027ein\u0027 before hundert/tausend"}
]',
'[
  {"german": "22", "arabic": "اثنان وعشرون", "english": "two-and-twenty = zweiundzwanzig"},
  {"german": "47", "arabic": "سبعة وأربعون", "english": "seven-and-forty = siebenundvierzig"},
  {"german": "99", "arabic": "تسعة وتسعون", "english": "nine-and-ninety = neunundneunzig"},
  {"german": "105", "arabic": "مئة وخمسة", "english": "hundertfünf"},
  {"german": "Ich bin 30 Jahre alt.", "arabic": "عمري 30 سنة.", "english": "I am 30 years old."}
]',
'[
  {"mistake": "Saying zwanzig-eins instead of einundzwanzig", "correction": "Units come before tens: einundzwanzig", "explanation": "German reverses the order compared to English."},
  {"mistake": "Confusing dreißig (30) with dreizehn (13)", "correction": "30 ends with -ßig, 13 ends with -zehn", "explanation": "Listen for the ending: -zehn vs -ßig."}
]',
1);

-- Lesson 3: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'What is 22 in German?', '["Zweiundzwanzig", "Zwanzigundzwei", "Zweiunddreißig", "Zwölf"]', 'Zweiundzwanzig', '22 = zwei (2) + und (and) + zwanzig (20).', 1, 1),
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'How do you say "How much does that cost?"', '["Was ist das?", "Was kostet das?", "Wie viel?", "Wo ist das?"]', 'Was kostet das?', '"Was kostet das?" is the standard question for prices.', 1, 2),
('00000000-0000-0000-0000-000000000012', 'fill_gap', 'Ich bin 25 Jahre ___.', '["alt", "älter", "alte", "alten"]', 'alt', '"Jahre alt" = "years old".', 1, 3),
('00000000-0000-0000-0000-000000000012', 'sentence_order', 'Order the words: heiße / ich / Anna', '[]', 'Ich heiße Anna.', 'Standard SVO word order: Subject + Verb + Object.', 2, 4),
('00000000-0000-0000-0000-000000000012', 'matching', 'Match the German numbers to their English equivalents: eins, drei, zehn, zwanzig', '["1, 3, 10, 20", "10, 3, 1, 20", "3, 1, 20, 10", "1, 10, 3, 20"]', '1, 3, 10, 20', 'eins=1, drei=3, zehn=10, zwanzig=20.', 1, 5);

-- Lesson 3: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'What is 35 in German?', '["Dreiundfünfzig", "Fünfunddreißig", "Dreißigundfünf", "Fünfunddreißig"]', 'Fünfunddreißig', 1, 1),
('00000000-0000-0000-0000-000000000012', 'true_false', '"eins, zwei, drei" means "one, two, three".', '["True", "False"]', 'True', 1, 2),
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'How do you ask someone their age?', '["Was kostest du?", "Wie alt bist du?", "Wo wohnst du?", "Wie heißt du?"]', 'Wie alt bist du?', 1, 3),
('00000000-0000-0000-0000-000000000012', 'fill_blank', 'Complete: Das ___ 5 Euro.', '["kostet", "kosten", "koste", "kost"]', 'kostet', 1, 4);
