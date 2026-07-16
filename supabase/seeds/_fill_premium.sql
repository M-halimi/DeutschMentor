DO $$
DECLARE
  r RECORD;
  lvl text;
  diff text;
BEGIN
  FOR r IN SELECT l.id, l.title, l.lesson_type, m.title as mod_title, m.level_id
            FROM public.course_lessons l
            JOIN public.course_modules m ON l.module_id = m.id
  LOOP
    lvl := r.level_id;
    diff := CASE WHEN lvl IN ('A1','A2') THEN 'easy'
                 WHEN lvl IN ('B1','B2') THEN 'medium'
                 ELSE 'hard' END;

    INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) VALUES
      (r.id, r.title, r.title, r.title, 'Used in ' || r.mod_title, 'neutral', false, 1)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
      (r.id, r.title, r.mod_title || ' - ' || r.title, 'From ' || r.mod_title, 'vocabulary', 1)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
      (r.id, 'Homework: ' || r.title, 'Complete tasks for "' || r.title || '" in ' || r.mod_title || '.', 'vocabulary',
       '[{"description":"Review vocabulary from this lesson"},{"description":"Write 5 sentences using key words"},{"description":"Practice exercises 3 times"}]', 15, 1)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
      (r.id, 'Review of "' || r.title || '" from ' || r.mod_title || '. Focus on key concepts at ' || lvl || ' level.',
       '["Mastered core vocabulary","Practiced grammar","Built confidence"]',
       '[{"title":"Key Points","summary":"Review the main concepts from this lesson"}]',
       ARRAY[r.title || ' vocabulary']::text[],
       ARRAY['Practice 15 min daily']::text[],
       ARRAY['Use new vocabulary daily']::text[])
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
      (r.id, r.title || ' - Speaking 1', 'Practice ' || r.title || ' aloud. Focus on pronunciation.', 'Speaking practice for ' || r.mod_title, ARRAY['Speak slowly','Use full sentences']::text[], ARRAY['Use lesson vocabulary']::text[], 30, 1),
      (r.id, r.title || ' - Speaking 2', 'Role-play a conversation about ' || r.title || '.', 'Speaking practice for ' || r.mod_title, ARRAY['Practice with a partner']::text[], ARRAY['Use lesson vocabulary']::text[], 60, 2)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
      (r.id, r.title || ' - Writing Task 1', 'Write a short text about ' || r.title || '. Use at least 5 vocabulary words.',
       ARRAY['Use vocabulary','Check grammar']::text[], ARRAY['Apply new words']::text[], ARRAY['Sentence structure']::text[], 50, 150, 1)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
      (r.id, r.title || ' - Conversation 1', 'Practice a conversation about ' || r.title || '.', 'Student', 'Teacher',
       'You are at ' || lvl || ' level. Practice having a conversation about ' || r.title || '.',
       'Hallo! Lass uns ueber "' || r.title || '" sprechen. Bist du bereit?',
       ARRAY[]::text[], CASE WHEN lvl IN ('A1','A2') THEN 'beginner' WHEN lvl IN ('B1','B2') THEN 'intermediate' ELSE 'advanced' END, 1)
    ON CONFLICT DO NOTHING;

    INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
      (r.id, r.title || ' - AI Challenge', 'Practice ' || r.title || ' with AI assistance.', 'AI practice for ' || r.mod_title,
       ARRAY['Use correct grammar','Apply vocabulary']::text[],
       ARRAY['Start simple','Build gradually']::text[], diff, 1)
    ON CONFLICT DO NOTHING;

  END LOOP;
END $$;
