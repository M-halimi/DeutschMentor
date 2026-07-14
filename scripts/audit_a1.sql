SELECT cm.title as module_title, cl.title as lesson_title, cl.lesson_type, cl.id as lesson_id 
FROM public.course_modules cm 
JOIN public.course_lessons cl ON cl.module_id = cm.id 
WHERE cm.level_id = 'A1' 
ORDER BY cm.order_index, cl.order_index;
