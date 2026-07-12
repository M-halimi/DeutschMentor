-- DeutschMentor AI - Writing Prompts Seed Data (40 prompts)
-- Covers A2-C1 across 12 exercise types
-- Realistic Goethe/TELC-style exam tasks
-- Uses ARRAY[...] syntax for proper comma handling in array elements

-- ============================================================
-- A2 PROMPTS (10)
-- ============================================================

insert into public.writing_prompts (title, instructions, exercise_type, level, word_limit_min, word_limit_max, difficulty, timer_minutes, hints, target_grammar, target_vocabulary, example_structure) values
(
  'E-Mail an eine Freundin über das Wochenende',
  'Du hattest ein schönes Wochenende. Schreib eine E-Mail an deine Freundin Lisa in Deutschland. Erzähl ihr, was du am Wochenende gemacht hast. Wo warst du? Mit wem? Hat es dir gefallen? Schreib 50-80 Wörter.',
  'email', 'A2', 50, 80, 1, 15,
  ARRAY['Schreib im Perfekt (ich bin gefahren, ich habe gegessen)','Verwende Zeitangaben (am Samstag, am Sonntag, gestern)','Sag am Ende, ob du das Wochenende schön fandst'],
  ARRAY['Perfekt mit haben/sein','trennbare Verben','W-Fragen indirekt'],
  ARRAY['das Wochenende','der Ausflug','der Strand','das Wetter','der Besuch','lecker','spazieren gehen','fernsehen','kochen','sich treffen'],
  'Einleitung: Liebe Lisa, ... | Hauptteil: Am Samstag ... Am Sonntag ... | Schluss: Es war toll! Viele Grüße, [Name]'
),
(
  'Einladung zum Geburtstag',
  'Du hast bald Geburtstag und möchtest eine Party machen. Schreib eine Einladung an deinen Freund Max. Wann ist die Party? Wo findet sie statt? Was wird es geben? Bitte um Antwort bis zum 15. des Monats.',
  'invitation', 'A2', 50, 80, 1, 15,
  ARRAY['Nenn zuerst den Anlass (mein Geburtstag)','Gib Datum, Uhrzeit und Ort an','Frag, ob er kommen kann'],
  ARRAY['Satzbau mit weil/dass','Modalverben (können, möchten)','Possessivartikel (mein, dein)'],
  ARRAY['der Geburtstag','die Party','die Einladung','feiern','vorbeikommen','mitbringen','der Termin','bestätigen'],
  'Betreff: Einladung | Hallo Max, ... | Datum, Uhrzeit, Ort | Bitte um Rückmeldung | Liebe Grüße'
),
(
  'Post im Forum: Meine Stadt',
  'In einem Internetforum für Deutschlerner stellst du dich vor und beschreibst deine Stadt. Wo wohnst du? Was gibt es in deiner Stadt? Was gefällt dir gut? Was gefällt dir nicht so gut? Schreib 60-90 Wörter.',
  'forum_post', 'A2', 60, 90, 1, 20,
  ARRAY['Stell dich zuerst kurz vor (Name, Alter, Herkunft)','Beschreib 2-3 Sehenswürdigkeiten oder Orte','Nenn auch etwas, das dir nicht gefällt'],
  ARRAY['Hauptsätze mit Verbposition','lokale Präpositionen (in, bei, an)','Adjektivendungen im Nominativ'],
  ARRAY['die Stadt','der Stadtteil','das Zentrum','der Marktplatz','das Museum','der Park','der Fluss','ruhig','laut','gemütlich','modern','alt'],
  'Überschrift: Meine Stadt | Vorstellung: Hallo zusammen! Ich bin ... | Beschreibung: Meine Stadt heißt ... | Vor- und Nachteile | Abschluss: Schreib mir!'
),
(
  'Beschreibung meiner Familie',
  'Beschreibe deine Familie. Wie viele Personen seid ihr? Wie heißen deine Eltern und Geschwister? Wie alt sind sie? Was machen sie beruflich? Welche gemeinsamen Aktivitäten magst du? Schreib 60-100 Wörter.',
  'description', 'A2', 60, 100, 1, 20,
  ARRAY['Fang mit der Personenzahl an (Wir sind ... Personen)','Beschreib jede Person kurz mit Alter und Beruf','Nenn eine gemeinsame Aktivität'],
  ARRAY['Possessivartikel (mein, meine)','Verbkonjugation (arbeiten, heißen, sein)','Hauptsätze mit und/aber/oder'],
  ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','der Beruf','arbeiten als','der Sohn','die Tochter','gemeinsam','verbringen'],
  'Einleitung: Ich heiße ... und meine Familie ... | Hauptteil: Mein Vater ist ... Meine Mutter arbeitet ... | Aktivitäten: Am Wochenende ... | Schluss: Ich liebe meine Familie.'
),
(
  'Informeller Brief: Urlaubsgrüße',
  'Du machst Urlaub in Österreich. Schreib deiner Freundin Anna eine Postkarte. Wo bist du? Wie ist das Wetter? Was hast du schon gemacht? Wie gefällt es dir? Schreib 40-70 Wörter.',
  'informal_letter', 'A2', 40, 70, 1, 15,
  ARRAY['Schreib zuerst, wo du bist (Ich bin in ...)','Beschreib das Wetter kurz','Sag, was du schon unternommen hast'],
  ARRAY['Perfekt mit sein','Ortsangaben','lokale Präpositionen'],
  ARRAY['der Urlaub','die Berge','der See','die Stadt','die Aussicht','das Hotel','das Essen','das Wetter','die Sonne','der Regen','wunderbar','müde','glücklich'],
  'Ort, Datum | Liebe Anna, ... | Beschreibung von Ort und Wetter | Aktivitäten | Fazit: Es ist schön! | Deine ...'
),
(
  'E-Mail an den Deutschlehrer',
  'Du konntest gestern nicht zum Deutschkurs kommen. Schreib eine kurze E-Mail an deinen Lehrer, Herrn Schmidt. Entschuldige dich und frag, was ihr gemacht habt und welche Hausaufgaben du machen musst.',
  'email', 'A2', 50, 80, 2, 15,
  ARRAY['Beginne mit einer Entschuldigung (Es tut mir leid ...)','Erklär kurz, warum du fehlen konntest (ich war krank)','Frag nach den Hausaufgaben'],
  ARRAY['Satzklammer mit Modalverben','Perfekt zur Vergangenheit','Höflichkeitsform Sie'],
  ARRAY['die Entschuldigung','der Unterricht','fehlen','erkranken','nachholen','die Hausaufgabe','die Versäumnis','der Kurs','der Lehrer'],
  'Betreff: Entschuldigung | Sehr geehrter Herr Schmidt, ... | Grund des Fehlens | Bitte um Informationen | Mit freundlichen Grüßen'
),
(
  'Eine lustige Geschichte',
  'Erzähl eine kurze lustige Geschichte, die dir passiert ist. Was ist passiert? Wann war das? Wo warst du? Warum war es lustig? Schreib 70-100 Wörter. Benutze das Perfekt.',
  'story', 'A2', 70, 100, 2, 25,
  ARRAY['Wähl eine einfache Alltagssituation','Wer waren die Personen? Was ist passiert?','Mach den Schluss lustig oder überraschend'],
  ARRAY['Perfekt mit haben und sein','Satzverbindung mit dann, danach, plötzlich','Konnektor weil'],
  ARRAY['passieren','lustig','lachen','ausrutschen','vergessen','plötzlich','deshalb','trotzdem','dumm','komisch','die Überraschung'],
  'Einleitung: Letzte Woche | Situation: Ich war im ... | Hauptteil: Plötzlich ... | Ende: Das war sehr lustig!'
),
(
  'Eine Rezension zu einem Film',
  'Du hast einen Film im Kino gesehen. Schreib eine kurze Bewertung für eine Website. Wie heißt der Film? Worum geht es? Wie fandest du ihn? Würdest du ihn empfehlen? Schreib 60-90 Wörter.',
  'review', 'A2', 60, 90, 2, 20,
  ARRAY['Nenn zuerst den Filmtitel und das Genre','Beschreib kurz die Handlung in 1-2 Sätzen','Sag, ob du den Film empfehlen würdest'],
  ARRAY['Hauptsätze mit Konjunktionen','Adjektive (spannend, langweilig, lustig)','etwas/jemanden + Akkusativ'],
  ARRAY['der Film','der Titel','der Schauspieler','die Handlung','das Ende','spannend','langweilig','unterhaltsam','empfehlen','gefallen','die Bewertung','die Note'],
  'Titel und Sterne | Worum geht es? | Meine Meinung | Empfehlung: Ja/Nein, weil ...'
),
(
  'Brief an einen Brieffreund',
  'Dein Brieffreund aus Deutschland möchte mehr über dich wissen. Stell dich vor. Schreib über deine Hobbys, deine Lieblingsmusik und was du am Wochenende gern machst. Frag ihn auch nach seinen Hobbys.',
  'informal_letter', 'A2', 60, 90, 1, 20,
  ARRAY['Stell dich kurz vor: Name, Alter, Wohnort','Erzähl von 2-3 Hobbys','Zum Schluss eine Frage an den Brieffreund'],
  ARRAY['Verbposition im Hauptsatz','W-Fragen stellen','Vergleiche mit gern/lieber/am liebsten'],
  ARRAY['das Hobby','die Musik','der Sport','lesen','reisen','Fußball spielen','Klavier spielen','tanzen','müde','fleiig','der Brieffreund'],
  'Ort, Datum | Lieber ... | Ich heiße ... | Meine Hobbys sind ... | Was machst du gern? | Viele Grüße'
),
(
  'Beschreibung meiner Wohnung',
  'Beschreib deine Wohnung oder dein Haus. Wie viele Zimmer gibt es? Welche Möbel hast du? Welches Zimmer magst du am liebsten und warum? Schreib 60-100 Wörter.',
  'description', 'A2', 60, 100, 1, 20,
  ARRAY['Beginne mit der Lage (Meine Wohnung ist in ...)','Zähl die Räume auf (Wohnzimmer, Schlafzimmer, Küche)','Beschreib dein Lieblingszimmer genauer'],
  ARRAY['lokale Präpositionen (in, auf, neben, zwischen)','Adjektivdeklination (ein großer Tisch, eine kleine Küche)','es gibt + Akkusativ'],
  ARRAY['die Wohnung','das Haus','das Zimmer','das Wohnzimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl','der Schrank','das Bett','gemütlich','hell','geräumig'],
  'Einleitung: Ich wohne in ... | Räume: Es gibt ... | Lieblingszimmer | Begründung'
);

