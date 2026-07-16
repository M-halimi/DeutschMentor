-- ============================================================================
-- Unified Seed Entrypoint — DeutschMentor Complete Curriculum
-- Includes all levels A1-C2 in FK-safe order with ON CONFLICT idempotency
-- ============================================================================

-- Run in order: course_levels → course_modules → course_lessons → all content

\i './complete/seed_a1_complete.sql'
\i './complete/seed_a2_complete.sql'
\i './complete/seed_b1_complete.sql'
\i './complete/seed_b2_complete.sql'
\i './complete/seed_c1_complete.sql'
\i './complete/seed_c2_complete.sql'
\i './complete/seed_exam_prep_complete.sql'
