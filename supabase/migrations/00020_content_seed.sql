-- Seed real writing examples, theme lessons, and fix audio placeholders
-- Replaces SoundHelix demo music with placeholder flag for TTS generation

-- ============================================================
-- WRITING EXAMPLES (A1-C2)
-- ============================================================

insert into public.writing_examples (title, task_description, example_answer, exercise_type, level, theme, useful_vocabulary, useful_phrases, grammar_structures, explanation, why_good, word_count)
values
('Formelle E-Mail: Terminverschiebung', 
 'Sie haben einen Termin bei Ihrem Arzt. Sie müssen den Termin verschieben. Schreiben Sie eine formelle E-Mail. Erwähnen Sie: den ursprünglichen Termin, den Grund für die Verschiebung, einen neuen Terminvorschlag.',
 'Sehr geehrte Damen und Herren,\n\nich habe am 15. März um 10:00 Uhr einen Termin bei Ihnen. Leider muss ich diesen Termin verschieben, da ich krank geworden bin.\n\nKönnten wir einen neuen Termin am 22. März oder 25. März vereinbaren? Bitte lassen Sie mich wissen, welcher Tag Ihnen passt.\n\nVielen Dank für Ihr Verständnis.\n\nMit freundlichen Grüßen\nMax Mustermann',
 'email_formal', 'A2', 'daily',
 '["der Termin", "verschieben", "der Vorschlag", "vereinbaren", "der Grund", "mitteilen", "sich melden"]'::jsonb,
 '["Sehr geehrte Damen und Herren", "Leider muss ich", "Könnten wir", "Vielen Dank für", "Mit freundlichen Grüßen"]'::jsonb,
 '["Höflichkeitsformen (würden, könnten)", "Satzklammer (muss...verschieben)", "Temporale Präpositionen (am 15. März)"]'::jsonb,
 'Die E-Mail hat alle notwendigen Elemente: Betreff, Anrede, Erklärung, Vorschlag und Grußformel. Der Ton ist höflich und professionell.',
 'Klare Struktur mit Anrede, Hauptteil und Grußformel. Höfliche Formulierungen mit Konjunktiv II.',
 75),

('Informelle E-Mail: Einladung',
 'Sie möchten Ihren Freund zu Ihrer Geburtstagsfeier einladen. Schreiben Sie eine informelle E-Mail. Nennen Sie: Datum und Uhrzeit, Ort, was mitgebracht werden soll.',
 'Hallo Lisa,\n\nich hoffe, dir geht es gut! Am Samstag, den 10. Juni, werde ich 25 Jahre alt und möchte eine kleine Feier machen.\n\nDie Party beginnt um 19:00 Uhr bei mir zu Hause. Ich würde mich sehr freuen, wenn du kommen könntest! Bring bitte etwas zu trinken mit – ich kümmere mich um das Essen.\n\nMelde dich einfach, ob du kommen kannst.\n\nLiebe Grüße\nAnna',
 'email_informal', 'A2', 'daily',
 '["die Einladung", "feiern", "der Geburtstag", "mitbringen", "sich freuen", "Bescheid sagen"]'::jsonb,
 '["Ich hoffe, dir geht es gut", "Am Samstag, den...", "Ich würde mich freuen, wenn", "Bring bitte", "Liebe Grüße"]'::jsonb,
 '["Datum mit Ordinalzahlen (den 10. Juni)", "Konjunktiv II (würde...freuen)", "Imperativ (Bring bitte)"]'::jsonb,
 'Perfekt für informelle Kommunikation. Enthält alle wichtigen Informationen: Anlass, Datum, Ort und Bitte um Mitbringsel.',
 'Natürlicher, freundlicher Ton. Vollständige Informationen. Gute Beispiele für A2-Grammatik.',
 70),

