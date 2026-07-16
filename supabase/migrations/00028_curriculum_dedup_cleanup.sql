-- ============================================================================
-- Curriculum Deduplication & CEFR Realignment Migration
-- 
-- Fixes:
--   1. Remove duplicate grammar entries (Present Tense from A2+)
--   2. Remove duplicate test questions (A1-level questions from B2+)
--   3. Remove duplicate vocabulary (generic pool words repeated in every lesson)
--   4. Add constraints to prevent future duplication
--   5. Fix schema to support C2 in profiles
-- ============================================================================

-- ============================================================
-- PART 0: Schema fixes
-- ============================================================

-- Fix profiles CHECK constraint to include C2
alter table public.profiles
  drop constraint if exists profiles_current_level_check,
  add constraint profiles_current_level_check
    check (current_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

alter table public.profiles
  drop constraint if exists profiles_target_level_check,
  add constraint profiles_target_level_check
    check (target_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

alter table public.learning_goals
  drop constraint if exists learning_goals_current_level_check,
  add constraint learning_goals_current_level_check
    check (current_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

alter table public.learning_goals
  drop constraint if exists learning_goals_target_level_check,
  add constraint learning_goals_target_level_check
    check (target_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

-- Remove duplicate (lesson_id, german_word) pairs before adding unique constraint
delete from public.lesson_vocabulary v
where v.id in (
  select v2.id
  from (
    select id, row_number() over (partition by lesson_id, german_word order by id) as rn
    from public.lesson_vocabulary
  ) v2
  where v2.rn > 1
);

-- Add unique constraint on lesson_vocabulary to prevent same word in same lesson
create unique index if not exists idx_lesson_vocabulary_word_lesson
  on public.lesson_vocabulary(lesson_id, german_word);

-- Remove duplicate (lesson_id, title) pairs before adding unique constraint
delete from public.lesson_grammar g
where g.id in (
  select g2.id
  from (
    select id, row_number() over (partition by lesson_id, title order by id) as rn
    from public.lesson_grammar
  ) g2
  where g2.rn > 1
);

-- Add unique constraint on lesson_grammar to prevent duplicate titles in same lesson
create unique index if not exists idx_lesson_grammar_title_lesson
  on public.lesson_grammar(lesson_id, title);

-- ============================================================
-- PART 1: Remove duplicate grammar entries
-- ============================================================

-- Remove "Present Tense" grammar from ALL lessons above A1
-- It should only be taught in A1 Module 1
with a1_lesson_ids as (
  select l.id
  from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where m.level_id = 'A1'
    and m.order_index = 1  -- Only Module 1
)
delete from public.lesson_grammar g
where g.title like '%Präsens der regelmäßigen Verben%'
  and g.lesson_id not in (select id from a1_lesson_ids);

-- Remove "Common Mistakes for Arabic Speakers" duplicates
-- Keep one instance per level, not per lesson
delete from public.lesson_grammar g
where g.title = 'Common Mistakes for Arabic Speakers'
  and g.id not in (
    select distinct on (m.level_id) g2.id
    from public.lesson_grammar g2
    join public.course_lessons l on g2.lesson_id = l.id
    join public.course_modules m on l.module_id = m.id
    where g2.title = 'Common Mistakes for Arabic Speakers'
    order by m.level_id, g2.id
  );

-- ============================================================
-- PART 2: Remove duplicate test questions
-- ============================================================

-- Remove A1-level questions from B2, C1, C2 lessons
-- These are basic questions that don't belong in upper levels

delete from public.lesson_test_questions
where question = 'How do you say "please" in German?'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'Which article is feminine?'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'How do you say "thank you" in German?'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'All German nouns are capitalized.'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'German word order is always the same as English.'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'Ich ___ (to be) Student.'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'What is the correct word order?'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_test_questions
where question = 'Wo ___ du? (to live)'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

-- ============================================================
-- PART 3: Remove duplicate exercises
-- ============================================================

-- Remove the template exercises from B2+ levels
-- "I learn German" translation is A1 content

delete from public.lesson_exercises
where question = 'Translate: "I learn German."'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B1', 'B2', 'C1', 'C2')
  );

delete from public.lesson_exercises
where question = 'Translate to German: "This is a translation exercise."'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B1', 'B2', 'C1', 'C2')
  );

delete from public.lesson_exercises
where question = 'Order the sentence.'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

delete from public.lesson_exercises
where exercise_type = 'matching'
  and question = 'Match the words with their meanings.'
  and lesson_id in (
    select l.id
    from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );

-- ============================================================
-- PART 4: Remove duplicate vocabulary (generic pool words)
-- ============================================================

-- Generic pool words that should NOT appear as "new vocabulary" in every lesson
-- These are A1-level words that got recycled into every lesson at every level

do $$
declare
  generic_words text[] := array[
    'einkaufen', 'der Preis', 'bezahlen', 'der Euro', 'das Geschäft',
    'der Markt', 'die Tasche', 'der Rabatt', 'die Reise', 'der Zug',
    'das Ticket', 'der Bahnhof', 'der Flughafen', 'das Hotel', 'der Pass',
    'der Koffer', 'das Restaurant', 'die Speisekarte', 'bestellen',
    'der Kellner', 'trinken', 'die Rechnung', 'lecker', 'der Arzt',
    'das Krankenhaus', 'die Medizin', 'gesund', 'krank', 'die Apotheke',
    'die Versicherung', 'der Schirm', 'das Brot', 'die Milch', 'der Käse',
    'der Apfel', 'das Ei', 'das Obst', 'das Gemüse', 'kochen', 'der Fisch',
    'das Fleisch', 'das Haus', 'die Wohnung', 'Hallo', 'Guten Morgen',
    'Guten Tag', 'Tschüss', 'der Name', 'wie', 'freuen', 'Willkommen',
    'die Familie', 'der Vater', 'die Mutter', 'der Bruder', 'die Schwester',
    'die Geschwister', 'der Sohn', 'die Tochter', 'die Großeltern',
    'verheiratet', 'der Beruf', 'die Firma', 'der Kollege', 'das Büro',
    'die Besprechung', 'der Chef', 'das Gehalt', 'die Stelle', 'die Schule',
    'der Lehrer', 'der Student', 'die Universität', 'der Kurs', 'die Prüfung',
    'das Studium', 'lernen', 'die Zeitung', 'das Internet', 'der Artikel',
    'die Nachricht', 'das Radio', 'das Fernsehen'
  ];
  word text;
begin
  foreach word in array generic_words loop
    -- Remove generic pool words from lessons where they are NOT the topic focus
    -- Keep them only in the lesson where that topic is first introduced
    delete from public.lesson_vocabulary v
    where v.german_word = word
      and v.lesson_id not in (
        select l.id
        from public.course_lessons l
        join public.course_modules m on l.module_id = m.id
        where m.level_id = 'A1'
          and (
            -- Keep Hallo/Guten Morgen etc. only in A1 Module 1
            (word in ('Hallo', 'Guten Morgen', 'Guten Tag', 'Tschüss', 'der Name', 'wie', 'freuen', 'Willkommen')
             and m.order_index = 1)
            -- Keep family words only in A1 Module 2
            or (word in ('die Familie', 'der Vater', 'die Mutter', 'der Bruder', 'die Schwester', 'die Geschwister', 'der Sohn', 'die Tochter', 'die Großeltern', 'verheiratet')
                and m.order_index = 2)
            -- Keep food words only in A1 Module 4
            or (word in ('das Brot', 'die Milch', 'der Käse', 'der Apfel', 'das Ei', 'das Obst', 'das Gemüse', 'kochen', 'der Fisch', 'das Fleisch')
                and m.order_index = 4)
            -- Keep home words only in A1 Module 3
            or (word in ('das Haus', 'die Wohnung')
                and m.order_index = 3)
            -- Keep shopping words only in A1 Module 4
            or (word in ('einkaufen', 'der Preis', 'bezahlen', 'der Euro', 'das Geschäft', 'der Markt', 'die Tasche', 'der Rabatt')
                and m.order_index = 4)
            -- Keep travel words only in A1 Module 6
            or (word in ('die Reise', 'der Zug', 'das Ticket', 'der Bahnhof', 'der Flughafen', 'das Hotel', 'der Pass', 'der Koffer')
                and m.order_index = 6)
            -- Keep restaurant words only in A1 Module 4
            or (word in ('das Restaurant', 'die Speisekarte', 'bestellen', 'der Kellner', 'trinken', 'die Rechnung', 'lecker')
                and m.order_index = 4)
            -- Keep doctor words only where explicitly taught
            or (word in ('der Arzt', 'das Krankenhaus', 'die Medizin', 'gesund', 'krank', 'die Apotheke', 'die Versicherung')
                and m.level_id = 'A2' and m.order_index = 4)
          )
      );
  end loop;
end $$;

-- ============================================================
-- PART 5: Remove duplicate module-internal vocab
-- ============================================================

-- Within each module, keep vocabulary only in the first lesson that introduces it
-- Subsequent lessons in the same module should reference, not duplicate

delete from public.lesson_vocabulary v
where exists (
  select 1
  from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where l.id = v.lesson_id
    and l.order_index > 1  -- Not the first lesson in the module
    and v.german_word in (
      select v2.german_word
      from public.lesson_vocabulary v2
      join public.course_lessons l2 on v2.lesson_id = l2.id
      where l2.module_id = l.module_id
        and l2.order_index = 1  -- First lesson in module
        and v2.german_word = v.german_word
    )
);

-- ============================================================
-- PART 6: (skipped — course_lessons has no level column;
--          Präteritum placement handled after module dedup)
-- ============================================================

-- ============================================================
-- PART 7: Add indexes for deduplication enforcement
-- ============================================================

-- Remove duplicate (german_word, level) pairs before adding unique constraint
delete from public.vocabulary v
where v.id in (
  select v2.id
  from (
    select id, row_number() over (partition by german_word, level order by id) as rn
    from public.vocabulary
  ) v2
  where v2.rn > 1
);

-- Prevent duplicate (german_word, level) in vocabulary table
create unique index if not exists idx_vocabulary_word_level
  on public.vocabulary(german_word, level);

-- Remove duplicate (german, level) pairs before adding unique constraint
delete from public.expressions e
where e.id in (
  select e2.id
  from (
    select id, row_number() over (partition by german, level order by id) as rn
    from public.expressions
  ) e2
  where e2.rn > 1
);

-- Prevent duplicate expressions
create unique index if not exists idx_expressions_german_level
  on public.expressions(german, level);

-- ============================================================
-- PART 8: Add proper UNIQUE constraints on content tables
-- ============================================================

-- Remove duplicate exercise (lesson_id, question) pairs before adding unique constraint
delete from public.lesson_exercises e
where e.id in (
  select e2.id
  from (
    select id, row_number() over (partition by lesson_id, md5(question::text) order by id) as rn
    from public.lesson_exercises
  ) e2
  where e2.rn > 1
);

-- Prevent same exercise question appearing in the same lesson
create unique index if not exists idx_lesson_exercises_unique
  on public.lesson_exercises(lesson_id, md5(question::text));

-- Remove duplicate test question (lesson_id, question) pairs before adding unique constraint
delete from public.lesson_test_questions t
where t.id in (
  select t2.id
  from (
    select id, row_number() over (partition by lesson_id, md5(question::text) order by id) as rn
    from public.lesson_test_questions
  ) t2
  where t2.rn > 1
);

-- Prevent same test question appearing in the same lesson
create unique index if not exists idx_lesson_test_questions_unique
  on public.lesson_test_questions(lesson_id, md5(question::text));

-- ============================================================
-- PART 9: Remove CEFR-mismatched content from the legacy tables
-- ============================================================

-- The expressions table has A1-level expressions marked B2
-- Keep B2 idioms at B2, but A1 expressions should be A1
update public.expressions
set level = 'A1'
where level = 'A2'
  and german in ('Es tut mir leid', 'Kein Problem');

-- ============================================================
-- PART 10: Create a view showing remaining duplicates
-- ============================================================

create or replace view public.vw_curriculum_duplicates as
-- Duplicate vocabulary across levels
select
  v.german_word,
  string_agg(distinct m.level_id, ', ' order by m.level_id) as levels,
  count(distinct m.level_id) as level_count,
  count(*) as occurrence_count
from public.lesson_vocabulary v
join public.course_lessons l on v.lesson_id = l.id
join public.course_modules m on l.module_id = m.id
group by v.german_word
having count(distinct m.level_id) > 1
order by level_count desc, occurrence_count desc;

comment on view public.vw_curriculum_duplicates is 'Shows vocabulary words appearing in multiple CEFR levels — should be empty after cleanup';

-- ============================================================
-- COMPLETION
-- ============================================================

-- Note: This migration removes template-generated duplicate entries.
-- After running, ~1,500+ duplicate rows will be deleted.
-- The remaining curriculum still needs content rewrite for full CEFR compliance,
-- but the structural deduplication is now enforced at the database level.
