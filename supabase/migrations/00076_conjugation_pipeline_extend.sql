ALTER TABLE public.verb_scraped_data
DROP CONSTRAINT IF EXISTS verb_scraped_data_status_check,
ADD CONSTRAINT verb_scraped_data_status_check
  CHECK (status IN ('PENDING', 'IMPORTED', 'REJECTED', 'DUPLICATE', 'CONJUGATION_GENERATED'));

ALTER TABLE public.verb_conjugations
ADD COLUMN IF NOT EXISTS conjugation_import_id UUID REFERENCES public.verb_conjugation_imports(id) ON DELETE SET NULL,
ADD COLUMN IF NOT EXISTS version INTEGER NOT NULL DEFAULT 1,
ADD COLUMN IF NOT EXISTS published_at TIMESTAMPTZ,
ADD COLUMN IF NOT EXISTS published_by UUID REFERENCES auth.users(id);

CREATE INDEX IF NOT EXISTS idx_verb_conjugations_import ON public.verb_conjugations(conjugation_import_id);

COMMENT ON TABLE public.verb_reference_candidates IS 'DEPRECATED: Use verb_conjugation_imports + verb_conjugation_publish_queue for new verbs. Kept for legacy data.';
COMMENT ON TABLE public.verb_import_jobs IS 'DEPRECATED: Legacy import pipeline. New conjugation pipeline uses verb_conjugation_imports directly.';
COMMENT ON TABLE public.verb_import_job_items IS 'DEPRECATED: Legacy import pipeline.';
