-- Audio Versioning & Cleanup Migration
-- Adds audio version tracking, removes old male-voice audio, creates generated_audio cache

-- 1. Add audio_version column to audio_lessons
alter table public.audio_lessons
  add column if not exists audio_version text;

-- 2. Clear old audio URLs that point to previous male-voice storage files or placeholders
update public.audio_lessons
set
  audio_url = null,
  audio_version = null
where
  audio_url is not null
  and audio_url != ''
  and (
    audio_url like '%audio-content%'
    or audio_url like '%soundhelix%'
    or audio_url like '%placeholder%'
    or audio_url like '%example.com%'
  );

-- 3. Create generated_audio cache table for non-lesson TTS audio (vocabulary, phrases, expressions etc.)
create table if not exists public.generated_audio (
  id uuid primary key default gen_random_uuid(),
  text_hash text not null,
  text_content text not null,
  lang text not null default 'de',
  audio_url text not null,
  audio_version text not null,
  created_at timestamptz default now(),
  constraint unique_audio_cache unique (text_hash, lang, audio_version)
);

create index if not exists idx_generated_audio_text_hash
  on public.generated_audio (text_hash);

-- 4. RLS on generated_audio
alter table public.generated_audio enable row level security;

create policy "Anyone can read generated audio"
  on public.generated_audio
  for select
  using (true);

create policy "Service role can manage generated audio"
  on public.generated_audio
  for all
  using (true)
  with check (true);
