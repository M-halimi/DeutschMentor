-- 6-Lesson German Integration Course
-- Goethe/TELC style: Bürgeramt → Jobsuche → Wohnung → Ernährung → Kultur → Klima
-- Natural spoken German optimized for neural TTS

-- Lessons
insert into public.audio_lessons (id, title, description, audio_url, transcript, level, duration_seconds, category, is_published, speaker_gender, speaker_age_group, accent, scenario, cefr_level, estimated_duration, grammar_involved, vocabulary_involved, difficulty_rating, speaker_count) values

-- 1. Bürgeramt Anmeldung (A2/B1)
('11111111-1111-1111-1111-111111111127',
'Bürgeramt – Wohnsitz anmelden',
'Register your address in Germany – essential A2/B1 conversation at the citizen''s office',
'',
E'Mitarbeiterin: Guten Morgen. Sie sind Herr Yilmaz, richtig?\nBürger: Ja, genau. Ich habe einen Termin zur Anmeldung.\nMitarbeiterin: Sehr gut. Haben Sie Ihre Unterlagen dabei? Ich brauche Ihren Personalausweis, die Wohnungsgeberbestätigung und das Anmeldeformular.\nBürger: Ja, alles da. Hier, bitte.\nMitarbeiterin: Danke. Also, Sie wohnen ab dem ersten März in der Müllerstraße fünfzehn?\nBürger: Genau, in der Wohnung drei.\nMitarbeiterin: Und Ihre Vormieterin ist schon ausgezogen?\nBürger: Ja, sie ist am achtundzwanzigsten Februar raus.\nMitarbeiterin: Perfekt. Dann trag ich Sie ein. Sind Sie verheiratet?\nBürger: Nein, ledig.\nMitarbeiterin: Familienangehörige, die mit Ihnen wohnen?\nBürger: Nein, ich wohne allein.\nMitarbeiterin: Okay. Haben Sie Nebenwohnsitze?\nBürger: Nein, nur hier.\nMitarbeiterin: Gut. Dann ist alles erledigt. Sie bekommen Ihre Anmeldebestätigung in etwa einer Woche per Post.\nBürger: Vielen Dank! Das ging ja schnell.\nMitarbeiterin: Gern geschehen. Einen schönen Tag noch.',
'A2', 110, 'daily', true, 'female', 'adult', 'standard', 'government', 'A2', '1-2 min',
'{"Imperativ (bringen Sie, haben Sie)", "Ordnungszahlen (erste März, achtundzwanzigste Februar)", "Dativ (in der Wohnung, mit Ihnen)", "Modalverben (können, brauchen, bekommen)"}',
'{"Behörden & Ämter", "Anmeldung & Formulare", "Wohnen", "Ausweise & Dokumente"}',
2, 2),

-- 2. Jobsuche & Bewerbung (B2)
('11111111-1111-1111-1111-111111111128',
'Jobsuche – Bewerbungsgespräch',
'A job interview phone call with a recruiter – professional German for B2 job seekers',
'',
E'Personalreferentin: Guten Tag, Herr Schmidt. Hier spricht Frau Berger von der Weber GmbH. Sie haben sich bei uns als Projektkoordinator beworben. Haben Sie kurz Zeit für ein erstes Gespräch?\nBewerber: Guten Tag, Frau Berger. Ja, sehr gerne. Einen Moment, ich setz mich kurz hin. So, jetzt bin ich bereit.\nPersonalreferentin: Perfekt. Also, Ihre Unterlagen haben mich sehr beeindruckt. Besonders Ihre Erfahrung im internationalen Projektmanagement.\nBewerber: Freut mich zu hören. Ja, ich habe in den letzten fünf Jahren mehrere Projekte im Bereich Logistik geleitet.\nPersonalreferentin: Das passt gut zu uns. Wir suchen jemanden, der sowohl Deutsch als auch Englisch spricht und mit Teams in verschiedenen Ländern arbeiten kann. Wie sehen Sie Ihre Stärken?\nBewerber: Also, meine größte Stärke ist definitiv die Koordination. Ich behalte auch in stressigen Situationen den Überblick und sorge dafür, dass Fristen eingehalten werden.\nPersonalreferentin: Das klingt gut. Haben Sie schon mal im Homeoffice gearbeitet?\nBewerber: Ja, in meiner letzten Position war ich drei Tage die Woche im Homeoffice. Das hat sehr gut funktioniert. Wir hatten tägliche Team-Meetings und haben mit Tools wie Trello und Slack gearbeitet.\nPersonalreferentin: Und wie gehen Sie mit Konflikten im Team um?\nBewerber: Am besten direkt. Ich spreche Probleme offen an und suche gemeinsam nach Lösungen. Bisher konnte ich so alle Konflikte gut lösen.\nPersonalreferentin: Herr Schmidt, das hört sich sehr gut an. Ich würde Sie gern zu einem persönlichen Gespräch einladen. Passt es nächsten Dienstag um zehn Uhr?\nBewerber: Ja, das passt perfekt. Soll ich etwas vorbereiten?\nPersonalreferentin: Vielleicht ein kurzes Konzept zu einem Ihrer letzten Projekte. Das wäre hilfreich.\nBewerber: Das mach ich gern. Vielen Dank für das nette Gespräch!\nPersonalreferentin: Ich danke Ihnen auch. Die genauen Details bekommen Sie per E-Mail. Auf Wiederhören.\nBewerber: Auf Wiederhören, Frau Berger.',
'B2', 190, 'work', true, 'female', 'adult', 'standard', 'work', 'B2', '3 min',
'{"Konjunktiv II (würde, hätte, könnte)", "Relativsätze (jemanden, der ...)", "Passiversatz (wird eingehalten, ist abgeschlossen)", "Trennbare Verben (anrufen, einladen, vorbereiten)"}',
'{"Bewerbung & Beruf", "Karriere & Fähigkeiten", "Teamarbeit", "Homeoffice & Digitalisierung"}',
3, 2),

-- 3. Wohnungssuche Berlin (B2)
('11111111-1111-1111-1111-111111111129',
'Wohnungssuche – Besichtigung in Berlin',
'Finding an apartment in Berlin – phone call, viewing, and rental negotiation',
'',
E'Makler: Hallo, Frau Müller? Mein Name ist Krause von der Immobilien GmbH. Sie hatten wegen der Wohnung in Friedrichshain angerufen.\nMieterin: Ach, hallo Herr Krause. Ja, genau. Ich bin sehr interessiert. Können Sie mir mehr dazu sagen?\nMakler: Gerne. Also, die Wohnung ist fünfundsechzig Quadratmeter groß, hat zwei Zimmer, eine Einbauküche und einen Balkon. Die Kaltmiete liegt bei achthundertfünfzig Euro.\nMieterin: Das klingt gut. Sind die Nebenkosten schon inklusive?\nMakler: Nein, die kommen noch dazu. Warm liegt die Wohnung bei etwa tausendfünfzig Euro. Dazu kommt noch die Kaution, drei Monatsmieten, also zweitausendfünfhundertfünfzig Euro.\nMieterin: Okay, das ist nicht wenig, aber im Rahmen. Wann kann ich die Wohnung besichtigen?\nMakler: Ich biete morgen um siebzehn Uhr oder am Samstag um elf Uhr an.\nMieterin: Morgen um siebzehn Uhr wäre super.\nMakler: Dann notiere ich Sie. Die Adresse ist die Warschauer Straße zweiundvierzig, dritter Stock. Klingeln Sie einfach bei Krause.\nMieterin: Perfekt. Muss ich irgendwelche Unterlagen mitbringen?\nMakler: Ja, idealerweise Ihre Gehaltsnachweise der letzten drei Monate, eine Schufa-Auskunft und eine Mietschuldenfreiheitsbescheinigung.\nMieterin: Alles klar, das bekomme ich hin. Ich bring alles mit.\nMakler: Sehr gut. Dann bis morgen.\n---\nMakler: Na, Frau Müller, wie gefällt Ihnen die Wohnung?\nMieterin: Die gefällt mir sehr gut! Besonders die große Küche und der Balkon. Gibt es einen Kellerabteil?\nMakler: Ja, im Keller ist ein Abteil dabei. Auch ein Fahrradkeller ist vorhanden.\nMieterin: Perfekt. Wie sieht es mit der U-Bahn aus?\nMakler: Die U1 ist nur fünf Minuten zu Fuß entfernt. Auch Supermärkte und Restaurants sind direkt um die Ecke.\nMieterin: Das ist ideal. Ich würde die Wohnung gerne nehmen.\nMakler: Freut mich! Dann schicke ich Ihnen den Mietvertrag per E-Mail zu. Sie können ihn in Ruhe durchlesen.',
'B2', 200, 'daily', true, 'male', 'adult', 'standard', 'daily', 'B2', '3 min',
'{"Konditionalsätze (wenn ... dann)", "Konjunktiv II (wäre, würde)", "Präpositionen (mit Dativ/Akkusativ)", "Zusammengesetzte Wörter (Gehaltsnachweise, Mietschuldenfreiheitsbescheinigung)"}',
'{"Wohnungssuche & Miete", "Immobilien & Besichtigung", "Finanzen & Kaution", "Berlin & Stadtleben"}',
3, 2),

