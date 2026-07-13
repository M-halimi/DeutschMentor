-- ============================================================================
-- SEED: Exam Preparation (Goethe / TELC / ÖSD)
-- Real exam-style questions for all levels
-- ============================================================================

do $$
declare
  ex_id uuid;
begin

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A1', 'Goethe A1 — Reading', 'Goethe-Vorbereitung: reading für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'lesen', 25, 65, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A1', 'Goethe A1 — Listening', 'Goethe-Vorbereitung: listening für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'hoeren', 25, 65, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A1', 'Goethe A1 — Writing', 'Goethe-Vorbereitung: writing für Niveau A1. Dauer: 50 Min., 40 Punkte, Bestehen ab 60%.', 'schreiben', 50, 40, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A1', 'Goethe A1 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'sprechen', 25, 65, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A1', 'Goethe A1 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau A1. Dauer: 100 Min., 175 Punkte, Bestehen ab 60%.', 'full_mock', 100, 175, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A2', 'Goethe A2 — Reading', 'Goethe-Vorbereitung: reading für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'lesen', 30, 80, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A2', 'Goethe A2 — Listening', 'Goethe-Vorbereitung: listening für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'hoeren', 30, 80, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A2', 'Goethe A2 — Writing', 'Goethe-Vorbereitung: writing für Niveau A2. Dauer: 55 Min., 50 Punkte, Bestehen ab 60%.', 'schreiben', 55, 50, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A2', 'Goethe A2 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'sprechen', 30, 80, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'A2', 'Goethe A2 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau A2. Dauer: 110 Min., 200 Punkte, Bestehen ab 60%.', 'full_mock', 110, 200, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B1', 'Goethe B1 — Reading', 'Goethe-Vorbereitung: reading für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'lesen', 35, 95, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B1', 'Goethe B1 — Listening', 'Goethe-Vorbereitung: listening für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'hoeren', 35, 95, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B1', 'Goethe B1 — Writing', 'Goethe-Vorbereitung: writing für Niveau B1. Dauer: 60 Min., 60 Punkte, Bestehen ab 60%.', 'schreiben', 60, 60, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B1', 'Goethe B1 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'sprechen', 35, 95, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B1', 'Goethe B1 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau B1. Dauer: 120 Min., 225 Punkte, Bestehen ab 60%.', 'full_mock', 120, 225, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B2', 'Goethe B2 — Reading', 'Goethe-Vorbereitung: reading für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'lesen', 40, 110, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B2', 'Goethe B2 — Listening', 'Goethe-Vorbereitung: listening für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'hoeren', 40, 110, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B2', 'Goethe B2 — Writing', 'Goethe-Vorbereitung: writing für Niveau B2. Dauer: 65 Min., 70 Punkte, Bestehen ab 60%.', 'schreiben', 65, 70, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B2', 'Goethe B2 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'sprechen', 40, 110, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'B2', 'Goethe B2 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau B2. Dauer: 130 Min., 250 Punkte, Bestehen ab 60%.', 'full_mock', 130, 250, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C1', 'Goethe C1 — Reading', 'Goethe-Vorbereitung: reading für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'lesen', 45, 125, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes — analysieren und begründen Sie Ihre Antwort:', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig — analysieren und begründen Sie Ihre Antwort:', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes — analysieren und begründen Sie Ihre Antwort:', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu — analysieren und begründen Sie Ihre Antwort:', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts — analysieren und begründen Sie Ihre Antwort:', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen — analysieren und begründen Sie Ihre Antwort:', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C1', 'Goethe C1 — Listening', 'Goethe-Vorbereitung: listening für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'hoeren', 45, 125, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf — analysieren und begründen Sie Ihre Antwort:', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen — analysieren und begründen Sie Ihre Antwort:', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart — analysieren und begründen Sie Ihre Antwort:', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma — analysieren und begründen Sie Ihre Antwort:', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten — analysieren und begründen Sie Ihre Antwort:', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert — analysieren und begründen Sie Ihre Antwort:', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C1', 'Goethe C1 — Writing', 'Goethe-Vorbereitung: writing für Niveau C1. Dauer: 70 Min., 80 Punkte, Bestehen ab 60%.', 'schreiben', 70, 80, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C1', 'Goethe C1 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'sprechen', 45, 125, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort — analysieren und begründen Sie Ihre Antwort: Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie — analysieren und begründen Sie Ihre Antwort: Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft — analysieren und begründen Sie Ihre Antwort: Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren — analysieren und begründen Sie Ihre Antwort: Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C1', 'Goethe C1 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau C1. Dauer: 140 Min., 275 Punkte, Bestehen ab 60%.', 'full_mock', 140, 275, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C2', 'Goethe C2 — Reading', 'Goethe-Vorbereitung: reading für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'lesen', 50, 140, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes — analysieren und begründen Sie Ihre Antwort:', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig — analysieren und begründen Sie Ihre Antwort:', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes — analysieren und begründen Sie Ihre Antwort:', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu — analysieren und begründen Sie Ihre Antwort:', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts — analysieren und begründen Sie Ihre Antwort:', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen — analysieren und begründen Sie Ihre Antwort:', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C2', 'Goethe C2 — Listening', 'Goethe-Vorbereitung: listening für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'hoeren', 50, 140, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf — analysieren und begründen Sie Ihre Antwort:', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen — analysieren und begründen Sie Ihre Antwort:', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart — analysieren und begründen Sie Ihre Antwort:', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma — analysieren und begründen Sie Ihre Antwort:', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten — analysieren und begründen Sie Ihre Antwort:', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert — analysieren und begründen Sie Ihre Antwort:', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C2', 'Goethe C2 — Writing', 'Goethe-Vorbereitung: writing für Niveau C2. Dauer: 75 Min., 90 Punkte, Bestehen ab 60%.', 'schreiben', 75, 90, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C2', 'Goethe C2 — Speaking', 'Goethe-Vorbereitung: speaking für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'sprechen', 50, 140, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort — analysieren und begründen Sie Ihre Antwort: Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie — analysieren und begründen Sie Ihre Antwort: Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft — analysieren und begründen Sie Ihre Antwort: Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren — analysieren und begründen Sie Ihre Antwort: Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('goethe', 'C2', 'Goethe C2 — Full Mock Exam', 'Goethe-Vorbereitung: full mock exam für Niveau C2. Dauer: 150 Min., 300 Punkte, Bestehen ab 60%.', 'full_mock', 150, 300, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A1', 'TELC A1 — Reading', 'TELC-Vorbereitung: reading für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'lesen', 25, 65, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A1', 'TELC A1 — Listening', 'TELC-Vorbereitung: listening für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'hoeren', 25, 65, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A1', 'TELC A1 — Writing', 'TELC-Vorbereitung: writing für Niveau A1. Dauer: 50 Min., 40 Punkte, Bestehen ab 60%.', 'schreiben', 50, 40, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A1', 'TELC A1 — Speaking', 'TELC-Vorbereitung: speaking für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'sprechen', 25, 65, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A1', 'TELC A1 — Full Mock Exam', 'TELC-Vorbereitung: full mock exam für Niveau A1. Dauer: 100 Min., 175 Punkte, Bestehen ab 60%.', 'full_mock', 100, 175, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A2', 'TELC A2 — Reading', 'TELC-Vorbereitung: reading für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'lesen', 30, 80, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A2', 'TELC A2 — Listening', 'TELC-Vorbereitung: listening für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'hoeren', 30, 80, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A2', 'TELC A2 — Writing', 'TELC-Vorbereitung: writing für Niveau A2. Dauer: 55 Min., 50 Punkte, Bestehen ab 60%.', 'schreiben', 55, 50, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A2', 'TELC A2 — Speaking', 'TELC-Vorbereitung: speaking für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'sprechen', 30, 80, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'A2', 'TELC A2 — Full Mock Exam', 'TELC-Vorbereitung: full mock exam für Niveau A2. Dauer: 110 Min., 200 Punkte, Bestehen ab 60%.', 'full_mock', 110, 200, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B1', 'TELC B1 — Reading', 'TELC-Vorbereitung: reading für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'lesen', 35, 95, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B1', 'TELC B1 — Listening', 'TELC-Vorbereitung: listening für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'hoeren', 35, 95, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B1', 'TELC B1 — Writing', 'TELC-Vorbereitung: writing für Niveau B1. Dauer: 60 Min., 60 Punkte, Bestehen ab 60%.', 'schreiben', 60, 60, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B1', 'TELC B1 — Speaking', 'TELC-Vorbereitung: speaking für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'sprechen', 35, 95, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B1', 'TELC B1 — Full Mock Exam', 'TELC-Vorbereitung: full mock exam für Niveau B1. Dauer: 120 Min., 225 Punkte, Bestehen ab 60%.', 'full_mock', 120, 225, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B2', 'TELC B2 — Reading', 'TELC-Vorbereitung: reading für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'lesen', 40, 110, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B2', 'TELC B2 — Listening', 'TELC-Vorbereitung: listening für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'hoeren', 40, 110, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B2', 'TELC B2 — Writing', 'TELC-Vorbereitung: writing für Niveau B2. Dauer: 65 Min., 70 Punkte, Bestehen ab 60%.', 'schreiben', 65, 70, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B2', 'TELC B2 — Speaking', 'TELC-Vorbereitung: speaking für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'sprechen', 40, 110, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'B2', 'TELC B2 — Full Mock Exam', 'TELC-Vorbereitung: full mock exam für Niveau B2. Dauer: 130 Min., 250 Punkte, Bestehen ab 60%.', 'full_mock', 130, 250, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'C1', 'TELC C1 — Reading', 'TELC-Vorbereitung: reading für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'lesen', 45, 125, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes — analysieren und begründen Sie Ihre Antwort:', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig — analysieren und begründen Sie Ihre Antwort:', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes — analysieren und begründen Sie Ihre Antwort:', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu — analysieren und begründen Sie Ihre Antwort:', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts — analysieren und begründen Sie Ihre Antwort:', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen — analysieren und begründen Sie Ihre Antwort:', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'C1', 'TELC C1 — Listening', 'TELC-Vorbereitung: listening für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'hoeren', 45, 125, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf — analysieren und begründen Sie Ihre Antwort:', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen — analysieren und begründen Sie Ihre Antwort:', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart — analysieren und begründen Sie Ihre Antwort:', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma — analysieren und begründen Sie Ihre Antwort:', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten — analysieren und begründen Sie Ihre Antwort:', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert — analysieren und begründen Sie Ihre Antwort:', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'C1', 'TELC C1 — Writing', 'TELC-Vorbereitung: writing für Niveau C1. Dauer: 70 Min., 80 Punkte, Bestehen ab 60%.', 'schreiben', 70, 80, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'C1', 'TELC C1 — Speaking', 'TELC-Vorbereitung: speaking für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'sprechen', 45, 125, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort — analysieren und begründen Sie Ihre Antwort: Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie — analysieren und begründen Sie Ihre Antwort: Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft — analysieren und begründen Sie Ihre Antwort: Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren — analysieren und begründen Sie Ihre Antwort: Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('telc', 'C1', 'TELC C1 — Full Mock Exam', 'TELC-Vorbereitung: full mock exam für Niveau C1. Dauer: 140 Min., 275 Punkte, Bestehen ab 60%.', 'full_mock', 140, 275, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A1', 'ÖSD A1 — Reading', 'ÖSD-Vorbereitung: reading für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'lesen', 25, 65, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A1', 'ÖSD A1 — Listening', 'ÖSD-Vorbereitung: listening für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'hoeren', 25, 65, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A1', 'ÖSD A1 — Writing', 'ÖSD-Vorbereitung: writing für Niveau A1. Dauer: 50 Min., 40 Punkte, Bestehen ab 60%.', 'schreiben', 50, 40, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A1', 'ÖSD A1 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau A1. Dauer: 25 Min., 65 Punkte, Bestehen ab 60%.', 'sprechen', 25, 65, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 1, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 1, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 1, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 1, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 1, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 1, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 1, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 1, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A1', 'ÖSD A1 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau A1. Dauer: 100 Min., 175 Punkte, Bestehen ab 60%.', 'full_mock', 100, 175, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A2', 'ÖSD A2 — Reading', 'ÖSD-Vorbereitung: reading für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'lesen', 30, 80, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes?', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig?', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu?', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts?', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen?', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A2', 'ÖSD A2 — Listening', 'ÖSD-Vorbereitung: listening für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'hoeren', 30, 80, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf?', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen?', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart?', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma?', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten?', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert?', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A2', 'ÖSD A2 — Writing', 'ÖSD-Vorbereitung: writing für Niveau A2. Dauer: 55 Min., 50 Punkte, Bestehen ab 60%.', 'schreiben', 55, 50, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A2', 'ÖSD A2 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau A2. Dauer: 30 Min., 80 Punkte, Bestehen ab 60%.', 'sprechen', 30, 80, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil?', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'A2', 'ÖSD A2 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau A2. Dauer: 110 Min., 200 Punkte, Bestehen ab 60%.', 'full_mock', 110, 200, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B1', 'ÖSD B1 — Reading', 'ÖSD-Vorbereitung: reading für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'lesen', 35, 95, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B1', 'ÖSD B1 — Listening', 'ÖSD-Vorbereitung: listening für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'hoeren', 35, 95, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B1', 'ÖSD B1 — Writing', 'ÖSD-Vorbereitung: writing für Niveau B1. Dauer: 60 Min., 60 Punkte, Bestehen ab 60%.', 'schreiben', 60, 60, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B1', 'ÖSD B1 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau B1. Dauer: 35 Min., 95 Punkte, Bestehen ab 60%.', 'sprechen', 35, 95, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 2, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 2, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 2, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 2, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 2, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 2, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 2, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 2, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B1', 'ÖSD B1 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau B1. Dauer: 120 Min., 225 Punkte, Bestehen ab 60%.', 'full_mock', 120, 225, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B2', 'ÖSD B2 — Reading', 'ÖSD-Vorbereitung: reading für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'lesen', 40, 110, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes? Begründen Sie Ihre Antwort kurz.', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig? Begründen Sie Ihre Antwort kurz.', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes? Begründen Sie Ihre Antwort kurz.', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu? Begründen Sie Ihre Antwort kurz.', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts? Begründen Sie Ihre Antwort kurz.', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen? Begründen Sie Ihre Antwort kurz.', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B2', 'ÖSD B2 — Listening', 'ÖSD-Vorbereitung: listening für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'hoeren', 40, 110, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf? Begründen Sie Ihre Antwort kurz.', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen? Begründen Sie Ihre Antwort kurz.', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart? Begründen Sie Ihre Antwort kurz.', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma? Begründen Sie Ihre Antwort kurz.', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten? Begründen Sie Ihre Antwort kurz.', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert? Begründen Sie Ihre Antwort kurz.', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B2', 'ÖSD B2 — Writing', 'ÖSD-Vorbereitung: writing für Niveau B2. Dauer: 65 Min., 70 Punkte, Bestehen ab 60%.', 'schreiben', 65, 70, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B2', 'ÖSD B2 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau B2. Dauer: 40 Min., 110 Punkte, Bestehen ab 60%.', 'sprechen', 40, 110, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Begründen Sie Ihre Antwort kurz. Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Begründen Sie Ihre Antwort kurz. Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft? Begründen Sie Ihre Antwort kurz. Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren? Begründen Sie Ihre Antwort kurz. Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil? Begründen Sie Ihre Antwort kurz.', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'B2', 'ÖSD B2 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau B2. Dauer: 130 Min., 250 Punkte, Bestehen ab 60%.', 'full_mock', 130, 250, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C1', 'ÖSD C1 — Reading', 'ÖSD-Vorbereitung: reading für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'lesen', 45, 125, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes — analysieren und begründen Sie Ihre Antwort:', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig — analysieren und begründen Sie Ihre Antwort:', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes — analysieren und begründen Sie Ihre Antwort:', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu — analysieren und begründen Sie Ihre Antwort:', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts — analysieren und begründen Sie Ihre Antwort:', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen — analysieren und begründen Sie Ihre Antwort:', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C1', 'ÖSD C1 — Listening', 'ÖSD-Vorbereitung: listening für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'hoeren', 45, 125, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf — analysieren und begründen Sie Ihre Antwort:', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen — analysieren und begründen Sie Ihre Antwort:', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart — analysieren und begründen Sie Ihre Antwort:', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma — analysieren und begründen Sie Ihre Antwort:', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten — analysieren und begründen Sie Ihre Antwort:', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert — analysieren und begründen Sie Ihre Antwort:', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C1', 'ÖSD C1 — Writing', 'ÖSD-Vorbereitung: writing für Niveau C1. Dauer: 70 Min., 80 Punkte, Bestehen ab 60%.', 'schreiben', 70, 80, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C1', 'ÖSD C1 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau C1. Dauer: 45 Min., 125 Punkte, Bestehen ab 60%.', 'sprechen', 45, 125, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 3, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort — analysieren und begründen Sie Ihre Antwort: Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 3, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie — analysieren und begründen Sie Ihre Antwort: Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 3, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft — analysieren und begründen Sie Ihre Antwort: Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 3, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren — analysieren und begründen Sie Ihre Antwort: Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 3, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 3, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 3, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 3, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C1', 'ÖSD C1 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau C1. Dauer: 140 Min., 275 Punkte, Bestehen ab 60%.', 'full_mock', 140, 275, 60, true, 5)
  returning id into ex_id;

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C2', 'ÖSD C2 — Reading', 'ÖSD-Vorbereitung: reading für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'lesen', 50, 140, 60, true, 1)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Hauptthema des Textes — analysieren und begründen Sie Ihre Antwort:', '["Der Umweltschutz in Deutschland","Die deutsche Wirtschaft","Das deutsche Bildungssystem","Die deutsche Kultur"]', 'Der Umweltschutz in Deutschland', 'Der Text handelt hauptsächlich von Umweltschutzthemen.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Laut dem Text: Welche Aussage ist richtig — analysieren und begründen Sie Ihre Antwort:', '["Die meisten Deutschen reisen gern ins Ausland","Die Mehrheit der Deutschen lebt in Mietwohnungen","Die Deutschen essen am liebsten Fast Food","Die Deutschen arbeiten am meisten in Europa"]', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes — analysieren und begründen Sie Ihre Antwort:', '["umweltfreundlich und zukunftsorientiert","schnell und effizient","teuer und exklusiv","traditionell und konservativ"]', 'umweltfreundlich und zukunftsorientiert', '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', '["Richtig","Falsch"]', 'Falsch', 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche dieser Aussagen trifft laut Text zu — analysieren und begründen Sie Ihre Antwort:', '["Die Nutzung erneuerbarer Energien nimmt zu","Die Nutzung erneuerbarer Energien nimmt ab","Erneuerbare Energien spielen keine Rolle","Nur Solarenergie wird genutzt"]', 'Die Nutzung erneuerbarer Energien nimmt zu', 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', '["Richtig","Falsch"]', 'Falsch', 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist das Ziel des beschriebenen Projekts — analysieren und begründen Sie Ihre Antwort:', '["Die CO2-Emissionen zu reduzieren","Die Arbeitslosigkeit zu senken","Die Digitalisierung voranzutreiben","Den Tourismus zu fördern"]', 'Die CO2-Emissionen zu reduzieren', 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie viele Personen haben an der Studie teilgenommen — analysieren und begründen Sie Ihre Antwort:', '["Über 1000","Weniger als 100","Etwa 500","Mehr als 5000"]', 'Über 1000', 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C2', 'ÖSD C2 — Listening', 'ÖSD-Vorbereitung: listening für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'hoeren', 50, 140, 60, true, 2)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was ist der Hauptgrund für den Anruf — analysieren und begründen Sie Ihre Antwort:', '["Eine Terminabsage","Eine Terminvereinbarung","Eine Beschwerde","Eine Bestellung"]', 'Eine Terminvereinbarung', 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Uhrzeit wird für den Termin vorgeschlagen — analysieren und begründen Sie Ihre Antwort:', '["Um 10:30 Uhr","Um 14:00 Uhr","Um 09:00 Uhr","Um 16:30 Uhr"]', 'Um 10:30 Uhr', 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Kunde ist mit der Dienstleistung zufrieden.', '["Richtig","Falsch"]', 'Falsch', 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Was wird am Ende des Gesprächs vereinbart — analysieren und begründen Sie Ihre Antwort:', '["Ein Rückruf am Nachmittag","Eine E-Mail mit den Details","Ein persönliches Treffen","Eine schriftliche Bestätigung"]', 'Ein Rückruf am Nachmittag', 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Woher kennt der Anrufer die Firma — analysieren und begründen Sie Ihre Antwort:', '["Durch eine Empfehlung","Aus dem Internet","Aus einer Zeitungsanzeige","Durch einen Werbebrief"]', 'Durch eine Empfehlung', 'Ein Freund hat ihm die Firma empfohlen.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Wie lange muss der Kunde ungefähr warten — analysieren und begründen Sie Ihre Antwort:', '["Etwa zwei Wochen","Bis zum nächsten Tag","Etwa einen Monat","Nur wenige Stunden"]', 'Etwa zwei Wochen', 'Der nächste freie Termin ist in zwei Wochen.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'multiple_choice', 'Welche Zahlungsmethode wird akzeptiert — analysieren und begründen Sie Ihre Antwort:', '["Nur Barzahlung","Kreditkarte und Lastschrift","Nur Überweisung","Alle gängigen Methoden"]', 'Kreditkarte und Lastschrift', 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'true_false', 'Der Anrufer möchte die Bestellung stornieren.', '["Richtig","Falsch"]', 'Falsch', 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C2', 'ÖSD C2 — Writing', 'ÖSD-Vorbereitung: writing für Niveau C2. Dauer: 75 Min., 90 Punkte, Bestehen ab 60%.', 'schreiben', 75, 90, 60, true, 3)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', '[]', 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', '[]', 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', '[]', 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', '[]', 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', '[]', 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', '[]', 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', '[]', 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'essay', 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', '[]', 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C2', 'ÖSD C2 — Speaking', 'ÖSD-Vorbereitung: speaking für Niveau C2. Dauer: 50 Min., 140 Punkte, Bestehen ab 60%.', 'sprechen', 50, 140, 60, true, 4)
  returning id into ex_id;

  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', '[]', 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', 4, 1);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort — analysieren und begründen Sie Ihre Antwort: Was gefällt Ihnen gut/nicht gut?', '[]', 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', 4, 2);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie — analysieren und begründen Sie Ihre Antwort: Was haben Sie erlebt?', '[]', 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', 4, 3);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was sind Ihre Pläne für die Zukunft — analysieren und begründen Sie Ihre Antwort: Beruflich und privat.', '[]', 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', 4, 4);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Diskutieren Sie: Sollte man im Ausland studieren — analysieren und begründen Sie Ihre Antwort: Nennen Sie Vor- und Nachteile.', '[]', 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', 4, 5);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', 4, 6);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Was bedeutet für Sie ein gesunder Lebensstil — analysieren und begründen Sie Ihre Antwort:', '[]', 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', 4, 7);
  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values
  (ex_id, 'speaking', 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', '[]', 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', 4, 8);

  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
  values ('osterreich', 'C2', 'ÖSD C2 — Full Mock Exam', 'ÖSD-Vorbereitung: full mock exam für Niveau C2. Dauer: 150 Min., 300 Punkte, Bestehen ab 60%.', 'full_mock', 150, 300, 60, true, 5)
  returning id into ex_id;

end $$;
