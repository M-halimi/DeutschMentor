-- Comprehensive email training examples for Goethe/TELC exam preparation
-- Covers all 6 email types at A2, B1, B2 levels with full model answers

insert into public.writing_examples (title, task_description, example_answer, exercise_type, level, theme, useful_vocabulary, useful_phrases, grammar_structures, explanation, why_good, word_count)
values

-- ============================================================
-- FORMAL EMAILS (email_formal)
-- ============================================================
('Formelle E-Mail: Anfrage an Universität',
 'Sie möchten sich an einer deutschen Universität bewerben. Schreiben Sie eine formelle E-Mail an das Studierendensekretariat. Fragen Sie nach: Bewerbungsfrist, erforderlichen Unterlagen, Sprachnachweis.',
 'Sehr geehrte Damen und Herren,\n\nich interessiere mich für ein Studium der Betriebswirtschaftslehre an Ihrer Universität und möchte mich vor der Bewerbung über einige wichtige Punkte informieren.\n\n1. Bis wann muss die Bewerbung eingereicht werden?\n2. Welche Unterlagen werden benötigt?\n3. Wird ein bestimmtes Sprachniveau (TestDaF oder Goethe-Zertifikat) vorausgesetzt?\n\nIch wäre Ihnen sehr dankbar, wenn Sie mir diese Informationen zukommen lassen könnten.\n\nMit freundlichen Grüßen\nAnna Schneider',
 'email_formal', 'B1', 'education',
 '["die Bewerbung", "das Studium", "die Unterlagen", "der Sprachnachweis", "die Frist", "einreichen", "voraussetzen"]'::jsonb,
 '["Sehr geehrte Damen und Herren", "Ich interessiere mich für", "Ich wäre Ihnen sehr dankbar, wenn", "Mit freundlichen Grüßen"]'::jsonb,
 '["Konjunktiv II (wäre, könnte)", "Passiv (werden benötigt, wird vorausgesetzt)", "Indirekte Fragen (ob, wann, welche)"]'::jsonb,
 'Höfliche Anfrage mit klarer Struktur: Anrede, Vorstellung, nummerierte Fragen, höfliche Bitte, Grußformel.',
 'Sehr formell und höflich, perfekte Behördenkommunikation.',
 100),

('Formelle E-Mail: Krankmeldung',
 'Sie sind krank und können nicht zur Arbeit kommen. Schreiben Sie eine formelle E-Mail an Ihren Chef. Informieren Sie ihn über: Ihre Krankheit, voraussichtliche Dauer, was mit Ihren Aufgaben passiert.',
 'Sehr geehrter Herr Dr. Müller,\n\nich muss Ihnen leider mitteilen, dass ich heute nicht zur Arbeit kommen kann. Ich habe mich erkältet und fühle mich nicht in der Lage, meine Aufgaben zu erledigen.\n\nVoraussichtlich werde ich am Mittwoch wieder gesund sein. Falls es länger dauert, werde ich Sie umgehend informieren.\n\nFür dringende Angelegenheiten stehe ich per E-Mail zur Verfügung. Meine Kollegin Frau Schmidt ist über meine aktuellen Projekte informiert.\n\nIch bitte um Ihr Verständnis.\n\nMit freundlichen Grüßen\nPeter Weber',
 'email_formal', 'B1', 'work',
 '["die Krankmeldung", "sich erkälten", "voraussichtlich", "umgehend", "zur Verfügung stehen", "informiert sein", "die Angelegenheit"]'::jsonb,
 '["Ich muss Ihnen leider mitteilen", "Ich bin nicht in der Lage", "Voraussichtlich werde ich", "Falls es länger dauert", "Ich bitte um Ihr Verständnis"]'::jsonb,
 '["Modalverben (muss, kann, werde)", "Falls-Sätze (Falls es länger dauert)", "Temporaladverbien (heute, mittwoch, umgehend)"]'::jsonb,
 'Professionelle Krankmeldung mit Information über Zustand, Dauer und Vertretung.',
 'Vollständig, professionell, gibt dem Arbeitgeber Sicherheit.',
 100),