-- 4. Gesundheit & Ernährung (B2)
('11111111-1111-1111-1111-111111111130',
'Ernährungsberatung – Gesund essen im Alltag',
'A nutrition consultation – learn health and food vocabulary in a natural B2 conversation',
'',
E'Ernährungsberaterin: Guten Morgen, Frau Wagner. Schön, dass Sie da sind. Was führt Sie zu mir?\nKlientin: Guten Morgen. Also, ich hab gemerkt, dass ich nach dem Mittagessen immer extrem müde bin. Und ich hab auch das Gefühl, dass ich zugenommen habe, obwohl ich nicht mehr esse als früher.\nErnährungsberaterin: Das klingt nach einem klassischen Problem. Darf ich fragen, was Sie typischerweise mittags essen?\nKlientin: Meistens ein belegtes Brötchen oder Nudeln mit Fertigsoße. Und nachmittags nasche ich dann oft Schokolade, weil ich einen Energieschub brauche.\nErnährungsberaterin: Ja, das ist genau die typische Mittagstief-Falle. Wenn wir viele einfache Kohlenhydrate essen, steigt der Blutzucker schnell an und fällt dann wieder rapide ab. Das führt zu Müdigkeit und Heißhunger.\nKlientin: Ach, das erklärt einiges! Was würden Sie mir empfehlen?\nErnährungsberaterin: Ich würde vorschlagen, dass Sie Ihre Mahlzeiten ein bisschen umstellen. Statt Nudeln mit Fertigsoße probieren Sie mal einen großen Salat mit Hülsenfrüchten, dazu ein Vollkornbrot mit Avocado oder magerem Käse. Das hält länger satt und der Blutzucker bleibt stabil.\nKlientin: Klingt gut, aber ich hab mittags nicht viel Zeit. Das muss schnell gehen.\nErnährungsberaterin: Das verstehe ich. Meal Prep ist da eine gute Lösung. Sie kochen am Sonntag für zwei bis drei Tage vor. Zum Beispiel Quinoa-Salat mit Gemüse oder Linsen-Suppe – das geht schnell und ist trotzdem gesund.\nKlientin: Und was ist mit dem Nachmittagstief?\nErnährungsberaterin: Greifen Sie zu Nüssen oder einem Apfel statt Schokolade. Ein Joghurt mit Beeren geht auch schnell. Wichtig ist, dass Sie regelmäßig essen – alle drei bis vier Stunden. Und genug trinken, mindestens zwei Liter am Tag.\nKlientin: Okay, das klingt machbar. Ich probier das mal aus.',
'B2', 185, 'health', true, 'female', 'adult', 'standard', 'health', 'B2', '2-3 min',
'{"Wenn-Sätze (wenn wir essen)", "Konjunktiv II (würde empfehlen, hätte)", "Imperativ (essen Sie, trinken Sie)", "Kausale Sätze (weil, da)"}',
'{"Gesundheit & Ernährung", "Essen & Kochen", "Körper & Wohlbefinden", "Ernährungsberatung"}',
3, 2),

-- 5. Kulturelle Unterschiede (B2)
('11111111-1111-1111-1111-111111111131',
'Kulturelle Unterschiede – Arbeiten in Europa',
'Two colleagues compare work cultures across Europe – B2 discussion with opinions and experiences',
'',
E'Kollege: Sag mal, Lena, du hast ja in Frankreich und Spanien gearbeitet. Was waren da die größten Unterschiede zu Deutschland?\nKollegin: Oh, eine ganze Menge! Also, der größte Unterschied war auf jeden Fall die Kommunikation. In Deutschland sagen wir ja direkt, was wir denken. In Frankreich ist das anders – da wird viel zwischen den Zeilen kommuniziert.\nKollege: Wie meinst du das genau?\nKollegin: Na ja, wenn ein Franzose sagt "Wir müssen mal darüber sprechen", dann ist das oft eine Kritik. In Deutschland sagen wir direkt "Das hat mir nicht gefallen". Die Franzosen sind da indirekter.\nKollege: Und wie war es in Spanien?\nKollegin: In Spanien ist die Work-Life-Balance ganz anders. Da ist die Familie viel wichtiger als der Job. Wenn jemand Geburtstag hat oder die Kinder krank sind, ist das völlig normal, dass man früher geht. In Deutschland fühlt man sich da oft schlecht.\nKollege: Stimmt, das kenne ich auch. Die Spanier wirken auf mich insgesamt entspannter.\nKollegin: Ja, definitiv. Aber es hat auch Nachteile – alles dauert länger. Wenn du in Spanien einen Termin um drei Uhr hast, kann es sein, dass der Gesprächspartner um Viertel nach kommt. In Deutschland wäre das undenkbar.\nKollege: Das würde mich wahnsinnig machen.\nKollegin: Gewöhnungssache. Ich hab gelernt, dass es nicht böse gemeint ist, sondern einfach eine andere Einstellung zur Zeit.\nKollege: Und wie war es mit der Hierarchie?\nKollegin: In Frankreich sind Hierarchien total wichtig. Der Chef ist der Chef und das wird auch so kommuniziert. In Deutschland kannst du eher auf Augenhöhe mit deinem Vorgesetzten diskutieren.\nKollege: Interessant. Ich glaube, ich würde mich in Deutschland am wohlsten fühlen.\nKollegin: Ja, mir ging es da ähnlich. Aber es hat mir sehr geholfen, andere Arbeitskulturen kennenzulernen. Man versteht seine eigene Kultur viel besser, wenn man andere erlebt hat.',
'B2', 200, 'work', true, 'mixed', 'adult', 'standard', 'discussion', 'B2', '3 min',
'{"Vergleichssätze (als, wie)", "Passiv (wird kommuniziert, wird gemacht)", "Konjunktiv II (wäre, würde, hätte)", "Indirekte Rede (wenn er sagt)"}',
'{"Kultur & Gesellschaft", "Arbeitsleben", "Internationale Erfahrungen", "Kommunikation"}',
3, 2),

-- 6. Umwelt & Klima (C1)
('11111111-1111-1111-1111-111111111132',
'Klimapolitik – Ein Interview mit der Expertin',
'An in-depth C1 interview about climate policy, CO2 pricing, and social justice',
'',
E'Journalistin: Frau Professor Dr. Meier, vielen Dank, dass Sie sich heute Zeit für uns nehmen. Die Klimakrise beschäftigt uns alle. Sie forschen seit über zwanzig Jahren zur Klimapolitik. Wo stehen wir Ihrer Meinung nach?\nExpertin: Nun, die gute Nachricht ist: Wir haben in den letzten Jahren technologisch enorme Fortschritte gemacht. Erneuerbare Energien sind günstiger denn je, Elektromobilität wird erschwinglicher. Die schlechte Nachricht: Der politische Wille hängt hinterher.\nJournalistin: Was meinen Sie damit konkret?\nExpertin: Die EU hat sich ja zum Ziel gesetzt, bis 2050 klimaneutral zu sein. Das ist ambitioniert, aber machbar. Allerdings fehlen in vielen Mitgliedsstaaten die konkreten Maßnahmen, um dieses Ziel zu erreichen. Subventionen für fossile Brennstoffe werden immer noch in Milliardenhöhe gezahlt.\nJournalistin: Ein oft diskutiertes Thema ist der CO2-Preis. Funktionieren solche Marktmechanismen?\nExpertin: Prinzipiell ja. Ein angemessener CO2-Preis schafft Anreize für Unternehmen, in klimafreundliche Technologien zu investieren. Allerdings darf man nicht vergessen, dass die soziale Komponente entscheidend ist. Wenn Energie unbezahlbar wird, leiden die unteren Einkommensgruppen am stärksten. Ein Klimageld könnte hier gegensteuern.\nJournalistin: Stichwort soziale Gerechtigkeit. Wie kann der Kampf gegen die Klimakrise sozial gerecht gestaltet werden?\nExpertin: Das ist die zentrale Frage unserer Zeit. Wir brauchen eine Politik, die Klimaschutz und soziale Teilhabe zusammendenkt. Investitionen in den öffentlichen Nahverkehr, in die Gebäudesanierung und in die Weiterbildung für grüne Jobs. Wer heute im Kohlebergbau arbeitet, muss Perspektiven in der Elektromobilität oder Windenergie bekommen.\nJournalistin: Sind Sie optimistisch, dass wir die Klimaziele erreichen?\nExpertin: Ich bin realistisch optimistisch. Die Technologien sind da, das Bewusstsein in der Bevölkerung ist vorhanden. Was jetzt passieren muss, ist konsequentes politisches Handeln. Und zwar nicht in zehn Jahren, sondern jetzt. Wir haben das Wissen – jetzt braucht es den Willen.',
'C1', 230, 'culture', true, 'female', 'adult', 'standard', 'discussion', 'C1', '3-4 min',
'{"Passiv (wird gezahlt, kann gestaltet werden)", "Nominalisierungen (Klimaschutz, Gebäudesanierung)", "Konjunktiv II (könnte, müsste)", "Komplexe Satzstrukturen (dass ..., die ...)"}',
'{"Umwelt & Klima", "Politik & Wirtschaft", "Wissenschaft & Forschung", "Soziale Gerechtigkeit"}',
4, 2);

-- ========================
-- EXERCISES
-- ========================

insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

