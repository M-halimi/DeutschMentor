-- Deduplicate vocabulary: keep the earliest created row per (german_word, level)
delete from public.vocabulary
where id in (
  select id from (
    select id, row_number() over (partition by german_word, level order by created_at) as rn
    from public.vocabulary
  ) sub where rn > 1
);

alter table public.vocabulary add constraint vocabulary_word_level_key unique (german_word, level);

-- Deduplicate grammar_exercises
delete from public.grammar_exercises
where id in (
  select id from (
    select id, row_number() over (partition by title, question, level order by created_at) as rn
    from public.grammar_exercises
  ) sub where rn > 1
);

alter table public.grammar_exercises add constraint grammar_exercises_title_question_level_key unique (title, question, level);
