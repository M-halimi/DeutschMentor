-- 00064_verb_publish_workflow.sql
-- 
-- Adds publish/staging workflow for verb import system.
-- 
-- Changes:
--   1. verb_reference_candidates: extend status check to include 'PUBLISHED'
--   2. verb_reference_candidates: add published_at, publish_notes columns
--   3. german_verbs: add is_published, published_at columns
--   4. RLS policy: students only see published verbs
--   5. Helper function: publish_verb_from_candidate()

-- ─── 1. Extend verb_reference_candidates status ───────────────────────────

ALTER TABLE verb_reference_candidates
  DROP CONSTRAINT IF EXISTS verb_reference_candidates_status_check;

ALTER TABLE verb_reference_candidates
  ADD CONSTRAINT verb_reference_candidates_status_check
  CHECK (status IN ('PENDING', 'APPROVED', 'REJECTED', 'PUBLISHED'));

-- Add publish tracking columns
ALTER TABLE verb_reference_candidates
  ADD COLUMN IF NOT EXISTS published_at timestamptz;

ALTER TABLE verb_reference_candidates
  ADD COLUMN IF NOT EXISTS publish_notes text;

-- ─── 2. Add publish columns to german_verbs ───────────────────────────────

ALTER TABLE german_verbs
  ADD COLUMN IF NOT EXISTS is_published boolean NOT NULL DEFAULT false;

ALTER TABLE german_verbs
  ADD COLUMN IF NOT EXISTS published_at timestamptz;

-- Existing verbs should be visible (they were manually entered/approved before this migration)
UPDATE german_verbs SET is_published = true WHERE is_published IS NULL;

-- ─── 3. RLS: students only see published verbs ─────────────────────────

-- Drop existing public SELECT policy if any
DROP POLICY IF EXISTS "Public can view published verbs" ON german_verbs;

-- Create policy: authenticated students only see is_published = true
CREATE POLICY "Public can view published verbs"
  ON german_verbs
  FOR SELECT
  USING (
    auth.role() = 'service_role' OR
    auth.jwt() ->> 'role' = 'admin' OR
    is_published = true
  );

-- ─── 4. Helper function: atomic publish from candidate ─────────────────

CREATE OR REPLACE FUNCTION publish_verb_from_candidate(
  p_candidate_id uuid,
  p_english_translation text DEFAULT NULL,
  p_french_translation text DEFAULT NULL,
  p_arabic_translation text DEFAULT NULL,
  p_published_by uuid DEFAULT NULL
)
RETURNS uuid
LANGUAGE plpgsql
AS $$
DECLARE
  v_candidate record;
  v_verb_id uuid;
BEGIN
  -- Lock and fetch candidate
  SELECT * INTO v_candidate
  FROM verb_reference_candidates
  WHERE id = p_candidate_id AND status = 'APPROVED'
  FOR UPDATE;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Candidate not found or not in APPROVED status: %', p_candidate_id;
  END IF;

  -- Validate required fields
  IF v_candidate.infinitive IS NULL OR v_candidate.infinitive = '' THEN
    RAISE EXCEPTION 'Candidate has no infinitive';
  END IF;

  -- Create german_verbs entry (is_published = false by default)
  INSERT INTO german_verbs (
    infinitive,
    english_translation,
    arabic_translation,
    french_translation,
    cefr_level,
    verb_type,
    auxiliary,
    partizip_2,
    separable_prefix,
    is_reflexive,
    reflexive_pronoun,
    is_published,
    published_at
  ) VALUES (
    v_candidate.infinitive,
    COALESCE(p_english_translation, v_candidate.translation, '(pending translation)'),
    p_arabic_translation,
    p_french_translation,
    COALESCE(v_candidate.cefr_level, 'B1'),
    COALESCE(v_candidate.verb_type, 'regular'),
    COALESCE(v_candidate.auxiliary, 'haben'),
    COALESCE(v_candidate.partizip_2, '(pending)'),
    v_candidate.separable_prefix,
    COALESCE(v_candidate.is_reflexive, false),
    v_candidate.reflexive_pronoun,
    false,
    NULL
  )
  RETURNING id INTO v_verb_id;

  -- Mark candidate as PUBLISHED
  UPDATE verb_reference_candidates
  SET
    status = 'PUBLISHED',
    published_at = now(),
    updated_at = now()
  WHERE id = p_candidate_id;

  RETURN v_verb_id;
END;
$$;
