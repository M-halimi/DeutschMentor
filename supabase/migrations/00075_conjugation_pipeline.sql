CREATE TABLE public.verb_conjugation_imports (
    id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    scraped_data_id   UUID REFERENCES public.verb_scraped_data(id) ON DELETE SET NULL,
    infinitive        TEXT NOT NULL,
    translation       TEXT,
    cefr_level        TEXT,
    verb_type         TEXT,
    source_name       TEXT NOT NULL,
    auxiliary         TEXT,
    separable_prefix  TEXT,
    is_reflexive      BOOLEAN NOT NULL DEFAULT false,
    reflexive_pronoun TEXT,
    conjugations      JSONB NOT NULL DEFAULT '{}',
    irregular_changes JSONB DEFAULT '{}',
    quality_score     INTEGER NOT NULL DEFAULT 0,
    status            TEXT NOT NULL DEFAULT 'pending_review'
                      CHECK (status IN ('pending_review', 'IN_REVIEW', 'APPROVED', 'REJECTED', 'PUBLISHED')),
    job_id            UUID REFERENCES public.verb_scraping_jobs(id) ON DELETE SET NULL,
    created_by        UUID REFERENCES auth.users(id),
    created_at        TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at        TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_conjugation_import_infinitive UNIQUE (infinitive)
);

CREATE INDEX idx_conj_imports_status ON public.verb_conjugation_imports(status);
CREATE INDEX idx_conj_imports_cefr ON public.verb_conjugation_imports(cefr_level);
CREATE INDEX idx_conj_imports_source ON public.verb_conjugation_imports(source_name);
CREATE INDEX idx_conj_imports_created ON public.verb_conjugation_imports(created_at DESC);
CREATE INDEX idx_conj_imports_scraped ON public.verb_conjugation_imports(scraped_data_id);

CREATE TABLE public.verb_conjugation_review (
    id                     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    conjugation_import_id  UUID NOT NULL REFERENCES public.verb_conjugation_imports(id) ON DELETE CASCADE,
    infinitive             TEXT NOT NULL,
    reviewed_conjugations  JSONB NOT NULL,
    reviewed_auxiliary     TEXT,
    reviewed_separable     TEXT,
    reviewed_reflexive     BOOLEAN NOT NULL DEFAULT false,
    reviewer_id            UUID REFERENCES auth.users(id),
    action                 TEXT NOT NULL CHECK (action IN ('approved', 'rejected', 'edited', 'skipped')),
    edit_data              JSONB,
    notes                  TEXT,
    created_at             TIMESTAMPTZ NOT NULL DEFAULT now(),
    reviewed_at            TIMESTAMPTZ
);

CREATE INDEX idx_conj_review_import ON public.verb_conjugation_review(conjugation_import_id);
CREATE INDEX idx_conj_review_action ON public.verb_conjugation_review(action);
CREATE INDEX idx_conj_review_reviewer ON public.verb_conjugation_review(reviewer_id);
CREATE INDEX idx_conj_review_created ON public.verb_conjugation_review(created_at DESC);

CREATE TABLE public.verb_conjugation_publish_queue (
    id                     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    conjugation_import_id  UUID NOT NULL REFERENCES public.verb_conjugation_imports(id) ON DELETE CASCADE,
    review_id              UUID REFERENCES public.verb_conjugation_review(id) ON DELETE SET NULL,
    infinitive             TEXT NOT NULL,
    conjugations           JSONB NOT NULL,
    auxiliary              TEXT,
    separable_prefix       TEXT,
    is_reflexive           BOOLEAN NOT NULL DEFAULT false,
    reflexive_pronoun      TEXT,
    verb_type              TEXT,
    cefr_level             TEXT,
    source_name            TEXT,
    published              BOOLEAN NOT NULL DEFAULT false,
    published_at           TIMESTAMPTZ,
    published_by           UUID REFERENCES auth.users(id),
    created_at             TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_publish_queue_infinitive UNIQUE (infinitive)
);

CREATE INDEX idx_conj_publish_published ON public.verb_conjugation_publish_queue(published);
CREATE INDEX idx_conj_publish_created ON public.verb_conjugation_publish_queue(created_at DESC);

ALTER TABLE public.verb_conjugation_imports ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.verb_conjugation_review ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.verb_conjugation_publish_queue ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public select on conjugation_imports" ON public.verb_conjugation_imports FOR SELECT USING (true);
CREATE POLICY "Allow public insert on conjugation_imports" ON public.verb_conjugation_imports FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public update on conjugation_imports" ON public.verb_conjugation_imports FOR UPDATE USING (true);
CREATE POLICY "Allow public delete on conjugation_imports" ON public.verb_conjugation_imports FOR DELETE USING (true);

CREATE POLICY "Allow public select on conjugation_review" ON public.verb_conjugation_review FOR SELECT USING (true);
CREATE POLICY "Allow public insert on conjugation_review" ON public.verb_conjugation_review FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public update on conjugation_review" ON public.verb_conjugation_review FOR UPDATE USING (true);

CREATE POLICY "Allow public select on publish_queue" ON public.verb_conjugation_publish_queue FOR SELECT USING (true);
CREATE POLICY "Allow public insert on publish_queue" ON public.verb_conjugation_publish_queue FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public update on publish_queue" ON public.verb_conjugation_publish_queue FOR UPDATE USING (true);
CREATE POLICY "Allow public delete on publish_queue" ON public.verb_conjugation_publish_queue FOR DELETE USING (true);