-- Bürgeramt exercises
('11111111-1111-1111-1111-111111111127',
'Warum ist Herr Yilmaz beim Bürgeramt?',
'["Er möchte seinen Wohnsitz anmelden", "Er möchte einen neuen Pass beantragen", "Er möchte sich nach einem Job erkundigen", "Er möchte seine Steuererklärung abgeben"]',
'Er möchte seinen Wohnsitz anmelden',
1, 'multiple_choice',
'["Er möchte einen neuen Pass beantragen (nicht genannt)", "Er möchte sich nach einem Job erkundigen (falscher Ort)", "Er möchte seine Steuererklärung abgeben (das macht man beim Finanzamt)"]',
1,
'Hören Sie den Grund des Besuchs am Anfang.',
'Der Bürger sagt: "Ich habe einen Termin zur Anmeldung." Eine Wohnsitzanmeldung ist der häufigste Grund für einen Bürgeramt-Besuch.'),

('11111111-1111-1111-1111-111111111127',
'Herr Yilmaz wohnt ab dem 1. März in der Müllerstraße 15.',
'["Wahr", "Falsch"]',
'Wahr',
2, 'true_false',
'["Falsch (die Mitarbeiterin wiederholt die Adresse und das Datum korrekt)"]',
1,
'Die Mitarbeiterin wiederholt die Angaben zur Bestätigung.',
'Die Mitarbeiterin sagt: "Sie wohnen ab dem ersten März in der Müllerstraße fünfzehn." Herr Yilmaz bestätigt das.'),

('11111111-1111-1111-1111-111111111127',
'Welche Unterlagen braucht Herr Yilmaz für die Anmeldung?',
'["Personalausweis, Wohnungsgeberbestätigung und Anmeldeformular", "Personalausweis, Geburtsurkunde und Mietvertrag", "Reisepass, Arbeitsvertrag und Anmeldeformular", "Führerschein, Mietvertrag und Wohnungsgeberbestätigung"]',
'Personalausweis, Wohnungsgeberbestätigung und Anmeldeformular',
3, 'multiple_choice',
'["Personalausweis, Geburtsurkunde und Mietvertrag (Geburtsurkunde wird nicht genannt)", "Reisepass, Arbeitsvertrag und Anmeldeformular (Arbeitsvertrag ist nicht nötig)", "Führerschein, Mietvertrag und Wohnungsgeberbestätigung (Führerschein reicht nicht)"]',
1,
'Hören Sie die genaue Aufzählung der Mitarbeiterin.',
'Die Mitarbeiterin sagt: "Ich brauche Ihren Personalausweis, die Wohnungsgeberbestätigung und das Anmeldeformular."'),

('11111111-1111-1111-1111-111111111127',
'Ordnen Sie den Ablauf: A) Mitarbeiterin prüft die Unterlagen. B) Bürger sagt, er ist ledig und wohnt allein. C) Bürger begrüßt und nennt den Grund. D) Bürger bekommt die Bestätigung in einer Woche.',
'["C -> A -> B -> D", "A -> C -> B -> D", "C -> B -> A -> D", "B -> C -> A -> D"]',
'C -> A -> B -> D',
4, 'order_events',
'["A -> C -> B -> D (Prüfung vor Begrüßung?)", "C -> B -> A -> D (Prüfung nach Familienstand?)", "B -> C -> A -> D (Familienstand vor Begrüßung?)"]',
2,
'Folgen Sie dem natürlichen Gesprächsverlauf.',
'Zuerst die Begrüßung (C), dann prüft die Mitarbeiterin die Unterlagen (A), dann fragt sie nach Familienstand (B), zum Schluss die Bestätigung (D).'),

('11111111-1111-1111-1111-111111111127',
'Wie bekommt Herr Yilmaz die Anmeldebestätigung?',
'["Per Post", "Per E-Mail", "Kann er direkt mitnehmen", "Muss er selbst abholen"]',
'Per Post',
5, 'multiple_choice',
'["Per E-Mail (die Mitarbeiterin sagt per Post)", "Kann er direkt mitnehmen (das dauert eine Woche)", "Muss er selbst abholen (wird verschickt)"]',
1,
'Hören Sie den letzten Satz der Mitarbeiterin.',
'Die Mitarbeiterin sagt: "Sie bekommen Ihre Anmeldebestätigung in etwa einer Woche per Post."'),

-- Jobsuche exercises
('11111111-1111-1111-1111-111111111128',
'Warum ruft Frau Berger Herrn Schmidt an?',
'["Weil sie ein erstes Gespräch führen möchte", "Weil sie ihm eine Zusage geben will", "Weil sie seinen Lebenslauf nachfragen möchte", "Weil sie einen Termin absagen will"]',
'Weil sie ein erstes Gespräch führen möchte',
1, 'multiple_choice',
'["Weil sie ihm eine Zusage geben will (es ist erst das erste Gespräch)", "Weil sie seinen Lebenslauf nachfragen möchte (die Unterlagen hat sie schon)", "Weil sie einen Termin absagen will (sie lädt ihn ein)"]',
1,
'Hören Sie den Grund des Anrufs.',
'Frau Berger sagt: "Haben Sie kurz Zeit für ein erstes Gespräch?"'),

('11111111-1111-1111-1111-111111111128',
'Der Bewerber hat in den letzten fünf Jahren als Projektkoordinator gearbeitet.',
'["Wahr", "Falsch"]',
'Wahr',
2, 'true_false',
'["Falsch (er sagt selbst: Ich habe in den letzten fünf Jahren mehrere Projekte geleitet)"]',
1,
'Achten Sie auf die genaue Berufserfahrung.',
'Der Bewerber sagt: "Ich habe in den letzten fünf Jahren mehrere Projekte im Bereich Logistik geleitet."'),

('11111111-1111-1111-1111-111111111128',
'Wie geht Herr Schmidt mit Konflikten im Team um?',
'["Er spricht Probleme offen an und sucht gemeinsam nach Lösungen", "Er geht Konflikten aus dem Weg", "Er eskaliert sie an seinen Vorgesetzten", "Er wartet ab, bis sie sich von selbst lösen"]',
'Er spricht Probleme offen an und sucht gemeinsam nach Lösungen',
3, 'multiple_choice',
'["Er geht Konflikten aus dem Weg (das Gegenteil sagt er)", "Er eskaliert sie an seinen Vorgesetzten (nicht genannt)", "Er wartet ab, bis sie sich von selbst lösen (sehr passiv, nicht sein Stil)"]',
2,
'Hören Sie die direkte Frage zu Konflikten.',
'Er sagt: "Ich spreche Probleme offen an und suche gemeinsam nach Lösungen."'),

('11111111-1111-1111-1111-111111111128',
'Was soll Herr Schmidt zum persönlichen Gespräch mitbringen?',
'["Ein kurzes Konzept zu einem seiner letzten Projekte", "Seine Zeugnisse in Originalform", "Eine Präsentation über die Firma", "Referenzschreiben von früheren Arbeitgebern"]',
'Ein kurzes Konzept zu einem seiner letzten Projekte',
4, 'multiple_choice',
'["Seine Zeugnisse in Originalform (nicht verlangt)", "Eine Präsentation über die Firma (nicht verlangt)", "Referenzschreiben von früheren Arbeitgebern (nicht verlangt)"]',
2,
'Hören Sie die Antwort auf die Frage "Soll ich etwas vorbereiten?"',
'Frau Berger sagt: "Vielleicht ein kurzes Konzept zu einem Ihrer letzten Projekte."'),

('11111111-1111-1111-1111-111111111128',
'Ordnen Sie das Telefonat: A) Bewerber beschreibt seine Stärken. B) Termin für persönliches Gespräch wird vereinbart. C) Personalreferentin erklärt, wonach die Firma sucht. D) Bewerber wird nach Homeoffice-Erfahrung gefragt.',
'["A -> C -> D -> B", "C -> A -> D -> B", "A -> D -> C -> B", "C -> D -> A -> B"]',
'A -> C -> D -> B',
5, 'order_events',
'["C -> A -> D -> B (Firmenanforderungen vor Stärken?)", "A -> D -> C -> B (Homeoffice vor Anforderungen?)", "C -> D -> A -> B (Homeoffice vor Stärken?)"]',
3,
'Das Gespräch beginnt mit der Vorstellung des Bewerbers.',
'Der Bewerber stellt seine Stärken vor (A), dann erklärt Frau Berger die Anforderungen (C), dann geht es um Homeoffice (D) und zum Schluss der Termin (B).'),

-- Wohnungssuche exercises
('11111111-1111-1111-1111-111111111129',
'Wie groß ist die Wohnung in Friedrichshain?',
'["65 Quadratmeter", "55 Quadratmeter", "75 Quadratmeter", "45 Quadratmeter"]',
'65 Quadratmeter',
1, 'multiple_choice',
'["55 Quadratmeter (der Makler sagt fünfundsechzig)", "75 Quadratmeter (zu groß)", "45 Quadratmeter (zu klein)"]',
1,
'Hören Sie die genaue Größenangabe.',
'Der Makler sagt: "Die Wohnung ist fünfundsechzig Quadratmeter groß."'),

('11111111-1111-1111-1111-111111111129',
'Die Warmmiete ist inklusive Nebenkosten und liegt bei etwa 1.050 Euro.',
'["Wahr", "Falsch"]',
'Wahr',
2, 'true_false',
'["Falsch (der Makler sagt: Warm liegt die Wohnung bei etwa tausendfünfzig Euro)"]',
1,
'Unterscheiden Sie Kalt- und Warmmiete.',
'Der Makler sagt: "Warm liegt die Wohnung bei etwa tausendfünfzig Euro."'),