-- ============================================================
-- B1 PROMPTS (12)
-- ============================================================

insert into public.writing_prompts (title, instructions, exercise_type, level, word_limit_min, word_limit_max, difficulty, timer_minutes, hints, target_grammar, target_vocabulary, example_structure) values
(
  'Hotelreservierung per E-Mail',
  'Sie möchten im März für drei Nächte ein Doppelzimmer im Hotel "Alpenblick" in München reservieren. Schreiben Sie eine formelle E-Mail. Nennen Sie den Zeitraum, den Zimmertyp, fragen Sie nach dem Preis und ob Frühstück inklusive ist. Bitte um eine Bestätigung.',
  'email', 'B1', 80, 120, 2, 20,
  ARRAY['Nennen Sie zuerst Ihre Reisedaten und Zimmerwunsch','Fragen Sie nach dem Preis pro Nacht','Erwähnen Sie besondere Wünsche (z.B. ruhiges Zimmer)'],
  ARRAY['indirekte Fragen (ob, wann)','Höflichkeitsform','Präpositionen mit Dativ/Akkusativ'],
  ARRAY['die Reservierung','bestätigen','der Aufenthalt','inklusive','die Übernachtung','der Preis','die Bestätigung','der Gast','erwarten','benötigen','zusätzlich'],
  'Betreff: Zimmerreservierung | Sehr geehrte Damen und Herren, | Anliegen: Ich möchte ... | Fragen: Bitte teilen Sie mir mit, ob ... | Grußformel: Mit freundlichen Grüßen'
),
(
  'Reklamation: Defektes Smartphone',
  'Sie haben vor zwei Wochen ein Smartphone online gekauft. Jetzt funktioniert der Bildschirm nicht mehr. Schreiben Sie eine Beschwerde-E-Mail an den Kundenservice. Beschreiben Sie das Problem und fordern Sie eine Lösung (Austausch oder Rückerstattung).',
  'complaint', 'B1', 100, 150, 2, 25,
  ARRAY['Nennen Sie Bestelldatum und Bestellnummer','Beschreiben Sie den Defekt genau (was funktioniert nicht?)','Formulieren Sie eine klare Forderung'],
  ARRAY['Nebensätze mit weil/damit','Passiv (wurde geliefert, wird repariert)','indirekte Fragen'],
  ARRAY['der Schaden','der Defekt','der Bildschirm','funktionieren','der Kundenservice','die Reklamation','der Austausch','die Rückerstattung','mangelhaft','reklamieren','beanstanden','die Bestellung'],
  'Betreff: Reklamation Bestellung #XYZ | Sehr geehrte Damen und Herren, | Problembeschreibung | Forderung: Ich verlange ... | Frist setzen | Mit freundlichen Grüßen'
),
(
  'Kündigung eines Fitnessstudio-Abonnements',
  'Sie möchten Ihr Fitnessstudio-Abonnement kündigen. Schreiben Sie einen formellen Brief. Nennen Sie Ihre Vertragsnummer, das Datum, ab dem Sie kündigen möchten, und den Grund. Bitten Sie um schriftliche Bestätigung der Kündigung.',
  'formal_letter', 'B1', 80, 130, 2, 25,
  ARRAY['Geben Sie Ihre Vertragsnummer und persönlichen Daten an','Beachten Sie die Kündigungsfrist (oft 3 Monate)','Bitten Sie um schriftliche Bestätigung'],
  ARRAY['Genitiv (des Vertrags)','temporale Präpositionen (ab, zum, bis zum)','Konjunktiv II (höflich: wäre, hätte)'],
  ARRAY['die Kündigung','kündigen','der Vertrag','die Vertragsnummer','die Frist','die Kündigungsfrist','der Austritt','schriftlich','bestätigen','außerordentlich','fristgerecht'],
  'Absender und Adresse | Betreff: Kündigung | Sehr geehrte Damen und Herren, | Vertragsdaten | Kündigungsdatum und Grund | Bitte um Bestätigung | Mit freundlichen Grüßen'
),
(
  'Meine Meinung: Soziale Medien',
  'Immer mehr Jugendliche verbringen Stunden auf sozialen Medien. Was denken Sie darüber? Nennen Sie zwei Vorteile und zwei Nachteile von sozialen Medien. Geben Sie Ihre persönliche Meinung und begründen Sie diese.',
  'opinion', 'B1', 120, 180, 2, 25,
  ARRAY['Nennen Sie zuerst beide Seiten (Vor- und Nachteile)','Verwenden Sie Konnektoren (einerseits ... andererseits)','Beenden Sie mit Ihrer klaren Meinung und Begründung'],
  ARRAY['trotzdem, obwohl, weil, dass','das Gleiche/nicht dasselbe','Steigerung von Adjektiven'],
  ARRAY['soziale Medien','der Vorteil','der Nachteil','der Einfluss','verbringen','süchtig','der Austausch','der Freundeskreis','die Privatsphäre','riskieren','ablenken'],
  'Einleitung: Soziale Medien sind heute ... | Vorteile | Nachteile | Meine Meinung: Ich finde ... | Begründung | Fazit'
),
(
  'Beitrag im Reiseforum',
  'In einem Reiseforum fragt jemand: "Welche Stadt in Deutschland lohnt sich für einen Wochenendtrip?" Schreiben Sie einen Beitrag und empfehlen Sie eine Stadt. Nennen Sie Sehenswürdigkeiten, Aktivitäten und Tipps für die Anreise.',
  'forum_post', 'B1', 100, 160, 2, 25,
  ARRAY['Empfehlen Sie eine konkrete Stadt (z.B. Hamburg, Dresden, Köln)','Erklären Sie, warum diese Stadt besonders ist','Geben Sie einen praktischen Tipp zur Anreise'],
  ARRAY['Relativsätze (die Stadt, die mich beeindruckt hat)','temporale Angaben','Imperativ (informell)'],
  ARRAY['die Empfehlung','die Sehenswürdigkeit','besichtigen','der Tipp','die Anreise','übernachten','lohnen','der Geheimtipp','das Wahrzeichen','der Stadtteil','typisch'],
  'Betreff: Meine Empfehlung | Ich war letztes Jahr in ... | Sehenswürdigkeiten | Aktivitäten | Anreisetipp | Fazit'
),
(
  'Einladung zur Betriebsfeier',
  'Sie organisieren eine kleine Feier für Ihr Team. Schreiben Sie eine Einladung an Ihre Kollegen. Nennen Sie Datum, Uhrzeit und Ort. Geben Sie an, was geplant ist (Essen, Spiele, Musik). Bitten Sie um Rückmeldung, ob jemand kommen kann.',
  'invitation', 'B1', 80, 120, 2, 20,
  ARRAY['Wählen Sie einen freundlichen, aber professionellen Ton','Geben Sie alle wichtigen Details (wann, wo, wie lange)','Fragen Sie nach Allergien oder besonderen Wünschen'],
  ARRAY['indirekte Fragen (ob jemand kommen kann)','Genitiv (des Kollegen)','Futur I (wir werden ...)'],
  ARRAY['die Feier','der Kollege','das Team','die Einladung','organisieren','vorschlagen','der Termin','die Rückmeldung','teilnehmen','vorbeikommen','die Planung'],
  'Betreff: Einladung | Liebe Kolleginnen und Kollegen, | Anlass und Datum | Programm | Bitte um Rückmeldung | Viele Grüße'
),
(
  'Restaurantbewertung',
  'Sie waren in einem neuen Restaurant in Ihrer Stadt. Schreiben Sie eine Bewertung für eine Bewertungsplattform. Beschreiben Sie die Atmosphäre, das Essen und den Service. Würden Sie das Restaurant weiterempfehlen? Begründen Sie.',
  'review', 'B1', 100, 160, 2, 25,
  ARRAY['Nennen Sie Name und Lage des Restaurants','Beschreiben Sie ein konkretes Gericht, das Sie gegessen haben','Geben Sie eine Gesamtnote (1-5 Sterne)'],
  ARRAY['Adjektivdeklination (der freundliche Kellner, ein leckeres Gericht)','Komparativ/Positiv (besser als, genauso gut wie)','Relativsätze'],
  ARRAY['das Restaurant','die Atmosphäre','der Service','der Kellner','das Gericht','die Vorspeise','der Hauptgang','der Nachtisch','die Qualität','empfehlen','enttäuschend','ausgezeichnet','freundlich'],
  'Einleitung: Ich war gestern im ... | Atmosphäre | Essen | Service | Fazit und Sterne'
),
(
  'Eine unvergessliche Reise',
  'Erzählen Sie von einer Reise, die Sie nie vergessen werden. Wohin sind Sie gereist? Mit wem? Was war das Besondere an dieser Reise? Gab es ein besonderes Erlebnis? Schreiben Sie eine Geschichte im Präteritum.',
  'story', 'B1', 120, 180, 3, 30,
  ARRAY['Wählen Sie eine Reise mit einem besonderen Erlebnis','Verwenden Sie das Präteritum für die Handlung','Beschreiben Sie ein konkretes Ereignis detailliert'],
  ARRAY['Präteritum (war, hatte, reiste, erlebte)','temporale Nebensätze (als, während, nachdem)','Adjektive zur Stimmung (aufgeregt, begeistert)'],
  ARRAY['die Reise','der Urlaub','erleben','unvergesslich','beeindruckt','die Begegnung','die Landschaft','der Sonnenuntergang','sich erinnern','prägen','der Moment'],
  'Einleitung: Die schönste Reise war ... | Ort und Zeit | Besonderes Erlebnis | Gefühle | Fazit: Diese Reise werde ich nie vergessen'
),
(
  'Beschreibung: Mein Traumberuf',
  'Beschreiben Sie Ihren Traumberuf. Was für ein Beruf ist es? Warum möchten Sie diesen Beruf ausüben? Welche Fähigkeiten braucht man dafür? Was reizt Sie besonders daran?',
  'description', 'B1', 100, 160, 2, 25,
  ARRAY['Stellen Sie zuerst den Beruf vor (Name + Tätigkeit)','Erklären Sie die Motivation für diesen Beruf','Nennen Sie mindestens zwei notwendige Fähigkeiten'],
  ARRAY['dass-Sätze (Ich träume davon, dass ...)','Infinitivsätze mit zu','Modalverben (möchte, kann, muss)'],
  ARRAY['der Traumberuf','der Wunsch','die Fähigkeit','die Leidenschaft','erfüllen','reizen','verantwortungsvoll','kreativ','die Karriere','der Alltag','der Arbeitsalltag'],
  'Einleitung: Mein Traumberuf ist ... | Aufgaben: Man arbeitet mit ... | Warum: Ich möchte diesen Beruf, weil ... | Fähigkeiten | Schluss: Ich hoffe, dass ...'
),
(
  'Sollten Schüler Uniformen tragen?',
  'In vielen Ländern tragen Schüler Schuluniformen. In Deutschland ist das selten. Sollten auch deutsche Schulen Uniformen einführen? Nennen Sie Argumente für und gegen Schuluniformen. Geben Sie Ihre Meinung.',
  'argumentative', 'B1', 130, 200, 3, 30,
  ARRAY['Überlegen Sie Pro- und Kontra-Argumente','Strukturieren Sie: erst die eine, dann die andere Seite','Formulieren Sie eine klare Schlussfolgerung'],
  ARRAY['Konjunktiv II (wäre, hätte, könnte)','obwohl + Nebensatz','je ... desto'],
  ARRAY['die Uniform','die Schule','das Argument','das Für und Wider','der Zwang','die Gleichheit','die Individualität','die Gemeinschaft','die Kleiderordnung','ausdrücken','unterscheiden'],
  'Einleitung: Sollten Schüler Uniformen tragen? | Pro-Argumente | Kontra-Argumente | Meine Meinung | Fazit'
),
(
  'Bewerbung als Aushilfskraft',
  'Sie möchten sich als Aushilfskraft in einem Supermarkt bewerben. Schreiben Sie ein Bewerbungsschreiben. Stellen Sie sich kurz vor. Nennen Sie Ihre bisherigen Erfahrungen und warum Sie geeignet sind. Geben Sie an, ab wann Sie verfügbar sind.',
  'application', 'B1', 120, 180, 3, 30,
  ARRAY['Beziehen Sie sich auf die Stellenanzeige','Nennen Sie praktische Erfahrungen (auch Schülerpraktika)','Betonen Sie Ihre Zuverlässigkeit und Motivation'],
  ARRAY['Höflichkeitsform','Verbposition nach dass/wenn','Sätze mit um ... zu'],
  ARRAY['die Bewerbung','sich bewerben','die Stelle','die Aushilfe','die Erfahrung','der Supermarkt','die Kasse','die Kundenbetreuung','die Verfügbarkeit','zuverlässig','flexibel','einsatzbereit'],
  'Absender | Betreff: Bewerbung | Sehr geehrte Damen und Herren, | Motivation | Erfahrung | Verfügbarkeit | Mit freundlichen Grüßen'
),
(
  'Brief an die Gastfamilie',
  'Sie werden bald für einen Sprachkurs nach Deutschland kommen und haben eine Gastfamilie gefunden. Schreiben Sie einen ersten Brief. Stellen Sie sich vor, fragen Sie nach der Familie und dem Alltag und sagen Sie, worauf Sie sich freuen.',
  'informal_letter', 'B1', 100, 150, 2, 25,
  ARRAY['Stellen Sie sich und Ihre Familie kurz vor','Fragen Sie nach den Hobbys der Gastfamilie','Sagen Sie, worauf Sie sich besonders freuen'],
  ARRAY['Futur I (ich werde ... ankommen)','sich freuen auf + Akkusativ','Relativsätze mit wer/was'],
  ARRAY['die Gastfamilie','der Sprachkurs','der Aufenthalt','herzlich','begrüßen','kennenlernen','sich vorbereiten','der Alltag','sich kümmern','dankbar','aufgeregt','die Erfahrung'],
  'Absender | Liebe Familie ..., | Ich stelle mich vor | Fragen an die Familie | Vorfreude | Liebe Grüße'
);