('Bewerbungsschreiben: Praktikum',
 'Sie bewerben sich um ein Praktikum bei einer Firma. Schreiben Sie ein Bewerbungsschreiben. Erwähnen Sie: Ihre Motivation, Ihre Qualifikationen, warum Sie geeignet sind.',
 'Sehr geehrte Frau Dr. Weber,\n\nmit großem Interesse habe ich Ihre Anzeige für ein Praktikum im Bereich Marketing gelesen. Ich studiere Betriebswirtschaftslehre im 4. Semester und möchte meine theoretischen Kenntnisse in der Praxis anwenden.\n\nIm Rahmen meines Studiums habe ich bereits Kurse in Marketing und Marktforschung absolviert. Außerdem habe ich durch ein studentisches Projekt Erfahrung in der Erstellung von Social-Media-Kampagnen gesammelt.\n\nIch bin zuverlässig, teamfähig und arbeite gerne selbstständig. Ein Praktikum in Ihrem Unternehmen würde mir die Möglichkeit geben, viel zu lernen.\n\nÜber eine Einladung zu einem Vorstellungsgespräch würde ich mich sehr freuen.\n\nMit freundlichen Grüßen\nLukas Schmidt',
 'email_application', 'B2', 'career',
 '["die Bewerbung", "das Praktikum", "die Qualifikation", "die Erfahrung", "das Vorstellungsgespräch", "der Arbeitgeber"]'::jsonb,
 '["Mit großem Interesse", "Im Rahmen meines Studiums", "Außerdem habe ich", "Über eine Einladung würde ich mich freuen"]'::jsonb,
 '["Relativsätze (das ich...)", "Präpositionalausdrücke (Im Rahmen, Außerdem)", "Konjunktiv II (würde)"]'::jsonb,
 'Überzeugendes Bewerbungsschreiben mit klarer Struktur: Einleitung (Bezug), Hauptteil (Qualifikationen), Schluss (Bitte um Gespräch).',
 'Professioneller Ton, konkrete Beispiele, positive Eigenschaften genannt.',
 130),

('E-Mail: Beschwerde',
 'Sie haben ein Produkt online bestellt. Die Lieferung ist beschädigt angekommen. Schreiben Sie eine Beschwerde-E-Mail.',
 'Sehr geehrte Damen und Herren,\n\nam 20. April habe ich bei Ihnen einen Mixer (Bestell-Nr. MX-2024) bestellt. Die Lieferung kam heute an, jedoch ist das Gerät beschädigt – das Gehäuse hat einen Riss.\n\nIch bitte Sie, mir entweder ein neues Gerät zu schicken oder den Kaufpreis zu erstatten. Als Anhang finden Sie ein Foto des Schadens.\n\nBitte teilen Sie mir mit, wie wir weiter verfahren.\n\nMit freundlichen Grüßen\nSarah Meier',
 'email_complaint', 'B1', 'shopping',
 '["die Beschwerde", "der Schaden", "beschädigt", "die Lieferung", "erstatten", "der Anhang", "der Kaufpreis"]'::jsonb,
 '["Sehr geehrte", "Die Lieferung kam heute an", "Ich bitte Sie", "Entweder...oder", "Als Anhang finden Sie"]'::jsonb,
 '["Passiv (wurde bestellt, ist beschädigt)", "Entweder...oder", "Temporalangaben (am 20. April)"]'::jsonb,
 'Klare Beschwerde mit Bestellnummer, Problembeschreibung und zwei Lösungsvorschlägen.',
 'Sachlicher Ton, konkrete Angaben, angemessene Forderungen.',
 90),

('E-Mail: Informationsanfrage',
 'Sie möchten an einem Sprachkurs teilnehmen. Schreiben Sie eine E-Mail an die Sprachschule und fragen Sie nach: Kurszeiten, Kosten, Anmeldefrist.',
 'Sehr geehrte Damen und Herren,\n\nich interessiere mich für Ihren Deutschkurs B1 und möchte mich vor der Anmeldung über einige Details informieren.\n\n1. Wann beginnen die nächsten Kurse?\n2. Wie hoch sind die Kosten für einen 8-wöchigen Kurs?\n3. Bis wann muss ich mich anmelden?\n\nIch würde mich über eine baldige Antwort freuen.\n\nMit freundlichen Grüßen\nElena Petrova',
 'email_information', 'B1', 'education',
 '["der Sprachkurs", "die Anmeldung", "die Kosten", "die Anfrage", "informieren", "die Antwort", "die Kurszeiten"]'::jsonb,
 '["Ich interessiere mich für", "Ich möchte mich informieren", "Ich würde mich freuen"]'::jsonb,
 '["Fragesätze mit W-Wörtern", "Präpositionen (vor der Anmeldung, über einige Details)"]'::jsonb,
 'Gut strukturierte Anfrage mit nummerierten Fragen. Höflich und präzise.',
 'Klar strukturiert, alle wichtigen Fragen enthalten.',
 70),

