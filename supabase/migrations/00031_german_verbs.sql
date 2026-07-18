-- German Verbs Module
-- Supports 3,500+ verbs with full conjugation, examples, collocations, etc.

-- Verb types enum
do $$ begin
  create type verb_type as enum (
    'regular', 'irregular', 'mixed', 'separable', 'inseparable',
    'reflexive', 'verb_preposition', 'reflexive_preposition',
    'modal', 'auxiliary'
  );
exception
  when duplicate_object then null;
end $$;

do $$ begin
  create type verb_transitivity as enum ('intransitive', 'transitive', 'both');
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type verb_object_case as enum ('akkusativ', 'dativ', 'genitiv', 'akkusativ_dativ', 'both', 'none');
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type verb_preposition_case as enum ('akkusativ', 'dativ', 'wechsel');
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type verb_auxiliary as enum ('haben', 'sein', 'both');
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type verb_frequency as enum ('very_common', 'common', 'less_common', 'rare');
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type conjugation_tense as enum (
    'praesens', 'praeteritum', 'perfekt', 'plusquamperfekt',
    'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ', 'passiv'
  );
exception
  when duplicate_object then null;
end $$;
do $$ begin
  create type example_difficulty as enum ('beginner', 'intermediate', 'advanced');
exception
  when duplicate_object then null;
end $$;

-- Main verbs table
create table if not exists public.german_verbs (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  english_translation text not null,
  arabic_translation text,
  french_translation text,
  cefr_level text not null check (cefr_level in ('A1','A2','B1','B2','C1','C2')),
  frequency verb_frequency not null default 'common',
  verb_type verb_type not null,
  transitivity verb_transitivity default 'both',
  object_case verb_object_case default 'none',
  preposition text,
  preposition_case verb_preposition_case,
  is_reflexive boolean not null default false,
  reflexive_pronoun text,
  auxiliary verb_auxiliary not null default 'haben',
  partizip_2 text not null,
  separable_prefix text,
  ipa text,
  stress text,
  slug text not null unique,
  synonyms text[] default '{}',
  antonyms text[] default '{}',
  tags text[] default '{}',
  created_at timestamptz not null default now()
);

-- Conjugations
create table if not exists public.verb_conjugations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  tense conjugation_tense not null,
  ich text,
  du text,
  er_sie_es text,
  wir text,
  ihr text,
  Sie text,
  unique(verb_id, tense)
);

-- Example sentences
create table if not exists public.verb_examples (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  difficulty example_difficulty not null,
  german text not null,
  english text not null,
  arabic text,
  french text
);

-- Collocations
create table if not exists public.verb_collocations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  collocation text not null,
  english text not null,
  arabic text,
  french text
);

-- Typical questions
create table if not exists public.verb_typical_questions (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  german text not null,
  english text not null,
  arabic text,
  french text
);

-- Common mistakes
create table if not exists public.verb_common_mistakes (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  incorrect text not null,
  correct text not null,
  explanation text not null,
  arabic_explanation text,
  french_explanation text
);

-- Prefix explanations
create table if not exists public.verb_prefix_explanations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  prefix text not null,
  explanation text not null,
  example text,
  english_explanation text
);

-- Verb family members
create table if not exists public.verb_family_members (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  related_verb_id uuid not null references public.german_verbs(id) on delete cascade,
  relationship text not null,
  unique(verb_id, related_verb_id)
);

-- Similar verbs
create table if not exists public.verb_similar_verbs (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  similar_verb_id uuid not null references public.german_verbs(id) on delete cascade,
  explanation text,
  unique(verb_id, similar_verb_id)
);

-- Learning tips
create table if not exists public.verb_learning_tips (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  tip_type text not null check (tip_type in ('memory_trick','usage_notes','common_contexts','formal_vs_informal')),
  content text not null
);

-- User progress on verbs
create table if not exists public.user_verbs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  is_bookmarked boolean not null default false,
  mastered boolean not null default false,
  notes text,
  last_studied timestamptz,
  study_count integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(user_id, verb_id)
);

-- Indexes
create index if not exists idx_verbs_infinitive on public.german_verbs(infinitive);
create index if not exists idx_verbs_cefr_level on public.german_verbs(cefr_level);
create index if not exists idx_verbs_verb_type on public.german_verbs(verb_type);
create index if not exists idx_verbs_frequency on public.german_verbs(frequency);
create index if not exists idx_verbs_is_reflexive on public.german_verbs(is_reflexive);
create index if not exists idx_verbs_preposition on public.german_verbs(preposition);
create index if not exists idx_verbs_object_case on public.german_verbs(object_case);
create index if not exists idx_verbs_slug on public.german_verbs(slug);
create index if not exists idx_verbs_tags on public.german_verbs using gin(tags);
create index if not exists idx_verbs_created_at on public.german_verbs(created_at);
create index if not exists idx_verb_conjugations_verb_id on public.verb_conjugations(verb_id);
create index if not exists idx_verb_examples_verb_id on public.verb_examples(verb_id);
create index if not exists idx_verb_collocations_verb_id on public.verb_collocations(verb_id);
create index if not exists idx_verb_mistakes_verb_id on public.verb_common_mistakes(verb_id);
create index if not exists idx_verb_tips_verb_id on public.verb_learning_tips(verb_id);
create index if not exists idx_verb_family_verb_id on public.verb_family_members(verb_id);
create index if not exists idx_user_verbs_user_id on public.user_verbs(user_id);
create index if not exists idx_user_verbs_verb_id on public.user_verbs(verb_id);