('11111111-1111-1111-1111-111111111129',
'Welche Unterlagen soll Frau Müller zur Besichtigung mitbringen?',
'["Gehaltsnachweise, Schufa-Auskunft und Mietschuldenfreiheitsbescheinigung", "Personalausweis und Mietvertrag", "Arbeitsvertrag und Kontoauszüge", "Bürgschaft und Lebenslauf"]',
'Gehaltsnachweise, Schufa-Auskunft und Mietschuldenfreiheitsbescheinigung',
3, 'multiple_choice',
'["Personalausweis und Mietvertrag (den Mietvertrag bekommt sie später)", "Arbeitsvertrag und Kontoauszüge (nicht genannt)", "Bürgschaft und Lebenslauf (nicht typisch für Wohnungsbesichtigung)"]',
2,
'Hören Sie die Antwort auf die Frage nach Unterlagen.',
'Der Makler zählt auf: "Gehaltsnachweise, Schufa-Auskunft und eine Mietschuldenfreiheitsbescheinigung."'),

('11111111-1111-1111-1111-111111111129',
'Wie hoch ist die Kaution?',
'["2.550 Euro", "1.050 Euro", "850 Euro", "3.000 Euro"]',
'2.550 Euro',
4, 'multiple_choice',
'["1.050 Euro (das ist die Warmmiete, nicht die Kaution)", "850 Euro (das ist die Kaltmiete)", "3.000 Euro (drei Monatsmieten Kalt wäre 2.550)"]',
2,
'Der Makler erklärt: Kaltmiete mal drei.',
'Der Makler sagt: "Dazu kommt noch die Kaution, drei Monatsmieten, also zweitausendfünfhundertfünfzig Euro."'),

('11111111-1111-1111-1111-111111111129',
'Warum gefällt Frau Müller die Wohnung besonders gut?',
'["Wegen der großen Küche und dem Balkon", "Wegen der günstigen Miete", "Wegen der Lage im Zentrum", "Wegen der Möblierung"]',
'Wegen der großen Küche und dem Balkon',
5, 'multiple_choice',
'["Wegen der günstigen Miete (sie sagt, die Miete ist nicht wenig)", "Wegen der Lage im Zentrum (Friedrichshain ist zentral, aber das sagt sie nicht)", "Wegen der Möblierung (unmöbliert)"]',
2,
'Hören Sie, was sie nach der Besichtigung sagt.',
'Sie sagt: "Besonders die große Küche und der Balkon."'),

-- Ernährung exercises
('11111111-1111-1111-1111-111111111130',
'Warum sucht Frau Wagner die Ernährungsberatung auf?',
'["Sie ist nach dem Mittagessen extrem müde und hat zugenommen", "Sie möchte abnehmen", "Sie hat eine Lebensmittelunverträglichkeit", "Sie möchte ein Kochbuch empfehlen"]',
'Sie ist nach dem Mittagessen extrem müde und hat zugenommen',
1, 'multiple_choice',
'["Sie möchte abnehmen (das sagt sie nicht direkt)", "Sie hat eine Lebensmittelunverträglichkeit (nicht genannt)", "Sie möchte ein Kochbuch empfehlen (sie ist die Klientin, nicht die Beraterin)"]',
1,
'Hören Sie den ersten Satz der Klientin.',
'Sie sagt: "Ich hab gemerkt, dass ich nach dem Mittagessen immer extrem müde bin."'),

('11111111-1111-1111-1111-111111111130',
'Frau Wagner isst mittags oft Nudeln mit Fertigsoße.',
'["Wahr", "Falsch"]',
'Wahr',
2, 'true_false',
'["Falsch (sie sagt: meistens Nudeln mit Fertigsoße)"]',
1,
'Hören Sie ihre Essgewohnheiten.',
'Die Klientin sagt: "Meistens ... Nudeln mit Fertigsoße."'),

('11111111-1111-1111-1111-111111111130',
'Was empfiehlt die Ernährungsberaterin gegen das Mittagstief?',
'["Einen Salat mit Hülsenfrüchten und Vollkornbrot", "Mehr Kaffee am Nachmittag", "Ein kurzes Nickerchen", "Mehr Schokolade für den Energieschub"]',
'Einen Salat mit Hülsenfrüchten und Vollkornbrot',
3, 'multiple_choice',
'["Mehr Kaffee am Nachmittag (nicht empfohlen)", "Ein kurzes Nickerchen (nicht besprochen)", "Mehr Schokolade für den Energieschub (das macht das Problem schlimmer)"]',
2,
'Hören Sie den Satz mit "statt".',
'Die Beraterin sagt: "Statt Nudeln mit Fertigsoße probieren Sie mal einen großen Salat mit Hülsenfrüchten."'),

('11111111-1111-1111-1111-111111111130',
'Wie viel Wasser sollte man laut der Ernährungsberaterin pro Tag trinken?',
'["Mindestens zwei Liter", "Mindestens einen Liter", "Mindestens drei Liter", "So viel wie möglich"]',
'Mindestens zwei Liter',
4, 'multiple_choice',
'["Mindestens einen Liter (zu wenig)", "Mindestens drei Liter (zu viel für die allgemeine Empfehlung)", "So viel wie möglich (keine konkrete Zahl)"]',
1,
'Hören Sie die letzte Empfehlung.',
'Die Beraterin sagt: "Und genug trinken, mindestens zwei Liter am Tag."'),

('11111111-1111-1111-1111-111111111130',
'Was schlägt die Ernährungsberaterin für den Nachmittag vor?',
'["Nüsse oder einen Apfel statt Schokolade", "Eine warme Mahlzeit", "Einen Proteinshake", "Gar nichts bis zum Abendessen"]',
'Nüsse oder einen Apfel statt Schokolade',
5, 'multiple_choice',
'["Eine warme Mahlzeit (zu schwer für den Nachmittag)", "Einen Proteinshake (nicht genannt)", "Gar nichts bis zum Abendessen (sie sagt regelmäßig essen)"]',
1,
'Hören Sie: "Greifen Sie zu ..."',
'Die Beraterin sagt: "Greifen Sie zu Nüssen oder einem Apfel statt Schokolade."'),

-- Kulturelle Unterschiede exercises
('11111111-1111-1111-1111-111111111131',
'In welchen Ländern hat Lena gearbeitet?',
'["Frankreich und Spanien", "Frankreich und Italien", "Spanien und Portugal", "Deutschland und Frankreich"]',
'Frankreich und Spanien',
1, 'multiple_choice',
'["Frankreich und Italien (Italien wird nicht genannt)", "Spanien und Portugal (Portugal wird nicht genannt)", "Deutschland und Frankreich (sie vergleicht mit Deutschland)"]',
1,
'Hören Sie den ersten Satz von Lena.',
'Lena sagt: "Ich hab in Frankreich und Spanien gearbeitet."'),

('11111111-1111-1111-1111-111111111131',
'In Frankreich wird direkt kommuniziert, was man denkt.',
'["Wahr", "Falsch"]',
'Falsch',
2, 'true_false',
'["Wahr (Lena sagt: In Frankreich wird viel zwischen den Zeilen kommuniziert)"]',
2,
'Vergleichen Sie die Kommunikationsstile.',
'Lena sagt: "In Frankreich ist das anders – da wird viel zwischen den Zeilen kommuniziert."'),

('11111111-1111-1111-1111-111111111131',
'Was ist für Lena der größte Unterschied zwischen Deutschland und Frankreich in der Arbeitskultur?',
'["Die Kommunikation", "Die Arbeitszeiten", "Das Gehalt", "Die Urlaubstage"]',
'Die Kommunikation',
3, 'multiple_choice',
'["Die Arbeitszeiten (wird nicht als Hauptunterschied genannt)", "Das Gehalt (nicht verglichen)", "Die Urlaubstage (nicht genannt)"]',
1,
'Hören Sie die Antwort auf die erste Frage.',
'Lena sagt: "Der größte Unterschied war auf jeden Fall die Kommunikation."'),

('11111111-1111-1111-1111-111111111131',
'Wie ist die Hierarchie in Frankreich im Vergleich zu Deutschland?',
'["Hierarchien sind wichtiger und werden deutlicher kommuniziert", "Es gibt keine Hierarchien", "Hierarchien sind weniger wichtig als in Deutschland", "Alle sind gleichberechtigt"]',
'Hierarchien sind wichtiger und werden deutlicher kommuniziert',
4, 'multiple_choice',
'["Es gibt keine Hierarchien (das Gegenteil ist der Fall)", "Hierarchien sind weniger wichtig (in Frankreich sind sie wichtiger)", "Alle sind gleichberechtigt (nicht typisch für Frankreich)"]',
2,
'Hören Sie den letzten Themenblock.',
'Lena sagt: "In Frankreich sind Hierarchien total wichtig. Der Chef ist der Chef."'),