-- ============================================================
-- B2 PROMPTS (10)
-- ============================================================

insert into public.writing_prompts (title, instructions, exercise_type, level, word_limit_min, word_limit_max, difficulty, timer_minutes, hints, target_grammar, target_vocabulary, example_structure) values
(
  'Leserbrief: Plastikmüll vermeiden',
  'In Ihrer lokalen Zeitung wurde ein Artikel über Plastikmüll in der Umwelt veröffentlicht. Schreiben Sie einen Leserbrief. Nehmen Sie Stellung zu den vorgeschlagenen Maßnahmen. Machen Sie eigene Vorschläge, wie man Plastik reduzieren kann. Begründen Sie Ihre Position.',
  'formal_letter', 'B2', 200, 280, 3, 30,
  ARRAY['Beziehen Sie sich konkret auf den Artikel (Datum, Titel)','Bringen Sie 2-3 eigene Vorschläge','Widerlegen Sie ein mögliches Gegenargument'],
  ARRAY['Konjunktiv II für irreale Situationen','Passiversatz (lässt sich, ist zu)','Nominalisierung (die Vermeidung, die Reduzierung)'],
  ARRAY['der Plastikmüll','die Umweltverschmutzung','reduzieren','vermeiden','die Maßnahme','die Verpackung','der Müll','die Alternative','nachhaltig','verzichten auf','der Beitrag'],
  'Betreff: Leserbrief zum Artikel ... vom ... | Sehr geehrte Redaktion, | Bezug auf Artikel | Zustimmung/Widerspruch | Eigene Vorschläge | Fazit | Mit freundlichen Grüßen'
),
(
  'Homeoffice: Fluch oder Segen?',
  'Immer mehr Unternehmen bieten Homeoffice an. Schreiben Sie einen Meinungsartikel für eine Firmenzeitung. Welche Vorteile hat Homeoffice? Welche Nachteile? Wie sollte ideales Homeoffice gestaltet sein?',
  'opinion', 'B2', 200, 300, 3, 35,
  ARRAY['Zeigen Sie beide Seiten des Themas auf','Nutzen Sie differenzierte Konnektoren (einerseits ... andererseits, zwar ... aber)','Schlagen Sie eine ausgewogene Lösung vor'],
  ARRAY['Konjunktiv I für indirekte Rede','Satzgefüge mit desto/umso','Partizipialkonstruktionen'],
  ARRAY['das Homeoffice','flexibel','produktiv','ablenken','die Selbstdisziplin','vereinbaren','der Arbeitsweg','die Work-Life-Balance','effizient','isoliert','der Austausch','vertrauen'],
  'Einleitung: Homeoffice ist aktuell ... | Vorteile | Nachteile | Ideales Modell | Fazit'
),
(
  'Sollte das Studium kostenfrei sein?',
  'In Deutschland wird diskutiert, ob ein Studium kostenfrei sein sollte. Schreiben Sie einen argumentativen Text. Nennen Sie Argumente für und gegen Studiengebühren. Beziehen Sie auch soziale Aspekte ein. Entwickeln Sie eine differenzierte Position.',
  'argumentative', 'B2', 220, 320, 4, 35,
  ARRAY['Behandeln Sie sowohl individuelle als auch gesellschaftliche Aspekte','Nutzen Sie Beispiele aus anderen Ländern','Wägen Sie ab: nicht nur schwarz oder weiß'],
  ARRAY['Genitivattribut (die Finanzierung des Studiums)','indirekte Rede im Konjunktiv I','Konnektoren (insofern, folglich, dennoch)'],
  ARRAY['das Studium','die Gebühr','die Bildung','die Chancengleichheit','finanzieren','der Staat','investieren','profitieren','der Zugang','elitär','sozial','die Gesellschaft'],
  'These: Soll das Studium kostenfrei sein? | Argumente dafür | Argumente dagegen | Internationale Beispiele | Eigene Position | Fazit'
),
(
  'Beschwerde über einen Handwerker',
  'Ein Handwerker hat bei Ihnen eine neue Heizung eingebaut. Die Arbeit war mangelhaft: Die Heizung funktioniert nicht richtig, es gibt Wasserschäden und der Termin wurde nicht eingehalten. Schreiben Sie eine formelle Beschwerde und fordern Sie Nachbesserung.',
  'complaint', 'B2', 180, 260, 3, 30,
  ARRAY['Dokumentieren Sie die Mängel sachlich mit Details','Setzen Sie eine konkrete Frist zur Nachbesserung','Drohen Sie rechtliche Schritte an, falls nötig'],
  ARRAY['Passiv (wurde nicht eingehalten, muss nachgebessert werden)','verschiedene Konjunktiv-II-Formen','Nominalstil (die Nichteinhaltung, die Mangelhaftigkeit)'],
  ARRAY['der Handwerker','mangelhaft','der Schaden','die Nachbesserung','die Frist','der Mangel','funktionstüchtig','reklamieren','der Gewährleistungsanspruch','mangelhaft','die Behebung'],
  'Betreff: Beschwerde und Nachbesserung | Sehr geehrte Damen und Herren, | Sachverhalt | Mängel im Detail | Forderung | Frist | Mit freundlichen Grüßen'
),
(
  'Bewerbung um ein Praktikum',
  'Sie bewerben sich um ein Pflichtpraktikum in der Marketingabteilung eines Technologieunternehmens. Schreiben Sie ein formelles Bewerbungsschreiben. Zeigen Sie Ihre Qualifikationen, relevante Erfahrungen und Ihr Interesse an der Branche. Gehen Sie auf die Anforderungen der Stellenausschreibung ein.',
  'application', 'B2', 250, 350, 4, 40,
  ARRAY['Beziehen Sie sich konkret auf die Ausschreibung','Zeigen Sie mit Beispielen, warum Sie geeignet sind','Verknüpfen Sie Ihre Erfahrung mit dem Unternehmen'],
  ARRAY['Funktionsverbgefüge (in Betracht ziehen, zur Verfügung stehen)','Genitiv bei Präpositionen (aufgrund, während, trotz)','Relativsätze im Genitiv'],
  ARRAY['das Praktikum','sich bewerben','die Qualifikation','die Anforderung','die Abteilung','die Marketingstrategie','das Unternehmen','branchenrelevant','einschlägig','überzeugen','vorweisen'],
  'Absender | Betreff: Bewerbung Praktikum | Sehr geehrte/r ... | Bezug zur Ausschreibung | Qualifikation und Erfahrung | Motivation | Verfügbarkeit | Mit freundlichen Grüßen'
),
(
  'Diskussion im Forum: Klimawandel',
  'In einem Diskussionsforum wird über private Maßnahmen gegen den Klimawandel debattiert. Jemand schreibt: "Als Einzelperson kann man doch nichts bewirken." Widerlegen Sie diese These. Zeigen Sie konkrete Handlungsmöglichkeiten auf.',
  'forum_post', 'B2', 180, 260, 3, 30,
  ARRAY['Zitieren Sie die Aussage, auf die Sie antworten','Widerlegen Sie das Argument mit Fakten und Beispielen','Machen Sie konkrete, umsetzbare Vorschläge'],
  ARRAY['indirekte Rede (er behauptet, dass ...)','Partizip Präsens als Adjektiv (das handelnde Individuum)','Konnektoren (während, hingegen, somit)'],
  ARRAY['der Klimawandel','der Einzelne','bewirken','der Konsum','der CO2-Ausstoß','die Ernährung','die Mobilität','der ökologische Fußabdruck','nachhaltig','verzichten','der Beitrag'],
  'Einleitung: Auf den Beitrag von ... möchte ich antworten | Widerlegung: Doch, man kann etwas bewirken! | Konkrete Maßnahmen | Appell: Jeder Beitrag zählt'
),
(
  'Buchrezension: Ein Sachbuch',
  'Sie haben ein Sachbuch gelesen, das Sie sehr beeindruckt hat. Schreiben Sie eine Rezension für eine Literaturzeitschrift. Fassen Sie die Hauptthesen zusammen, bewerten Sie die Argumentation des Autors und diskutieren Sie die Relevanz des Buches.',
  'review', 'B2', 200, 300, 4, 35,
  ARRAY['Fassen Sie die Kernaussage in 2-3 Sätzen zusammen','Kritisieren Sie konstruktiv (nicht nur loben)','Ziehen Sie einen Bezug zur aktuellen gesellschaftlichen Debatte'],
  ARRAY['indirekte Rede (Konjunktiv I)','Nominalisierungen von Verben','erweiterte Partizipialattribute'],
  ARRAY['das Sachbuch','der Autor','die These','die Argumentation','überzeugend','schlüssig','die Recherche','die Quelle','die Relevanz','der Leser','empfehlenswert','kontrovers'],
  'Titel/Autor | Einleitung: Worum geht es? | Zusammenfassung der Thesen | Kritische Bewertung | Relevanz | Fazit und Empfehlung'
),
(
  'Eine Geschichte: Die größte Herausforderung',
  'Schreiben Sie eine Geschichte über eine Herausforderung, die Sie gemeistert haben. Was war die Situation? Wie haben Sie reagiert? Was haben Sie daraus gelernt? Verwenden Sie verschiedene Zeitformen und beschreiben Sie Ihre Gefühle.',
  'story', 'B2', 200, 300, 4, 35,
  ARRAY['Bauen Sie einen Spannungsbogen auf (Anfang - Höhepunkt - Auflösung)','Nutzen Sie direkte Rede für Schlüsselszenen','Reflektieren Sie am Ende die Erfahrung'],
  ARRAY['Plusquamperfekt für Vorzeitigkeit (nachdem ich ..., war ich ...)','indirekte Rede','Konjunktiv II für innere Monologe'],
  ARRAY['die Herausforderung','bewältigen','sich stellen','scheitern','überwinden','der Zweifel','die Angst','die Niederlage','der Erfolg','stolz','die Erfahrung','reifen','wachsen'],
  'Einleitung: Die größte Herausforderung war ... | Situation beschreiben | Höhepunkt: Der schwierigste Moment | Lösung: Wie ich es geschafft habe | Reflexion: Was ich gelernt habe'
),
(
  'Kulturelles Festival beschreiben',
  'Sie haben an einem kulturellen Festival teilgenommen (z.B. Karneval, Musikfestival, Kunstausstellung). Beschreiben Sie das Event detailliert. Was wurde geboten? Wie war die Stimmung? Welche kulturellen Besonderheiten haben Sie beobachtet?',
  'description', 'B2', 180, 260, 3, 30,
  ARRAY['Beschreiben Sie die Atmosphäre mit lebendigen Adjektiven','Gehen Sie auf konkrete Programmpunkte ein','Reflektieren Sie die kulturelle Bedeutung des Events'],
  ARRAY['Partizipialattribute (das bunt geschmückte Festzelt)','Adjektivdeklination mit bestimmtem/unbestimmtem Artikel','Vergleiche mit als ob/wie'],
  ARRAY['das Festival','der Karneval','die Veranstaltung','die Tradition','der Brauch','die Atmosphäre','der Höhepunkt','der Umzug','beeindruckend','ausgelassen','feiern','teilnehmen'],
  'Einleitung: Letzten Monat war ich auf dem ... | Programmpunkte | Atmosphäre und Stimmung | Kulturelle Bedeutung | Fazit'
),
(
  'Professionelle E-Mail an einen Geschäftspartner',
  'Sie arbeiten an einem gemeinsamen Projekt mit einem deutschen Geschäftspartner. Der Projekttermin verzögert sich. Schreiben Sie eine professionelle E-Mail. Informieren Sie über die Verzögerung, nennen Sie die Gründe und schlagen Sie einen neuen Zeitplan vor.',
  'email', 'B2', 150, 220, 3, 25,
  ARRAY['Seien Sie transparent über die Gründe der Verzögerung','Entschuldigen Sie sich professionell','Bieten Sie konkrete Alternativen an'],
  ARRAY['Funktionsverbgefüge','Passiv mit Modalverben','Infinitivsätze (um ... zu, ohne ... zu)'],
  ARRAY['die Verzögerung','der Termin','der Zeitplan','der Projektstand','verschieben','entschuldigen','aktuell','die Ursache','abhängen von','der Lösungsvorschlag','verbindlich'],
  'Betreff: Aktueller Projektstand | Sehr geehrte/r ..., | Sachstand | Grund für Verzögerung | Neuer Vorschlag | Bitte um Rückmeldung | Mit freundlichen Grüßen'
);

