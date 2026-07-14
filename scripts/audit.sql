SELECT 'course_levels' as tbl, count(*) as cnt FROM public.course_levels
UNION ALL SELECT 'course_modules', count(*) FROM public.course_modules
UNION ALL SELECT 'course_lessons', count(*) FROM public.course_lessons
UNION ALL SELECT 'lesson_vocabulary', count(*) FROM public.lesson_vocabulary
UNION ALL SELECT 'lesson_grammar', count(*) FROM public.lesson_grammar
UNION ALL SELECT 'lesson_exercises', count(*) FROM public.lesson_exercises
UNION ALL SELECT 'lesson_test_questions', count(*) FROM public.lesson_test_questions
UNION ALL SELECT 'lesson_expressions', count(*) FROM public.lesson_expressions
UNION ALL SELECT 'lesson_reading', count(*) FROM public.lesson_reading
UNION ALL SELECT 'lesson_listening', count(*) FROM public.lesson_listening
UNION ALL SELECT 'lesson_speaking', count(*) FROM public.lesson_speaking
UNION ALL SELECT 'lesson_writing', count(*) FROM public.lesson_writing
UNION ALL SELECT 'lesson_conversations', count(*) FROM public.lesson_conversations
UNION ALL SELECT 'lesson_ai_challenges', count(*) FROM public.lesson_ai_challenges
UNION ALL SELECT 'lesson_homework', count(*) FROM public.lesson_homework
UNION ALL SELECT 'lesson_reviews', count(*) FROM public.lesson_reviews
UNION ALL SELECT 'lesson_flashcards', count(*) FROM public.lesson_flashcards
ORDER BY tbl;