('11111111-1111-1111-1111-111111111131',
'Was hat Lena durch ihre Arbeit im Ausland gelernt?',
'["Man versteht seine eigene Kultur besser, wenn man andere erlebt hat", "Deutschland ist das beste Land zum Arbeiten", "Man sollte immer im Ausland bleiben", "Kulturelle Unterschiede sind nicht wichtig"]',
'Man versteht seine eigene Kultur besser, wenn man andere erlebt hat',
5, 'multiple_choice',
'["Deutschland ist das beste Land (nicht pauschal gesagt)", "Man sollte immer im Ausland bleiben (das sagt sie nicht)", "Kulturelle Unterschiede sind nicht wichtig (das Gegenteil sagt sie)"]',
2,
'Hören Sie den letzten Satz.',
'Lena sagt: "Man versteht seine eigene Kultur viel besser, wenn man andere erlebt hat."'),

-- Klima exercises
('11111111-1111-1111-1111-111111111132',
'Wie lange forscht Frau Professor Meier bereits zur Klimapolitik?',
'["Über zwanzig Jahre", "Über zehn Jahre", "Seit ihrem Studium", "Fünf Jahre"]',
'Über zwanzig Jahre',
1, 'multiple_choice',
'["Über zehn Jahre (die Journalistin sagt zwanzig)", "Seit ihrem Studium (nicht genannt)", "Fünf Jahre (deutlich zu kurz)"]',
1,
'Hören Sie die Vorstellung der Expertin.',
'Die Journalistin sagt: "Sie forschen seit über zwanzig Jahren zur Klimapolitik."'),

('11111111-1111-1111-1111-111111111132',
'Die EU hat sich zum Ziel gesetzt, bis 2030 klimaneutral zu sein.',
'["Wahr", "Falsch"]',
'Falsch',
2, 'true_false',
'["Wahr (die Expertin sagt bis 2050, nicht 2030)"]',
2,
'Hören Sie das genaue Jahr.',
'Die Expertin sagt: "Die EU hat sich ja zum Ziel gesetzt, bis 2050 klimaneutral zu sein."'),

('11111111-1111-1111-1111-111111111132',
'Wo fehlt es laut der Expertin am meisten?',
'["Am politischen Willen", "An der Technologie", "Am Geld", "Am Bewusstsein der Bevölkerung"]',
'Am politischen Willen',
3, 'multiple_choice',
'["An der Technologie (sie sagt: technologisch enorme Fortschritte)", "Am Geld (nicht genannt)", "Am Bewusstsein der Bevölkerung (das ist vorhanden, sagt sie)"]',
2,
'Hören Sie den Gegensatz "gute Nachricht – schlechte Nachricht".',
'Die Expertin sagt: "Die schlechte Nachricht: Der politische Wille hängt hinterher."'),

('11111111-1111-1111-1111-111111111132',
'Was ist laut der Expertin die zentrale Frage unserer Zeit?',
'["Wie Klimaschutz und soziale Teilhabe zusammengedacht werden können", "Wie man CO2 vollständig vermeidet", "Ob Elektromobilität die Lösung ist", "Wie man erneuerbare Energien ausbaut"]',
'Wie Klimaschutz und soziale Teilhabe zusammengedacht werden können',
4, 'multiple_choice',
'["Wie man CO2 vollständig vermeidet (utopisch, nicht ihr Fokus)", "Ob Elektromobilität die Lösung ist (zu spezifisch)", "Wie man erneuerbare Energien ausbaut (wichtig, aber nicht die zentrale Frage)"]',
3,
'Hören Sie die Aussage: "Das ist die zentrale Frage ..."',
'Die Expertin sagt: "Das ist die zentrale Frage unserer Zeit. Wir brauchen eine Politik, die Klimaschutz und soziale Teilhabe zusammendenkt."'),

('11111111-1111-1111-1111-111111111132',
'Wie beschreibt die Expertin ihren Optimismus?',
'["Realistisch optimistisch", "Sehr optimistisch", "Pessimistisch", "Unentschlossen"]',
'Realistisch optimistisch',
5, 'multiple_choice',
'["Sehr optimistisch (sie sagt realistisch optimistisch)", "Pessimistisch (sie sagt optimistisch)", "Unentschlossen (sie hat eine klare Haltung)"]',
1,
'Hören Sie die letzte Frage.',
'Die Expertin sagt: "Ich bin realistisch optimistisch."'),

('11111111-1111-1111-1111-111111111132',
'Was braucht es laut der Expertin am Ende des Interviews?',
'["Konsequentes politisches Handeln jetzt", "Mehr Forschung", "Internationale Verträge", "Mehr Geld für Start-ups"]',
'Konsequentes politisches Handeln jetzt',
6, 'multiple_choice',
'["Mehr Forschung (die Technologien sind schon da)", "Internationale Verträge (nicht genannt)", "Mehr Geld für Start-ups (nicht genannt)"]',
2,
'Hören Sie den letzten Absatz.',
'Die Expertin sagt: "Was jetzt passieren muss, ist konsequentes politisches Handeln. Und zwar nicht in zehn Jahren, sondern jetzt."');

-- ========================
-- VOCABULARY
-- ========================

insert into public.listening_vocabulary (audio_lesson_id, german_word, english_translation, article, plural, part_of_speech, context_sentence, context_translation, cefr_level, frequency, order_index) values

-- Bürgeramt Vocab
('11111111-1111-1111-1111-111111111127', 'Unterlagen', 'documents/papers', 'die', null, 'noun', 'Haben Sie Ihre Unterlagen dabei?', 'Do you have your documents with you?', 'A2', 'very_common', 1),
('11111111-1111-1111-1111-111111111127', 'Wohnungsgeberbestätigung', 'landlord confirmation form', 'die', 'Wohnungsgeberbestätigungen', 'noun', 'Ich brauche die Wohnungsgeberbestätigung.', 'I need the landlord confirmation.', 'B1', 'common', 2),
('11111111-1111-1111-1111-111111111127', 'Anmeldeformular', 'registration form', 'das', 'Anmeldeformulare', 'noun', 'Haben Sie das Anmeldeformular ausgefüllt?', 'Have you filled out the registration form?', 'A2', 'common', 3),
('11111111-1111-1111-1111-111111111127', 'Vormieter', 'previous tenant', 'der', 'Vormieter', 'noun', 'Ihre Vormieterin ist schon ausgezogen.', 'Your previous tenant has already moved out.', 'B1', 'common', 4),
('11111111-1111-1111-1111-111111111127', 'ausziehen', 'to move out', null, null, 'verb', 'Die Vormieterin ist am 28. Februar ausgezogen.', 'The previous tenant moved out on Feb 28.', 'A2', 'common', 5),
('11111111-1111-1111-1111-111111111127', 'ledig', 'single (unmarried)', null, null, 'adjective', 'Sind Sie verheiratet? – Nein, ledig.', 'Are you married? – No, single.', 'A2', 'common', 6),
('11111111-1111-1111-1111-111111111127', 'Nebenwohnsitz', 'secondary residence', 'der', 'Nebenwohnsitze', 'noun', 'Haben Sie Nebenwohnsitze?', 'Do you have secondary residences?', 'B1', 'common', 7),
('11111111-1111-1111-1111-111111111127', 'Anmeldebestätigung', 'registration confirmation', 'die', 'Anmeldebestätigungen', 'noun', 'Sie bekommen die Bestätigung per Post.', 'You will receive the confirmation by mail.', 'A2', 'common', 8),
('11111111-1111-1111-1111-111111111127', 'eintragen', 'to enter/register', null, null, 'verb', 'Dann trag ich Sie ein.', 'Then I''ll enter you into the system.', 'B1', 'common', 9),
('11111111-1111-1111-1111-111111111127', 'beantragen', 'to apply for', null, null, 'verb', 'Ich möchte einen Pass beantragen.', 'I want to apply for a passport.', 'B1', 'common', 10),

-- Jobsuche Vocab
('11111111-1111-1111-1111-111111111128', 'Personalreferentin', 'HR manager (female)', 'die', 'Personalreferentinnen', 'noun', 'Hier spricht Frau Berger, Personalreferentin.', 'This is Ms. Berger, the HR manager speaking.', 'B2', 'common', 1),
('11111111-1111-1111-1111-111111111128', 'sich bewerben', 'to apply', null, null, 'verb', 'Sie haben sich bei uns beworben.', 'You applied to us.', 'B1', 'very_common', 2),
('11111111-1111-1111-1111-111111111128', 'Projektkoordinator', 'project coordinator', 'der', 'Projektkoordinatoren', 'noun', 'Die Stelle ist als Projektkoordinator ausgeschrieben.', 'The position is advertised as project coordinator.', 'B2', 'common', 3),
('11111111-1111-1111-1111-111111111128', 'beeindrucken', 'to impress', null, null, 'verb', 'Ihre Unterlagen haben mich beeindruckt.', 'Your documents impressed me.', 'B1', 'common', 4),
('11111111-1111-1111-1111-111111111128', 'Koordination', 'coordination', 'die', null, 'noun', 'Meine größte Stärke ist die Koordination.', 'My greatest strength is coordination.', 'B1', 'common', 5),
('11111111-1111-1111-1111-111111111128', 'den Überblick behalten', 'to keep the overview/maintain perspective', null, null, 'phrase', 'Ich behalte auch in stressigen Situationen den Überblick.', 'I keep the overview even in stressful situations.', 'B2', 'common', 6),
('11111111-1111-1111-1111-111111111128', 'Fristen einhalten', 'to meet deadlines', null, null, 'verb', 'Ich sorge dafür, dass Fristen eingehalten werden.', 'I make sure deadlines are met.', 'B2', 'common', 7),
('11111111-1111-1111-1111-111111111128', 'mit Konflikten umgehen', 'to deal with conflicts', null, null, 'verb', 'Wie gehen Sie mit Konflikten um?', 'How do you deal with conflicts?', 'B2', 'common', 8),
('11111111-1111-1111-1111-111111111128', 'jemanden einladen', 'to invite someone', null, null, 'verb', 'Ich würde Sie gern zu einem Gespräch einladen.', 'I would like to invite you to a meeting.', 'B1', 'very_common', 9),
('11111111-1111-1111-1111-111111111128', 'das Konzept', 'concept/proposal', 'das', 'Konzepte', 'noun', 'Ein kurzes Konzept zu Ihrem letzten Projekt.', 'A short concept about your last project.', 'B2', 'common', 10),