-- ============================================================
-- INFORMAL EMAILS (email_informal)
-- ============================================================
('Informelle E-Mail: Urlaubsgrüße',
 'Sie sind im Urlaub. Schreiben Sie eine informelle E-Mail an Ihre beste Freundin / Ihren besten Freund. Beschreiben Sie: den Ort, das Wetter, was Sie erlebt haben.',
 'Hallo Maria,\n\nich grüße dich aus der Toskana! Der Urlaub ist einfach traumhaft.\n\nWir wohnen in einem kleinen Dorf auf einem Hügel. Von hier aus sieht man die Weinberge und das Meer. Das Wetter ist perfekt – jeden Tag 30 Grad und Sonnenschein.\n\nGestern waren wir in Florenz und haben uns die Altstadt angeschaut. Die Kathedrale ist atemberaubend! Und das Essen – du musst unbedingt mal die echte italienische Pizza probieren.\n\nIch wünschte, du wärst hier! Nächste Woche bin ich wieder zu Hause, dann erzähle ich dir alles.\n\nGanz liebe Grüße\nSabine',
 'email_informal', 'B1', 'travel',
 '["der Urlaub", "traumhaft", "der Weinberg", "atemberaubend", "die Altstadt", "probieren", "grüßen"]'::jsonb,
 '["Ich grüße dich aus", "Der Urlaub ist einfach", "Gestern waren wir", "Du musst unbedingt", "Ich wünschte, du wärst hier"]'::jsonb,
 '["Imperativ (probier, schau dir an)", "Konjunktiv II (wünschte, wärst)", "Perfekt (haben...geschaut, ist...gewesen)"]'::jsonb,
 'Lebendiger, persönlicher Urlaubsbericht mit Beschreibungen von Ort, Wetter und Erlebnissen.',
 'Sehr natürlicher, emotionaler Ton. Gute Beispiele für Konjunktiv II.',
 120),

('Informelle E-Mail: Hilfe anbieten',
 'Ihr Freund / Ihre Freundin zieht um. Schreiben Sie eine informelle E-Mail und bieten Sie Ihre Hilfe an. Fragen Sie nach: Umzugstag, was noch zu tun ist, ob Sie etwas mitbringen sollen.',
 'Hallo Tom,\n\nich habe gehört, dass du nächste Woche umziehst! Das ist ja aufregend. Wie kann ich dir helfen?\n\nAn welchem Tag ist der Umzug? Ich habe am Samstag frei und könnte den ganzen Tag kommen. Ich habe auch ein Auto, damit könnten wir die großen Möbel transportieren.\n\nSoll ich Umzugskartons mitbringen? Ich habe noch einige vom letzten Umzug. Oder brauchst du eher Hilfe beim Einpacken?\n\nSag einfach Bescheid, ich bin gerne für dich da!\n\nViele Grüße\nFelix',
 'email_informal', 'A2', 'daily',
 '["der Umzug", "umziehen", "helfen", "der Umzugskarton", "transportieren", "Bescheid sagen", "der Möbel"]'::jsonb,
 '["Ich habe gehört, dass", "Wie kann ich dir helfen?", "Ich habe am Samstag frei", "Soll ich...mitbringen?", "Sag einfach Bescheid"]'::jsonb,
 '["Modalverben (kann, könnte, soll)", "dass-Sätze (dass du umziehst)", "Fragesätze"]'::jsonb,
 'Freundliches Hilfsangebot mit konkreten Vorschlägen und der Bereitschaft, Zeit und Ressourcen einzubringen.',
 'Sehr hilfsbereiter Ton, konkrete Angebote, natürliche Umgangssprache.',
 90),

-- ============================================================
-- COMPLAINT EMAILS (email_complaint)
-- ============================================================
('Beschwerde: Verspätete Lieferung',
 'Sie haben vor zwei Wochen ein Paket bestellt, aber es ist immer noch nicht angekommen. Schreiben Sie eine Beschwerde-E-Mail an den Kundenservice.',
 'Sehr geehrtes Kundenservice-Team,\n\nam 3. Mai habe ich eine Bestellung bei Ihnen aufgegeben (Bestellnummer: 48291). Bis heute, dem 17. Mai, habe ich die Lieferung nicht erhalten.\n\nIch bitte Sie, den Status meiner Bestellung zu überprüfen und mir mitzuteilen, wann mit der Lieferung zu rechnen ist. Sollte das Paket verloren gegangen sein, erwarte ich eine erneute Lieferung oder eine vollständige Erstattung.\n\nIch hoffe auf eine schnelle Klärung.\n\nMit freundlichen Grüßen\nClaudia Fischer',
 'email_complaint', 'B1', 'shopping',
 '["die Bestellung", "die Lieferung", "der Kundenservice", "überprüfen", "die Erstattung", "die Klärung", "verloren gehen"]'::jsonb,
 '["Bis heute habe ich die Lieferung nicht erhalten", "Ich bitte Sie, zu überprüfen", "Sollte das Paket verloren gegangen sein", "Ich erwarte", "Ich hoffe auf eine schnelle Klärung"]'::jsonb,
 '["Passiv (ist...aufgegeben, verloren gegangen)", "Sollte-Satz (Sollte das Paket...)", "Infinitivsätze (zu überprüfen, mitzuteilen)"]'::jsonb,
 'Sachliche Beschwerde mit Bestelldetails, konkreter Forderung und Fristsetzung.',
 'Höflich aber bestimmt, alle relevanten Informationen enthalten.',
 90),

