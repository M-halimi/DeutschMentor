-- Add missing columns to public.vocabulary for 10k+ vocabulary expansion
alter table public.vocabulary add column if not exists french_translation text;
alter table public.vocabulary add column if not exists arabic_translation text;
alter table public.vocabulary add column if not exists german_definition text;
alter table public.vocabulary add column if not exists collocations text[] default '{}';
alter table public.vocabulary add column if not exists common_mistakes text[] default '{}';
alter table public.vocabulary add column if not exists comparative text;
alter table public.vocabulary add column if not exists superlative text;
alter table public.vocabulary add column if not exists created_at timestamptz default now();

create index if not exists idx_vocabulary_german_word on public.vocabulary (german_word);
create index if not exists idx_vocabulary_level on public.vocabulary (level);
create index if not exists idx_vocabulary_category on public.vocabulary (category);

-- Enable RLS for public.vocabulary
alter table public.vocabulary enable row level security;

create policy "Enable read access for all users" on public.vocabulary for select using (true);
create policy "Enable all for service role only" on public.vocabulary for all using (auth.role() = 'service_role');