-- Wohnungssuche Vocab
('11111111-1111-1111-1111-111111111129', 'besichtigen', 'to view/inspect', null, null, 'verb', 'Wann kann ich die Wohnung besichtigen?', 'When can I view the apartment?', 'B1', 'common', 1),
('11111111-1111-1111-1111-111111111129', 'Kaltmiete', 'cold rent (base rent without utilities)', 'die', 'Kaltmieten', 'noun', 'Die Kaltmiete liegt bei 850 Euro.', 'The cold rent is 850 euros.', 'B1', 'very_common', 2),
('11111111-1111-1111-1111-111111111129', 'Nebenkosten', 'additional costs/utilities', 'die', null, 'noun', 'Sind die Nebenkosten inklusive?', 'Are utilities included?', 'B1', 'very_common', 3),
('11111111-1111-1111-1111-111111111129', 'Warmmiete', 'warm rent (rent including utilities)', 'die', 'Warmmieten', 'noun', 'Warm liegt die Wohnung bei 1.050 Euro.', 'The warm rent is 1,050 euros.', 'B1', 'common', 4),
('11111111-1111-1111-1111-111111111129', 'Kaution', 'security deposit', 'die', 'Kautionen', 'noun', 'Die Kaution beträgt drei Monatsmieten.', 'The security deposit is three months'' rent.', 'B1', 'common', 5),
('11111111-1111-1111-1111-111111111129', 'Gehaltsnachweis', 'proof of income/salary statement', 'der', 'Gehaltsnachweise', 'noun', 'Bringen Sie Ihre Gehaltsnachweise mit.', 'Bring your salary statements.', 'B2', 'common', 6),
('11111111-1111-1111-1111-111111111129', 'Schufa-Auskunft', 'credit report (Schufa)', 'die', 'Schufa-Auskünfte', 'noun', 'Eine Schufa-Auskunft ist nötig.', 'A Schufa report is necessary.', 'B2', 'common', 7),
('11111111-1111-1111-1111-111111111129', 'Mietschuldenfreiheitsbescheinigung', 'certificate of no rent arrears', 'die', 'Mietschuldenfreiheitsbescheinigungen', 'noun', 'Die Mietschuldenfreiheitsbescheinigung vom vorherigen Vermieter.', 'The certificate of no rent arrears from the previous landlord.', 'B2', 'rare', 8),
('11111111-1111-1111-1111-111111111129', 'Kellerabteil', 'basement compartment', 'das', 'Kellerabteile', 'noun', 'Ja, im Keller ist ein Abteil dabei.', 'Yes, a basement compartment is included.', 'B1', 'common', 9),
('11111111-1111-1111-1111-111111111129', 'Mietvertrag', 'rental contract/lease', 'der', 'Mietverträge', 'noun', 'Dann schicke ich Ihnen den Mietvertrag zu.', 'Then I''ll send you the lease.', 'B1', 'very_common', 10),

-- Ernährung Vocab
('11111111-1111-1111-1111-111111111130', 'Ernährungsberatung', 'nutrition counseling', 'die', 'Ernährungsberatungen', 'noun', 'Ich habe einen Termin zur Ernährungsberatung.', 'I have an appointment for nutrition counseling.', 'B2', 'common', 1),
('11111111-1111-1111-1111-111111111130', 'zunehmen', 'to gain weight', null, null, 'verb', 'Ich habe zugenommen, obwohl ich gleich viel esse.', 'I gained weight even though I eat the same amount.', 'B1', 'common', 2),
('11111111-1111-1111-1111-111111111130', 'das Mittagstief', 'afternoon slump', 'das', 'Mittagstiefs', 'noun', 'Das ist die typische Mittagstief-Falle.', 'That''s the typical afternoon slump trap.', 'B2', 'common', 3),
('11111111-1111-1111-1111-111111111130', 'Kohlenhydrate', 'carbohydrates', 'die', null, 'noun', 'Einfache Kohlenhydrate lassen den Blutzucker steigen.', 'Simple carbohydrates make blood sugar rise.', 'B2', 'common', 4),
('11111111-1111-1111-1111-111111111130', 'der Blutzucker', 'blood sugar', 'der', null, 'noun', 'Der Blutzucker fällt dann rapide ab.', 'Blood sugar then falls rapidly.', 'B2', 'common', 5),
('11111111-1111-1111-1111-111111111130', 'Heißhunger', 'intense hunger/cravings', 'der', null, 'noun', 'Das führt zu Müdigkeit und Heißhunger.', 'That leads to fatigue and cravings.', 'B1', 'common', 6),
('11111111-1111-1111-1111-111111111130', 'Hülsenfrüchte', 'legumes/pulses', 'die', null, 'noun', 'Probieren Sie Salat mit Hülsenfrüchten.', 'Try salad with legumes.', 'B2', 'common', 7),
('11111111-1111-1111-1111-111111111130', 'satt', 'full (after eating)', null, null, 'adjective', 'Das hält länger satt.', 'That keeps you full longer.', 'A2', 'common', 8),
('11111111-1111-1111-1111-111111111130', 'die Mahlzeit', 'meal', 'die', 'Mahlzeiten', 'noun', 'Stellen Sie Ihre Mahlzeiten um.', 'Adjust your meals.', 'A2', 'very_common', 9),
('11111111-1111-1111-1111-111111111130', 'meal prep', 'meal prep (preparing in advance)', 'das', null, 'noun', 'Meal Prep ist eine gute Lösung.', 'Meal prep is a good solution.', 'B2', 'common', 10),

-- Kultur Vocab
('11111111-1111-1111-1111-111111111131', 'zwischen den Zeilen', 'between the lines', null, null, 'phrase', 'In Frankreich wird zwischen den Zeilen kommuniziert.', 'In France, communication is between the lines.', 'B2', 'common', 1),
('11111111-1111-1111-1111-111111111131', 'die Work-Life-Balance', 'work-life balance', 'die', null, 'noun', 'In Spanien ist die Work-Life-Balance anders.', 'In Spain, the work-life balance is different.', 'B2', 'common', 2),
('11111111-1111-1111-1111-111111111131', 'indirekt', 'indirect', null, null, 'adjective', 'Die Franzosen sind indirekter in der Kommunikation.', 'The French are more indirect in communication.', 'B1', 'common', 3),
('11111111-1111-1111-1111-111111111131', 'die Hierarchie', 'hierarchy', 'die', 'Hierarchien', 'noun', 'Hierarchien sind in Frankreich total wichtig.', 'Hierarchies are totally important in France.', 'B2', 'common', 4),
('11111111-1111-1111-1111-111111111131', 'auf Augenhöhe', 'at eye level (as equals)', null, null, 'phrase', 'In Deutschland diskutiert man auf Augenhöhe.', 'In Germany, people discuss on equal footing.', 'B2', 'common', 5),
('11111111-1111-1111-1111-111111111131', 'die Einstellung', 'attitude/mindset', 'die', 'Einstellungen', 'noun', 'Das ist eine andere Einstellung zur Zeit.', 'That''s a different attitude toward time.', 'B1', 'common', 6),
('11111111-1111-1111-1111-111111111131', 'kennenlernen', 'to get to know', null, null, 'verb', 'Es hat mir geholfen, andere Kulturen kennenzulernen.', 'It helped me get to know other cultures.', 'A2', 'very_common', 7),
('11111111-1111-1111-1111-111111111131', 'der Unterschied', 'difference', 'der', 'Unterschiede', 'noun', 'Der größte Unterschied war die Kommunikation.', 'The biggest difference was communication.', 'A2', 'very_common', 8),
('11111111-1111-1111-1111-111111111131', 'der Vorgesetzte', 'supervisor/superior', 'der', 'Vorgesetzten', 'noun', 'Mit dem Vorgesetzten kann man diskutieren.', 'You can discuss things with the supervisor.', 'B2', 'common', 9),
('11111111-1111-1111-1111-111111111131', 'undenkbar', 'unthinkable', null, null, 'adjective', 'In Deutschland wäre das undenkbar.', 'In Germany, that would be unthinkable.', 'B2', 'common', 10),