('Beschwerde: Falsche Rechnung',
 'Sie haben eine Rechnung erhalten, die nicht korrekt ist. Es wurde ein Betrag berechnet, den Sie nicht bestellt haben. Schreiben Sie eine Beschwerde.',
 'Sehr geehrte Damen und Herren,\n\nich habe heute Ihre Rechnung Nr. 2024-5678 erhalten. Leider stimmt die Rechnungssumme nicht mit meiner Bestellung überein.\n\nBerechnet wurde ein Betrag von 89,90 €. Meine Bestellung hatte jedoch einen Gesamtwert von 59,95 €. Die Differenz von 29,95 € kann ich mir nicht erklären.\n\nBitte überprüfen Sie die Rechnung und korrigieren Sie diese. Eine korrigierte Rechnung sende Sie mir bitte per E-Mail zu.\n\nIch bitte um baldige Rückmeldung.\n\nMit freundlichen Grüßen\nMarkus Klein',
 'email_complaint', 'B1', 'shopping',
 '["die Rechnung", "der Betrag", "die Differenz", "überprüfen", "korrigieren", "die Rückmeldung", "nicht übereinstimmen"]'::jsonb,
 '["Leider stimmt die Rechnungssumme nicht überein", "Berechnet wurde", "Kann ich mir nicht erklären", "Bitte überprüfen Sie", "Ich bitte um baldige Rückmeldung"]'::jsonb,
 '["Passiv (Berechnet wurde, wurde berechnet)", "Satzklammer (kann...erklären, sende...zu)", "Höflichkeitsform (Bitte, Ich bitte um)"]'::jsonb,
 'Präzise Beschwerde mit konkreten Zahlen, Differenzberechnung und Handlungsaufforderung.',
 'Sehr sachlich, nachvollziehbar, mit konkreten Beträgen und Forderungen.',
 100),

-- ============================================================
-- REQUEST EMAILS (email_request)
-- ============================================================
('Anfrage: Hotelreservierung',
 'Sie möchten ein Hotelzimmer für Ihren Urlaub buchen. Schreiben Sie eine E-Mail an das Hotel. Fragen Sie nach: Verfügbarkeit, Preis, Frühstück, Stornierungsbedingungen.',
 'Sehr geehrte Damen und Herren,\n\nich möchte vom 15. bis 22. August ein Einzelzimmer in Ihrem Hotel reservieren.\n\nBitte informieren Sie mich über folgende Punkte:\n1. Ist in diesem Zeitraum noch ein Zimmer frei?\n2. Wie hoch ist der Preis pro Nacht inklusive Frühstück?\n3. Ist eine kostenlose Stornierung möglich?\n\nIch freue mich auf Ihre Rückmeldung.\n\nMit freundlichen Grüßen\nLaura Becker',
 'email_request', 'A2', 'travel',
 '["reservieren", "das Einzelzimmer", "der Preis", "das Frühstück", "die Stornierung", "der Zeitraum", "die Rückmeldung"]'::jsonb,
 '["Ich möchte...reservieren", "Bitte informieren Sie mich über", "Ist...möglich?", "Ich freue mich auf Ihre Rückmeldung"]'::jsonb,
 '["Fragesätze (Ist...frei?, Ist...möglich?)", "Präpositionen (vom...bis, inklusive)"]'::jsonb,
 'Kurze, präzise Hotelanfrage mit allen wichtigen Fragen für die Buchung.',
 'Vollständig, höflich, für A2-Niveau gut geeignet.',
 70),