('Meinung schreiben: Social Media',
 'Immer mehr Jugendliche nutzen soziale Medien. Was ist Ihre Meinung dazu? Nennen Sie Vor- und Nachteile.',
 'In der heutigen Zeit nutzen fast alle Jugendlichen soziale Medien wie Instagram oder TikTok. Meiner Meinung nach hat das sowohl Vor- als auch Nachteile.\n\nEinerseits kann man mit Freunden in Kontakt bleiben und neue Leute kennenlernen. Man erfährt schnell, was in der Welt passiert. Andererseits verbringen viele zu viel Zeit am Handy. Das kann zu Konzentrationsproblemen führen. Außerdem gibt es oft Druck, perfekt auszusehen.\n\nIch finde, soziale Medien sind nicht schlecht, aber man sollte sie bewusst nutzen. Weniger ist manchmal mehr.',
 'meinung', 'B1', 'technology',
 '["die Meinung", "der Vorteil", "der Nachteil", "die Konzentration", "der Druck", "bewusst", "einerseits...andererseits"]'::jsonb,
 '["Meiner Meinung nach", "Einerseits...andererseits", "Außerdem", "Ich finde", "Weniger ist manchmal mehr"]'::jsonb,
 '["Zweigliedrige Konnektoren (einerseits...andererseits)", "Nominalisierung (Konzentrationsprobleme)", "Modalverben (sollte)"]'::jsonb,
 'Gut strukturierte Erörterung mit Einleitung, Pro/Contra und persönlichem Fazit.',
 'Klare Argumentationsstruktur, passende Konnektoren, nachvollziehbare Beispiele.',
 120),

('Argumentation: Umwelt vs. Wirtschaft',
 'In vielen Ländern gibt es eine Diskussion: Soll man Umweltschutz oder Wirtschaftswachstum priorisieren? Schreiben Sie Ihre Argumentation.',
 'Die Frage nach Umweltschutz oder Wirtschaftswachstum ist eine der wichtigsten Debatten unserer Zeit. Beide Seiten haben gute Argumente.\n\nBefürworter des Wirtschaftswachstums argumentieren, dass nur eine starke Wirtschaft genug Steuereinnahmen generiert, um Umweltschutz zu finanzieren. Zudem sichere das Wachstum Arbeitsplätze.\n\nUmweltschützer hingegen weisen darauf hin, dass langfristig keine Wirtschaft auf einem zerstörten Planeten funktionieren kann. Sie fordern nachhaltige Technologien und eine Kreislaufwirtschaft.\n\nMeiner Ansicht nach ist ein sowohl-als-auch nötig: Wir brauchen wirtschaftliche Innovation, die ökologisch nachhaltig ist. Viele Länder zeigen, dass beides möglich ist.',
 'argumentation', 'C1', 'environment',
 '["die Debatte", "der Umweltschutz", "das Wirtschaftswachstum", "die Kreislaufwirtschaft", "nachhaltig", "die Innovation", "der Arbeitsplatz"]'::jsonb,
 '["Befürworter argumentieren, dass", "Umweltschützer hingegen", "Meiner Ansicht nach", "Langfristig", "Weder...noch"]'::jsonb,
 '["Nominalisierungen (Wirtschaftswachstum, Umweltschützer)", "Passiv (wird...generiert, kann funktionieren)", "dass-Sätze", "temporale Konnektoren (langfristig)"]'::jsonb,
 'Ausgewogene Argumentation mit Einleitung, zwei kontrastierenden Positionen und Synthese.',
 'Differenzierte Betrachtung, treffender Wortschatz, klarer Standpunkt mit Synthese.',
 160),

