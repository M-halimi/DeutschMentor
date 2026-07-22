-- 00069_verb_cms_educational.sql
--
-- Phase 1: Educational CMS for German Verb Knowledge Platform
--
-- New tables:
--   verb_translations     — Multi-language translations (ISO 639-1)
--   verb_synonyms         — Synonyms with FK cross-reference
--   verb_antonyms         — Antonyms with FK cross-reference
--   tags                  — Normalized platform-wide tags
--   entity_tags           — Polymorphic N:N pivot (entity_type, entity_id, tag_id)
--   verb_audio            — Multi-provider, multi-voice audio recordings
--   verb_pronunciations   — IPA, syllables, stress, regional variants
--   verb_quality_scores   — Granular quality sub-scores (1:1 per verb)
--   verb_review_notes     — Immutable append-only review notes
--   verb_source_comparisons — Cross-source value comparison display
--
-- Extended tables:
--   verb_examples          +entity_type, entity_id, translations jsonb,
--                           status, created_by, reviewed_by, reviewed_at,
--                           version, updated_at, grammar_notes
--   verb_collocations      +entity_type, entity_id, translations jsonb,
--                           status, created_by, reviewed_by, reviewed_at,
--                           version, updated_at
--   verb_typical_questions  +entity_type, entity_id, translations jsonb,
--                           status, created_by, reviewed_by, reviewed_at,
--                           version, updated_at
--   verb_learning_tips     +entity_type, entity_id, status, created_by,
--                           reviewed_by, reviewed_at, version, updated_at
--   verb_common_mistakes   +entity_type, entity_id, translations jsonb,
--                           status, created_by, reviewed_by, reviewed_at,
--                           version, updated_at
--   verb_family_members    +created_by
--   verb_similar_verbs     +created_by
--   verb_change_history    +entity_type, entity_id (polymorphic sub-resources)
--
-- Not dropped (kept for backward compatibility):
--   german_verbs.english_translation, arabic_translation, french_translation
--   german_verbs.synonyms, german_verbs.antonyms, german_verbs.tags
--   german_verbs.ipa, german_verbs.stress
--   (dropped in a follow-up migration after all code paths are updated)

-- ============================================================================
-- 1. ENUMS
-- ============================================================================
do $$ begin
  create type content_status as enum (
    'draft', 'in_review', 'approved', 'published', 'archived'
  );
exception
  when duplicate_object then null;
end $$;

do $$ begin
  create type audio_type as enum ('tts', 'native', 'user_upload');
exception
  when duplicate_object then null;
end $$;

do $$ begin
  create type pronunciation_region as enum ('standard', 'german', 'austrian', 'swiss');
exception
  when duplicate_object then null;
end $$;

-- ============================================================================
-- 2. VERB TRANSLATIONS
-- ============================================================================
create table if not exists public.verb_translations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  language_code text not null check (language_code ~ '^[a-z]{2}$'),
  translation text not null,
  source text,
  confidence integer not null default 100 check (confidence >= 0 and confidence <= 100),
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.verb_translations
  add constraint uq_verb_translations_verb_lang unique (verb_id, language_code);

create index if not exists idx_verb_translations_verb on public.verb_translations(verb_id);
create index if not exists idx_verb_translations_lang on public.verb_translations(language_code);
create index if not exists idx_verb_translations_status on public.verb_translations(status);