('Anfrage: Informationsmaterial bestellen',
 'Sie möchten sich über ein Produkt informieren. Schreiben Sie eine E-Mail an den Hersteller und bitten Sie um: Produktkatalog, Preisliste, Muster.',
 'Sehr geehrte Damen und Herren,\n\nich bin an Ihren Büromöbeln interessiert und bitte Sie um Zusendung Ihres aktuellen Katalogs sowie der Preisliste.\n\nAußerdem würde ich gerne ein Muster Ihres Schreibtischstuhls Modell "Ergo-Comfort" bestellen, um die Qualität zu prüfen.\n\nBitte teilen Sie mir auch mit, ob Sie Mengenrabatte gewähren.\n\nVielen Dank im Voraus.\n\nMit freundlichen Grüßen\nThomas Wagner',
 'email_request', 'B1', 'business',
 '["der Katalog", "die Preisliste", "das Muster", "die Qualität", "der Mengenrabatt", "gewähren", "die Zusendung"]'::jsonb,
 '["Ich bin an...interessiert", "Ich bitte Sie um Zusendung", "Außerdem würde ich gerne", "Bitte teilen Sie mir mit", "Vielen Dank im Voraus"]'::jsonb,
 '["Konjunktiv II (würde...bestellen)", "Indirekte Frage (ob Sie...gewähren)", "Nominalisierungen (Zusendung, Mengenrabatt)"]'::jsonb,
 'Gut strukturierte Anfrage mit Katalogbestellung, Musteranforderung und Preisnachfrage.',
 'Professionell, klar, alle Elemente einer Geschäftsanfrage.',
 90),

-- ============================================================
-- APPLICATION EMAILS (email_application)
-- ============================================================
('Bewerbung: Studentenjob',
 'Sie suchen einen Studentenjob. Schreiben Sie eine Bewerbung für eine Stelle als Kellner / Kellnerin in einem Café.',
 'Sehr geehrter Herr Meier,\n\nauf der Suche nach einem Studentenjob bin ich auf Ihre Anzeige für eine Stelle als Kellner gestoßen. Ich studiere im zweiten Semester und suche eine Teilzeitbeschäftigung.\n\nIch habe bereits Erfahrung im Servicebereich – letztes Jahr habe ich in einem Restaurant ausgeholfen. Ich bin freundlich, zuverlässig und arbeite gerne im Team. Außerdem spreche ich fließend Deutsch und Englisch.\n\nIch könnte ab nächster Woche anfangen und flexibel arbeiten, auch an Wochenenden.\n\nÜber eine Einladung zu einem Vorstellungsgespräch würde ich mich sehr freuen.\n\nMit freundlichen Grüßen\nLena Hoffmann',
 'email_application', 'B1', 'work',
 '["die Bewerbung", "die Stelle", "aushelfen", "zuverlässig", "freundlich", "das Vorstellungsgespräch", "die Teilzeitbeschäftigung"]'::jsonb,
 '["Auf der Suche nach...bin ich auf Ihre Anzeige gestoßen", "Ich habe bereits Erfahrung", "Ich bin freundlich, zuverlässig", "Ich könnte ab nächster Woche anfangen", "Über eine Einladung würde ich mich freuen"]'::jsonb,
 '["Perfekt (habe...ausgeholfen)", "Konjunktiv II (würde...freuen, könnte)", "Satzverbindungen (außerdem, und)"]'::jsonb,
 'Klassische Bewerbung für Studentenjob mit Bezug auf Anzeige, Erfahrung, Eigenschaften und Verfügbarkeit.',
 'Vollständig, ehrlich, für B1-Niveau angemessen.',
 110),

