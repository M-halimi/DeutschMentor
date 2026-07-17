-- DeutschMentor - Add French translation columns to curriculum tables
-- Supports German-first multilingual architecture (DE / EN / FR / AR)

alter table public.lesson_vocabulary
  add column if not exists french_translation text;

alter table public.lesson_expressions
  add column if not exists french_translation text;

alter table public.lesson_listening
  add column if not exists french_translation text;

alter table public.lesson_reading
  add column if not exists french_translation text;