-- Klima Vocab
('11111111-1111-1111-1111-111111111132', 'die Klimakrise', 'climate crisis', 'die', 'Klimakrisen', 'noun', 'Die Klimakrise beschäftigt uns alle.', 'The climate crisis concerns us all.', 'B2', 'common', 1),
('11111111-1111-1111-1111-111111111132', 'die Klimapolitik', 'climate policy', 'die', null, 'noun', 'Sie forschen zur Klimapolitik.', 'You research climate policy.', 'C1', 'common', 2),
('11111111-1111-1111-1111-111111111132', 'erneuerbare Energien', 'renewable energies', 'die', null, 'noun', 'Erneuerbare Energien sind günstiger denn je.', 'Renewable energies are cheaper than ever.', 'B2', 'common', 3),
('11111111-1111-1111-1111-111111111132', 'die Elektromobilität', 'electric mobility', 'die', null, 'noun', 'Elektromobilität wird erschwinglicher.', 'Electric mobility is becoming more affordable.', 'C1', 'common', 4),
('11111111-1111-1111-1111-111111111132', 'der politische Wille', 'political will', 'der', null, 'noun', 'Der politische Wille hängt hinterher.', 'The political will is lagging behind.', 'C1', 'common', 5),
('11111111-1111-1111-1111-111111111132', 'klimaneutral', 'climate-neutral', null, null, 'adjective', 'Die EU will bis 2050 klimaneutral sein.', 'The EU wants to be climate-neutral by 2050.', 'B2', 'common', 6),
('11111111-1111-1111-1111-111111111132', 'die Subvention', 'subsidy', 'die', 'Subventionen', 'noun', 'Subventionen für fossile Brennstoffe werden gezahlt.', 'Subsidies for fossil fuels are being paid.', 'C1', 'common', 7),
('11111111-1111-1111-1111-111111111132', 'der CO2-Preis', 'CO2 price', 'der', null, 'noun', 'Ein CO2-Preis schafft Anreize.', 'A CO2 price creates incentives.', 'C1', 'common', 8),
('11111111-1111-1111-1111-111111111132', 'die soziale Teilhabe', 'social participation/inclusion', 'die', null, 'noun', 'Klimaschutz und soziale Teilhabe zusammendenken.', 'To think climate protection and social inclusion together.', 'C1', 'common', 9),
('11111111-1111-1111-1111-111111111132', 'die Gebäudesanierung', 'building renovation', 'die', 'Gebäudesanierungen', 'noun', 'Investitionen in die Gebäudesanierung.', 'Investments in building renovation.', 'C1', 'common', 10);

-- ========================
-- PHRASES
-- ========================

insert into public.listening_phrases (audio_lesson_id, german_phrase, english_translation, usage_context, formality_level, is_colloquial, order_index) values

-- Bürgeramt
('11111111-1111-1111-1111-111111111127', 'Das ging ja schnell.', 'That was quick, wasn''t it.', 'Used to express pleasant surprise when something finishes faster than expected.', 'neutral', true, 1),
('11111111-1111-1111-1111-111111111127', 'Alles da.', 'Everything is here.', 'Short confirmation that you have everything (documents, items).', 'neutral', true, 2),
('11111111-1111-1111-1111-111111111127', 'Dann trag ich Sie ein.', 'Then I''ll enter you into the system.', 'Official phrase used when entering data into a computer system.', 'formal', false, 3),
('11111111-1111-1111-1111-111111111127', 'Haben Sie Ihre Unterlagen dabei?', 'Do you have your documents with you?', 'Standard question at any German authority office (Bürgeramt, Ausländerbehörde).', 'formal', false, 4),
('11111111-1111-1111-1111-111111111127', 'Einen schönen Tag noch.', 'Have a nice day.', 'Standard friendly farewell.', 'neutral', false, 5),

-- Jobsuche
('11111111-1111-1111-1111-111111111128', 'Ihre Unterlagen haben mich beeindruckt.', 'Your documents impressed me.', 'Positive feedback from a recruiter during an interview.', 'formal', false, 1),
('11111111-1111-1111-1111-111111111128', 'Das passt gut zu uns.', 'That fits well with us.', 'Used to express that a candidate''s profile matches the company''s needs.', 'formal', false, 2),
('11111111-1111-1111-1111-111111111128', 'Was sind Ihre Stärken?', 'What are your strengths?', 'Classic job interview question. Should be answered with concrete examples.', 'formal', false, 3),
('11111111-1111-1111-1111-111111111128', 'Auf Wiederhören.', 'Goodbye (on phone).', 'Polite way to end a phone call. "Auf Wiedersehen" is for in-person, "Wiederhören" for phone.', 'formal', false, 4),
('11111111-1111-1111-1111-111111111128', 'Freut mich zu hören.', 'Glad to hear it.', 'Positive reaction to good news or compliments.', 'neutral', false, 5),

-- Wohnungssuche
('11111111-1111-1111-1111-111111111129', 'Das ist nicht wenig, aber im Rahmen.', 'That''s not little, but within reason.', 'Used when something is expensive but still acceptable.', 'neutral', false, 1),
('11111111-1111-1111-1111-111111111129', 'Das bekomme ich hin.', 'I can manage that.', 'Expression showing confidence that you can handle something.', 'neutral', true, 2),
('11111111-1111-1111-1111-111111111129', 'Wie sieht es mit ... aus?', 'How is it with ...?', 'Useful phrase to ask about availability or status of something.', 'neutral', false, 3),
('11111111-1111-1111-1111-111111111129', 'Die können Sie in Ruhe durchlesen.', 'You can read through it at your leisure.', 'Common phrase when giving someone a document to review without pressure.', 'neutral', false, 4),
('11111111-1111-1111-1111-111111111129', 'Direkt um die Ecke.', 'Right around the corner.', 'Describing something that is very close by (within walking distance).', 'neutral', true, 5),

-- Ernährung
('11111111-1111-1111-1111-111111111130', 'Was führt Sie zu mir?', 'What brings you to me?', 'Professional opening question used by doctors, consultants, and advisors.', 'formal', false, 1),
('11111111-1111-1111-1111-111111111130', 'Das klingt nach einem klassischen Problem.', 'That sounds like a classic problem.', 'Used to assure someone that their issue is common and known.', 'neutral', false, 2),
('11111111-1111-1111-1111-111111111130', 'Ach, das erklärt einiges!', 'Oh, that explains a lot!', 'Expression when something suddenly makes sense.', 'neutral', true, 3),
('11111111-1111-1111-1111-111111111130', 'Das klingt machbar.', 'That sounds doable.', 'Expression of cautious optimism about a plan.', 'neutral', true, 4),
('11111111-1111-1111-1111-111111111130', 'Greifen Sie zu ... statt ...', 'Reach for ... instead of ...', 'Comparative recommendation phrase. "Zu etwas greifen" = to reach for something.', 'neutral', false, 5),

-- Kultur
('11111111-1111-1111-1111-111111111131', 'Sag mal, ...', 'Say, ... / Tell me, ...', 'Conversation starter between colleagues or friends. Informal but very common.', 'informal', true, 1),
('11111111-1111-1111-1111-111111111131', 'Eine ganze Menge!', 'Quite a lot!', 'Emphatic answer meaning "many things".', 'neutral', true, 2),
('11111111-1111-1111-1111-111111111131', 'Wie meinst du das genau?', 'What do you mean by that exactly?', 'Request for clarification in a conversation.', 'neutral', false, 3),
('11111111-1111-1111-1111-111111111131', 'Gewöhnungssache.', 'A matter of getting used to it.', 'Said when something is neither good nor bad, just different from what you''re used to.', 'neutral', true, 4),
('11111111-1111-1111-1111-111111111131', 'Das würde mich wahnsinnig machen.', 'That would drive me crazy.', 'Strong emotional reaction to something that would be very annoying.', 'neutral', true, 5),

-- Klima
('11111111-1111-1111-1111-111111111132', 'Nun, die gute Nachricht ist ... Die schlechte Nachricht ist ...', 'Well, the good news is ... The bad news is ...', 'Classic rhetorical structure used in interviews and presentations.', 'formal', false, 1),
('11111111-1111-1111-1111-111111111132', 'Was meinen Sie damit konkret?', 'What do you mean by that specifically?', 'Follow-up question asking for concrete details or examples.', 'formal', false, 2),
('11111111-1111-1111-1111-111111111132', 'Stichwort ...', 'Speaking of ... / Keyword ...', 'Used to introduce a related topic or concept.', 'neutral', false, 3),
('11111111-1111-1111-1111-111111111132', 'Das ist die zentrale Frage unserer Zeit.', 'That is the central question of our time.', 'Emphatic statement emphasizing the importance of a question.', 'formal', false, 4),
('11111111-1111-1111-1111-111111111132', 'Wir haben das Wissen – jetzt braucht es den Willen.', 'We have the knowledge – now we need the will.', 'Rhetorical closing statement contrasting knowledge with action.', 'formal', false, 5);

-- ========================
-- GRAMMAR POINTS
-- ========================

insert into public.listening_grammar_points (audio_lesson_id, grammar_topic, explanation, example_from_audio, english_translation, rule_summary, cefr_level, order_index) values