('Beschreibung: Mein Lieblingsort',
 'Beschreiben Sie Ihren Lieblingsort. Wo ist er? Wie sieht es dort aus? Warum mögen Sie diesen Ort?',
 'Mein Lieblingsort ist ein kleiner See in der Nähe meiner Stadt. Er liegt mitten im Wald und ist nur zu Fuß erreichbar. Das Wasser ist sehr klar und sauber. Im Sommer scheint die Sonne durch die Bäume und das Wasser glitzert.\n\nIch mag diesen Ort, weil es dort sehr ruhig ist. Man hört nur die Vögel und den Wind. Hier kann ich abschalten und die Natur genießen. Oft bringe ich ein Buch mit und lese am Ufer.\n\nFür mich ist dieser Ort etwas Besonderes, weil ich hier neue Energie tanken kann.',
 'beschreibung', 'A2', 'nature',
 '["der See", "der Wald", "das Ufer", "glitzern", "abschalten", "genießen", "die Energie tanken"]'::jsonb,
 '["Mein Lieblingsort ist", "Er liegt", "Ich mag diesen Ort, weil", "Man hört nur", "Hier kann ich"]'::jsonb,
 '["weil-Sätze (weil es dort sehr ruhig ist)", "Temporaladverbien (Im Sommer, Oft)", "Modalverben (kann, kann)"]'::jsonb,
 'Lebendige Beschreibung mit Angaben zur Lage, Atmosphäre und persönlicher Bedeutung.',
 'Sinnliche Sprache (sehen, hören), klare Struktur, persönliche Note.',
 80),

('Stellungnahme: Handynutzung in der Schule',
 'Sollten Handys in der Schule erlaubt sein oder nicht? Nehmen Sie Stellung zu dieser Frage.',
 'Die Frage, ob Handys in der Schule erlaubt sein sollten, wird kontrovers diskutiert. Ich möchte zu diesem Thema Stellung nehmen.\n\nGegen ein Handyverbot spricht, dass digitale Medien längst zum Alltag gehören. Schüler können mit dem Handy recherchieren, Lern-Apps nutzen oder organisatorische Fragen klären. Außerdem lernen sie einen verantwortungsvollen Umgang mit Technologie.\n\nFür ein Verbot spricht jedoch, dass viele Schüler abgelenkt werden. Sie spielen Spiele oder sind in sozialen Netzwerken, statt dem Unterricht zu folgen. Das beeinträchtigt die Lernatmosphäre.\n\nMeiner Meinung nach sollte es keine pauschalen Verbote geben. Sinnvoller ist es, klare Regeln aufzustellen: Handynutzung nur in Pausen oder für bestimmte Lernaktivitäten.',
 'stellungnahme', 'B2', 'education',
 '["die Stellungnahme", "das Verbot", "die Nutzung", "ablenken", "beeinträchtigen", "verantwortungsvoll", "pauschal"]'::jsonb,
 '["Ich möchte Stellung nehmen", "Dafür spricht, dass", "Dagegen spricht, dass", "Meiner Meinung nach", "Sinnvoller ist es"]'::jsonb,
 '["Nominalisierungen (Handynutzung, Verbot)", "Passiv (sollte erlaubt sein)", "Komparativ (sinnvoller)"]'::jsonb,
 'Gut strukturierte Stellungnahme mit Pro- und Contra-Argumenten und begründetem Fazit.',
 'Ausgewogen, klar strukturiert, differenziertes Fazit.',
 140),

('Erfahrung beschreiben: Auslandsaufenthalt',
 'Sie haben ein Semester im Ausland verbracht. Beschreiben Sie Ihre Erfahrungen. Was war neu? Was hat Ihnen gefallen? Was war schwierig?',
 'Letztes Jahr habe ich ein Semester in Spanien verbracht. Es war eine der besten Erfahrungen meines Lebens.\n\nAm Anfang war alles neu und aufregend. Die Sprache klang anders, das Essen war anders und die Menschen hatten eine ganz andere Mentalität. Besonders gefallen hat mir die Offenheit der Spanier. Ich habe schnell neue Freunde gefunden und mich bald wie zu Hause gefühlt.\n\nSchwierig war am Anfang die Sprache. Obwohl ich vorher Spanisch gelernt hatte, war es anstrengend, den ganzen Tag Spanisch zu sprechen. Aber mit der Zeit wurde es immer besser.\n\nDiese Erfahrung hat mich sehr geprägt. Ich bin selbstbewusster geworden und habe gelernt, mich in neuen Situationen zurechtzufinden.',
 'erfahrung', 'B2', 'travel',
 '["das Ausland", "die Erfahrung", "die Mentalität", "prägen", "selbstbewusst", "die Offenheit", "sich zurechtfinden"]'::jsonb,
 '["Letztes Jahr habe ich", "Am Anfang war", "Besonders gefallen hat mir", "Schwierig war", "Diese Erfahrung hat mich geprägt"]'::jsonb,
 '["Perfekt und Präteritum im Wechsel", "Konzessivsätze (obwohl)", "Komparativ (besser, selbstbewusster)", "Infinitivsätze (zurechtzufinden)"]'::jsonb,
 'Lebendige Erfahrungsbeschreibung mit zeitlichem Ablauf, positiven und negativen Aspekten und persönlicher Entwicklung.',
 'Authentischer Ton, gute Balance zwischen Gefühlen und Fakten, nachvollziehbare Entwicklung.',
 110),

