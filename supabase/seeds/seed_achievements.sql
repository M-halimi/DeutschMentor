-- ============================================================================
-- SEED: Achievement Criteria & Certificate Rules
-- ============================================================================

do $$
declare
  a_id uuid;
begin

  -- Match existing achievements by title and create criteria
  select id into a_id from public.achievements where title = 'Erste Schritte' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'lessons_completed', 1)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Sprachenlerner' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'streak_days', 7)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Wortmeister' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'vocab_mastered', 100)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Hörverstehen' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'perfect_score', 1)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Schriftsteller' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'lessons_completed', 10)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Konversationsprofi' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'lessons_completed', 5)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'Goethe Bereit' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'exam_passed', 1)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'A1 Abgeschlossen' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'complete_level', 1)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'A2 Abgeschlossen' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'complete_level', 1)
    on conflict do nothing;
  end if;

  select id into a_id from public.achievements where title = 'B1 Abgeschlossen' limit 1;
  if a_id is not null then
    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)
    values (a_id, 'complete_level', 1)
    on conflict do nothing;
  end if;

end $$;
