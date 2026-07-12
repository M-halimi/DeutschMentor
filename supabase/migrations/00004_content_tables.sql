-- Content tables for lessons, articles, exercises, dictation, expressions

-- Audio lessons for listening module
create table public.audio_lessons (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  audio_url text not null,
  transcript text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  duration_seconds integer default 0,
  category text,
  is_published boolean default true,
  created_at timestamptz default now()
);

-- Listening exercises linked to audio lessons
create table public.listening_exercises (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

-- Articles for reading module
create table public.articles (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  content text not null,
  summary text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text not null,
  word_count integer default 0,
  image_url text,
  is_published boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Reading comprehension questions
create table public.reading_questions (
  id uuid primary key default gen_random_uuid(),
  article_id uuid references public.articles(id) on delete cascade not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

-- Extracted vocabulary from articles
create table public.article_vocabulary (
  id uuid primary key default gen_random_uuid(),
  article_id uuid references public.articles(id) on delete cascade not null,
  german_word text not null,
  english_translation text not null,
  context_sentence text,
  created_at timestamptz default now()
);

-- Dictation exercises
create table public.dictation_exercises (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  audio_url text not null,
  full_text text not null,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  duration_seconds integer default 0,
  is_published boolean default true,
  created_at timestamptz default now()
);

-- User dictation attempts
create table public.user_dictation (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  dictation_id uuid references public.dictation_exercises(id) on delete cascade not null,
  user_text text not null,
  score integer check (score >= 0 and score <= 100),
  mistakes jsonb default '[]',
  completed_at timestamptz default now(),
  created_at timestamptz default now()
);

-- Expressions / phrases
create table public.expressions (
  id uuid primary key default gen_random_uuid(),
  german text not null,
  english text not null,
  usage_context text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text,
  audio_url text,
  created_at timestamptz default now()
);

-- User saved expressions
create table public.user_expressions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  expression_id uuid references public.expressions(id) on delete cascade not null,
  mastered boolean default false,
  notes text,
  created_at timestamptz default now(),
  unique(user_id, expression_id)
);

-- Grammar exercises
create table public.grammar_exercises (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  explanation text,
  order_index integer default 0,
  is_published boolean default true,
  created_at timestamptz default now()
);

-- User grammar attempts
create table public.user_grammar (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  exercise_id uuid references public.grammar_exercises(id) on delete cascade not null,
  user_answer text not null,
  correct boolean not null,
  completed_at timestamptz default now()
);

-- Enable RLS
alter table public.audio_lessons enable row level security;
alter table public.listening_exercises enable row level security;
alter table public.articles enable row level security;
alter table public.reading_questions enable row level security;
alter table public.article_vocabulary enable row level security;
alter table public.dictation_exercises enable row level security;
alter table public.user_dictation enable row level security;
alter table public.expressions enable row level security;
alter table public.user_expressions enable row level security;
alter table public.grammar_exercises enable row level security;
alter table public.user_grammar enable row level security;

-- RLS: authenticated users can read published content
create policy "Auth users can view audio lessons"
  on public.audio_lessons for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Auth users can view listening exercises"
  on public.listening_exercises for select
  using (auth.role() = 'authenticated');

create policy "Auth users can view articles"
  on public.articles for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Auth users can view reading questions"
  on public.reading_questions for select
  using (auth.role() = 'authenticated');

create policy "Auth users can view article vocabulary"
  on public.article_vocabulary for select
  using (auth.role() = 'authenticated');

create policy "Auth users can view dictation exercises"
  on public.dictation_exercises for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Users can manage own dictation"
  on public.user_dictation for all
  using (auth.uid() = user_id);

create policy "Auth users can view expressions"
  on public.expressions for select
  using (auth.role() = 'authenticated');

create policy "Users can manage own expressions"
  on public.user_expressions for all
  using (auth.uid() = user_id);

create policy "Auth users can view grammar exercises"
  on public.grammar_exercises for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Users can manage own grammar"
  on public.user_grammar for all
  using (auth.uid() = user_id);

-- Seed sample data
insert into public.audio_lessons (title, description, audio_url, transcript, level, duration_seconds, category) values
  ('Begrüßungen', 'Learn basic German greetings', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', 'Guten Morgen! Guten Tag! Guten Abend!', 'A1', 120, 'basics'),
  ('Im Restaurant', 'Ordering food in a German restaurant', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3', 'Ich möchte bitte bestellen. Die Speisekarte, bitte.', 'A2', 180, 'daily'),
  ('Wegbeschreibung', 'Asking for and giving directions', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3', 'Entschuldigung, wo ist der Bahnhof?', 'A2', 240, 'daily'),
  ('Einkaufen', 'Shopping conversations', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3', 'Was kostet das? Haben Sie das in einer anderen Größe?', 'A2', 200, 'daily'),
  ('Vorstellungsgespräch', 'Job interview practice', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3', 'Erzählen Sie mir etwas über sich. Was sind Ihre Stärken?', 'B1', 300, 'professional'),
  ('Nachrichten', 'Understanding German news', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3', 'Heute im Bundestag: Die neue Klimapolitik wurde verabschiedet.', 'B2', 360, 'news');

insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index) values
  ((select id from public.audio_lessons where title = 'Begrüßungen'), 'Was bedeutet "Guten Morgen"?', '["Good morning", "Good night", "Goodbye", "Thank you"]', 'Good morning', 1),
  ((select id from public.audio_lessons where title = 'Begrüßungen'), 'Wann sagt man "Guten Abend"?', '["In the morning", "At noon", "In the evening", "At night"]', 'In the evening', 2),
  ((select id from public.audio_lessons where title = 'Im Restaurant'), 'Was sagt man, um zu bestellen?', '["Ich möchte bitte bestellen", "Auf Wiedersehen", "Wie geht es Ihnen", "Entschuldigung"]', 'Ich möchte bitte bestellen', 1),
  ((select id from public.audio_lessons where title = 'Im Restaurant'), 'Was ist "die Speisekarte"?', '["The menu", "The bill", "The table", "The kitchen"]', 'The menu', 2),
  ((select id from public.audio_lessons where title = 'Wegbeschreibung'), 'Wonach fragt die Person?', '["Nach dem Bahnhof", "Nach dem Restaurant", "Nach dem Hotel", "Nach dem Museum"]', 'Nach dem Bahnhof', 1),
  ((select id from public.audio_lessons where title = 'Einkaufen'), 'Was fragt der Kunde?', '["Was kostet das?", "Wo ist die Toilette?", "Wie spät ist es?", "Wer sind Sie?"]', 'Was kostet das?', 1);

insert into public.articles (title, content, summary, level, category, word_count) values
  ('Mein Tagesablauf', 'Jeden Morgen stehe ich um 7 Uhr auf. Ich putze mir die Zähne und dusche. Dann frühstücke ich. Ich esse meistens Brot mit Käse und trinke Kaffee. Um 8 Uhr gehe ich zur Arbeit. Ich arbeite von 9 bis 17 Uhr. Nach der Arbeit koche ich Abendessen. Um 22 Uhr gehe ich ins Bett.', 'A simple description of a daily routine in German.', 'A1', 'daily', 62),
  ('Ein Ausflug nach Berlin', 'Letzten Sommer habe ich Berlin besucht. Die Stadt ist sehr groß und interessant. Ich habe das Brandenburger Tor gesehen und den Reichstag besichtigt. Das Wetter war schön. Ich habe auch Currywurst gegessen. Berlin gefällt mir sehr gut.', 'A short story about a trip to Berlin.', 'A2', 'travel', 50),
  ('Die Digitalisierung in Deutschland', 'Deutschland erlebt einen digitalen Wandel. Immer mehr Unternehmen setzen auf digitale Technologien. Die Regierung fördert den Ausbau des Internets. Viele Ämter bieten Online-Dienste an. Trotzdem gibt es noch Herausforderungen, besonders auf dem Land.', 'A B1 article about digitalization in Germany.', 'B1', 'tech', 55),
  ('Kulturelle Unterschiede am Arbeitsplatz', 'In Deutschland gibt es besondere kulturelle Normen am Arbeitsplatz. Pünktlichkeit wird großgeschrieben. Die Kommunikation ist direkt. Hierarchien sind flach. Besprechungen sind strukturiert. Die Work-Life-Balance ist wichtig.', 'Cultural differences in German workplaces.', 'B2', 'work', 70),
  ('Die Energiewende', 'Die Energiewende ist ein zentrales politisches Projekt in Deutschland. Das Ziel ist der Umstieg von fossilen Brennstoffen auf erneuerbare Energien. Windkraft und Solarenergie spielen eine wichtige Rolle. Bis 2045 soll Deutschland klimaneutral sein.', 'The German energy transition explained.', 'C1', 'news', 85);

insert into public.reading_questions (article_id, question, options, correct_answer, order_index) values
  ((select id from public.articles where title = 'Mein Tagesablauf'), 'Wann steht die Person auf?', '["Um 6 Uhr", "Um 7 Uhr", "Um 8 Uhr", "Um 9 Uhr"]', 'Um 7 Uhr', 1),
  ((select id from public.articles where title = 'Mein Tagesablauf'), 'Was isst die Person zum Frühstück?', '["Müsli", "Brot mit Käse", "Eier", "Kein Frühstück"]', 'Brot mit Käse', 2),
  ((select id from public.articles where title = 'Ein Ausflug nach Berlin'), 'Was hat die Person in Berlin gesehen?', '["Den Eiffelturm", "Das Brandenburger Tor", "Den Big Ben", "Die Freiheitsstatue"]', 'Das Brandenburger Tor', 1);

insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Mein Tagesablauf'), 'der Tagesablauf', 'daily routine', 'Mein Tagesablauf ist immer gleich.'),
  ((select id from public.articles where title = 'Mein Tagesablauf'), 'aufstehen', 'to get up', 'Jeden Morgen stehe ich um 7 Uhr auf.'),
  ((select id from public.articles where title = 'Mein Tagesablauf'), 'frühstücken', 'to have breakfast', 'Dann frühstücke ich.'),
  ((select id from public.articles where title = 'Ein Ausflug nach Berlin'), 'der Ausflug', 'trip/excursion', 'Ein Ausflug nach Berlin.'),
  ((select id from public.articles where title = 'Ein Ausflug nach Berlin'), 'besichtigen', 'to visit/sightsee', 'Ich habe den Reichstag besichtigt.');

insert into public.expressions (german, english, usage_context, level, category) values
  ('Das ist mir egal', 'I do not care', 'Use when something does not matter to you', 'A2', 'everyday'),
  ('Es tut mir leid', 'I am sorry', 'Apologizing', 'A1', 'everyday'),
  ('Kein Problem', 'No problem', 'Responding to thanks', 'A1', 'everyday'),
  ('Auf jeden Fall', 'Definitely', 'Agreeing strongly', 'B1', 'conversation'),
  ('Ich verstehe nur Bahnhof', 'It is all Greek to me', 'When you do not understand anything', 'B2', 'idioms'),
  ('Das ist nicht mein Bier', 'That is not my problem', 'Informal way to say something is not your concern', 'B2', 'idioms'),
  ('Na klar', 'Of course', 'Casual agreement', 'A2', 'conversation'),
  ('Mach dich nicht lächerlich', 'Do not make a fool of yourself', 'Warning someone', 'B1', 'conversation'),
  ('Hals- und Beinbruch', 'Good luck / break a leg', 'Wishing someone luck', 'B1', 'idioms'),
  ('Ich drücke dir die Daumen', 'I will keep my fingers crossed', 'Wishing someone luck', 'A2', 'conversation');

insert into public.grammar_exercises (title, description, level, category, question, options, correct_answer, explanation, order_index) values
  ('Artikel: Der, Die, Das', 'Practice German articles', 'A1', 'articles', '___ Tisch (table)', '["Der", "Die", "Das", "Den"]', 'Der', 'Tisch is masculine, so it takes "der".', 1),
  ('Artikel: Der, Die, Das', 'Practice German articles', 'A1', 'articles', '___ Lampe (lamp)', '["Der", "Die", "Das", "Den"]', 'Die', 'Lampe is feminine, so it takes "die".', 2),
  ('Artikel: Der, Die, Das', 'Practice German articles', 'A1', 'articles', '___ Buch (book)', '["Der", "Die", "Das", "Den"]', 'Das', 'Buch is neuter, so it takes "das".', 3),
  ('Verbkonjugation: sein', 'Practice conjugation of "sein"', 'A1', 'verbs', 'Ich ___ (sein)', '["bin", "bist", "ist", "sind"]', 'bin', 'Ich bin = I am', 1),
  ('Verbkonjugation: sein', 'Practice conjugation of "sein"', 'A1', 'verbs', 'Du ___ (sein)', '["bin", "bist", "ist", "sind"]', 'bist', 'Du bist = You are (informal)', 2),
  ('Verbkonjugation: sein', 'Practice conjugation of "sein"', 'A1', 'verbs', 'Wir ___ (sein)', '["bin", "bist", "ist", "sind"]', 'sind', 'Wir sind = We are', 3),
  ('Perfekt mit haben/sein', 'Choose the correct auxiliary verb', 'A2', 'perfect', 'Ich ___ gegangen.', '["habe", "bin", "hat", "ist"]', 'bin', 'Gehen (to go) uses "sein" as auxiliary in Perfekt.', 1),
  ('Perfekt mit haben/sein', 'Choose the correct auxiliary verb', 'A2', 'perfect', 'Ich ___ gegessen.', '["habe", "bin", "hat", "ist"]', 'habe', 'Essen (to eat) uses "haben" as auxiliary in Perfekt.', 2),
  ('Präpositionen: in, auf, unter', 'Practice prepositions', 'A1', 'prepositions', 'Das Buch liegt ___ dem Tisch. (on)', '["in", "auf", "unter", "neben"]', 'auf', 'Auf means "on" a surface.', 1),
  ('Präpositionen: in, auf, unter', 'Practice prepositions', 'A1', 'prepositions', 'Die Katze ist ___ der Kiste. (in)', '["in", "auf", "unter", "neben"]', 'in', 'In means "inside" something.', 2);

insert into public.dictation_exercises (title, audio_url, full_text, level, duration_seconds) values
  ('Begrüßung', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', 'Guten Morgen! Wie geht es Ihnen? Mir geht es gut, danke.', 'A1', 30),
  ('Im Café', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3', 'Ich möchte einen Kaffee bitte. Mit Milch und Zucker. Was kostet das?', 'A1', 35),
  ('Meine Familie', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3', 'Meine Familie ist groß. Ich habe einen Bruder und zwei Schwestern. Wir wohnen in Berlin.', 'A2', 40);

-- Indexes
create index idx_audio_lessons_level on public.audio_lessons(level);
create index idx_listening_exercises_lesson on public.listening_exercises(audio_lesson_id);
create index idx_articles_level on public.articles(level);
create index idx_articles_category on public.articles(category);
create index idx_reading_questions_article on public.reading_questions(article_id);
create index idx_dictation_exercises_level on public.dictation_exercises(level);
create index idx_user_dictation_user on public.user_dictation(user_id);
create index idx_expressions_level on public.expressions(level);
create index idx_user_expressions_user on public.user_expressions(user_id);
create index idx_grammar_exercises_level on public.grammar_exercises(level);
create index idx_grammar_exercises_category on public.grammar_exercises(category);
create index idx_user_grammar_user on public.user_grammar(user_id);