-- ============================================================
-- C1 PROMPTS (8)
-- ============================================================

insert into public.writing_prompts (title, instructions, exercise_type, level, word_limit_min, word_limit_max, difficulty, timer_minutes, hints, target_grammar, target_vocabulary, example_structure) values
(
  'Gentechnik in der Landwirtschaft',
  'Die Nutzung der Gentechnik in der Landwirtschaft ist hoch umstritten. Verfassen Sie einen argumentativen Essay, in dem Sie sowohl ökonomische als auch ökologische Argumente abwägen. Beziehen Sie ethische Aspekte mit ein. Entwickeln Sie eine differenzierte Position.',
  'argumentative', 'C1', 300, 400, 5, 45,
  ARRAY['Differenzieren Sie zwischen verschiedenen Anwendungsbereichen der Gentechnik','Nutzen Sie Fachvokabular aus der Wissenschaft','Zeigen Sie die Komplexität des Themas auf, anstatt einfache Lösungen zu präsentieren'],
  ARRAY['Nominalstil (die Anwendung gentechnisch veränderter Organismen)','Satzverschränkung','erweiterte Partizipialattribute','indirekte Rede im Konjunktiv I'],
  ARRAY['die Gentechnik','der Organismus','verändern','die Landwirtschaft','der Ertrag','die Biodiversität','ethisch','bedenklich','die Regulierung','der Eingriff','risikoreich','chancenreich'],
  'Einleitung: Definition und Relevanz | Ökonomische Perspektive | Ökologische Perspektive | Ethische Abwägung | Synthese und Position | Fazit'
),
(
  'Offener Brief an die Schulministerin',
  'Die Anzahl der Schulabbrecher in Ihrem Bundesland steigt. Schreiben Sie einen offenen Brief an die zuständige Ministerin. Analysieren Sie die Ursachen dieses Problems und fordern Sie konkrete bildungspolitische Maßnahmen. Argumentieren Sie sachlich und fundiert.',
  'formal_letter', 'C1', 300, 400, 5, 45,
  ARRAY['Stützen Sie Ihre Argumentation auf Fakten (Statistiken, Studien)','Formulieren Sie präzise Forderungen, die politisch umsetzbar sind','Vermeiden Sie emotionale Sprache, bleiben Sie sachlich'],
  ARRAY['Genus Verbi: Aktiv/Passiv/Konjunktiv','Funktionsverbgefüge','Satzreihen mit komplexen Konnektoren','Genitiv bei Präpositionen'],
  ARRAY['der Schulabbrecher','die Bildungsmisere','die Reform','die Prävention','die Maßnahme','die Quote','die Benachteiligung','sozial','die Integration','fordern','appellieren'],
  'Betreff: Offener Brief | Sehr geehrte Frau Ministerin, | Problemdarstellung | Ursachenanalyse | Forderungen | Appell | Hochachtungsvoll'
),
(
  'Digitalisierung in der Bildung',
  'Die Digitalisierung hat das Bildungssystem grundlegend verändert. Schreiben Sie einen kritischen Meinungsbeitrag für eine pädagogische Fachzeitschrift. Gehen Sie auf Chancen und Risiken ein und bewerten Sie, ob digitale Medien den Unterricht tatsächlich verbessern.',
  'opinion', 'C1', 300, 400, 4, 40,
  ARRAY['Hinterfragen Sie den bloßen Einsatz von Technologie','Nutzen Sie Fachtermini aus der Pädagogik','Beziehen Sie sich auf Studien oder bildungspolitische Debatten'],
  ARRAY['irrealer Vergleich (als ob)','konzessive Satzverbindungen (wenngleich, obzwar)','erweiterte Nominalphrasen','Infinitivkonstruktionen'],
  ARRAY['die Digitalisierung','das Bildungssystem','der Unterricht','die Kompetenz','der Wandel','kritisch','evaluieren','die Chancengleichheit','die Ressource','pädagogisch','die Medienkompetenz'],
  'Einleitung: Digitalisierung als Herausforderung | Chancen neuer Technologien | Risiken und Nebenwirkungen | Pädagogische Bewertung | Ausblick'
),
(
  'Bewerbung als Abteilungsleiter',
  'Sie bewerben sich auf eine Position als Abteilungsleiter/in (Leitung Marketing/Strategie) bei einem internationalen Konzern. Verfassen Sie ein überzeugendes Bewerbungsschreiben. Heben Sie Führungserfahrung, strategische Kompetenzen und internationale Erfahrung hervor.',
  'application', 'C1', 300, 400, 5, 45,
  ARRAY['Zeigen Sie Führungskompetenz durch konkrete Projekte/Erfolge','Betonen Sie interkulturelle Erfahrung und Fremdsprachen','Verbinden Sie Ihre Vision mit den Unternehmenszielen'],
  ARRAY['Funktionsverbgefüge (Verantwortung tragen, in die Wege leiten)','komplexe Satzstrukturen','situationsangemessene Bescheidenheit'],
  ARRAY['die Führungskraft','die Abteilung','die Leitung','strategisch','die Kompetenz','die Erfahrung','das Projekt','verantworten','umsetzen','visionär','global','vernetzt'],
  'Absender | Betreff: Bewerbung [Position] | Sehr geehrte/r ..., | Bezug und Motivation | Führungserfahrung | Strategische Kompetenz | Internationale Erfahrung | Mit freundlichen Grüßen'
),
(
  'Beschwerde an die Bundesnetzagentur',
  'Ihr Internetanbieter hält die vertraglich zugesicherte Bandbreite seit Monaten nicht ein. Sie haben sich bereits mehrfach beschwert, ohne Erfolg. Schreiben Sie eine formelle Beschwerde an die Bundesnetzagentur. Schildern Sie den Sachverhalt präzise und fordern Sie eine Überprüfung.',
  'complaint', 'C1', 250, 350, 4, 35,
  ARRAY['Dokumentieren Sie Datum, Uhrzeit und Ergebnisse Ihrer Geschwindigkeitsmessungen','Nennen Sie das Aktenzeichen Ihrer vorherigen Beschwerden','Fordern Sie eine konkrete behördliche Maßnahme'],
  ARRAY['indirekte Rede','Passiv mit sein','Rechtssprache'],
  ARRAY['der Anbieter','die Bandbreite','der Vertrag','die Grundversorgung','die Beschwerde','die Aufsichtsbehörde','die Überprüfung','der Nachweis','messbar','sanktionieren','Abhilfe'],
  'Betreff: Beschwerde | An: Bundesnetzagentur | Sehr geehrte Damen und Herren, | Sachverhalt | Vertragliche Situation | Eigene Bemühungen | Forderung | Bitte um Prüfung | Mit freundlichen Grüßen'
),
(
  'Kritische Rezension eines politischen Essays',
  'Sie wurden gebeten, für eine Kulturzeitschrift einen politischen Essay eines bekannten Autors zu rezensieren. Analysieren Sie die Argumentationsstrategie, hinterfragen Sie die Prämissen und bewerten Sie die sprachliche Gestaltung. Nehmen Sie eine kritische, aber faire Position ein.',
  'review', 'C1', 300, 400, 5, 45,
  ARRAY['Analysieren Sie nicht nur den Inhalt, sondern auch die rhetorischen Mittel','Hinterfragen Sie die Prämissen des Autors','Schreiben Sie für ein gebildetes, aber nicht fachspezifisches Publikum'],
  ARRAY['indirekte Rede','rhetorische Fragen im Text','Satzperioden','modalisierende Elemente (angeblich, zweifellos, fraglos)'],
  ARRAY['der Essay','der Autor','die Argumentation','die Prämisse','die rhetorische Strategie','die Polemik','differenziert','pointiert','fragwürdig','überzeugend','manipulativ'],
  'Einleitung: Titel, Autor, Kontext | Zusammenfassung der Thesen | Analyse der Argumentation | Sprachliche Mittel | Kritik | Fazit'
),
(
  'Ein Wendepunkt in meinem Leben',
  'Jeder Mensch erlebt Momente, die das Leben verändern. Beschreiben Sie einen Wendepunkt in Ihrem Leben. Gehen Sie auf die Situation vorher, das auslösende Ereignis und die Konsequenzen ein. Reflektieren Sie, wie dieser Moment Sie geprägt hat.',
  'story', 'C1', 280, 400, 4, 40,
  ARRAY['Erzeugen Sie eine dichte Atmosphäre durch detaillierte Beschreibungen','Zeigen Sie die innere Entwicklung der Hauptfigur','Nutzen Sie unterschiedliche Tempi für verschiedene Zeitebenen'],
  ARRAY['Plusquamperfekt für Vorzeitigkeit','indirekte Rede für Gedanken','literarische Stilmittel (Metaphern, Vergleiche)'],
  ARRAY['der Wendepunkt','prägen','sich verändern','die Entscheidung','der Einschnitt','bewusstwerden','die Erkenntnis','der Verlust','der Neuanfang','reifen','loslassen'],
  'Einleitung: Es war der Moment, als ... | Vorher: Wie mein Leben war | Das Ereignis | Nachher: Was sich verändert hat | Reflexion: Was ich daraus gelernt habe'
),
(
  'Forum: Integration und Zuwanderung',
  'In einem politischen Diskussionsforum wird kontrovers über Zuwanderungspolitik debattiert. Ein Beitrag behauptet: "Integration ist gescheitert." Verfassen Sie eine differenzierte Antwort. Definieren Sie zunächst, was Integration bedeutet, und widerlegen oder relativieren Sie die These mit Argumenten.',
  'forum_post', 'C1', 280, 380, 5, 40,
  ARRAY['Vermeiden Sie Polarisierung – zeigen Sie die Graustellen auf','Stützen Sie Ihre Argumente mit Beispielen gelungener Integration','Differenzieren Sie zwischen verschiedenen gesellschaftlichen Bereichen'],
  ARRAY['indirekte Rede im Konjunktiv I','abwägende Konnektoren (insofern, wenngleich, freilich)','Nominalisierung komplexer Sachverhalte'],
  ARRAY['die Integration','die Zuwanderung','die Gesellschaft','der Zusammenhalt','die Teilhabe','gelingen','scheitern','die Mehrheitsgesellschaft','gegenseitig','die Voraussetzung','differenziert'],
  'Einleitung: Die These, Integration sei gescheitert | Definition von Integration | Beispiele für gelungene Integration | Herausforderungen | Differenzierte Bewertung | Fazit'
);