-- Bürgeramt grammar
('11111111-1111-1111-1111-111111111127', 'Imperativ mit "Sie"', 'Der formelle Imperativ wird mit "Sie" + Verb (Endung -en) gebildet. Bei trennbaren Verben wird die Vorsilbe ans Ende gestellt.', 'Bringen Sie die Unterlagen mit. Haben Sie Ihren Ausweis dabei.', 'Bring the documents with you. Have your ID with you.', 'Verb (Infinitiv) + Sie + ... + (trennbare Vorsilbe). Imperativ mit sein: "Seien Sie".', 'A2', 1),
('11111111-1111-1111-1111-111111111127', 'Ordnungszahlen bei Daten', 'Bei Datumsangaben werden Ordnungszahlen verwendet: "erster März", "achtundzwanzigster Februar". Am Monatstag steht der Punkt.', 'Ab dem ersten März. Am achtundzwanzigsten Februar.', 'From March 1st. On February 28th.', 'Der erste/dritte/... + Monatsname. Im Dativ: am ersten/...', 'A2', 2),
('11111111-1111-1111-1111-111111111127', 'Dativ nach Präpositionen', 'Manche Präpositionen verlangen immer den Dativ: "mit", "von", "zu", "aus", "bei", "seit", "nach", "gegenüber".', 'Ich wohne in der Wohnung drei. Mit Ihnen.', 'I live in apartment three. With you.', 'mit + Dativ, von + Dativ, zu + Dativ, bei + Dativ. Bestimmter Artikel: dem, der, dem', 'A2', 3),

-- Jobsuche grammar
('11111111-1111-1111-1111-111111111128', 'Relativsätze', 'Relativsätze geben zusätzliche Informationen über ein Nomen. Das Relativpronomen richtet sich nach Genus und Numerus.', 'Wir suchen jemanden, der sowohl Deutsch als auch Englisch spricht.', 'We are looking for someone who speaks both German and English.', 'Relativpronomen: der (maskulin), die (feminin), das (neutral), die (Plural). Relativpronomen steht am Anfang des Nebensatzes, Verb am Ende.', 'B2', 1),
('11111111-1111-1111-1111-111111111128', 'Konjunktiv II für Höflichkeit', 'Der Konjunktiv II macht Fragen und Aussagen höflicher. Besonders häufig: "würde", "hätte", "könnte".', 'Ich würde Sie gern zu einem Gespräch einladen. Das wäre hilfreich.', 'I would like to invite you to a meeting. That would be helpful.', 'würde + Infinitiv, Konjunktiv II von haben = hätte, können = könnte. Wird im Alltag ständig verwendet.', 'B1', 2),
('11111111-1111-1111-1111-111111111128', 'Passiversatz mit "werden" und "sein"', 'Es gibt zwei Arten von Passiv: Vorgangspassiv (werden) und Zustandspassiv (sein). Auch möglich: "man"-Konstruktionen.', 'Fristen werden eingehalten. Die Stelle ist ausgeschrieben.', 'Deadlines are kept. The position is advertised.', 'Vorgangspassiv: werden + Partizip II. Zustandspassiv: sein + Partizip II. Alternativ: "man" + Aktiv.', 'B2', 3),

-- Wohnungssuche grammar
('11111111-1111-1111-1111-111111111129', 'Zusammengesetzte Nomen', 'Im Deutschen können mehrere Nomen zu einem langen Wort verbunden werden. Das letzte Wort bestimmt das Genus. Die anderen Wörter sind Erklärungen.', 'Mietschuldenfreiheitsbescheinigung = Miete + Schulden + Freiheit + Bescheinigung', 'Certificate of no rent arrears', 'Das Grundwort (letztes Nomen) bestimmt Genus und Plural. Zwischenwörter sind Erläuterungen (oft im Genitiv oder Plural).', 'B2', 1),
('11111111-1111-1111-1111-111111111129', 'Präpositionen mit Wechselpräpositionen', 'Manche Präpositionen (in, auf, unter, über, vor, hinter, neben, zwischen) verlangen bei Ort/Position Dativ, bei Richtung/Bewegung Akkusativ.', 'Im Keller ist ein Abteil. Ich schicke Ihnen den Vertrag zu.', 'In the basement there is a compartment. I will send you the contract.', 'Wo? (Position) + Dativ. Wohin? (Richtung) + Akkusativ. "zu" + Dativ (Richtung, immer Dativ).', 'B1', 2),
('11111111-1111-1111-1111-111111111129', 'Konditionalsätze mit "wenn"', 'Wenn-Sätze drücken eine Bedingung aus. Das Verb steht am Ende des Nebensatzes. Der Hauptsatz beginnt oft mit "dann".', 'Wenn jemand Geburtstag hat, ist es normal, früher zu gehen.', 'When someone has a birthday, it''s normal to leave early.', 'wenn + Subjekt + ... + Verb (Ende), (dann) + Verb + Subjekt.', 'B1', 3),

-- Ernährung grammar
('11111111-1111-1111-1111-111111111130', 'Kausale Nebensätze mit "weil" und "da"', '"Weil" und "da" geben einen Grund an. "Weil" im Nebensatz mit Verb am Ende. "Da" wird meist am Satzanfang verwendet.', 'Ich bin müde, weil mein Blutzucker abfällt. Da wir wenig Zeit haben, empfehle ich Meal Prep.', 'I am tired because my blood sugar drops. Since we have little time, I recommend meal prep.', 'weil + Subjekt + ... + Verb (Ende). da + Subjekt + ... + Verb (Ende). "Da" steht meist am Satzanfang.', 'B1', 1),
('11111111-1111-1111-1111-111111111130', 'Imperativ mit "Sie" und "du"', 'Der Imperativ wird für Aufforderungen verwendet. Formell: "Essen Sie" (Sie + Verb). Informell: "Iss" (du, Verbstamm) oder "Esst" (ihr).', 'Probieren Sie mal einen Salat. Greifen Sie zu Nüssen.', 'Try a salad. Reach for nuts.', 'formell: Verb (en) + Sie. informell (du): Verb-stamm (+ e). informell (ihr): Verb + t.', 'A2', 2),
('11111111-1111-1111-1111-111111111130', 'Vergleichssätze mit "als" und "wie"', '"Wie" verwendet man bei Gleichheit (genauso ... wie). "Als" verwendet man bei Ungleichheit (mehr/weniger ... als).', 'Ich esse nicht mehr als früher.', 'I don''t eat more than before.', 'Gleichheit: so/genauso + Adjektiv + wie. Ungleichheit: Adjektiv (Komparativ) + als.', 'A2', 3),

-- Kultur grammar
('11111111-1111-1111-1111-111111111131', 'Passiv in der gesprochenen Sprache', 'Das Passiv wird oft verwendet, wenn die Handlung wichtiger ist als die handelnde Person. In gesprochenem Deutsch ist "man" + Aktiv eine Alternative.', 'In Frankreich wird viel zwischen den Zeilen kommuniziert.', 'In France, much is communicated between the lines.', 'werden + Partizip II (Vorgangspassiv). sein + Partizip II (Zustandspassiv). Umgangssprachlich oft "man" + Aktiv.', 'B2', 1),
('11111111-1111-1111-1111-111111111131', 'Vergleiche mit "als" und "wie" bei Kulturen', 'Für Unterschiede zwischen Kulturen wird der Komparativ mit "als" verwendet. Bei Ähnlichkeiten "wie".', 'In Spanien ist die Familie wichtiger als der Job. Die Franzosen sind indirekter als die Deutschen.', 'In Spain, family is more important than job. The French are more indirect than Germans.', 'Adjektiv + -er + als (Ungleichheit). so + Adjektiv + wie (Gleichheit).', 'B1', 2),
('11111111-1111-1111-1111-111111111131', 'Indirekte Rede im Gespräch', 'In Gesprächen wird indirekte Rede verwendet, um die Aussage einer anderen Person wiederzugeben. Im Alltag oft mit dem Indikativ.', 'Wenn ein Franzose sagt "Wir müssen mal darüber sprechen", dann ist das oft eine Kritik.', 'When a French person says "We need to talk about that", it''s often criticism.', 'Indirekte Rede: Subjekt + sagt + ", ..." + , + Hauptsatz. Im Alltag selten mit Konjunktiv I.', 'B2', 3),

-- Klima grammar
('11111111-1111-1111-1111-111111111132', 'Passiv mit Modalverben', 'Modalverben + Passiv drücken Notwendigkeit, Möglichkeit oder Erlaubnis aus. Das Modalverb konjugiert, "werden" als Infinitiv am Ende.', 'Subventionen werden gezahlt. Der Kampf kann gestaltet werden.', 'Subsidies are paid. The fight can be shaped.', 'Modalverb + ... + Partizip II + werden (Infinitiv am Ende). Beispiel: "kann gestaltet werden"', 'C1', 1),
('11111111-1111-1111-1111-111111111132', 'Genitivattribut', 'Der Genitiv zeigt Besitz oder Zugehörigkeit an. Wird in formeller und akademischer Sprache häufig verwendet.', 'Die zentrale Frage unserer Zeit. Das Bewusstsein in der Bevölkerung.', 'The central question of our time. The awareness in the population.', 'Genitiv: der (mask/neutr), der (fem), der (Plural). Endung: -s oder -es (starke Deklination).', 'C1', 2),
('11111111-1111-1111-1111-111111111132', 'Nominalisierungen für wissenschaftliche Sprache', 'Im akademischen Deutsch werden Verben und Adjektive oft in Nomen umgewandelt (nominalisiert). Das macht die Sprache formeller.', 'Der Kampf gegen die Klimakrise. Investitionen in die Gebäudesanierung. Die Weiterbildung für grüne Jobs.', 'The fight against the climate crisis. Investments in building renovation. Retraining for green jobs.', 'Verb → Nomen (das + Verb im Infinitiv oder Stamm + -ung). Adjektiv → Nomen (Artikel + Adjektiv).', 'C1', 3);
