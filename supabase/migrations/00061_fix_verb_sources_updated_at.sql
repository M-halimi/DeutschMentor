-- Fix verb_sources: add missing updated_at and last_sync columns
alter table public.verb_sources add column if not exists updated_at timestamptz not null default now();
alter table public.verb_sources add column if not exists last_sync timestamptz;

-- Auto-update updated_at on row change
create or replace function public.update_verb_sources_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger set_verb_sources_updated_at
  before update on public.verb_sources
  for each row
  execute function public.update_verb_sources_updated_at();