-- ============================================================================
-- 3. VERB SYNONYMS
-- ============================================================================
create table if not exists public.verb_synonyms (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  title text not null,
  target_verb_id uuid references public.german_verbs(id) on delete set null,
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_verb_synonyms_verb on public.verb_synonyms(verb_id);
create index if not exists idx_verb_synonyms_target on public.verb_synonyms(target_verb_id);
create index if not exists idx_verb_synonyms_status on public.verb_synonyms(status);

-- ============================================================================
-- 4. VERB ANTONYMS
-- ============================================================================
create table if not exists public.verb_antonyms (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  title text not null,
  target_verb_id uuid references public.german_verbs(id) on delete set null,
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_verb_antonyms_verb on public.verb_antonyms(verb_id);
create index if not exists idx_verb_antonyms_target on public.verb_antonyms(target_verb_id);
create index if not exists idx_verb_antonyms_status on public.verb_antonyms(status);

-- ============================================================================
-- 5. TAGS (platform-wide normalized)
-- ============================================================================
create table if not exists public.tags (
  id uuid primary key default gen_random_uuid(),
  name text not null unique,
  category text,
  created_at timestamptz not null default now()
);

create index if not exists idx_tags_name on public.tags(name);
create index if not exists idx_tags_category on public.tags(category);

-- ============================================================================
-- 6. ENTITY TAGS (polymorphic N:N pivot)
-- ============================================================================
-- entity_type: 'verb', 'noun', 'adjective', 'expression', etc.
-- entity_id: UUID of the specific entity (no FK — polymorphic targets)
-- Application-level integrity enforced by services.
create table if not exists public.entity_tags (
  entity_type text not null,
  entity_id uuid not null,
  tag_id uuid not null references public.tags(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (entity_type, entity_id, tag_id)
);

create index if not exists idx_entity_tags_tag on public.entity_tags(tag_id);
create index if not exists idx_entity_tags_entity on public.entity_tags(entity_type, entity_id);

-- ============================================================================
-- 7. VERB AUDIO
-- ============================================================================
create table if not exists public.verb_audio (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  type audio_type not null,
  provider text,
  voice text,
  version text,
  file_url text not null,
  mime_type text not null default 'audio/mpeg',
  duration_seconds integer,
  is_primary boolean not null default false,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Enforce at most one primary audio per verb
create unique index if not exists idx_verb_audio_primary
  on public.verb_audio(verb_id) where is_primary = true;

create index if not exists idx_verb_audio_verb on public.verb_audio(verb_id);
create index if not exists idx_verb_audio_status on public.verb_audio(status);

-- ============================================================================
-- 8. VERB PRONUNCIATIONS
-- ============================================================================
create table if not exists public.verb_pronunciations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  ipa text not null,
  syllables text,
  difficult_sounds text[] default '{}',
  region pronunciation_region not null default 'standard',
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.verb_pronunciations
  add constraint uq_verb_pronunciations_verb_region unique (verb_id, region);

create index if not exists idx_verb_pronunciations_verb on public.verb_pronunciations(verb_id);
create index if not exists idx_verb_pronunciations_region on public.verb_pronunciations(region);
create index if not exists idx_verb_pronunciations_status on public.verb_pronunciations(status);

-- ============================================================================
-- 9. VERB QUALITY SCORES (granular sub-scores, 1:1 per verb)
-- ============================================================================
-- Complements verb_quality_summary (aggregate cache).
-- Overwritten on recalculation, not versioned.
create table if not exists public.verb_quality_scores (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  overall integer not null check (overall >= 0 and overall <= 100),
  translations_score integer not null default 0 check (translations_score >= 0 and translations_score <= 100),
  examples_score integer not null default 0 check (examples_score >= 0 and examples_score <= 100),
  conjugations_score integer not null default 0 check (conjugations_score >= 0 and conjugations_score <= 100),
  grammar_score integer not null default 0 check (grammar_score >= 0 and grammar_score <= 100),
  synonyms_score integer not null default 0 check (synonyms_score >= 0 and synonyms_score <= 100),
  audio_score integer not null default 0 check (audio_score >= 0 and audio_score <= 100),
  calculated_at timestamptz not null default now()
);

alter table public.verb_quality_scores
  add constraint uq_verb_quality_scores_verb unique (verb_id);

create index if not exists idx_verb_quality_scores_verb on public.verb_quality_scores(verb_id);
create index if not exists idx_verb_quality_scores_overall on public.verb_quality_scores(overall);

-- ============================================================================
-- 10. VERB REVIEW NOTES (immutable append-only)
-- ============================================================================
create table if not exists public.verb_review_notes (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  author_id uuid references auth.users(id) on delete set null,
  section text,
  note text not null,
  is_deleted boolean not null default false,
  created_at timestamptz not null default now()
);

create index if not exists idx_verb_review_notes_verb on public.verb_review_notes(verb_id);
create index if not exists idx_verb_review_notes_author on public.verb_review_notes(author_id);
create index if not exists idx_verb_review_notes_created on public.verb_review_notes(created_at desc);

-- ============================================================================
-- 11. VERB SOURCE COMPARISONS (cross-source value display)
-- ============================================================================
create table if not exists public.verb_source_comparisons (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  field_name text not null,
  source_name text not null,
  value text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  fetched_at timestamptz not null default now()
);

alter table public.verb_source_comparisons
  add constraint uq_verb_source_comparisons unique (verb_id, field_name, source_name);

create index if not exists idx_verb_source_comparisons_verb on public.verb_source_comparisons(verb_id);
create index if not exists idx_verb_source_comparisons_field on public.verb_source_comparisons(field_name);

-- ============================================================================
-- 12. EXTEND EXISTING TABLES
-- ============================================================================

-- 12a. verb_examples — add lifecycle, polymorphic entity refs, translations, grammar_notes
do $$ begin
  alter table public.verb_examples
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists entity_id uuid;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists translations jsonb default '{}'::jsonb;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists status content_status not null default 'approved';
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists reviewed_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists reviewed_at timestamptz;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists created_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists updated_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_examples
    add column if not exists grammar_notes text not null default '';
exception when others then null;
end $$;

-- Backfill entity refs for existing verb-only data
update public.verb_examples
set entity_type = 'verb', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_examples_entity on public.verb_examples(entity_type, entity_id);
create index if not exists idx_verb_examples_status on public.verb_examples(status);

-- 12b. verb_collocations — add lifecycle, polymorphic entity refs, translations
do $$ begin
  alter table public.verb_collocations
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists entity_id uuid;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists translations jsonb default '{}'::jsonb;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists status content_status not null default 'approved';
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists reviewed_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists reviewed_at timestamptz;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists created_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_collocations
    add column if not exists updated_at timestamptz not null default now();
exception when others then null;
end $$;

update public.verb_collocations
set entity_type = 'verb', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_collocations_entity on public.verb_collocations(entity_type, entity_id);
create index if not exists idx_verb_collocations_status on public.verb_collocations(status);

-- 12c. verb_typical_questions — add lifecycle, polymorphic entity refs, translations
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists entity_id uuid;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists translations jsonb default '{}'::jsonb;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists status content_status not null default 'approved';
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists reviewed_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists reviewed_at timestamptz;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists created_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_typical_questions
    add column if not exists updated_at timestamptz not null default now();
exception when others then null;
end $$;

update public.verb_typical_questions
set entity_type = 'verb', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_questions_entity on public.verb_typical_questions(entity_type, entity_id);
create index if not exists idx_verb_questions_status on public.verb_typical_questions(status);

-- 12d. verb_learning_tips — add lifecycle, polymorphic entity refs
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists entity_id uuid;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists status content_status not null default 'approved';
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists reviewed_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists reviewed_at timestamptz;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists created_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_learning_tips
    add column if not exists updated_at timestamptz not null default now();
exception when others then null;
end $$;

update public.verb_learning_tips
set entity_type = 'verb', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_tips_entity on public.verb_learning_tips(entity_type, entity_id);
create index if not exists idx_verb_tips_status on public.verb_learning_tips(status);

-- 12e. verb_common_mistakes — add lifecycle, polymorphic entity refs, translations
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists entity_id uuid;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists translations jsonb default '{}'::jsonb;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists status content_status not null default 'approved';
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists reviewed_by uuid references auth.users(id);
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists reviewed_at timestamptz;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists created_at timestamptz not null default now();
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_common_mistakes
    add column if not exists updated_at timestamptz not null default now();
exception when others then null;
end $$;

update public.verb_common_mistakes
set entity_type = 'verb', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_mistakes_entity on public.verb_common_mistakes(entity_type, entity_id);
create index if not exists idx_verb_mistakes_status on public.verb_common_mistakes(status);

-- 12f. verb_family_members — add author tracking
do $$ begin
  alter table public.verb_family_members
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;

-- 12g. verb_similar_verbs — add author tracking
do $$ begin
  alter table public.verb_similar_verbs
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;

-- 12h. verb_change_history — add polymorphic entity support for sub-resources
do $$ begin
  alter table public.verb_change_history
    add column if not exists entity_type text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_change_history
    add column if not exists entity_id uuid;
exception when others then null;
end $$;

-- Backfill existing records: they tracked german_verbs directly
update public.verb_change_history
set entity_type = 'german_verbs', entity_id = verb_id
where entity_type is null and verb_id is not null;

create index if not exists idx_verb_change_history_entity
  on public.verb_change_history(entity_type, entity_id);

-- ============================================================================
-- 13. DATA MIGRATION (existing german_verbs columns → new tables)
-- ============================================================================

-- 13a. Migrate translations from german_verbs columns to verb_translations
insert into public.verb_translations (verb_id, language_code, translation, source, confidence, status)
  select id, 'en', english_translation, 'legacy', 100, 'approved'
  from public.german_verbs
  where english_translation is not null
    and not exists (
      select 1 from public.verb_translations vt
      where vt.verb_id = german_verbs.id and vt.language_code = 'en'
    );

insert into public.verb_translations (verb_id, language_code, translation, source, confidence, status)
  select id, 'fr', french_translation, 'legacy', 100, 'approved'
  from public.german_verbs
  where french_translation is not null
    and not exists (
      select 1 from public.verb_translations vt
      where vt.verb_id = german_verbs.id and vt.language_code = 'fr'
    );

insert into public.verb_translations (verb_id, language_code, translation, source, confidence, status)
  select id, 'ar', arabic_translation, 'legacy', 100, 'approved'
  from public.german_verbs
  where arabic_translation is not null
    and not exists (
      select 1 from public.verb_translations vt
      where vt.verb_id = german_verbs.id and vt.language_code = 'ar'
    );

-- 13b. Migrate synonyms from text[] to verb_synonyms
insert into public.verb_synonyms (verb_id, title, source, status)
  select gv.id, unnest(gv.synonyms), 'legacy', 'approved'
  from public.german_verbs gv
  where gv.synonyms is not null and array_length(gv.synonyms, 1) > 0;

-- 13c. Migrate antonyms from text[] to verb_antonyms
insert into public.verb_antonyms (verb_id, title, source, status)
  select gv.id, unnest(gv.antonyms), 'legacy', 'approved'
  from public.german_verbs gv
  where gv.antonyms is not null and array_length(gv.antonyms, 1) > 0;

-- 13d. Migrate tags from text[] to tags + entity_tags
insert into public.tags (name)
  select distinct unnest(tags)
  from public.german_verbs
  where tags is not null and array_length(tags, 1) > 0
  on conflict (name) do nothing;

insert into public.entity_tags (entity_type, entity_id, tag_id)
  select 'verb', gv.id, t.id
  from public.german_verbs gv
  cross join lateral unnest(gv.tags) as tag_name
  join public.tags t on t.name = tag_name
  on conflict (entity_type, entity_id, tag_id) do nothing;

-- 13e. Migrate IPA from german_verbs to verb_pronunciations
insert into public.verb_pronunciations (verb_id, ipa, syllables, source, status)
  select id, ipa, stress, 'legacy', 'approved'
  from public.german_verbs
  where ipa is not null
    and not exists (
      select 1 from public.verb_pronunciations vp
      where vp.verb_id = german_verbs.id and vp.region = 'standard'
    );

-- ============================================================================
-- 14. RLS POLICIES
-- ============================================================================

-- 14a. Enable RLS on all new tables
alter table public.verb_translations enable row level security;
alter table public.verb_synonyms enable row level security;
alter table public.verb_antonyms enable row level security;
alter table public.tags enable row level security;
alter table public.entity_tags enable row level security;
alter table public.verb_audio enable row level security;
alter table public.verb_pronunciations enable row level security;
alter table public.verb_quality_scores enable row level security;
alter table public.verb_review_notes enable row level security;
alter table public.verb_source_comparisons enable row level security;

-- 14b. Public SELECT policies (authenticated users can read all)
do $$
declare
  tables_list text[] := array[
    'verb_translations', 'verb_synonyms', 'verb_antonyms',
    'tags', 'entity_tags', 'verb_audio', 'verb_pronunciations',
    'verb_quality_scores', 'verb_review_notes', 'verb_source_comparisons'
  ];
  t text;
begin
  foreach t in array tables_list loop
    execute format(
      'drop policy if exists "public_select_%s" on public.%I;', t, t
    );
    execute format(
      'create policy "public_select_%s" on public.%I for select using (true);',
      t, t
    );
  end loop;
end $$;

-- 14c. Admin ALL policies (admin role can manage)
do $$
declare
  tables_list text[] := array[
    'verb_translations', 'verb_synonyms', 'verb_antonyms',
    'tags', 'entity_tags', 'verb_audio', 'verb_pronunciations',
    'verb_quality_scores', 'verb_review_notes', 'verb_source_comparisons'
  ];
  t text;
begin
  foreach t in array tables_list loop
    execute format(
      'drop policy if exists "admin_all_%s" on public.%I;', t, t
    );
    execute format(
      'create policy "admin_all_%s" on public.%I for all using (auth.jwt() ->> ''role'' = ''admin'');',
      t, t
    );
  end loop;
end $$;

-- ============================================================================
-- 15. VERIFY MIGRATION
-- ============================================================================
do $$
declare
  table_count integer;
begin
  select count(*) into table_count
  from pg_tables
  where schemaname = 'public'
    and tablename in (
      'verb_translations', 'verb_synonyms', 'verb_antonyms',
      'tags', 'entity_tags', 'verb_audio', 'verb_pronunciations',
      'verb_quality_scores', 'verb_review_notes', 'verb_source_comparisons'
    );

  raise notice 'Migration 00069 complete: % new tables created/verified', table_count;
end $$;