('Bericht schreiben: Projektarbeit',
 'Sie haben ein Gruppenprojekt abgeschlossen. Schreiben Sie einen Bericht über die Durchführung, Ergebnisse und Ihre persönliche Bewertung.',
 'Projektbericht: Social-Media-Kampagne für nachhaltige Produkte\n\nDurchführung: Unser Team bestand aus vier Personen. In der ersten Phase haben wir die Zielgruppe analysiert und Marktforschung betrieben. Anschließend haben wir einen Content-Plan erstellt und die Kampagne entwickelt.\n\nErgebnisse: Die Kampagne erreichte über 10.000 Impressionen und 1.200 Klicks auf unsere Website. Besonders erfolgreich war der Instagram-Post zum Thema Plastikvermeidung.\n\nBewertung: Ich finde, das Projekt war insgesamt erfolgreich. Die Zusammenarbeit im Team hat gut funktioniert. Verbesserungspotenzial sehe ich bei der Zeitplanung – wir mussten am Ende sehr schnell arbeiten.',
 'bericht', 'C1', 'career',
 '["der Bericht", "die Durchführung", "die Zielgruppe", "die Kampagne", "die Zusammenarbeit", "bewerten", "das Potenzial"]'::jsonb,
 '["Unser Team bestand aus", "In der ersten Phase", "Anschließend haben wir", "Besonders erfolgreich war", "Verbesserungspotenzial sehe ich bei"]'::jsonb,
 '["Passiv (wurde analysiert, wurde entwickelt)", "temporale Strukturen (Zuerst, anschließend)", "Präteritum für Berichtssprache"]'::jsonb,
 'Klassische Berichtsstruktur mit Durchführung, Ergebnissen und Bewertung.',
 'Sachlich und präzise, aber auch kritisch reflektierend.',
 100),

('TELC Niveau A2: E-Mail an Freund',
 'Ihr Freund Alex hat Geburtstag. Schreiben Sie eine kurze E-Mail. Gratulieren Sie ihm. Fragen Sie, wie er feiert. Machen Sie einen Vorschlag für ein Geschenk.',
 'Hallo Alex,\n\nherzlichen Glückwunsch zum Geburtstag! Ich hoffe, du hast einen schönen Tag.\n\nWas machst du heute? Feierst du mit deiner Familie oder mit Freunden?\n\nIch habe eine Idee für ein Geschenk: Ich schenke dir ein Buch, das dir bestimmt gefällt. Oder hast du einen Wunsch?\n\nLass uns bald etwas trinken gehen!\n\nViele Grüße\nJonas',
 'einladung', 'A2', 'daily',
 '["der Geburtstag", "gratulieren", "schenken", "der Wunsch", "feiern", "der Vorschlag"]'::jsonb,
 '["Herzlichen Glückwunsch", "Ich hoffe", "Ich habe eine Idee", "Lass uns"]'::jsonb,
 '["Possessivartikel (dein Geburtstag)", "Modalverben (kannst, möchte)"]'::jsonb,
 'Freundliche, kurze Geburtstagsmail. Enthält Glückwunsch, Frage und Vorschlag.',
 'Natürlicher Ton für A2-Niveau, einfache Sätze, alle Inhalte vorhanden.',
 55),

