-- German Dictionary Module
-- Independent from the vocabulary learning module
-- Designed for exploration and reference with professional dictionary features
-- Supports growth to 10,000+ entries

create table if not exists public.german_dictionary (
  id uuid primary key default gen_random_uuid(),
  german_word text not null,
  word_type text not null check (word_type in ('noun', 'verb', 'adjective', 'adverb', 'preposition', 'conjunction', 'expression', 'pronoun', 'article', 'numeral', 'interjection', 'prefix', 'suffix', 'phrase')),
  article text check (article in ('der', 'die', 'das', null)),
  singular text,
  plural text,
  infinitive text,
  verb_conjugation jsonb default '{}'::jsonb,
  cefr_level text not null check (cefr_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')),
  english_translation text not null,
  french_translation text,
  arabic_translation text,
  pronunciation_url text,
  ipa text,
  example_sentences jsonb default '[]'::jsonb,
  synonyms jsonb default '[]'::jsonb,
  antonyms jsonb default '[]'::jsonb,
  word_family jsonb default '[]'::jsonb,
  collocations jsonb default '[]'::jsonb,
  grammar_notes text,
  common_mistakes jsonb default '[]'::jsonb,
  topic text,
  frequency_rank integer,
  tags jsonb default '[]'::jsonb,
  created_at timestamptz default now(),
  unique(german_word, word_type)
);

-- Enable trigram extension first (needed for GIN trigram indexes)
create extension if not exists pg_trgm;

-- Index for fast search
create index if not exists idx_dictionary_german_word on public.german_dictionary using gin (german_word gin_trgm_ops);
create index if not exists idx_dictionary_english on public.german_dictionary using gin (english_translation gin_trgm_ops);
create index if not exists idx_dictionary_level on public.german_dictionary (cefr_level);
create index if not exists idx_dictionary_word_type on public.german_dictionary (word_type);
create index if not exists idx_dictionary_topic on public.german_dictionary (topic);
create index if not exists idx_dictionary_article on public.german_dictionary (article);
create index if not exists idx_dictionary_frequency on public.german_dictionary (frequency_rank);

-- RLS
alter table public.german_dictionary enable row level security;

drop policy if exists "Dictionary entries are viewable by all authenticated users" on public.german_dictionary;
create policy "Dictionary entries are viewable by all authenticated users"
  on public.german_dictionary for select
  to authenticated
  using (true);

drop policy if exists "Dictionary entries can be inserted by admins" on public.german_dictionary;
create policy "Dictionary entries can be inserted by admins"
  on public.german_dictionary for insert
  to authenticated
  with check (exists (select 1 from public.profiles where user_id = auth.uid() and role = 'admin'));

drop policy if exists "Dictionary entries can be updated by admins" on public.german_dictionary;
create policy "Dictionary entries can be updated by admins"
  on public.german_dictionary for update
  to authenticated
  using (exists (select 1 from public.profiles where user_id = auth.uid() and role = 'admin'));
