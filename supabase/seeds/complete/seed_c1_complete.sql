-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level C1 (Advanced)
-- Generated for 6 modules, 23 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: C1 — Advanced
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('C1', 'Advanced', 'Express yourself clearly on complex subjects. Use German effectively in professional and academic settings.', NULL, 'from-red-500 to-rose-600', 5)
  on conflict (id) do nothing;

  -- Module 1: Akademische Sprache
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10260', 'C1', 'Akademische Sprache', 'Master academic German: nominal style, complex structures, and formal register.', '["Use Nominalstil vs Verbalstil appropriately","Use Nomen-Verb-Verbindungen actively","Understand and write complex sentences","Analyze academic texts","Write academic essays"]', 1, 6, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliche Grundbegriffe (L-C1-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f6f', '00000000-0000-4000-a000-000039d10260', 'Wissenschaftliche Grundbegriffe', 'Learn core academic vocabulary.', 'Academic Vocabulary', 'vocabulary', '["Understand and use 64 key vocabulary words about Academic Vocabulary","Apply present_tense correctly in sentences","Read and comprehend a text about Academic Vocabulary","Listen and understand a natural dialogue about Academic Vocabulary","Speak about Academic Vocabulary with confidence","Write a short text about Academic Vocabulary using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f6f', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f6f', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Publikation","die Forschung","die These","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Methode","die Analyse","die Forschung","die These"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Forschung","die Analyse","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Methode","die Publikation","die Analyse","die Forschung"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Forschung","die Analyse","die Publikation","die Methode"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Academic Vocabulary. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Academic Vocabulary."', '["Ich lerne über Academic Vocabulary.","Ich lerne Academic Vocabulary.","Lerne ich Academic Vocabulary."]', 'Ich lerne über Academic Vocabulary.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', 'Das Wort "die Methode" gehört zum Thema Academic Vocabulary.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', '🔊 Sprechen: Wissenschaftliche Grundbegriffe', 'Presentation: Prepare a 2-minute presentation on "Academic Vocabulary im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Academic Vocabulary', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', '✏️ Schreiben: Wissenschaftliche Grundbegriffe', 'Write a discursive essay (300-350 words) analyzing "Academic Vocabulary in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Roleplay', 'Academic Vocabulary', 'Student', 'Teacher', 'Practice conversation about Academic Vocabulary', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Advanced Roleplay', 'Academic Vocabulary', 'Customer', 'Assistant', 'Extended conversation about Academic Vocabulary', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe".', 'Creative practice for Academic Vocabulary', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', '📚 Hausaufgabe: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Academic Vocabulary: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Academic Vocabulary. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f6f', '🎯 Excellent progress! This lesson covered Academic Vocabulary (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Academic Vocabulary","present_tense — grammar explanation and practice","Reading comprehension: text about Academic Vocabulary","Listening comprehension: dialogue about Academic Vocabulary","Speaking practice: roleplay/discussion about Academic Vocabulary","Writing task: text about Academic Vocabulary"]', '[{"title":"Wissenschaftliche Grundbegriffe Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Academic Vocabulary for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Translate to German: "I use the word "research" in a sentence about Academic Vocabulary."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Academic Vocabulary."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Translate to German: "I use the word "method" in a sentence about Academic Vocabulary."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Culture: 🇩🇪 Deutsche Kultur: Academic Vocabulary', 'The German approach to Academic Vocabulary reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Academic Vocabulary in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Academic Vocabulary في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Akademisches Schreiben (L-C1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f70', '00000000-0000-4000-a000-000039d10260', 'Akademisches Schreiben', 'Write academic texts with proper structure.', 'Academic Writing', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f70', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f70', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Forschung","die These","die Analyse","die Publikation"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die These","die Publikation","die Methode","die Forschung"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die These","die Publikation","die Forschung"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Forschung","die These","die Methode","die Publikation"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die These","die Methode","die Publikation","die Forschung"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Academic Writing. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Academic Writing."', '["Ich lerne über Academic Writing.","Ich lerne Academic Writing.","Lerne ich Academic Writing."]', 'Ich lerne über Academic Writing.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', 'Das Wort "die Methode" gehört zum Thema Academic Writing.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f70', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f70', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f70', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', '🔊 Sprechen: Akademisches Schreiben', 'Presentation: Prepare a 2-minute presentation on "Academic Writing im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Academic Writing', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', '✏️ Schreiben: Akademisches Schreiben', 'Write a discursive essay (300-350 words) analyzing "Academic Writing in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Roleplay', 'Academic Writing', 'Student', 'Teacher', 'Practice conversation about Academic Writing', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Advanced Roleplay', 'Academic Writing', 'Customer', 'Assistant', 'Extended conversation about Academic Writing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben".', 'Creative practice for Academic Writing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', '📚 Hausaufgabe: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Academic Writing: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Academic Writing. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f70', '🎯 Excellent progress! This lesson covered Academic Writing (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Academic Writing","present_tense — grammar explanation and practice","Reading comprehension: text about Academic Writing","Listening comprehension: dialogue about Academic Writing","Speaking practice: roleplay/discussion about Academic Writing","Writing task: text about Academic Writing"]', '[{"title":"Akademisches Schreiben Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Academic Writing for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Translate to German: "I use the word "research" in a sentence about Academic Writing."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Academic Writing."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Translate to German: "I use the word "method" in a sentence about Academic Writing."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Culture: 🇩🇪 Deutsche Kultur: Academic Writing', 'The German approach to Academic Writing reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Academic Writing in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Academic Writing في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Nominalstil vs. Verbalstil (L-C1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f71', '00000000-0000-4000-a000-000039d10260', 'Nominalstil vs. Verbalstil', 'Learn when to use nominal vs verbal style.', 'Nominal vs Verbal Style', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f71', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f71', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Analyse","die Forschung","die Methode","die Publikation"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die These","die Analyse","die Methode","die Publikation"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die These","die Methode","die Forschung","die Analyse"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Methode","die Publikation","die Analyse","die Forschung"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Publikation","die Forschung","die Analyse","die Methode"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Nominal vs Verbal Style. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Nominal vs Verbal Style."', '["Ich lerne über Nominal vs Verbal Style.","Ich lerne Nominal vs Verbal Style.","Lerne ich Nominal vs Verbal Style."]', 'Ich lerne über Nominal vs Verbal Style.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', 'Das Wort "die Methode" gehört zum Thema Nominal vs Verbal Style.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f71', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f71', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f71', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', '🔊 Sprechen: Nominalstil vs. Verbalstil', 'Presentation: Prepare a 2-minute presentation on "Nominal vs Verbal Style im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Nominal vs Verbal Style', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', '✏️ Schreiben: Nominalstil vs. Verbalstil', 'Write a discursive essay (300-350 words) analyzing "Nominal vs Verbal Style in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Roleplay', 'Nominal vs Verbal Style', 'Student', 'Teacher', 'Practice conversation about Nominal vs Verbal Style', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Advanced Roleplay', 'Nominal vs Verbal Style', 'Customer', 'Assistant', 'Extended conversation about Nominal vs Verbal Style', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil vs. Verbalstil".', 'Creative practice for Nominal vs Verbal Style', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', '📚 Hausaufgabe: Nominalstil vs. Verbalstil', 'Complete these tasks to reinforce "Nominalstil vs. Verbalstil".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Nominal vs Verbal Style: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Nominal vs Verbal Style. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f71', '🎯 Excellent progress! This lesson covered Nominal vs Verbal Style (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Nominal vs Verbal Style","present_tense — grammar explanation and practice","Reading comprehension: text about Nominal vs Verbal Style","Listening comprehension: dialogue about Nominal vs Verbal Style","Speaking practice: roleplay/discussion about Nominal vs Verbal Style","Writing task: text about Nominal vs Verbal Style"]', '[{"title":"Nominalstil vs. Verbalstil Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Nominal vs Verbal Style for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Translate to German: "I use the word "research" in a sentence about Nominal vs Verbal Style."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Nominal vs Verbal Style."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Translate to German: "I use the word "method" in a sentence about Nominal vs Verbal Style."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Culture: 🇩🇪 Deutsche Kultur: Nominal vs Verbal Style', 'The German approach to Nominal vs Verbal Style reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Nominal vs Verbal Style in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Nominal vs Verbal Style في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 4: Nomen-Verb-Verbindungen (L-C1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f72', '00000000-0000-4000-a000-000039d10260', 'Nomen-Verb-Verbindungen', 'Master noun-verb collocations for formal German.', 'Noun-Verb Collocations', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f72', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f72', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Analyse","die Methode","die Publikation","die Forschung"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Analyse","die Forschung","die Methode","die These"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Forschung","die Analyse","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Forschung","die These","die Publikation","die Methode"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Methode","die Analyse","die Forschung","die These"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Noun-Verb Collocations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Noun-Verb Collocations."', '["Ich lerne über Noun-Verb Collocations.","Ich lerne Noun-Verb Collocations.","Lerne ich Noun-Verb Collocations."]', 'Ich lerne über Noun-Verb Collocations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', 'Das Wort "die Methode" gehört zum Thema Noun-Verb Collocations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f72', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f72', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f72', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', '🔊 Sprechen: Nomen-Verb-Verbindungen', 'Presentation: Prepare a 2-minute presentation on "Noun-Verb Collocations im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Noun-Verb Collocations', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', '✏️ Schreiben: Nomen-Verb-Verbindungen', 'Write a discursive essay (300-350 words) analyzing "Noun-Verb Collocations in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Roleplay', 'Noun-Verb Collocations', 'Student', 'Teacher', 'Practice conversation about Noun-Verb Collocations', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Advanced Roleplay', 'Noun-Verb Collocations', 'Customer', 'Assistant', 'Extended conversation about Noun-Verb Collocations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nomen-Verb-Verbindungen".', 'Creative practice for Noun-Verb Collocations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', '📚 Hausaufgabe: Nomen-Verb-Verbindungen', 'Complete these tasks to reinforce "Nomen-Verb-Verbindungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Noun-Verb Collocations: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Noun-Verb Collocations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f72', '🎯 Excellent progress! This lesson covered Noun-Verb Collocations (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Noun-Verb Collocations","present_tense — grammar explanation and practice","Reading comprehension: text about Noun-Verb Collocations","Listening comprehension: dialogue about Noun-Verb Collocations","Speaking practice: roleplay/discussion about Noun-Verb Collocations","Writing task: text about Noun-Verb Collocations"]', '[{"title":"Nomen-Verb-Verbindungen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Noun-Verb Collocations for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Translate to German: "I use the word "research" in a sentence about Noun-Verb Collocations."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Noun-Verb Collocations."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Translate to German: "I use the word "method" in a sentence about Noun-Verb Collocations."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Culture: 🇩🇪 Deutsche Kultur: Noun-Verb Collocations', 'The German approach to Noun-Verb Collocations reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Noun-Verb Collocations in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Noun-Verb Collocations في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 5: Komplexe Satzstrukturen (L-C1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f73', '00000000-0000-4000-a000-000039d10260', 'Komplexe Satzstrukturen', 'Analyze and create complex sentence structures.', 'Complex Sentences', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f73', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f73', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die These","die Methode","die Forschung","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Analyse","die Publikation","die Forschung","die Methode"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Forschung","die Analyse","die Methode","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Methode","die Analyse","die Forschung","die These"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Analyse","die Publikation","die These","die Forschung"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Complex Sentences. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Complex Sentences."', '["Ich lerne über Complex Sentences.","Ich lerne Complex Sentences.","Lerne ich Complex Sentences."]', 'Ich lerne über Complex Sentences.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', 'Das Wort "die Methode" gehört zum Thema Complex Sentences.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f73', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f73', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f73', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', '🔊 Sprechen: Komplexe Satzstrukturen', 'Presentation: Prepare a 2-minute presentation on "Complex Sentences im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Complex Sentences', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', '✏️ Schreiben: Komplexe Satzstrukturen', 'Write a discursive essay (300-350 words) analyzing "Complex Sentences in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Roleplay', 'Complex Sentences', 'Student', 'Teacher', 'Practice conversation about Complex Sentences', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Advanced Roleplay', 'Complex Sentences', 'Customer', 'Assistant', 'Extended conversation about Complex Sentences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Komplexe Satzstrukturen".', 'Creative practice for Complex Sentences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', '📚 Hausaufgabe: Komplexe Satzstrukturen', 'Complete these tasks to reinforce "Komplexe Satzstrukturen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Complex Sentences: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Complex Sentences. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f73', '🎯 Excellent progress! This lesson covered Complex Sentences (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Complex Sentences","present_tense — grammar explanation and practice","Reading comprehension: text about Complex Sentences","Listening comprehension: dialogue about Complex Sentences","Speaking practice: roleplay/discussion about Complex Sentences","Writing task: text about Complex Sentences"]', '[{"title":"Komplexe Satzstrukturen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Complex Sentences for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Translate to German: "I use the word "research" in a sentence about Complex Sentences."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Complex Sentences."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Translate to German: "I use the word "method" in a sentence about Complex Sentences."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Culture: 🇩🇪 Deutsche Kultur: Complex Sentences', 'The German approach to Complex Sentences reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Complex Sentences in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Complex Sentences في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 6: Test: Akademische Sprache (L-C1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f74', '00000000-0000-4000-a000-000039d10260', 'Test: Akademische Sprache', 'Module test on academic language.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f74', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f74', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die These","die Methode","die Publikation","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die These","die Analyse","die Forschung","die Publikation"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die These","die Forschung","die Publikation","die Analyse"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Publikation","die Methode","die Analyse","die Forschung"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Analyse","die Publikation","die Methode","die Forschung"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', 'Das Wort "die Methode" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Akademische Sprache', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Akademische Sprache', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Akademische Sprache', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355a9f74', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355a9f74', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355a9f74', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', '🔊 Sprechen: Test: Akademische Sprache', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', '✏️ Schreiben: Test: Akademische Sprache', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Akademische Sprache".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', '📚 Hausaufgabe: Test: Akademische Sprache', 'Complete these tasks to reinforce "Test: Akademische Sprache".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f74', '🎯 Excellent progress! This lesson covered Module Test (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Akademische Sprache Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Translate to German: "I use the word "research" in a sentence about Module Test."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Module Test."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Translate to German: "I use the word "method" in a sentence about Module Test."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 2: Sprache, Stil und Rhetorik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10261', 'C1', 'Sprache, Stil und Rhetorik', 'Analyze and use sophisticated language, style, and rhetorical devices.', '["Use rhetorical devices effectively","Analyze text style and register","Use Konjunktiv I for reported speech","Write in different registers","Give persuasive presentations"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Rhetorische Mittel (L-C1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13ce', '00000000-0000-4000-a000-000039d10261', 'Rhetorische Mittel', 'Learn rhetorical devices and their effects.', 'Rhetorical Devices', 'vocabulary', '["Understand and use 64 key vocabulary words about Rhetorical Devices","Apply present_tense correctly in sentences","Read and comprehend a text about Rhetorical Devices","Listen and understand a natural dialogue about Rhetorical Devices","Speak about Rhetorical Devices with confidence","Write a short text about Rhetorical Devices using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13ce', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13ce', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "rhetoric"?', '["die Metapher","die Überzeugung","die Rede","das Argument"]', 'die Rhetorik', '"rhetoric" = "die Rhetorik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "metaphor"?', '["die Rhetorik","die Überzeugung","die Metapher","das Argument"]', 'die Metapher', '"metaphor" = "die Metapher" in German. Article: die Plural: die Metaphern', 1, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "argument"?', '["das Argument","die Rhetorik","die Metapher","die Rede"]', 'das Argument', '"argument" = "das Argument" in German. Article: das Plural: die Argumente', 1, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "persuasion"?', '["die Rede","die Überzeugung","das Argument","die Rhetorik"]', 'die Überzeugung', '"persuasion" = "die Überzeugung" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech"?', '["die Rede","die Rhetorik","die Metapher","die Überzeugung"]', 'die Rede', '"speech" = "die Rede" in German. Article: die Plural: die Reden', 1, 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Rhetorical Devices. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Rhetorical Devices."', '["Ich lerne über Rhetorical Devices.","Ich lerne Rhetorical Devices.","Lerne ich Rhetorical Devices."]', 'Ich lerne über Rhetorical Devices.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'matching', 'Match: Which word pairs are correct?', '["die Rhetorik - rhetoric, die Metapher - metaphor"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Was bedeutet "die Rhetorik" auf Deutsch?', '["rhetoric","to run","beautiful","yesterday"]', 'rhetoric', 1, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welcher Artikel gehört zu "die Metapher"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', 'Das Wort "das Argument" gehört zum Thema Rhetorical Devices.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_blank', 'Complete: Ich ___ (persuasion) Deutsch.', '["die Überzeugung","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Wie lautet das deutsche Wort für "speech"?', '["die Rede","das Pathos","die Ironie","die Forschung"]', 'die Rede', 1, 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Rhetorik', 'rhetoric — البلاغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Metapher (die Metaphern)', 'metaphor — الاستعارة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'das das Argument (die Argumente)', 'argument — الحجة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Überzeugung', 'persuasion — الإقناع', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Rede (die Reden)', 'speech — الخطاب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'das das Pathos', 'pathos — العاطفة البلاغية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Ironie', 'irony — السخرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b13ce', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b13ce', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b13ce', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b13ce', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', '🔊 Sprechen: Rhetorische Mittel', 'Presentation: Prepare a 2-minute presentation on "Rhetorical Devices im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Rhetorical Devices', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', '✏️ Schreiben: Rhetorische Mittel', 'Write a discursive essay (300-350 words) analyzing "Rhetorical Devices in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Roleplay', 'Rhetorical Devices', 'Student', 'Teacher', 'Practice conversation about Rhetorical Devices', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Advanced Roleplay', 'Rhetorical Devices', 'Customer', 'Assistant', 'Extended conversation about Rhetorical Devices', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rhetorische Mittel".', 'Creative practice for Rhetorical Devices', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', '📚 Hausaufgabe: Rhetorische Mittel', 'Complete these tasks to reinforce "Rhetorische Mittel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Rhetorical Devices: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Rhetorical Devices. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13ce', '🎯 Excellent progress! This lesson covered Rhetorical Devices (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of rhetoric. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Rhetorical Devices","present_tense — grammar explanation and practice","Reading comprehension: text about Rhetorical Devices","Listening comprehension: dialogue about Rhetorical Devices","Speaking practice: roleplay/discussion about Rhetorical Devices","Writing task: text about Rhetorical Devices"]', '[{"title":"Rhetorische Mittel Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Rhetorik (rhetoric)','die Metapher (metaphor)','das Argument (argument)','die Überzeugung (persuasion)','die Rede (speech)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Rhetorical Devices for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Translate to German: "I use the word "rhetoric" in a sentence about Rhetorical Devices."', '[]', 'Rhetorik ist die Kunst der Rede.', 'Use die  "die Rhetorik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Translate to German: "I use the word "metaphor" in a sentence about Rhetorical Devices."', '[]', 'Die Metapher ist ein Stilmittel.', 'Use die  "die Metapher" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Translate to German: "I use the word "argument" in a sentence about Rhetorical Devices."', '[]', 'Das Argument ist überzeugend.', 'Use das  "das Argument" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Culture: 🇩🇪 Deutsche Kultur: Rhetorical Devices', 'The German approach to Rhetorical Devices reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Rhetorical Devices in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Rhetorical Devices في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Konjunktiv I: Indirekte Rede (L-C1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13cf', '00000000-0000-4000-a000-000039d10261', 'Konjunktiv I: Indirekte Rede', 'Learn subjunctive I for indirect speech.', 'Indirect Speech', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13cf', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13cf', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "rhetoric"?', '["die Rhetorik","die Metapher","das Argument","die Rede"]', 'die Rhetorik', '"rhetoric" = "die Rhetorik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "metaphor"?', '["die Überzeugung","das Argument","die Rede","die Rhetorik"]', 'die Metapher', '"metaphor" = "die Metapher" in German. Article: die Plural: die Metaphern', 1, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "argument"?', '["die Metapher","die Rhetorik","die Überzeugung","die Rede"]', 'das Argument', '"argument" = "das Argument" in German. Article: das Plural: die Argumente', 1, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "persuasion"?', '["die Rede","die Rhetorik","das Argument","die Metapher"]', 'die Überzeugung', '"persuasion" = "die Überzeugung" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech"?', '["die Überzeugung","die Rhetorik","das Argument","die Metapher"]', 'die Rede', '"speech" = "die Rede" in German. Article: die Plural: die Reden', 1, 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Indirect Speech. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Indirect Speech."', '["Ich lerne über Indirect Speech.","Ich lerne Indirect Speech.","Lerne ich Indirect Speech."]', 'Ich lerne über Indirect Speech.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'matching', 'Match: Which word pairs are correct?', '["die Rhetorik - rhetoric, die Metapher - metaphor"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Was bedeutet "die Rhetorik" auf Deutsch?', '["rhetoric","to run","beautiful","yesterday"]', 'rhetoric', 1, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welcher Artikel gehört zu "die Metapher"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', 'Das Wort "das Argument" gehört zum Thema Indirect Speech.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_blank', 'Complete: Ich ___ (persuasion) Deutsch.', '["die Überzeugung","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Wie lautet das deutsche Wort für "speech"?', '["die Rede","das Pathos","die Ironie","die Forschung"]', 'die Rede', 1, 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Rhetorik', 'rhetoric — البلاغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Metapher (die Metaphern)', 'metaphor — الاستعارة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'das das Argument (die Argumente)', 'argument — الحجة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Überzeugung', 'persuasion — الإقناع', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Rede (die Reden)', 'speech — الخطاب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'das das Pathos', 'pathos — العاطفة البلاغية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Ironie', 'irony — السخرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b13cf', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b13cf', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b13cf', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b13cf', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', '🔊 Sprechen: Konjunktiv I: Indirekte Rede', 'Presentation: Prepare a 2-minute presentation on "Indirect Speech im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Indirect Speech', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', '✏️ Schreiben: Konjunktiv I: Indirekte Rede', 'Write a discursive essay (300-350 words) analyzing "Indirect Speech in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Roleplay', 'Indirect Speech', 'Student', 'Teacher', 'Practice conversation about Indirect Speech', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Advanced Roleplay', 'Indirect Speech', 'Customer', 'Assistant', 'Extended conversation about Indirect Speech', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv I: Indirekte Rede".', 'Creative practice for Indirect Speech', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', '📚 Hausaufgabe: Konjunktiv I: Indirekte Rede', 'Complete these tasks to reinforce "Konjunktiv I: Indirekte Rede".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Indirect Speech: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Indirect Speech. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13cf', '🎯 Excellent progress! This lesson covered Indirect Speech (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of rhetoric. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Indirect Speech","present_tense — grammar explanation and practice","Reading comprehension: text about Indirect Speech","Listening comprehension: dialogue about Indirect Speech","Speaking practice: roleplay/discussion about Indirect Speech","Writing task: text about Indirect Speech"]', '[{"title":"Konjunktiv I: Indirekte Rede Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Rhetorik (rhetoric)','die Metapher (metaphor)','das Argument (argument)','die Überzeugung (persuasion)','die Rede (speech)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Indirect Speech for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Translate to German: "I use the word "rhetoric" in a sentence about Indirect Speech."', '[]', 'Rhetorik ist die Kunst der Rede.', 'Use die  "die Rhetorik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Translate to German: "I use the word "metaphor" in a sentence about Indirect Speech."', '[]', 'Die Metapher ist ein Stilmittel.', 'Use die  "die Metapher" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Translate to German: "I use the word "argument" in a sentence about Indirect Speech."', '[]', 'Das Argument ist überzeugend.', 'Use das  "das Argument" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Culture: 🇩🇪 Deutsche Kultur: Indirect Speech', 'The German approach to Indirect Speech reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Indirect Speech in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Indirect Speech في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Stilistische Analyse (L-C1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13d0', '00000000-0000-4000-a000-000039d10261', 'Stilistische Analyse', 'Analyze text styles and registers.', 'Stylistic Analysis', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13d0', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13d0', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welches deutsche Wort bedeutet "rhetoric"?', '["die Überzeugung","das Argument","die Rhetorik","die Rede"]', 'die Rhetorik', '"rhetoric" = "die Rhetorik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welches deutsche Wort bedeutet "metaphor"?', '["das Argument","die Rhetorik","die Rede","die Metapher"]', 'die Metapher', '"metaphor" = "die Metapher" in German. Article: die Plural: die Metaphern', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welches deutsche Wort bedeutet "argument"?', '["das Argument","die Überzeugung","die Rede","die Rhetorik"]', 'das Argument', '"argument" = "das Argument" in German. Article: das Plural: die Argumente', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welches deutsche Wort bedeutet "persuasion"?', '["die Überzeugung","die Rhetorik","die Rede","die Metapher"]', 'die Überzeugung', '"persuasion" = "die Überzeugung" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech"?', '["die Metapher","die Rhetorik","die Rede","das Argument"]', 'die Rede', '"speech" = "die Rede" in German. Article: die Plural: die Reden', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Stylistic Analysis. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Stylistic Analysis."', '["Ich lerne über Stylistic Analysis.","Ich lerne Stylistic Analysis.","Lerne ich Stylistic Analysis."]', 'Ich lerne über Stylistic Analysis.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'matching', 'Match: Which word pairs are correct?', '["die Rhetorik - rhetoric, die Metapher - metaphor"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Was bedeutet "die Rhetorik" auf Deutsch?', '["rhetoric","to run","beautiful","yesterday"]', 'rhetoric', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welcher Artikel gehört zu "die Metapher"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', 'Das Wort "das Argument" gehört zum Thema Stylistic Analysis.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_blank', 'Complete: Ich ___ (persuasion) Deutsch.', '["die Überzeugung","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Wie lautet das deutsche Wort für "speech"?', '["die Rede","das Pathos","die Ironie","die Forschung"]', 'die Rede', 1, 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Rhetorik', 'rhetoric — البلاغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Metapher (die Metaphern)', 'metaphor — الاستعارة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'das das Argument (die Argumente)', 'argument — الحجة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Überzeugung', 'persuasion — الإقناع', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Rede (die Reden)', 'speech — الخطاب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'das das Pathos', 'pathos — العاطفة البلاغية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Ironie', 'irony — السخرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b13d0', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b13d0', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b13d0', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b13d0', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', '🔊 Sprechen: Stilistische Analyse', 'Presentation: Prepare a 2-minute presentation on "Stylistic Analysis im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Stylistic Analysis', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', '✏️ Schreiben: Stilistische Analyse', 'Write a discursive essay (300-350 words) analyzing "Stylistic Analysis in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Roleplay', 'Stylistic Analysis', 'Student', 'Teacher', 'Practice conversation about Stylistic Analysis', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Advanced Roleplay', 'Stylistic Analysis', 'Customer', 'Assistant', 'Extended conversation about Stylistic Analysis', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilistische Analyse".', 'Creative practice for Stylistic Analysis', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', '📚 Hausaufgabe: Stilistische Analyse', 'Complete these tasks to reinforce "Stilistische Analyse".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Stylistic Analysis: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Stylistic Analysis. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13d0', '🎯 Excellent progress! This lesson covered Stylistic Analysis (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of rhetoric. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Stylistic Analysis","present_tense — grammar explanation and practice","Reading comprehension: text about Stylistic Analysis","Listening comprehension: dialogue about Stylistic Analysis","Speaking practice: roleplay/discussion about Stylistic Analysis","Writing task: text about Stylistic Analysis"]', '[{"title":"Stilistische Analyse Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Rhetorik (rhetoric)','die Metapher (metaphor)','das Argument (argument)','die Überzeugung (persuasion)','die Rede (speech)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Stylistic Analysis for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Translate to German: "I use the word "rhetoric" in a sentence about Stylistic Analysis."', '[]', 'Rhetorik ist die Kunst der Rede.', 'Use die  "die Rhetorik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Translate to German: "I use the word "metaphor" in a sentence about Stylistic Analysis."', '[]', 'Die Metapher ist ein Stilmittel.', 'Use die  "die Metapher" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Translate to German: "I use the word "argument" in a sentence about Stylistic Analysis."', '[]', 'Das Argument ist überzeugend.', 'Use das  "das Argument" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Culture: 🇩🇪 Deutsche Kultur: Stylistic Analysis', 'The German approach to Stylistic Analysis reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Stylistic Analysis in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Stylistic Analysis في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 4: Test: Sprache und Stil (L-C1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13d1', '00000000-0000-4000-a000-000039d10261', 'Test: Sprache und Stil', 'Module test on language and style.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13d1', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13d1', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welches deutsche Wort bedeutet "rhetoric"?', '["das Argument","die Rhetorik","die Metapher","die Überzeugung"]', 'die Rhetorik', '"rhetoric" = "die Rhetorik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welches deutsche Wort bedeutet "metaphor"?', '["das Argument","die Überzeugung","die Rede","die Rhetorik"]', 'die Metapher', '"metaphor" = "die Metapher" in German. Article: die Plural: die Metaphern', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welches deutsche Wort bedeutet "argument"?', '["die Rhetorik","das Argument","die Überzeugung","die Metapher"]', 'das Argument', '"argument" = "das Argument" in German. Article: das Plural: die Argumente', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welches deutsche Wort bedeutet "persuasion"?', '["die Überzeugung","die Rede","die Metapher","die Rhetorik"]', 'die Überzeugung', '"persuasion" = "die Überzeugung" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech"?', '["die Überzeugung","die Rede","die Rhetorik","die Metapher"]', 'die Rede', '"speech" = "die Rede" in German. Article: die Plural: die Reden', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'matching', 'Match: Which word pairs are correct?', '["die Rhetorik - rhetoric, die Metapher - metaphor"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Was bedeutet "die Rhetorik" auf Deutsch?', '["rhetoric","to run","beautiful","yesterday"]', 'rhetoric', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welcher Artikel gehört zu "die Metapher"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', 'Das Wort "das Argument" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_blank', 'Complete: Ich ___ (persuasion) Deutsch.', '["die Überzeugung","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Wie lautet das deutsche Wort für "speech"?', '["die Rede","das Pathos","die Ironie","die Forschung"]', 'die Rede', 1, 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprache, Stil und Rhetorik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Rhetorik', 'rhetoric — البلاغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Metapher (die Metaphern)', 'metaphor — الاستعارة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'das das Argument (die Argumente)', 'argument — الحجة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Überzeugung', 'persuasion — الإقناع', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Rede (die Reden)', 'speech — الخطاب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'das das Pathos', 'pathos — العاطفة البلاغية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Ironie', 'irony — السخرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b13d1', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b13d1', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b13d1', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b13d1', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', '🔊 Sprechen: Test: Sprache und Stil', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', '✏️ Schreiben: Test: Sprache und Stil', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Sprache und Stil".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', '📚 Hausaufgabe: Test: Sprache und Stil', 'Complete these tasks to reinforce "Test: Sprache und Stil".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13d1', '🎯 Excellent progress! This lesson covered Module Test (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of rhetoric. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Sprache und Stil Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Rhetorik (rhetoric)','die Metapher (metaphor)','das Argument (argument)','die Überzeugung (persuasion)','die Rede (speech)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Translate to German: "I use the word "rhetoric" in a sentence about Module Test."', '[]', 'Rhetorik ist die Kunst der Rede.', 'Use die  "die Rhetorik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Translate to German: "I use the word "metaphor" in a sentence about Module Test."', '[]', 'Die Metapher ist ein Stilmittel.', 'Use die  "die Metapher" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Translate to German: "I use the word "argument" in a sentence about Module Test."', '[]', 'Das Argument ist überzeugend.', 'Use das  "das Argument" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 3: Diskurs und Argumentation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10262', 'C1', 'Diskurs und Argumentation', 'Master academic discourse and persuasive argumentation.', '["Construct and deconstruct arguments","Use Konnektoren for text coherence","Write academic essays and papers","Participate in formal debates","Critically analyze texts"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Argumentationsstrukturen (L-C1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882d', '00000000-0000-4000-a000-000039d10262', 'Argumentationsstrukturen', 'Learn argumentation structures and strategies.', 'Argumentation', 'vocabulary', '["Understand and use 64 key vocabulary words about Argumentation","Apply present_tense correctly in sentences","Read and comprehend a text about Argumentation","Listen and understand a natural dialogue about Argumentation","Speak about Argumentation with confidence","Write a short text about Argumentation using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882d', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882d', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882d', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882d', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882d', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882d', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882d', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882d', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882d', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882d', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882d', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882d', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882d', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882d', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882d', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882d', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882d', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882d', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882d', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882d', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882d', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882d', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882d', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882d', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882d', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882d', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882d', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["die Perspektive","die Kontroverse","die Debatte","die Argumentation"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Perspektive","die Kontroverse","die Debatte","der Diskurs"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Debatte","der Diskurs","die Argumentation","die Kontroverse"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Debatte","die Perspektive","der Diskurs","die Kontroverse"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Debatte","die Perspektive","die Kontroverse","der Diskurs"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Argumentation. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Argumentation."', '["Ich lerne über Argumentation.","Ich lerne Argumentation.","Lerne ich Argumentation."]', 'Ich lerne über Argumentation.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b882d', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Argumentation.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b882d', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b882d', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b882d', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b882d', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b882d', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', '🔊 Sprechen: Argumentationsstrukturen', 'Presentation: Prepare a 2-minute presentation on "Argumentation im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Argumentation', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', '✏️ Schreiben: Argumentationsstrukturen', 'Write a discursive essay (300-350 words) analyzing "Argumentation in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Roleplay', 'Argumentation', 'Student', 'Teacher', 'Practice conversation about Argumentation', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Advanced Roleplay', 'Argumentation', 'Customer', 'Assistant', 'Extended conversation about Argumentation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentationsstrukturen".', 'Creative practice for Argumentation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', '📚 Hausaufgabe: Argumentationsstrukturen', 'Complete these tasks to reinforce "Argumentationsstrukturen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Argumentation: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Argumentation. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882d', '🎯 Excellent progress! This lesson covered Argumentation (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Argumentation","present_tense — grammar explanation and practice","Reading comprehension: text about Argumentation","Listening comprehension: dialogue about Argumentation","Speaking practice: roleplay/discussion about Argumentation","Writing task: text about Argumentation"]', '[{"title":"Argumentationsstrukturen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Argumentation for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Argumentation."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Argumentation."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Argumentation."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Culture: 🇩🇪 Deutsche Kultur: Argumentation', 'The German approach to Argumentation reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Argumentation in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Argumentation في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Konnektoren: trotzdem, dennoch, allerdings (L-C1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882e', '00000000-0000-4000-a000-000039d10262', 'Konnektoren: trotzdem, dennoch, allerdings', 'Learn advanced connectors for text coherence.', 'Advanced Connectors', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882e', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882e', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882e', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882e', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882e', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882e', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882e', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882e', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882e', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882e', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882e', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882e', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882e', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882e', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882e', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882e', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882e', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882e', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882e', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882e', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882e', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882e', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882e', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882e', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882e', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882e', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882e', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882e', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882e', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["die Debatte","die Kontroverse","die Perspektive","der Diskurs"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Argumentation","der Diskurs","die Kontroverse","die Debatte"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Debatte","der Diskurs","die Argumentation","die Kontroverse"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Perspektive","der Diskurs","die Argumentation","die Debatte"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Perspektive","der Diskurs","die Argumentation","die Kontroverse"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Advanced Connectors. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Advanced Connectors."', '["Ich lerne über Advanced Connectors.","Ich lerne Advanced Connectors.","Lerne ich Advanced Connectors."]', 'Ich lerne über Advanced Connectors.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b882e', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Advanced Connectors.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b882e', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b882e', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b882e', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b882e', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b882e', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', '🔊 Sprechen: Konnektoren: trotzdem, dennoch, allerdings', 'Presentation: Prepare a 2-minute presentation on "Advanced Connectors im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Advanced Connectors', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', '✏️ Schreiben: Konnektoren: trotzdem, dennoch, allerdings', 'Write a discursive essay (300-350 words) analyzing "Advanced Connectors in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Roleplay', 'Advanced Connectors', 'Student', 'Teacher', 'Practice conversation about Advanced Connectors', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Advanced Roleplay', 'Advanced Connectors', 'Customer', 'Assistant', 'Extended conversation about Advanced Connectors', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konnektoren: trotzdem, dennoch, allerdings".', 'Creative practice for Advanced Connectors', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', '📚 Hausaufgabe: Konnektoren: trotzdem, dennoch, allerdings', 'Complete these tasks to reinforce "Konnektoren: trotzdem, dennoch, allerdings".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Advanced Connectors: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Advanced Connectors. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882e', '🎯 Excellent progress! This lesson covered Advanced Connectors (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Advanced Connectors","present_tense — grammar explanation and practice","Reading comprehension: text about Advanced Connectors","Listening comprehension: dialogue about Advanced Connectors","Speaking practice: roleplay/discussion about Advanced Connectors","Writing task: text about Advanced Connectors"]', '[{"title":"Konnektoren: trotzdem, dennoch, allerdings Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Advanced Connectors for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Advanced Connectors."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Advanced Connectors."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Advanced Connectors."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Culture: 🇩🇪 Deutsche Kultur: Advanced Connectors', 'The German approach to Advanced Connectors reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Advanced Connectors in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Advanced Connectors في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Wissenschaftliche Essays schreiben (L-C1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882f', '00000000-0000-4000-a000-000039d10262', 'Wissenschaftliche Essays schreiben', 'Write structured academic essays.', 'Academic Essays', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882f', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882f', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882f', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882f', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882f', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882f', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882f', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882f', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882f', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882f', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882f', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882f', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882f', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882f', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882f', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882f', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882f', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882f', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882f', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882f', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882f', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882f', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882f', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882f', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882f', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882f', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882f', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882f', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882f', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["der Diskurs","die Perspektive","die Argumentation","die Debatte"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Argumentation","der Diskurs","die Debatte","die Perspektive"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Perspektive","die Kontroverse","die Argumentation","der Diskurs"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Argumentation","der Diskurs","die Perspektive","die Debatte"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Debatte","die Perspektive","die Kontroverse","der Diskurs"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Academic Essays. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Academic Essays."', '["Ich lerne über Academic Essays.","Ich lerne Academic Essays.","Lerne ich Academic Essays."]', 'Ich lerne über Academic Essays.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b882f', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Academic Essays.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b882f', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b882f', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b882f', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b882f', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b882f', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', '🔊 Sprechen: Wissenschaftliche Essays schreiben', 'Presentation: Prepare a 2-minute presentation on "Academic Essays im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Academic Essays', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', '✏️ Schreiben: Wissenschaftliche Essays schreiben', 'Write a discursive essay (300-350 words) analyzing "Academic Essays in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Roleplay', 'Academic Essays', 'Student', 'Teacher', 'Practice conversation about Academic Essays', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Advanced Roleplay', 'Academic Essays', 'Customer', 'Assistant', 'Extended conversation about Academic Essays', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Essays schreiben".', 'Creative practice for Academic Essays', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', '📚 Hausaufgabe: Wissenschaftliche Essays schreiben', 'Complete these tasks to reinforce "Wissenschaftliche Essays schreiben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Academic Essays: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Academic Essays. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882f', '🎯 Excellent progress! This lesson covered Academic Essays (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Academic Essays","present_tense — grammar explanation and practice","Reading comprehension: text about Academic Essays","Listening comprehension: dialogue about Academic Essays","Speaking practice: roleplay/discussion about Academic Essays","Writing task: text about Academic Essays"]', '[{"title":"Wissenschaftliche Essays schreiben Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Academic Essays for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Academic Essays."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Academic Essays."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Academic Essays."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Culture: 🇩🇪 Deutsche Kultur: Academic Essays', 'The German approach to Academic Essays reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Academic Essays in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Academic Essays في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 4: Test: Diskurs und Argumentation (L-C1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b8830', '00000000-0000-4000-a000-000039d10262', 'Test: Diskurs und Argumentation', 'Module test on discourse and argumentation.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b8830', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b8830', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b8830', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b8830', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b8830', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b8830', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b8830', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b8830', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b8830', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b8830', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b8830', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b8830', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b8830', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b8830', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b8830', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b8830', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b8830', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b8830', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b8830', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b8830', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b8830', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b8830', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b8830', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b8830', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b8830', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b8830', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b8830', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b8830', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b8830', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["die Debatte","die Perspektive","die Argumentation","der Diskurs"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Debatte","der Diskurs","die Perspektive","die Argumentation"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Argumentation","der Diskurs","die Perspektive","die Kontroverse"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Kontroverse","der Diskurs","die Argumentation","die Debatte"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Perspektive","der Diskurs","die Argumentation","die Debatte"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355b8830', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Diskurs und Argumentation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355b8830', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355b8830', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355b8830', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355b8830', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355b8830', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', '🔊 Sprechen: Test: Diskurs und Argumentation', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', '✏️ Schreiben: Test: Diskurs und Argumentation', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Diskurs und Argumentation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', '📚 Hausaufgabe: Test: Diskurs und Argumentation', 'Complete these tasks to reinforce "Test: Diskurs und Argumentation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b8830', '🎯 Excellent progress! This lesson covered Module Test (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Diskurs und Argumentation Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Module Test."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Module Test."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Module Test."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 4: Fachsprachen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10263', 'C1', 'Fachsprachen', 'Explore specialized languages: legal, medical, technical, and business German.', '["Understand legal German","Use medical terminology","Read technical documentation","Understand business reports","Adapt language to professional context"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Rechtssprache (L-C1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8c', '00000000-0000-4000-a000-000039d10263', 'Rechtssprache', 'Learn legal terminology and text types.', 'Legal German', 'vocabulary', '["Understand and use 64 key vocabulary words about Legal German","Apply present_tense correctly in sentences","Read and comprehend a text about Legal German","Listen and understand a natural dialogue about Legal German","Speak about Legal German with confidence","Write a short text about Legal German using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8c', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8c', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die These","die Publikation","die Methode","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die These","die Methode","die Publikation","die Analyse"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Forschung","die Analyse","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die These","die Methode","die Analyse","die Publikation"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Methode","die Analyse","die These","die Publikation"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Legal German. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Legal German."', '["Ich lerne über Legal German.","Ich lerne Legal German.","Lerne ich Legal German."]', 'Ich lerne über Legal German.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', 'Das Wort "die Methode" gehört zum Thema Legal German.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Fachsprachen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Fachsprachen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Fachsprachen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', '🔊 Sprechen: Rechtssprache', 'Presentation: Prepare a 2-minute presentation on "Legal German im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Legal German', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', '✏️ Schreiben: Rechtssprache', 'Write a discursive essay (300-350 words) analyzing "Legal German in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Roleplay', 'Legal German', 'Student', 'Teacher', 'Practice conversation about Legal German', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Advanced Roleplay', 'Legal German', 'Customer', 'Assistant', 'Extended conversation about Legal German', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rechtssprache".', 'Creative practice for Legal German', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', '📚 Hausaufgabe: Rechtssprache', 'Complete these tasks to reinforce "Rechtssprache".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Legal German: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Legal German. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8c', '🎯 Excellent progress! This lesson covered Legal German (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Legal German","present_tense — grammar explanation and practice","Reading comprehension: text about Legal German","Listening comprehension: dialogue about Legal German","Speaking practice: roleplay/discussion about Legal German","Writing task: text about Legal German"]', '[{"title":"Rechtssprache Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Legal German for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Translate to German: "I use the word "research" in a sentence about Legal German."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Legal German."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Translate to German: "I use the word "method" in a sentence about Legal German."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Culture: 🇩🇪 Deutsche Kultur: Legal German', 'The German approach to Legal German reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Legal German in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Legal German في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Medizinische Fachsprache (L-C1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8d', '00000000-0000-4000-a000-000039d10263', 'Medizinische Fachsprache', 'Learn medical terminology and doctor-patient communication.', 'Medical German', 'vocabulary', '["Understand and use 64 key vocabulary words about Medical German","Apply present_tense correctly in sentences","Read and comprehend a text about Medical German","Listen and understand a natural dialogue about Medical German","Speak about Medical German with confidence","Write a short text about Medical German using new vocabulary"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8d', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8d', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Methode","die Analyse","die Forschung","die These"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Analyse","die Methode","die These","die Publikation"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die These","die Forschung","die Publikation","die Methode"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Analyse","die Methode","die Forschung","die Publikation"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Analyse","die Forschung","die Methode","die These"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Medical German. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Medical German."', '["Ich lerne über Medical German.","Ich lerne Medical German.","Lerne ich Medical German."]', 'Ich lerne über Medical German.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', 'Das Wort "die Methode" gehört zum Thema Medical German.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Fachsprachen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Fachsprachen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Fachsprachen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', '🔊 Sprechen: Medizinische Fachsprache', 'Presentation: Prepare a 2-minute presentation on "Medical German im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Medical German', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', '✏️ Schreiben: Medizinische Fachsprache', 'Write a discursive essay (300-350 words) analyzing "Medical German in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Roleplay', 'Medical German', 'Student', 'Teacher', 'Practice conversation about Medical German', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Advanced Roleplay', 'Medical German', 'Customer', 'Assistant', 'Extended conversation about Medical German', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medizinische Fachsprache".', 'Creative practice for Medical German', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', '📚 Hausaufgabe: Medizinische Fachsprache', 'Complete these tasks to reinforce "Medizinische Fachsprache".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Medical German: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Medical German. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8d', '🎯 Excellent progress! This lesson covered Medical German (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Medical German","present_tense — grammar explanation and practice","Reading comprehension: text about Medical German","Listening comprehension: dialogue about Medical German","Speaking practice: roleplay/discussion about Medical German","Writing task: text about Medical German"]', '[{"title":"Medizinische Fachsprache Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Medical German for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Translate to German: "I use the word "research" in a sentence about Medical German."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Medical German."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Translate to German: "I use the word "method" in a sentence about Medical German."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Culture: 🇩🇪 Deutsche Kultur: Medical German', 'The German approach to Medical German reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Medical German in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Medical German في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Fachsprachen (L-C1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8e', '00000000-0000-4000-a000-000039d10263', 'Test: Fachsprachen', 'Module test on specialized languages.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8e', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8e', 'das Pathos', 'العاطفة البلاغية', 'pathos', NULL, 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Ironie', 'السخرية', 'irony', NULL, 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Forschung","die Analyse","die Publikation","die Methode"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Analyse","die Publikation","die Forschung","die Methode"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Analyse","die Publikation","die Methode","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Methode","die Analyse","die Publikation","die These"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Forschung","die Methode","die Analyse","die These"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', 'Das Wort "die Methode" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Fachsprachen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Fachsprachen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Fachsprachen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Stichprobe (die Stichproben)', 'sample — العينة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Variable (die Variablen)', 'variable — المتغير', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Korrelation (die Korrelationen)', 'correlation — الارتباط', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', '🔊 Sprechen: Test: Fachsprachen', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', '✏️ Schreiben: Test: Fachsprachen', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Fachsprachen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', '📚 Hausaufgabe: Test: Fachsprachen', 'Complete these tasks to reinforce "Test: Fachsprachen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8e', '🎯 Excellent progress! This lesson covered Module Test (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Fachsprachen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Translate to German: "I use the word "research" in a sentence about Module Test."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Module Test."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Translate to German: "I use the word "method" in a sentence about Module Test."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 5: Kultur, Identität und Migration
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10264', 'C1', 'Kultur, Identität und Migration', 'Discuss complex cultural topics: identity, migration, and integration.', '["Discuss migration and integration","Analyze cultural identity","Use evaluative language","Write analytical essays","Present complex topics"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Migration und Integration (L-C1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70eb', '00000000-0000-4000-a000-000039d10264', 'Migration und Integration', 'Discuss migration policy and integration.', 'Migration & Integration', 'vocabulary', '["Understand and use 71 key vocabulary words about Migration & Integration","Apply present_tense correctly in sentences","Read and comprehend a text about Migration & Integration","Listen and understand a natural dialogue about Migration & Integration","Speak about Migration & Integration with confidence","Write a short text about Migration & Integration using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70eb', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70eb', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["der Bürger","die Kultur","die Integration","die Politik"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Integration","die Kultur","die Gesellschaft","der Bürger"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Kultur","die Politik","die Integration","der Bürger"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Integration","die Gesellschaft","die Politik","der Bürger"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Integration","die Gesellschaft","der Bürger","die Politik"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Migration & Integration. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Migration & Integration."', '["Ich lerne über Migration & Integration.","Ich lerne Migration & Integration.","Lerne ich Migration & Integration."]', 'Ich lerne über Migration & Integration.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', 'Das Wort "die Integration" gehört zum Thema Migration & Integration.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355c70eb', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355c70eb', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355c70eb', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355c70eb', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', '🔊 Sprechen: Migration und Integration', 'Presentation: Prepare a 2-minute presentation on "Migration & Integration im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Migration & Integration', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', '✏️ Schreiben: Migration und Integration', 'Write a discursive essay (300-350 words) analyzing "Migration & Integration in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Roleplay', 'Migration & Integration', 'Student', 'Teacher', 'Practice conversation about Migration & Integration', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Advanced Roleplay', 'Migration & Integration', 'Customer', 'Assistant', 'Extended conversation about Migration & Integration', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Migration und Integration".', 'Creative practice for Migration & Integration', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', '📚 Hausaufgabe: Migration und Integration', 'Complete these tasks to reinforce "Migration und Integration".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Migration & Integration: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Migration & Integration. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70eb', '🎯 Excellent progress! This lesson covered Migration & Integration (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Migration & Integration","present_tense — grammar explanation and practice","Reading comprehension: text about Migration & Integration","Listening comprehension: dialogue about Migration & Integration","Speaking practice: roleplay/discussion about Migration & Integration","Writing task: text about Migration & Integration"]', '[{"title":"Migration und Integration Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Migration & Integration for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Translate to German: "I use the word "society" in a sentence about Migration & Integration."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Migration & Integration."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Migration & Integration."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Culture: 🇩🇪 Deutsche Kultur: Migration & Integration', 'The German approach to Migration & Integration reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Migration & Integration in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Migration & Integration في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Kulturelle Identität (L-C1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70ec', '00000000-0000-4000-a000-000039d10264', 'Kulturelle Identität', 'Explore concepts of cultural identity.', 'Cultural Identity', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70ec', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70ec', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Kultur","die Politik","der Bürger","die Gesellschaft"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["der Bürger","die Kultur","die Integration","die Gesellschaft"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Integration","die Gesellschaft","die Kultur","die Politik"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Kultur","die Gesellschaft","die Politik","der Bürger"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Kultur","die Gesellschaft","die Politik","die Integration"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Cultural Identity. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Cultural Identity."', '["Ich lerne über Cultural Identity.","Ich lerne Cultural Identity.","Lerne ich Cultural Identity."]', 'Ich lerne über Cultural Identity.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', 'Das Wort "die Integration" gehört zum Thema Cultural Identity.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355c70ec', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355c70ec', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355c70ec', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355c70ec', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', '🔊 Sprechen: Kulturelle Identität', 'Presentation: Prepare a 2-minute presentation on "Cultural Identity im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Cultural Identity', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', '✏️ Schreiben: Kulturelle Identität', 'Write a discursive essay (300-350 words) analyzing "Cultural Identity in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Roleplay', 'Cultural Identity', 'Student', 'Teacher', 'Practice conversation about Cultural Identity', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Advanced Roleplay', 'Cultural Identity', 'Customer', 'Assistant', 'Extended conversation about Cultural Identity', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Identität".', 'Creative practice for Cultural Identity', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', '📚 Hausaufgabe: Kulturelle Identität', 'Complete these tasks to reinforce "Kulturelle Identität".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Cultural Identity: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Cultural Identity. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70ec', '🎯 Excellent progress! This lesson covered Cultural Identity (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Cultural Identity","present_tense — grammar explanation and practice","Reading comprehension: text about Cultural Identity","Listening comprehension: dialogue about Cultural Identity","Speaking practice: roleplay/discussion about Cultural Identity","Writing task: text about Cultural Identity"]', '[{"title":"Kulturelle Identität Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Cultural Identity for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Translate to German: "I use the word "society" in a sentence about Cultural Identity."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Cultural Identity."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Cultural Identity."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Culture: 🇩🇪 Deutsche Kultur: Cultural Identity', 'The German approach to Cultural Identity reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Cultural Identity in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Cultural Identity في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Kultur und Identität (L-C1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70ed', '00000000-0000-4000-a000-000039d10264', 'Test: Kultur und Identität', 'Module test on culture and identity.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70ed', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70ed', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Kultur","die Politik","die Gesellschaft","der Bürger"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Politik","die Gesellschaft","die Integration","die Kultur"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["der Bürger","die Integration","die Kultur","die Gesellschaft"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Integration","die Kultur","die Gesellschaft","der Bürger"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Kultur","die Integration","die Politik","die Gesellschaft"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', 'Das Wort "die Integration" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kultur, Identität und Migration', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355c70ed', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355c70ed', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355c70ed', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355c70ed', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', '🔊 Sprechen: Test: Kultur und Identität', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', '✏️ Schreiben: Test: Kultur und Identität', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kultur und Identität".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', '📚 Hausaufgabe: Test: Kultur und Identität', 'Complete these tasks to reinforce "Test: Kultur und Identität".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70ed', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Kultur und Identität Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Translate to German: "I use the word "society" in a sentence about Module Test."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Module Test."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Module Test."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 6: Globalisierung, Zukunft und Innovation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10265', 'C1', 'Globalisierung, Zukunft und Innovation', 'Discuss globalization, future trends, and innovation.', '["Analyze globalization effects","Discuss future scenarios","Use irrealis and hypothetical structures","Write policy papers","Present future scenarios"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Globalisierung (L-C1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54a', '00000000-0000-4000-a000-000039d10265', 'Globalisierung', 'Discuss globalization and its impacts.', 'Globalization', 'vocabulary', '["Understand and use 64 key vocabulary words about Globalization","Apply present_tense correctly in sentences","Read and comprehend a text about Globalization","Listen and understand a natural dialogue about Globalization","Speak about Globalization with confidence","Write a short text about Globalization using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54a', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54a', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["die Kontroverse","die Perspektive","der Diskurs","die Argumentation"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Argumentation","der Diskurs","die Debatte","die Perspektive"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Debatte","der Diskurs","die Perspektive","die Argumentation"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Kontroverse","die Debatte","die Perspektive","der Diskurs"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Argumentation","der Diskurs","die Kontroverse","die Debatte"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Globalization. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Globalization."', '["Ich lerne über Globalization.","Ich lerne Globalization.","Lerne ich Globalization."]', 'Ich lerne über Globalization.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Globalization.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355ce54a', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355ce54a', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355ce54a', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', '🔊 Sprechen: Globalisierung', 'Presentation: Prepare a 2-minute presentation on "Globalization im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Globalization', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', '✏️ Schreiben: Globalisierung', 'Write a discursive essay (300-350 words) analyzing "Globalization in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Roleplay', 'Globalization', 'Student', 'Teacher', 'Practice conversation about Globalization', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Advanced Roleplay', 'Globalization', 'Customer', 'Assistant', 'Extended conversation about Globalization', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Globalisierung".', 'Creative practice for Globalization', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', '📚 Hausaufgabe: Globalisierung', 'Complete these tasks to reinforce "Globalisierung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Globalization: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Globalization. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54a', '🎯 Excellent progress! This lesson covered Globalization (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Globalization","present_tense — grammar explanation and practice","Reading comprehension: text about Globalization","Listening comprehension: dialogue about Globalization","Speaking practice: roleplay/discussion about Globalization","Writing task: text about Globalization"]', '[{"title":"Globalisierung Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Globalization for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Globalization."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Globalization."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Globalization."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Culture: 🇩🇪 Deutsche Kultur: Globalization', 'The German approach to Globalization reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Globalization in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Globalization في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Zukunftsszenarien (L-C1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54b', '00000000-0000-4000-a000-000039d10265', 'Zukunftsszenarien', 'Discuss future scenarios and predictions.', 'Future Scenarios', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54b', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54b', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures) / الأسلوب الاسمي وتراكيب الأفعال الوظيفية', 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.', '[{"rule":"Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung","note":"Eine Prüfung durchführen (to conduct an examination)"},{"rule":"Common function verbs: kommen, bringen, setzen, stellen, nehmen","note":"zum Ausdruck bringen (to express), in Gang setzen (to start)"}]', '[{"german":"Die Regierung hat eine Untersuchung durchgeführt.","arabic":"قامت الحكومة بإجراء تحقيق.","english":"The government conducted an investigation."},{"german":"Diese Entscheidung kommt einer Revolution gleich.","arabic":"هذا القرار يعادل ثورة.","english":"This decision is tantamount to a revolution."}]', '[{"mistake":"Die Regierung hat untersucht (too verbal, too casual)","correction":"Die Regierung hat eine Untersuchung durchgeführt.","explanation":"Formal German prefers nominal style. Active verbs sound too casual in academic writing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["der Diskurs","die Perspektive","die Argumentation","die Debatte"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Kontroverse","die Debatte","die Perspektive","der Diskurs"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Debatte","der Diskurs","die Argumentation","die Kontroverse"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Kontroverse","die Perspektive","die Debatte","der Diskurs"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Kontroverse","die Debatte","die Argumentation","der Diskurs"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Future Scenarios. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Future Scenarios."', '["Ich lerne über Future Scenarios.","Ich lerne Future Scenarios.","Lerne ich Future Scenarios."]', 'Ich lerne über Future Scenarios.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Future Scenarios.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Die Regierung hat eine Untersuchung durchgeführt.","Diese Entscheidung kommt einer Revolution gleich."]', 'Die Regierung hat eine Untersuchung durchgeführt.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355ce54b', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355ce54b', 'Die Regierung hat eine Untersuchung durchgeführt.', 'The government conducted an investigation.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355ce54b', 'Diese Entscheidung kommt einer Revolution gleich.', 'This decision is tantamount to a revolution.', 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', '🔊 Sprechen: Zukunftsszenarien', 'Presentation: Prepare a 2-minute presentation on "Future Scenarios im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Future Scenarios', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', '✏️ Schreiben: Zukunftsszenarien', 'Write a discursive essay (300-350 words) analyzing "Future Scenarios in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Roleplay', 'Future Scenarios', 'Student', 'Teacher', 'Practice conversation about Future Scenarios', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Advanced Roleplay', 'Future Scenarios', 'Customer', 'Assistant', 'Extended conversation about Future Scenarios', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zukunftsszenarien".', 'Creative practice for Future Scenarios', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', '📚 Hausaufgabe: Zukunftsszenarien', 'Complete these tasks to reinforce "Zukunftsszenarien".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Future Scenarios: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Future Scenarios. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54b', '🎯 Excellent progress! This lesson covered Future Scenarios (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Future Scenarios","present_tense — grammar explanation and practice","Reading comprehension: text about Future Scenarios","Listening comprehension: dialogue about Future Scenarios","Speaking practice: roleplay/discussion about Future Scenarios","Writing task: text about Future Scenarios"]', '[{"title":"Zukunftsszenarien Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Future Scenarios for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Future Scenarios."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Future Scenarios."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Future Scenarios."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Culture: 🇩🇪 Deutsche Kultur: Future Scenarios', 'The German approach to Future Scenarios reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Future Scenarios in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Future Scenarios في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: C1 Abschlusstest (L-C1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54c', '00000000-0000-4000-a000-000039d10265', 'C1 Abschlusstest', 'Comprehensive C1 level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 70, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Argumentation', 'الجدال', 'argumentation', NULL, 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Debatte', 'المناظرة', 'debate', NULL, 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Kontroverse', 'الجدل', 'controversy', NULL, 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Perspektive', 'المنظور', 'perspective', NULL, 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'der Standpunkt', 'وجهة النظر', 'point of view', NULL, 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54c', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Studie', 'الدراسة', 'study', NULL, 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Daten', 'البيانات', 'data', NULL, 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Stichprobe', 'العينة', 'sample', NULL, 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Variable', 'المتغير', 'variable', NULL, 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Korrelation', 'الارتباط', 'correlation', NULL, 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Rhetorik', 'البلاغة', 'rhetoric', NULL, 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Metapher', 'الاستعارة', 'metaphor', NULL, 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54c', 'das Argument', 'الحجة', 'argument', NULL, 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Überzeugung', 'الإقناع', 'persuasion', NULL, 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Rede', 'الخطاب', 'speech', NULL, 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech) / صيغة الشرط الأولى: الكلام غير المباشر', 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it''s often identical to Indikativ → use Konjunktiv II as substitute.', '[{"rule":"Konjunktiv I: stem + subjunctive endings","note":"haben → er habe, sein → er sei, gehen → er gehe"},{"rule":"If Konjunktiv I = Indikativ, substitute with Konjunktiv II","note":"sie haben (KI) → sie hätten (KII) to show indirect speech"}]', '[{"german":"Der Minister sagte, die Lage sei unter Kontrolle.","arabic":"قال الوزير إن الوضع تحت السيطرة.","english":"The minister said the situation is under control."},{"german":"Sie behauptete, sie habe nichts gewusst.","arabic":"ادعت أنها لم تعرف شيئاً.","english":"She claimed she had not known anything."}]', '[{"mistake":"Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)","correction":"Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)","explanation":"Use Konjunktiv I to show you are just reporting, not endorsing."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welches deutsche Wort bedeutet "discourse"?', '["der Diskurs","die Kontroverse","die Argumentation","die Debatte"]', 'der Diskurs', '"discourse" = "der Diskurs" in German. Article: der Plural: die Diskurse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welches deutsche Wort bedeutet "argumentation"?', '["die Kontroverse","der Diskurs","die Perspektive","die Argumentation"]', 'die Argumentation', '"argumentation" = "die Argumentation" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welches deutsche Wort bedeutet "debate"?', '["die Debatte","der Diskurs","die Argumentation","die Kontroverse"]', 'die Debatte', '"debate" = "die Debatte" in German. Article: die Plural: die Debatten', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welches deutsche Wort bedeutet "controversy"?', '["die Kontroverse","die Debatte","der Diskurs","die Perspektive"]', 'die Kontroverse', '"controversy" = "die Kontroverse" in German. Article: die Plural: die Kontroversen', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welches deutsche Wort bedeutet "perspective"?', '["die Kontroverse","die Perspektive","der Diskurs","die Argumentation"]', 'die Perspektive', '"perspective" = "die Perspektive" in German. Article: die Plural: die Perspektiven', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'matching', 'Match: Which word pairs are correct?', '["der Diskurs - discourse, die Argumentation - argumentation"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Was bedeutet "der Diskurs" auf Deutsch?', '["discourse","to run","beautiful","yesterday"]', 'discourse', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welcher Artikel gehört zu "die Argumentation"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', 'Das Wort "die Debatte" gehört zum Thema Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Minister sagte, die Lage sei unter Kontrolle.","Sie behauptete, sie habe nichts gewusst."]', 'Der Minister sagte, die Lage sei unter Kontrolle.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_blank', 'Complete: Ich ___ (controversy) Deutsch.', '["die Kontroverse","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Wie lautet das deutsche Wort für "perspective"?', '["die Perspektive","der Standpunkt","die Forschung","die Analyse"]', 'die Perspektive', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Argumentation', 'argumentation — الجدال', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Debatte (die Debatten)', 'debate — المناظرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Kontroverse (die Kontroversen)', 'controversy — الجدل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Perspektive (die Perspektiven)', 'perspective — المنظور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'der der Standpunkt (die Standpunkte)', 'point of view — وجهة النظر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Studie (die Studien)', 'study — الدراسة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000355ce54c', 'die die Daten', 'data — البيانات', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000355ce54c', 'Der Minister sagte, die Lage sei unter Kontrolle.', 'The minister said the situation is under control.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000355ce54c', 'Sie behauptete, sie habe nichts gewusst.', 'She claimed she had not known anything.', 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', '🔊 Sprechen: C1 Abschlusstest', 'Presentation: Prepare a 2-minute presentation on "Level Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Level Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', '✏️ Schreiben: C1 Abschlusstest', 'Write a discursive essay (300-350 words) analyzing "Level Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "C1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', '📚 Hausaufgabe: C1 Abschlusstest', 'Complete these tasks to reinforce "C1 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54c', '🎯 Excellent progress! This lesson covered Level Test (64 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of discourse. Focus on your common mistakes area for maximum improvement.', '["64 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"C1 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Diskurs (discourse)','die Argumentation (argumentation)','die Debatte (debate)','die Kontroverse (controversy)','die Perspektive (perspective)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Translate to German: "I use the word "discourse" in a sentence about Level Test."', '[]', 'Der öffentliche Diskurs ist wichtig.', 'Use der  "der Diskurs" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Translate to German: "I use the word "argumentation" in a sentence about Level Test."', '[]', 'Die Argumentation ist schlüssig.', 'Use die  "die Argumentation" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Translate to German: "I use the word "debate" in a sentence about Level Test."', '[]', 'Die Debatte war kontrovers.', 'Use die  "die Debatte" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'The German approach to Level Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Level Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Level Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

end $$;
