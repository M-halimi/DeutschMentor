-- Seed reference content table for writing prompts, speaking scenarios, exam data, culture

create table public.seed_content (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.lessons(id) on delete set null,
  content_type text not null,
  content jsonb not null default '{}',
  order_index integer not null default 0,
  created_at timestamptz default now()
);

alter table public.seed_content enable row level security;

create policy "Auth users can view seed content"
  on public.seed_content for select
  using (auth.role() = 'authenticated');

create index idx_seed_content_type on public.seed_content(content_type);
