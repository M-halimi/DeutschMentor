-- Clean up migration 00004 seed data that conflicts with the loader
-- The loader in scripts/load-all-data.ts will re-populate from JSON files

-- Delete in correct order (child tables first due to FK constraints)
delete from public.listening_exercises
where audio_lesson_id in (select id from public.audio_lessons where title in ('Begrüßungen','Im Restaurant','Wegbeschreibung','Einkaufen','Vorstellungsgespräch','Nachrichten'));

delete from public.audio_lessons
where title in ('Begrüßungen','Im Restaurant','Wegbeschreibung','Einkaufen','Vorstellungsgespräch','Nachrichten');

delete from public.reading_questions
where article_id in (select id from public.articles where title in ('Mein Tagesablauf','Ein Ausflug nach Berlin','Die Digitalisierung in Deutschland','Kulturelle Unterschiede am Arbeitsplatz','Die Energiewende'));

delete from public.article_vocabulary
where article_id in (select id from public.articles where title in ('Mein Tagesablauf','Ein Ausflug nach Berlin','Die Digitalisierung in Deutschland','Kulturelle Unterschiede am Arbeitsplatz','Die Energiewende'));

delete from public.articles
where title in ('Mein Tagesablauf','Ein Ausflug nach Berlin','Die Digitalisierung in Deutschland','Kulturelle Unterschiede am Arbeitsplatz','Die Energiewende');

delete from public.dictation_exercises
where title in ('Begrüßung','Im Café','Meine Familie');

delete from public.expressions
where german in ('Das ist mir egal','Es tut mir leid','Kein Problem','Auf jeden Fall','Ich verstehe nur Bahnhof','Das ist nicht mein Bier','Na klar','Mach dich nicht lächerlich','Hals- und Beinbruch','Ich drücke dir die Daumen');

-- Unique constraints already added by 00006_unique_constraints.sql