('Goethe B1: Beschwerde im Restaurant',
 'Sie waren gestern in einem Restaurant essen. Das Essen war kalt und der Service war langsam. Schreiben Sie eine Beschwerde an den Restaurantleiter.',
 'Sehr geehrter Herr Maier,\n\ngestern Abend war ich mit meiner Familie in Ihrem Restaurant. Leider waren wir mit dem Service nicht zufrieden.\n\nWir haben 40 Minuten auf unser Essen gewartet. Als das Essen kam, war es kalt. Die Suppe musste zurückgehen. Der Kellner war freundlich, aber sehr beschäftigt.\n\nIch habe die Rechnung trotzdem bezahlt, finde aber, dass der Abend nicht gut war. Ich hoffe, Sie können etwas verbessern.\n\nMit freundlichen Grüßen\nThomas Braun',
 'beschwerde', 'B1', 'food',
 '["die Beschwerde", "der Service", "zufrieden", "die Rechnung", "das Restaurant", "der Kellner", "bezahlen"]'::jsonb,
 '["Leider waren wir nicht zufrieden", "Als das Essen kam", "Ich habe die Rechnung bezahlt", "Ich hoffe, Sie können"]'::jsonb,
 '["Nebensätze mit als (Als das Essen kam)", "Präteritum (war, warteten)", "Modalverben (musste)"]'::jsonb,
 'Angemessene Beschwerde mit konkreten Details, aber höflichem Ton.',
 'Konkrete Beispiele, sachlicher Ton, keine Übertreibungen.',
 80),

('Goethe C1: Erörterung Digitalisierung',
 'Die Digitalisierung verändert unsere Arbeitswelt grundlegend. Erörtern Sie die Auswirkungen auf Arbeitnehmer und Arbeitgeber. Gehen Sie auch auf Chancen und Risiken ein.',
 'Die Digitalisierung hat in den letzten Jahren nahezu alle Branchen erfasst und die Arbeitswelt nachhaltig verändert. Im Folgenden werden die wesentlichen Auswirkungen erörtert.\n\nFür Arbeitnehmer ergeben sich zahlreiche Chancen: Flexible Arbeitszeitmodelle und Homeoffice ermöglichen eine bessere Vereinbarkeit von Beruf und Familie. Gleichzeitig steigt jedoch die Erwartung, ständig erreichbar zu sein, was zu Stress führen kann.\n\nArbeitgeber profitieren von effizienteren Prozessen und geringeren Kosten. Andererseits erfordert die Digitalisierung hohe Investitionen in Technologie und Weiterbildung.\n\nZusammenfassend lässt sich sagen, dass die Digitalisierung sowohl Chancen als auch Risiken birgt. Entscheidend ist, dass alle Beteiligten die Entwicklungen aktiv mitgestalten, um die Potenziale optimal zu nutzen.',
 'erfahrung', 'C1', 'technology',
 '["die Digitalisierung", "die Auswirkung", "erfassen", "die Vereinbarkeit", "die Erwartung", "mitgestalten", "das Potenzial"]'::jsonb,
 '["Im Folgenden werden...erörtert", "Für Arbeitnehmer ergeben sich", "Gleichzeitig steigt jedoch", "Zusammenfassend lässt sich sagen", "Entscheidend ist, dass"]'::jsonb,
 '["Passiv (wird...erörtert, erfordert)", "Nominalisierungen (Digitalisierung, Vereinbarkeit, Weiterbildung)", "Partizipialkonstruktionen (ständig erreichbar zu sein)", "Konnektoren (sowohl...als auch, einerseits...andererseits)"]'::jsonb,
 'Anspruchsvolle Erörterung mit Einleitung, zwei Perspektiven und Synthese.',
 'Hohes Sprachniveau, differenzierte Argumentation, treffender Fachwortschatz.',
 180),

('Bewertung: Film oder Buch',
 'Sie haben einen Film gesehen, der auf einem Buch basiert. Schreiben Sie eine Bewertung. Vergleichen Sie Film und Buch. Was hat Ihnen besser gefallen?',
 'Letzte Woche habe ich den Film "Die Bücherdiebin" gesehen, nachdem ich das Buch gelesen hatte. Ich war gespannt, ob der Film dem Buch gerecht wird.\n\nDas Buch hat mir sehr gut gefallen, weil die Sprache so poetisch ist. Der Film hingegen lebt von den starken Bildern und der Musik. Die Schauspieler haben ihre Rollen überzeugend gespielt.\n\nAllerdings finde ich, dass der Film viele wichtige Details aus dem Buch weglassen musste. Die Geschichte wurde dadurch weniger tiefgründig.\n\nMein Fazit: Beide haben ihre Stärken. Wer die Geschichte kennt, wird den Film genießen. Aber das Buch ist noch besser.',
 'bewertung', 'B2', 'culture',
 '["die Bewertung", "vergleichen", "das Buch", "der Film", "überzeugend", "tiefgründig", "das Fazit"]'::jsonb,
 '["Ich war gespannt, ob", "Der Film hingegen", "Allerdings finde ich", "Mein Fazit"]'::jsonb,
 '["Relativsätze (die auf einem Buch basiert)", "Vergleichssätze", "Konnektoren (allerdings, hingegen, aber)"]'::jsonb,
 'Gut strukturierte Bewertung mit Vergleich, positiven und negativen Aspekten.',
 'Persönliche Meinung mit Begründung, ausgewogenes Urteil.',
 100)