('Bewerbung: Festanstellung',
 'Sie bewerben sich um eine Festanstellung als Projektmanager. Schreiben Sie eine formelle Bewerbung per E-Mail.',
 'Sehr geehrte Frau Dr. Schulze,\n\nmit großem Interesse habe ich Ihre Stellenausschreibung für die Position als Projektmanager in der Unternehmensentwicklung gelesen. Ich bin überzeugt, dass meine Qualifikationen und Erfahrungen ideal zu dieser Position passen.\n\nIn meiner aktuellen Tätigkeit als Teamleiter bei der ABC GmbH bin ich für die Koordination von bis zu zehn Projekten verantwortlich. Ich habe umfassende Erfahrung in der Leitung internationaler Teams und der Umsetzung komplexer Projekte.\n\nBesonders hervorheben möchte ich meine Kompetenz im Bereich Changemanagement. In den letzten zwei Jahren habe ich erfolgreich drei Restrukturierungsprojekte begleitet.\n\nÜber die Einladung zu einem persönlichen Gespräch würde ich mich außerordentlich freuen.\n\nMit freundlichen Grüßen\nDr. Johannes Richter',
 'email_application', 'B2', 'work',
 '["die Stellenausschreibung", "die Qualifikation", "die Tätigkeit", "verantwortlich", "die Koordination", "die Kompetenz", "hervorheben"]'::jsonb,
 '["Mit großem Interesse habe ich gelesen", "Ich bin überzeugt, dass", "In meiner aktuellen Tätigkeit bin ich verantwortlich für", "Besonders hervorheben möchte ich", "Über die Einladung würde ich mich außerordentlich freuen"]'::jsonb,
 '["dass-Sätze (dass meine Qualifikationen passen)", "Nominalisierungen (Stellenausschreibung, Changemanagement, Restrukturierung)", "Perfekt (habe...begleitet, habe...gelesen)"]'::jsonb,
 'Überzeugende Bewerbung mit Bezug auf die Stelle, konkreten Leistungen und überfachlichen Kompetenzen.',
 'Sehr professionell, konkrete Erfolge, überzeugende Selbstdarstellung.',
 140),

-- ============================================================
-- INFORMATION EMAILS (email_information)
-- ============================================================
('Information: Terminbestätigung',
 'Sie haben einen Termin mit einer Kundin / einem Kunden vereinbart. Schreiben Sie eine Bestätigungs-E-Mail mit allen Details.',
 'Sehr geehrte Frau Dr. Berger,\n\nvielen Dank für Ihre Rückmeldung. Ich bestätige hiermit unseren Termin am Donnerstag, den 20. Juni 2024, um 14:00 Uhr in meinem Büro (Raum 3.12, Hauptstraße 45, Berlin).\n\nDer Termin wird voraussichtlich 60 Minuten dauern. Wir besprechen dann die Details des Kooperationsvertrags. Bitte bringen Sie die relevanten Unterlagen mit.\n\nFalls Sie den Termin doch nicht wahrnehmen können, informieren Sie mich bitte rechtzeitig.\n\nIch freue mich auf unser Gespräch.\n\nMit freundlichen Grüßen\nDr. Michael Schneider',
 'email_information', 'B1', 'business',
 '["bestätigen", "der Termin", "das Büro", "der Kooperationsvertrag", "die Unterlagen", "wahrnehmen", "rechtzeitig"]'::jsonb,
 '["Vielen Dank für Ihre Rückmeldung", "Ich bestätige hiermit", "Der Termin wird voraussichtlich...dauern", "Bitte bringen Sie...mit", "Ich freue mich auf unser Gespräch"]'::jsonb,
 '["Passiv (wird...dauern, wird...besprochen)", "wenn-Sätze (Falls Sie)", "Temporalangaben (am 20. Juni, um 14:00 Uhr)"]'::jsonb,
 'Vollständige Terminbestätigung mit Datum, Ort, Dauer, Thema und Mitbringhinweis.',
 'Sechs-W-Fragen beantwortet (wer, wann, wo, wie lange, was, was mitbringen).',
 100),

('Information: Änderung der Öffnungszeiten',
 'Sie sind Geschäftsführer / Geschäftsführerin eines Geschäfts. Informieren Sie Ihre Kunden per E-Mail über geänderte Öffnungszeiten während der Feiertage.',
 'Liebe Kunden,\n\nwir möchten Sie über unsere geänderten Öffnungszeiten während der Weihnachtsfeiertage informieren.\n\n24.12. (Heiligabend): 08:00 – 14:00 Uhr\n25.12. – 26.12. (Weihnachten): geschlossen\n31.12. (Silvester): 08:00 – 14:00 Uhr\n01.01. (Neujahr): geschlossen\n\nAb dem 2. Januar gelten wieder unsere regulären Öffnungszeiten.\n\nWir wünschen Ihnen frohe Weihnachten und einen guten Start ins neue Jahr!\n\nMit freundlichen Grüßen\nIhr Team von BioMarkt',
 'email_information', 'A2', 'daily',
 '["die Öffnungszeit", "die Feiertage", "geschlossen", "regulär", "informieren", "gelten", "der Kunde"]'::jsonb,
 '["Wir möchten Sie informieren", "Wir wünschen Ihnen", "Ab dem...gelten wieder", "Ihr Team von"]'::jsonb,
 '["Temporalangaben (während, ab dem)", "Datumsschreibweise (24.12., 25. – 26.12.)"]'::jsonb,
 'Klare, übersichtliche Information mit tabellarischer Aufstellung der Feiertagsöffnungszeiten.',
 'Übersichtlich, vollständig, freundlicher Ton.',
 80),

