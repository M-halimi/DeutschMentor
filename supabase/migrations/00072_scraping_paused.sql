-- Add 'paused' status to verb_scraping_jobs for pause/resume workflow

alter table public.verb_scraping_jobs
  drop constraint if exists verb_scraping_jobs_status_check;

alter table public.verb_scraping_jobs
  add constraint verb_scraping_jobs_status_check
  check (status in ('pending', 'running', 'paused', 'completed', 'failed', 'cancelled'));
