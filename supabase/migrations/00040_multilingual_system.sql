-- Add language preference column to profiles
alter table public.profiles add column if not exists language text not null default 'de'
  check (language in ('de', 'en', 'fr', 'ar'));

-- Create index for language queries
create index if not exists idx_profiles_language on public.profiles(language);