-- Full-text search
-- Full-text search via trigger (to_tsvector is STABLE, cannot be GENERATED)
create or replace function public.verbs_search_update() returns trigger as $$
begin
  new.search_vector := to_tsvector('german', coalesce(new.infinitive, '') || ' ' ||
    coalesce(new.english_translation, '') || ' ' ||
    coalesce(new.arabic_translation, '') || ' ' ||
    coalesce(new.french_translation, '') || ' ' ||
    coalesce(array_to_string(new.tags, ' '), '') || ' ' ||
    coalesce(new.preposition, ''));
  return new;
end;
$$ language plpgsql;

do $$ begin
  alter table public.german_verbs add column search_vector tsvector;
exception
  when duplicate_column then null;
end $$;

drop trigger if exists verbs_search_trigger on public.german_verbs;
create trigger verbs_search_trigger
  before insert or update on public.german_verbs
  for each row execute function public.verbs_search_update();

create index if not exists idx_verbs_search on public.german_verbs using gin(search_vector);

-- RLS
alter table public.german_verbs enable row level security;
alter table public.verb_conjugations enable row level security;
alter table public.verb_examples enable row level security;
alter table public.verb_collocations enable row level security;
alter table public.verb_typical_questions enable row level security;
alter table public.verb_common_mistakes enable row level security;
alter table public.verb_prefix_explanations enable row level security;
alter table public.verb_family_members enable row level security;
alter table public.verb_similar_verbs enable row level security;
alter table public.verb_learning_tips enable row level security;
alter table public.user_verbs enable row level security;

-- Public read for all verb content
do $$ begin
  drop policy if exists public_select_verbs on public.german_verbs;
  create policy "public_select_verbs" on public.german_verbs for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_conjugations on public.verb_conjugations;
  create policy "public_select_conjugations" on public.verb_conjugations for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_examples on public.verb_examples;
  create policy "public_select_examples" on public.verb_examples for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_collocations on public.verb_collocations;
  create policy "public_select_collocations" on public.verb_collocations for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_questions on public.verb_typical_questions;
  create policy "public_select_questions" on public.verb_typical_questions for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_mistakes on public.verb_common_mistakes;
  create policy "public_select_mistakes" on public.verb_common_mistakes for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_prefixes on public.verb_prefix_explanations;
  create policy "public_select_prefixes" on public.verb_prefix_explanations for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_family on public.verb_family_members;
  create policy "public_select_family" on public.verb_family_members for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_similar on public.verb_similar_verbs;
  create policy "public_select_similar" on public.verb_similar_verbs for select using (true);
end $$;
do $$ begin
  drop policy if exists public_select_tips on public.verb_learning_tips;
  create policy "public_select_tips" on public.verb_learning_tips for select using (true);
end $$;

-- User verbs: own data only
do $$ begin
  drop policy if exists user_verbs_select on public.user_verbs;
  create policy "user_verbs_select" on public.user_verbs for select using (auth.uid() = user_id);
end $$;
do $$ begin
  drop policy if exists user_verbs_insert on public.user_verbs;
  create policy "user_verbs_insert" on public.user_verbs for insert with check (auth.uid() = user_id);
end $$;
do $$ begin
  drop policy if exists user_verbs_update on public.user_verbs;
  create policy "user_verbs_update" on public.user_verbs for update using (auth.uid() = user_id);
end $$;
do $$ begin
  drop policy if exists user_verbs_delete on public.user_verbs;
  create policy "user_verbs_delete" on public.user_verbs for delete using (auth.uid() = user_id);
end $$;

-- Admin can write verb content
do $$ begin
  drop policy if exists admin_all_verbs on public.german_verbs;
  create policy "admin_all_verbs" on public.german_verbs for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_conjugations on public.verb_conjugations;
  create policy "admin_all_conjugations" on public.verb_conjugations for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_examples on public.verb_examples;
  create policy "admin_all_examples" on public.verb_examples for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_collocations on public.verb_collocations;
  create policy "admin_all_collocations" on public.verb_collocations for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_questions on public.verb_typical_questions;
  create policy "admin_all_questions" on public.verb_typical_questions for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_mistakes on public.verb_common_mistakes;
  create policy "admin_all_mistakes" on public.verb_common_mistakes for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_prefixes on public.verb_prefix_explanations;
  create policy "admin_all_prefixes" on public.verb_prefix_explanations for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_family on public.verb_family_members;
  create policy "admin_all_family" on public.verb_family_members for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_similar on public.verb_similar_verbs;
  create policy "admin_all_similar" on public.verb_similar_verbs for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
do $$ begin
  drop policy if exists admin_all_tips on public.verb_learning_tips;
  create policy "admin_all_tips" on public.verb_learning_tips for all using (auth.jwt() ->> 'role' = 'admin');
end $$;