-- ============================================================
-- TELC / GOETHE EXAM STYLE EMAIL TASKS
-- ============================================================
('TELC B1: E-Mail an Vermieter',
 'Sie haben ein Problem in Ihrer Wohnung: Die Heizung funktioniert nicht. Schreiben Sie eine E-Mail an Ihren Vermieter. Beschreiben Sie das Problem und bitten Sie um schnelle Reparatur.',
 'Sehr geehrter Herr Krause,\n\nich muss Ihnen leider mitteilen, dass die Heizung in meiner Wohnung seit gestern nicht mehr funktioniert. Es ist sehr kalt in der Wohnung, und ich kann nicht mehr darin wohnen.\n\nKönnten Sie bitte so schnell wie möglich einen Handwerker vorbeischicken? Ich bin tagsüber zu Hause und kann die Tür öffnen.\n\nFalls Sie weitere Informationen benötigen, stehe ich Ihnen gerne zur Verfügung.\n\nVielen Dank für Ihre Hilfe.\n\nMit freundlichen Grüßen\nJulia Fischer',
 'email_request', 'B1', 'daily',
 '["die Heizung", "funktionieren", "der Vermieter", "der Handwerker", "die Reparatur", "vorbeischicken", "benötigen"]'::jsonb,
 '["Ich muss Ihnen leider mitteilen", "Könnten Sie bitte...vorbeischicken", "Ich stehe Ihnen gerne zur Verfügung", "Vielen Dank für Ihre Hilfe"]'::jsonb,
 '["dass-Sätze (dass die Heizung nicht funktioniert)", "Konjunktiv II (Könnten Sie)", "Modalverben (kann, muss, kann)"]'::jsonb,
 'Höfliche Problembeschreibung mit Dringlichkeit und konkreter Bitte um Abhilfe.',
 'Klare Problembeschreibung, höfliche Bitte, praktische Lösung.',
 90),

('Goethe B2: Beschwerde bei Versicherung',
 'Ihre Versicherung hat eine Rechnung nicht bezahlt. Schreiben Sie eine E-Mail. Erklären Sie den Fall und fordern Sie die Zahlung.',
 'Sehr geehrte Damen und Herren,\n\nam 10. Januar 2024 habe ich einen Schadensfall bei Ihrer Versicherung gemeldet (Schadensnummer: SCH-2024-0042). Es handelt sich um einen Wasserschaden in meiner Küche.\n\nAm 25. Januar erhielt ich von Ihrer Sachbearbeiterin Frau Lehmann die Bestätigung, dass der Schaden übernommen wird. Die Reparatur wurde daraufhin durchgeführt. Die Rechnung der Handwerksfirma in Höhe von 1.250,00 € habe ich Ihnen am 5. Februar eingereicht.\n\nBis heute, dem 20. März, habe ich jedoch weder die Zahlung erhalten noch eine Mitteilung über Verzögerungen bekommen.\n\nIch fordere Sie auf, den Betrag innerhalb von 14 Tagen zu überweisen. Sollte dies nicht geschehen, werde ich rechtliche Schritte einleiten.\n\nMit freundlichen Grüßen\nDr. Stefan König',
 'email_complaint', 'B2', 'daily',
 '["der Schadensfall", "die Versicherung", "melden", "der Wasserschaden", "die Reparatur", "auffordern", "rechtliche Schritte einleiten"]'::jsonb,
 '["Es handelt sich um", "Die Bestätigung, dass der Schaden übernommen wird", "Ich fordere Sie auf", "Sollte dies nicht geschehen", "Rechtliche Schritte einleiten"]'::jsonb,
 '["dass-Sätze (dass der Schaden übernommen wird)", "Passiv (wurde...durchgeführt, wurde...eingereicht)", "Sollte-Satz (Sollte dies nicht geschehen)", "Temporale Angaben (am 10. Januar, bis heute)"]'::jsonb,
 'Detaillierte Beschwerde mit vollständiger Chronologie des Falls und klarer Fristsetzung.',
 'Sehr präzise, vollständige Dokumentation, angemessen eskalierend.',
 150)

on conflict (id) do nothing;