on conflict (id) do nothing;

-- ============================================================
-- THEME LESSONS
-- ============================================================

insert into public.theme_lessons (theme, level, title, description, content_type, order_index)
values
-- Daily Life - A1
('daily', 'A1', 'Sich vorstellen', 'Learn to introduce yourself in German. Practice greetings, name, and where you come from.', 'vocabulary', 1),
('daily', 'A1', 'Im Café bestellen', 'Learn how to order food and drinks in a café.', 'vocabulary', 2),
('daily', 'A2', 'Termin vereinbaren', 'Learn to make appointments by phone or email.', 'writing', 3),

-- Food & Dining - A1
('food', 'A1', 'Essen und Trinken', 'Essential vocabulary for food and drinks in German.', 'vocabulary', 1),
('food', 'A2', 'Im Restaurant', 'Practice listening to restaurant conversations.', 'listening', 2),

-- Travel - A1
('travel', 'A1', 'Im Hotel', 'Learn vocabulary for hotel stays and reservations.', 'vocabulary', 1),
('travel', 'A2', 'Am Bahnhof', 'Understand train station announcements and buy tickets.', 'listening', 2),
('travel', 'B1', 'Reisebericht', 'Write about a travel experience.', 'writing', 3),

-- Technology - A2
('technology', 'A2', 'Computer und Internet', 'Basic technology vocabulary for everyday use.', 'vocabulary', 1),
('technology', 'B1', 'Soziale Medien', 'Discuss social media usage and express opinions.', 'vocabulary', 2),

-- Health - A2
('health', 'A2', 'Beim Arzt', 'Learn vocabulary for doctor visits and health.', 'vocabulary', 1),
('health', 'B1', 'Gesunder Lebensstil', 'Talk about healthy living and give advice.', 'vocabulary', 2),

-- Environment - B1
('environment', 'B1', 'Umweltschutz im Alltag', 'Learn vocabulary for environmental topics and actions.', 'vocabulary', 1),
('environment', 'B2', 'Klimawandel diskutieren', 'Discuss climate change with reasoned arguments.', 'vocabulary', 2),

-- Career - B1
('career', 'B1', 'Bewerbung und Beruf', 'Learn vocabulary for job applications and careers.', 'vocabulary', 1),
('career', 'B2', 'Im Büro kommunizieren', 'Learn professional communication in German.', 'listening', 2),

-- Education - A2
('education', 'A2', 'In der Schule', 'School-related vocabulary and classroom phrases.', 'vocabulary', 1),
('education', 'B1', 'Deutsch lernen', 'Discuss language learning strategies and experiences.', 'vocabulary', 2),

-- Culture - B1
('culture', 'B1', 'Feste und Traditionen', 'Learn about German holidays and traditions.', 'vocabulary', 1),
('culture', 'B2', 'Deutsche Geschichte', 'Discuss aspects of German history and its influence.', 'vocabulary', 2),

-- Shopping - A2
('shopping', 'A2', 'Einkaufen gehen', 'Shopping vocabulary for clothes, food, and other items.', 'vocabulary', 1),
('shopping', 'B1', 'Online Shopping', 'Vocabulary for buying and selling online.', 'vocabulary', 2),

-- Nature - A2
('nature', 'A2', 'Wetter und Jahreszeiten', 'Weather and seasons vocabulary.', 'vocabulary', 1),
('nature', 'B1', 'Tiere und Pflanzen', 'Learn animal and plant names and descriptions.', 'vocabulary', 2)

on conflict (id) do nothing;

-- ============================================================
-- FIX AUDIO LESSONS: Clear placeholder SoundHelix URLs
-- The SoundHelix URLs are demo music, not German learning content.
-- Replace with empty string so TTS generates on-the-fly.
-- ============================================================

update public.audio_lessons
set audio_url = ''
where audio_url like '%soundhelix%';
