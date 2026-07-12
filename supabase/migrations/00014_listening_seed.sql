-- Listening Module Comprehensive Seed Data
-- Replaces the old 6 basic entries with 25 detailed audio lessons and ~100 exercises
-- Uses explicit UUIDs so exercises can reference lessons reliably

-- Audio Lessons
insert into public.audio_lessons (id, title, description, audio_url, transcript, level, duration_seconds, category, is_published, speaker_gender, speaker_age_group, accent, scenario, cefr_level, estimated_duration, grammar_involved, vocabulary_involved, difficulty_rating, speaker_count) values

-- 1. Im Restaurant
('11111111-1111-1111-1111-111111111101',
'Im Restaurant',
'Bestellen und Reklamieren im Restaurant',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
E'Kellner: Guten Abend! Hier ist die Speisekarte. Darf ich Ihnen schon etwas zu trinken bringen?\nGast: Ja, ich hätte gern ein Glas Rotwein, bitte.\nKellner: Sehr gerne. Kommt sofort.\n---\nKellner: Haben Sie schon gewählt?\nGast: Ja, ich nehme das Schnitzel mit Pommes und dazu den gemischten Salat.\nKellner: Eine gute Wahl. Das Schnitzel kommt mit einer Zitronenscheibe und Preiselbeeren.\nGast: Perfekt.\n---\nKellner: Bitte schön, das Schnitzel.\nGast: Entschuldigung, aber das Fleisch ist innen noch roh. Ich hatte es gut durchbestellt.\nKellner: Das tut mir sehr leid. Ich bringe es sofort in die Küche zurück. Möchten Sie stattdessen etwas anderes?\nGast: Nein, aber ich möchte, dass es nochmal richtig gegart wird.\nKellner: Selbstverständlich. Darf ich Ihnen in der Zwischenzeit ein Brot bringen?\nGast: Ja, gerne.',
'B1', 170, 'daily', true, 'female', 'adult', 'standard', 'restaurant', 'B1', '2-3 min',
'{"Konjunktiv II (hätte gern, könnte)", "Imperativ (bringen Sie)", "Modalverben (möchten, darf)", "Temporale Präpositionen (in der Zwischenzeit)"}',
'{"Essen & Trinken", "Restaurantbesuch", "Reklamation", "Höflichkeitsformen"}',
3, 2),

-- 2. Beim Arzt
('11111111-1111-1111-1111-111111111102',
'Beim Arzt',
'Arztbesuch und Symptome beschreiben',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
E'Patient: Guten Tag, Herr Doktor. Ich habe seit drei Tagen starke Kopfschmerzen.\nArzt: Guten Tag. Wo genau tut es weh?\nPatient: Hier, an den Schläfen, und manchmal zieht es bis in den Nacken.\nArzt: Haben Sie auch Fieber?\nPatient: Ich habe gestern Abend gemessen – 38,5 Grad.\nArzt: Dann schauen wir mal. Machen Sie bitte den Oberkörper frei. Atmen Sie tief ein und aus.\nPatient: Tut weh, wenn ich huste.\nArzt: Das klingt nach einer Bronchitis. Ich verschreibe Ihnen ein Antibiotikum. Trinken Sie viel und schonen Sie sich.\nPatient: Muss ich im Bett bleiben?\nArzt: Zwei Tage Ruhe wären gut. Hier ist die Krankschreibung für drei Tage.\nPatient: Vielen Dank. Soll ich wiederkommen?\nArzt: Nur wenn es nicht besser wird und das Fieber steigt.',
'B1', 160, 'health', true, 'male', 'adult', 'standard', 'health', 'B1', '2-3 min',
'{"Konjunktiv II (wäre gut, hätte)", "Imperativ (atmen Sie, machen Sie)", "Wenn-Sätze (wenn es nicht besser wird)", "Modalverben (muss, soll)"}',
'{"Gesundheit", "Körperteile", "Arztbesuch", "Medikamente"}',
3, 2),

-- 3. Hotelbuchung
('11111111-1111-1111-1111-111111111103',
'Hotelbuchung',
'Ein Hotelzimmer telefonisch buchen',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
E'Angestellte: Hotel Central, Schmitz, guten Tag. Was kann ich für Sie tun?\nGast: Guten Tag, ich möchte gern ein Einzelzimmer für nächste Woche buchen, von Montag bis Freitag.\nAngestellte: Gerne. In welchem Zeitraum genau?\nGast: Vom 15. bis zum 19. Oktober.\nAngestellte: Lassen Sie mich kurz nachsehen. Ja, wir haben noch ein Einzelzimmer frei. Mit Frühstück oder ohne?\nGast: Mit Frühstück, bitte. Was kostet das Zimmer pro Nacht?\nAngestellte: Das Einzelzimmer kostet 89 Euro inklusive Frühstück.\nGast: Gibt es auch ein günstigeres Zimmer?\nAngestellte: Leider ist das unser günstigstes Zimmer in der Kategorie. Wir haben noch ein Doppelzimmer zur Einzelnutzung für 95 Euro.\nGast: Okay, das ist in Ordnung. Ist das Zimmer ruhig?\nAngestellte: Es liegt zur Hofseite, daher sehr ruhig.\nGast: Perfekt. Ich buche es.\nAngestellte: Darf ich Ihren Namen notieren?\nGast: Ja, mein Name ist Weber.\nAngestellte: Vielen Dank, Frau Weber. Sie erhalten eine Bestätigung per E-Mail.',
'A2', 140, 'travel', true, 'female', 'young', 'standard', 'travel', 'A2', '2 min',
'{"Konjunktiv II (möchte gern, hätte)", "Ordinalzahlen (15. bis 19.)", "W-Fragen (was kostet, gibt es)", "Temporale Angaben (nächste Woche)"}',
'{"Reisen & Hotel", "Zahlen & Daten", "Buchung", "Höflichkeit"}',
2, 2),

-- 4. Am Flughafen
('11111111-1111-1111-1111-111111111104',
'Am Flughafen',
'Flughafendurchsagen und Check-in',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
E'Durchsage: Achtung, Durchsage für Flug LH 472 nach Frankfurt. Der Check-in-Schalter ist von 1 bis 8 geöffnet. Bitte begeben Sie sich zum Schalter.\nPassagier: Entschuldigung, wo ist der Schalter für Lufthansa?\nAngestellter: Geradeaus und dann links, am Ende der Halle. Kann ich Ihren Ausweis sehen?\nPassagier: Hier ist mein Reisepass.\nAngestellter: Haben Sie Gepäck aufzugeben?\nPassagier: Ja, einen Koffer.\nAngestellter: Legen Sie ihn bitte aufs Band. Wie viel wiegt er? … 22 Kilo. Das ist zwei Kilo zu viel.\nPassagier: Kann ich etwas rausnehmen?\nAngestellter: Ja, Sie können einen Handgepäckartikel mitnehmen. Maximal acht Kilo.\nPassagier: Okay, ich nehme ein paar Sachen raus.\nAngestellter: Hier ist Ihre Bordkarte. Boarding ist um 14:30 Uhr an Gate B12. Guten Flug!\n---\nDurchsage: Achtung, Flug LH 472 hat eine Verspätung von etwa 30 Minuten. Neues Boarding ist um 15:00 Uhr.',
'B1', 180, 'travel', true, 'male', 'adult', 'standard', 'travel', 'B1', '2-3 min',
'{"Imperativ (legen Sie, begeben Sie sich)", "Modalverben (können, müssen)", "Temporale Angaben", "Mengenangaben (22 Kilo, 8 Kilo)"}',
'{"Reisen & Flughafen", "Gepäck", "Durchsagen", "Check-in"}',
3, 3),

-- 5. Vorlesung Universität
('11111111-1111-1111-1111-111111111105',
'Vorlesung Universität',
'Akademische Vorlesung über Wirtschaftspolitik',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
E'Dozent: Guten Morgen, meine Damen und Herren. Heute setzen wir unsere Reihe zur europäischen Wirtschaftspolitik fort. Ich möchte ein Phänomen beleuchten, das Sie alle aus den Nachrichten kennen: die Inflation.\n---\nDozent: Inflation bedeutet vereinfacht gesagt, dass Ihr Geld weniger wert wird. Wenn wir uns die letzten zwei Jahre anschauen, sehen wir einen Anstieg der Verbraucherpreise um knapp sieben Prozent. Die Hauptgründe sind gestiegene Energiepreise und Lieferkettenprobleme.\n---\nDozent: Die Europäische Zentralbank versucht gegenzusteuern, indem sie die Leitzinsen anhebt. Das macht Kredite teurer. Die Hoffnung ist, dass dadurch die Nachfrage sinkt und die Preise sich stabilisieren.\n---\nDozent: Allerdings hat diese Politik auch Schattenseiten. Unternehmen investieren weniger, die Wirtschaftswachstumsrate sinkt. Wir bewegen uns auf einem schmalen Grat. Was wäre, wenn die Zentralbank die Zinsen zu früh senkt? Dann droht uns eine Zweitrundeneffekte-Spirale.\n---\nDozent: Zur nächsten Sitzung lesen Sie bitte das Kapitel von Professor Müllers Paper zur Geldpolitik. Fragen dazu?',
'B2', 240, 'education', true, 'male', 'adult', 'standard', 'education', 'B2', '3-4 min',
'{"Passiv (wird angehoben, wird weniger wert)", "Konjunktiv II (was wäre, wenn)", "Relativsätze (das Sie aus den Nachrichten kennen)", "Nominalisierungen (Wirtschaftswachstumsrate)"}',
'{"Wirtschaft", "Politik", "Akademisch", "Inflation", "Europäische Union"}',
4, 1),

-- 6. Büro Meeting
('11111111-1111-1111-1111-111111111106',
'Büro Meeting',
'Geschäftliches Meeting zur Projektplanung',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3',
E'Chefin: Guten Morgen alle zusammen. Ich habe die Projektvorschläge durchgesehen. Bevor wir loslegen: Hat jeder das Memo bekommen?\nKollege: Ja, aber ich habe eine Frage zu den Budgetzahlen.\nChefin: Die besprechen wir gleich im Detail. Fangen wir mit dem Zeitplan an. Lara, wie sieht es bei dir aus?\nLara: Also, die Marktanalyse ist abgeschlossen. Wir liegen im Zeitplan. Allerdings brauche ich noch die Kundendaten von der IT.\nChefin: Ich spreche heute Nachmittag mit der IT-Abteilung. Was ist mit dem Design?\nKollege: Das Design ist zu 80 Prozent fertig. Wir müssen uns aber noch auf die Farbpalette einigen.\nChefin: Zeigen Sie mir die Entwürfe nachher. Und die Kostenkalkulation?\nLara: Die liegt vor. Wir sind etwa fünf Prozent unter dem Budget. Allerdings könnten die Druckkosten noch steigen.\nChefin: Gut. Dann halten wir fest: Bis Freitag will ich die finale Version sehen. Anschließend machen wir den Testlauf. Einverstanden?\nAlle: Ja.\nChefin: Danke für das Update. Nächster Punkt auf der Agenda ist die Marketingstrategie.',
'B2', 200, 'work', true, 'female', 'adult', 'standard', 'work', 'B2', '3 min',
'{"Fragen im Meeting", "Konjunktiv II (könnten)", "Passiversatz (ist abgeschlossen, liegt vor)", "Zeitliche Angaben (bis Freitag, anschließend)"}',
'{"Arbeitsleben", "Projektmanagement", "Besprechungen", "Wirtschaft"}',
3, 3),

-- 7. Vorstellungsgespräch
('11111111-1111-1111-1111-111111111107',
'Vorstellungsgespräch',
'Bewerbungsgespräch für eine Stelle als Projektmanager',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3',
E'Personalchef: Herr Schmidt, schön, dass Sie heute bei uns sind. Erzählen Sie doch zunächst etwas über sich.\nBewerber: Gern. Ich habe Betriebswirtschaft studiert und danach fünf Jahre bei der Müller AG im Projektmanagement gearbeitet. Meine Schwerpunkte waren Prozessoptimierung und Teamleitung.\nPersonalchef: Warum möchten Sie wechseln?\nBewerber: Ich suche eine neue Herausforderung. Ihr Unternehmen hat einen hervorragenden Ruf in der Digitalbranche, und ich möchte mich in diesem Bereich weiterentwickeln.\nPersonalchef: Was sind Ihre größten Stärken?\nBewerber: Ich arbeite sehr strukturiert und kann Teams motivieren. In meinem letzten Projekt habe ich die Durchlaufzeit um 30 Prozent reduziert.\nPersonalchef: Nennen Sie mir eine Schwäche.\nBewerber: Ich bin manchmal zu detailorientiert. Früher habe ich mich in Kleinigkeiten verloren. Inzwischen habe ich gelernt, Prioritäten zu setzen.\nPersonalchef: Wo sehen Sie sich in fünf Jahren?\nBewerber: Ich möchte mich zum Senior-Projektmanager weiterentwickeln und irgendwann Verantwortung für größere Portfolios übernehmen.',
'B2', 190, 'work', true, 'male', 'adult', 'standard', 'work', 'B2', '3 min',
'{"Perfekt (habe studiert, habe gelernt)", "Reflexive Verben (sich weiterentwickeln)", "Präpositionen (in diesem Bereich, bei der Firma)", "Relativsätze"}',
'{"Bewerbung", "Karriere", "Arbeitsleben", "Fähigkeiten"}',
3, 2),

-- 8. Einkaufen
('11111111-1111-1111-1111-111111111108',
'Einkaufen',
'Kleidung kaufen und nach Alternativen fragen',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3',
E'Verkäuferin: Guten Tag! Kann ich Ihnen helfen?\nKundin: Ja, ich suche ein Kleid für eine Hochzeit. Haben Sie etwas in Blau?\nVerkäuferin: Aber natürlich. Welche Größe haben Sie?\nKundin: Ich trage Größe 38.\nVerkäuferin: Hier, das blaue Kleid ist sehr beliebt. Möchten Sie es anprobieren?\nKundin: Ja, gern. Wo sind die Umkleidekabinen?\nVerkäuferin: Hinten links. Wenn Sie etwas brauchen, rufen Sie einfach.\n---\nKundin: Es gefällt mir, aber es ist etwas eng an den Schultern. Haben Sie es in 40?\nVerkäuferin: Leider ist das die letzte in 38. Vielleicht passt das rote Kleid besser. Es fällt größer aus.\nKundin: Rot ist nicht so mein Fall. Haben Sie andere Vorschläge?\nVerkäuferin: Ja, dieses dunkelblaue mit Spitze. Es ist elastisch und bequem.\nKundin: Das ist schön. Ich probiere es an.\n---\nKundin: Perfekt! Es sitzt wie angegossen. Was kostet es?\nVerkäuferin: 89 Euro. Es ist übrigens reduziert, ursprünglich 120.\nKundin: Dann nehme ich es.',
'A2', 175, 'shopping', true, 'female', 'adult', 'standard', 'shopping', 'A2', '2-3 min',
'{"Adjektivdeklination (das blaue Kleid, engen Schultern)", "Modalverben (kann, möchte)", "Komparativ (günstiger, besser)", "Demonstrativpronomen (dieses, das)"}',
'{"Kleidung", "Farben & Größen", "Einkaufen", "Zahlen & Preise"}',
2, 2),

-- 9. Telefonat
('11111111-1111-1111-1111-111111111109',
'Telefonat',
'Telefonat mit dem Kundenservice',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3',
E'Service-Mitarbeiter: Guten Tag, Kundenservice Meier, wie kann ich Ihnen helfen?\nKunde: Guten Tag, ich habe vor zwei Wochen einen Laptop bei Ihnen bestellt, aber er ist immer noch nicht angekommen.\nMitarbeiter: Das tut mir leid. Können Sie mir Ihre Bestellnummer nennen?\nKunde: Ja, die Nummer ist 3847291.\nMitarbeiter: Einen Moment, ich schaue nach. … Ich sehe, dass das Paket am Montag verschickt wurde. Laut Sendungsverfolgung ist es aktuell im Verteilerzentrum.\nKunde: Seit wann ist es dort?\nMitarbeiter: Seit drei Tagen. Das ist ungewöhnlich. Ich leite eine Nachfrage an den Versanddienst weiter.\nKunde: Wie lange dauert das?\nMitarbeiter: In der Regel bekommen wir innerhalb von 24 Stunden eine Rückmeldung. Ich melde mich bei Ihnen, sobald ich Neuigkeiten habe.\nKunde: Können Sie mir nicht einfach einen Ersatz schicken?\nMitarbeiter: Das kann ich leider erst veranlassen, wenn das Paket offiziell als verloren gemeldet wurde. Noch dauert das 48 Stunden.\nKunde: Das ist ärgerlich. Ich brauche den Laptop dringend.\nMitarbeiter: Ich verstehe Ihren Frust. Ich setze den Fall auf prioritär. Sie hören spätestens morgen von mir.',
'B1', 165, 'daily', true, 'male', 'adult', 'standard', 'daily', 'B1', '2-3 min',
'{"Perfekt (habe bestellt, wurde verschickt)", "Modalverben (können, muss)", "Passiv (wurde verschickt, gemeldet wurde)", "Temporale Nebensätze (sobald, seit, bevor)"}',
'{"Telefonieren", "Reklamation", "Bestellung", "Technik"}',
3, 2),

-- 10. Behörde
('11111111-1111-1111-1111-111111111110',
'Behörde',
'Auf dem Bürgeramt – Anmeldung und Formulare',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-10.mp3',
E'Angestellte: Guten Tag. Nehmen Sie bitte Platz. Was möchten Sie erledigen?\nBesucherin: Ich möchte mich ummelden. Ich bin vor einer Woche umgezogen.\nAngestellte: Haben Sie das Formular zur Wohnsitzanmeldung schon ausgefüllt?\nBesucherin: Ja, hier ist es. Und das ist die Wohnungsgeberbestätigung.\nAngestellte: Danke. Haben Sie auch Ihren Personalausweis oder Reisepass dabei?\nBesucherin: Ja, hier, mein Personalausweis.\nAngestellte: Einen Moment. Ich trage die Daten ein. … Ihre neue Adresse ist also die Musterstraße 12, 10115 Berlin?\nBesucherin: Genau.\nAngestellte: Dann bekommen Sie in etwa zwei Wochen eine neue Steuer-ID. Die alte behält aber ihre Gültigkeit.\nBesucherin: Muss ich auch mein Kfz ummelden?\nAngestellte: Ja, das müssen Sie innerhalb von zwei Wochen beim Straßenverkehrsamt tun. Möchten Sie gleich einen Termin?\nBesucherin: Ja, das wäre hilfreich.\nAngestellte: Ich schaue nach verfügbaren Terminen … Nächsten Mittwoch um 10 Uhr wäre möglich.\nBesucherin: Das passt. Danke für Ihre Hilfe.',
'B1', 185, 'daily', true, 'female', 'adult', 'standard', 'daily', 'B1', '2-3 min',
'{"Modalverben (möchten, müssen)", "Perfekt (bin umgezogen)", "Konjunktiv II (wäre hilfreich, wäre möglich)", "Temporale Angaben (in zwei Wochen, innerhalb von)"}',
'{"Ämter & Behörden", "Umzug", "Formulare", "Bürokratie"}',
3, 2),

-- 11. Alltagsgespräch
('11111111-1111-1111-1111-111111111111',
'Alltagsgespräch',
'Gespräch zwischen Freunden über Pläne',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-11.mp3',
E'Felix: Hey Lena, hast du am Wochenende schon was vor?\nLena: Nein, noch nicht. Wieso?\nFelix: Ich hab zwei Karten fürs Kino bekommen. Den neuen Film mit Matthias Schweighöfer.\nLena: Oh, cool! Ich hab den Trailer gesehen. Der sieht lustig aus. Wann läuft er?\nFelix: Am Samstag um 18 Uhr. Oder Sonntag um 15 Uhr.\nLena: Samstag passt besser. Ich muss Sonntag lernen, wir schreiben nächste Woche eine Klausur.\nFelix: Stimmt, in Mathe, oder?\nLena: Ja, Mathe. Ich checks nicht. Vielleicht kannst du mir helfen?\nFelix: Klar, ich bin Mathe-Ass. Können wir Sonntagvormittag machen.\nLena: Super! Sollen wir vor dem Kino noch was essen?\nFelix: Gute Idee. Da ist die neue Pizzeria am Marktplatz. Sagen wir 17 Uhr?\nLena: Perfekt. Ich freu mich!',
'A2', 125, 'daily', true, 'male', 'young', 'standard', 'daily', 'A2', '1-2 min',
'{"Perfekt (habe bekommen, hab gesehen)", "Modalverben (muss, kannst)", "Temporale Angaben (am Wochenende, nächste Woche)", "Konjunktiv II (können wir, wäre)"}',
'{"Freizeit", "Freunde", "Kino", "Verabredungen"}',
2, 2),

-- 12. Zug Durchsage
('11111111-1111-1111-1111-111111111112',
'Zug Durchsage',
'Bahnhofsdurchsagen und Fahrgastinformationen',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-12.mp3',
E'Durchsage: Achtung, der ICE 782 nach München fährt heute aufgrund einer Baustelle von Gleis 5 ab statt von Gleis 3. Bitte beachten Sie die geänderte Abfahrt.\n---\nDurchsage: Der Regionalexpress 427 nach Stuttgart hat voraussichtlich 15 Minuten Verspätung. Grund ist eine Signalstörung. Wir bitten um Ihr Verständnis.\n---\nFahrgast: Entschuldigung, fährt dieser Zug nach Köln?\nBahnmitarbeiterin: Ja, aber Sie müssen in Frankfurt umsteigen. Steigen Sie in Waggon 7 ein, dort ist der Großraumbereich.\nFahrgast: Habe ich genug Zeit zum Umsteigen? Mein Anschlusszug geht um 14:47 Uhr.\nBahnmitarbeiterin: Normalerweise ja. Wir haben zwei Minuten Verspätung, aber das sollte reichen. Der Anschlusszug steht meist auf Gleis 12.\n---\nDurchsage: Wir nähern uns dem Hauptbahnhof. Ausstieg in Fahrtrichtung rechts. Vielen Dank, dass Sie mit der Deutschen Bahn gereist sind.\nFahrgast: Kommen wir pünktlich an?\nBahnmitarbeiterin: Wir holen die Verspätung raus. Ja, wir sind fast im Plan.',
'A2', 175, 'travel', true, 'female', 'adult', 'standard', 'travel', 'A2', '2-3 min',
'{"Imperativ (beachten Sie, steigen Sie)", "Modalverben (müssen, sollen)", "Temporale Angaben (um 14:47 Uhr)", "Komparativ (pünktlich, fast im Plan)"}',
'{"Reisen", "Zug & Bahnhof", "Durchsagen", "Verspätung"}',
2, 2),

-- 13. Bewerbung
('11111111-1111-1111-1111-111111111113',
'Bewerbung',
'Diskussion über Bewerbungsstrategie und Karriereziele',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3',
E'Berater: Also, Herr Fischer, lassen Sie uns über Ihre Bewerbungsstrategie sprechen. Sie haben sich auf fünf Stellen beworben, richtig?\nBewerber: Ja, aber ich habe nur eine Absage bekommen und von den anderen noch nichts gehört.\nBerater: Das ist normal. Der Arbeitsmarkt ist momentan sehr wettbewerbsintensiv. Haben Sie Ihre Bewerbungsunterlagen individuell angepasst?\nBewerber: Ich habe das Anschreiben pro Stelle angepasst, aber der Lebenslauf war immer gleich.\nBerater: Das sollten Sie ändern. Jede Stelle erfordert andere Schwerpunkte. Bei einer IT-Stelle betonen Sie Ihre technischen Fähigkeiten, bei einer Management-Position Ihre Führungskompetenz.\nBewerber: Das leuchtet ein. Soll ich auch ein Portfolio beifügen?\nBerater: Absolut. Und achten Sie auf die Schlüsselwörter in der Stellenausschreibung. Viele Unternehmen nutzen Software, die Lebensläufe filtert.\nBewerber: Das wusste ich nicht. Welche Schlüsselwörter sind wichtig?\nBerater: Das hängt von der Branche ab. Aber Begriffe wie agil, skalierbar, Optimierung kommen fast immer gut an.\nBewerber: Ich werde meine Unterlagen überarbeiten. Vielen Dank für die Tipps.\nBerater: Gern. Nächste Woche können wir ein Probe-Vorstellungsgespräch machen.',
'B2', 195, 'work', true, 'male', 'young', 'standard', 'work', 'B2', '3 min',
'{"Konjunktiv II (sollten ändern, würde)", "Passiv (wurden gefiltert)", "Perfekt (habe angepasst, habe bekommen)", "Imperativ (achten Sie, lassen Sie)"}',
'{"Bewerbung", "Karriere", "Arbeitsmarkt", "Strategie"}',
4, 2),

-- 14. Im Café
('11111111-1111-1111-1111-111111111114',
'Im Café',
'Bestellung und Smalltalk im Café',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-14.mp3',
E'Barista: Hallo, was darf es sein?\nGast: Ich hätte gern einen Cappuccino und ein Stück Käsekuchen, bitte.\nBarista: Kommt sofort. Möchten Sie den Cappuccino mit Hafermilch oder normal?\nGast: Mit Hafermilch, bitte.\nBarista: Macht 7,50 Euro. Zahlen Sie bar oder mit Karte?\nGast: Mit Karte, bitte.\n---\nBarista: Hier ist Ihr Cappuccino. Der Kuchen kommt gleich.\nGast: Danke. Könnte ich vielleicht noch ein Glas Wasser bekommen?\nBarista: Aber sicher. Still oder mit Kohlensäure?\nGast: Still, bitte.\n---\nBarista: Schmeckt es?\nGast: Ja, sehr gut! Der Kuchen ist hausgemacht, oder?\nBarista: Ja, unsere Bäckerin macht ihn jeden Morgen frisch. Der Käsekuchen ist ihr Spezialrezept.\nGast: Das schmeckt man. Wirklich lecker.',
'A2', 120, 'daily', true, 'female', 'young', 'standard', 'daily', 'A2', '1-2 min',
'{"Konjunktiv II (hätte gern, könnte)", "Modalverben (darf, möchte)", "W-Fragen (was, wie viel)", "Fragepronomen (oder)"}',
'{"Essen & Trinken", "Café", "Bestellung", "Smalltalk"}',
2, 2),

-- 15. Diskussion
('11111111-1111-1111-1111-111111111115',
'Diskussion',
'Politische Diskussion zum Thema Klimaschutz',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-15.mp3',
E'Moderator: Willkommen zu unserer Diskussionsrunde. Das Thema heute: Wie kann Deutschland seine Klimaziele erreichen? Frau Dr. Bauer?\nDr. Bauer: Wir müssen den Ausbau der erneuerbaren Energien massiv beschleunigen. Aktuell liegt der Anteil bei etwa 50 Prozent. Bis 2030 müssen es 80 Prozent sein.\nHerr König: Da bin ich skeptisch. Die Industrie kann nicht einfach auf grünen Strom umschalten. Wir brauchen stabile Grundlastkraftwerke. Sonst wandern Unternehmen ab.\nDr. Bauer: Das ist ein Mythos. Andere Länder zeigen, dass eine Vollversorgung mit Erneuerbaren möglich ist. Die Kosten für Solar und Wind sind drastisch gefallen.\nHerr König: Aber was machen wir an Tagen ohne Wind und Sonne? Da müssen wir auf konventionelle Energien zurückgreifen.\nDr. Bauer: Dafür brauchen wir Speichertechnologien. Und den Ausbau der Netze. Das schafft auch Arbeitsplätze.\nHerr König: Auf Kosten der Wettbewerbsfähigkeit. China baut Kohlekraftwerke, und wir machen uns das Leben teuer.\nDr. Bauer: Wenn wir jetzt nicht handeln, werden die Folgekosten des Klimawandels viel höher sein. Das ist keine ideologische Frage, sondern eine der Vernunft.',
'B2', 220, 'current_events', true, 'mixed', 'adult', 'standard', 'discussion', 'B2', '3-4 min',
'{"Passiv (muss beschleunigt werden)", "Konjunktiv II (wären, wäre möglich)", "Temporale Nebensätze (bevor, bis)", "Modalverben (müssen, können, brauchen)"}',
'{"Politik", "Umwelt & Klima", "Energie", "Diskussion", "Wirtschaft"}',
4, 3),

-- 16. Nachrichten
('11111111-1111-1111-1111-111111111116',
'Nachrichten',
'Radionachrichten – Politik, Wirtschaft und Kultur',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-16.mp3',
E'Sprecher: Hier ist die Nachricht um zwölf. Ich begrüße Sie.\n---\nSprecher: Der Bundestag hat heute das neue Klimaschutzgesetz verabschiedet. Kernpunkt ist die Verschärfung der CO₂-Grenzwerte für die Industrie. Die Opposition kritisierte die Regelung als nicht weitreichend genug. Wirtschaftsverbände warnten vor zu hohen Belastungen für Unternehmen.\n---\nSprecher: Die Arbeitslosenzahl ist im September leicht gesunken. Laut Bundesagentur für Arbeit sind aktuell 2,4 Millionen Menschen arbeitslos gemeldet, ein Rückgang um 0,2 Prozent im Vergleich zum Vormonat. Besonders erfreulich ist die Entwicklung bei den Jugendlichen.\n---\nSprecher: In der Kulturszene sorgt die Wiedereröffnung der Berliner Staatsoper für Aufsehen. Nach fünfjähriger Renovierung präsentiert sich das Haus mit einer modernisierten Bühne und verbesserter Akustik. Die erste Aufführung ist für nächsten Samstag geplant.\n---\nSprecher: Das Wetter: Heute wechselhaft mit Schauern. Die Höchsttemperaturen liegen zwischen 14 und 18 Grad. Morgen freundlicher bei 20 Grad. Ich wünsche Ihnen einen angenehmen Tag.',
'C1', 210, 'news', true, 'male', 'elderly', 'standard', 'news', 'C1', '3 min',
'{"Passiv (wurde verabschiedet, ist gesunken)", "Genitiv (der CO₂-Grenzwerte, der Entwicklung)", "Nominalisierungen (Verschärfung, Wiedereröffnung)", "Komplexe Satzstrukturen"}',
'{"Nachrichten", "Politik", "Wirtschaft", "Kultur", "Wetter"}',
5, 1),

-- 17. Kulturevent
('11111111-1111-1111-1111-111111111117',
'Kulturevent',
'Planung einer kulturellen Veranstaltung im Verein',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
E'Organisatorin: So, Leute. Wir müssen die Kulturwoche planen. Habt ihr Ideen?\nMitglied: Ich schlage vor, wir beginnen mit einem Konzert. Ich kenne eine lokale Band, die wäre perfekt.\nOrganisatorin: Welche Musikrichtung?\nMitglied: Jazz und Soul. Das kommt beim Publikum gut an. Und wir könnten lokale Künstler für eine Ausstellung gewinnen.\nOrganisatorin: Gute Idee. Das Motto könnte „Kultur aus der Nachbarschaft“ heißen. Was kostet die Raummiete?\nMitglied: Die Stadt stellt den Bürgersaal kostenlos zur Verfügung, wenn die Veranstaltung gemeinnützig ist.\nOrganisatorin: Perfekt. Dann haben wir geringe Kosten. Was ist mit der Werbung?\nMitglied: Ich kümmere mich um Plakate und Social Media. Wir sollten auch Flyer in Geschäften auslegen.\nOrganisatorin: Wer macht die Technik?\nMitglied: Ich frage den Thomas, der hat ein gutes Soundsystem.\nOrganisatorin: Prima. Dann legen wir das Datum fest: Erster Samstag im Oktober. Einverstanden?\nAlle: Ja.\nOrganisatorin: Dann verteilen wir die Aufgaben.',
'B1', 170, 'culture', true, 'female', 'adult', 'standard', 'culture', 'B1', '2-3 min',
'{"Konjunktiv II (könnte, wäre)", "Vorschläge (ich schlage vor, wir könnten)", "Modalverben (müssen, sollte)", "Relativsätze (der Thomas, der hat)"}',
'{"Kultur & Veranstaltungen", "Organisation", "Verein", "Kooperation"}',
3, 3),

-- 18. WG Besprechung
('11111111-1111-1111-1111-111111111118',
'WG Besprechung',
'Wohngemeinschaftsbesprechung über Haushaltsregeln',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
E'Klara: Können wir kurz reden? Es geht um den Putzplan.\nMax: Ja, ich hab schon gemerkt, dass du was auf dem Herzen hast. Ist es wegen dem Geschirr?\nKlara: Genau. Seit letzter Woche stapelt sich das in der Spüle. Der Plan sagt, jeder spült sein Zeug sofort.\nMax: Du hast recht. Tut mir leid. Ich hatte viel um die Ohren.\nKlara: Verstehe ich. Aber ich bin nicht deine Mutter. Können wir uns daran halten?\nTim: Ich finde auch, dass die Regeln klarer sein müssen. Und wer kauft eigentlich das Klopapier?\nKlara: Gute Frage. Ich schlage vor, wir legen einen gemeinsamen Fonds an. Jeder zahlt 20 Euro im Monat.\nMax: Das finde ich fair. Und wir sollten eine Liste machen, was gekauft werden muss.\nTim: Alles klar. Und was ist mit den lauten Musikzeiten?\nKlara: Ich dachte, wir einigen uns auf: Tagsüber bis 21 Uhr ist Musik okay, danach nur mit Kopfhörern.\nMax: Einverstanden.\nKlara: Schön, dass wir reden konnten.',
'A2', 150, 'daily', true, 'mixed', 'young', 'standard', 'daily', 'A2', '2 min',
'{"Modalverben (können, sollten, müssen)", "Perfekt (habe gemerkt, hatte)", "Possessivartikel (deine, meine)", "Vorschläge (ich schlage vor, wir einigen)"}',
'{"Wohnen", "Haushalt", "WG-Leben", "Kommunikation"}',
2, 3),

-- 19. Restaurant Kritik
('11111111-1111-1111-1111-111111111119',
'Restaurant Kritik',
'Beschwerde über ein Restaurant – am Telefon und im Gespräch',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
E'Gast: Guten Tag, ich war gestern mit meiner Frau bei Ihnen essen und möchte mich beschweren.\nRestaurantleiter: Das tut mir leid zu hören. Was ist passiert?\nGast: Wir hatten einen Tisch für 19 Uhr reserviert, aber wir mussten 40 Minuten warten. Dann war das Essen kalt.\nRestaurantleiter: Das entschuldige ich vielmals. Wir hatten gestern Personalmangel. Durften Sie wenigstens etwas zu trinken, während Sie warteten?\nGast: Ja, aber das ist nicht der Punkt. Ich habe das Rumpsteak bestellt – medium. Es kam durchgebraten.\nRestaurantleiter: Das ist ärgerlich. Haben Sie das angesprochen?\nGast: Ja, die Bedienung hat gesagt, sie bringt ein neues. Das habe ich dann 25 Minuten gewartet.\nRestaurantleiter: Das ist wirklich nicht akzeptabel. Ich möchte Ihnen als Entschuldigung einen Gutschein für einen weiteren Besuch anbieten.\nGast: Das ist nett. Aber ich erwarte, dass so etwas nicht wieder vorkommt.\nRestaurantleiter: Selbstverständlich. Wir werden unser Team neu schulen. Darf ich Ihnen den Gutschein zuschicken?\nGast: Ja, gerne.',
'B1', 160, 'daily', true, 'male', 'adult', 'standard', 'daily', 'B1', '2-3 min',
'{"Plusquamperfekt (hatte bestellt, hatte reserviert)", "Konjunktiv II (hätte, dürften, wäre)", "Passiv (wurde gewartet)", "Modalverben (möchte, darf)"}',
'{"Reklamation", "Restaurant", "Ärger", "Entschuldigung"}',
3, 2),

-- 20. Museumsführung
('11111111-1111-1111-1111-111111111120',
'Museumsführung',
'Führung durch das Deutsche Museum',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
E'Führerin: Guten Tag! Ich begrüße Sie herzlich zur Führung durch das Deutsche Museum. Wir beginnen im Bereich der Luftfahrt.\nBesucher: Was ist das für ein Flugzeug?\nFührerin: Das ist die Messerschmitt Me 262, das erste einsatzfähige Düsenflugzeug der Welt. Es wurde 1944 entwickelt. Beachten Sie die Pfeilflügel – die waren revolutionär.\nBesucher: Darf man näher ran?\nFührerin: Ja, aber bitte nicht berühren. Wir gehen jetzt weiter zum Bereich der Astronomie. Hier sehen Sie ein Modell des ersten deutschen Satelliten.\nBesucher: Wann wurde der gestartet?\nFührerin: 1969. Der Satellit hieß Azur. Er erforschte die Strahlungsgürtel der Erde.\n---\nFührerin: Wir haben nun 30 Minuten Pause. Sie können das Café im Erdgeschoss besuchen. Um 14 Uhr geht es weiter mit der Abteilung für erneuerbare Energien.\nBesucher: Gibt es Audioguides auf Englisch?\nFührerin: Ja, an der Kasse können Sie sich einen ausleihen. Kostet drei Euro.',
'B1', 205, 'culture', true, 'female', 'adult', 'standard', 'culture', 'B1', '3 min',
'{"Passiv (wurde entwickelt, wurde gestartet)", "Imperativ (beachten Sie, gehen wir)", "Relativsätze (der/die erforschte)", "Modalverben (darf, können)"}',
'{"Museum & Kultur", "Geschichte", "Technik", "Wissenschaft"}',
3, 2),

-- 21. Sport Kommentar
('11111111-1111-1111-1111-111111111121',
'Sport Kommentar',
'Live-Sportkommentar eines Fußballspiels',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
E'Kommentator: Herzlich willkommen zum Spitzenspiel der Bundesliga. Bayern München empfängt Borussia Dortmund. Die Stimmung im Stadion ist fantastisch.\n---\nKommentator: Anstoß! Bayern mit der ersten Ballberührung. Müller spielt einen langen Ball auf Sané. Der läuft außen, zieht nach innen … und der Schuss! Nur knapp am Tor vorbei.\n---\nKommentator: Was für eine Chance! Das hätte das 1:0 sein müssen.\n---\nKommentator: Jetzt Dortmund. Reus mit dem Freistoß aus 20 Metern. Die Mauer steht. Reus schießt … gehalten von Neuer. Gut reagiert.\n---\nKommentator: Tooor! Tooor! Tooor! 1:0 für Bayern! Müller hebt den Ball über die Abwehr, Kimmich nimmt ihn volley – unhaltbar fürs Tor!\n---\nKommentator: Die zweite Halbzeit läuft. Dortmund muss jetzt mehr Risiko gehen. Trainer Terzić stellt auf Dreierkette um.\n---\nKommentator: Noch fünf Minuten. Das Stadion kocht. Dortmund drückt, aber Bayerns Abwehr steht sicher. Und dann ist Schluss! Bayern gewinnt 1:0.\n---\nKommentator: Ein hart umkämpfter Sieg für die Münchner. Das war Spitzenklasse von beiden Teams.',
'B2', 215, 'sports', true, 'male', 'adult', 'standard', 'sports', 'B2', '3-4 min',
'{"Passiv (wurde gehalten)", "Konjunktiv II (hätte sein müssen, müsste)", "Temporale Angaben (nach innen, volley)", "Bewegungsverben (laufen, ziehen, schießen)"}',
'{"Sport & Fußball", "Spielbericht", "Fußballvokabular", "Kommentar"}',
3, 1),

-- 22. Wetterbericht
('11111111-1111-1111-1111-111111111122',
'Wetterbericht',
'Der tägliche Wetterbericht',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3',
E'Sprecherin: Kommen wir zum Wetter. Was erwartet uns in den nächsten Tagen?\n---\nSprecherin: Heute ist es im Norden stark bewölkt und es fällt Regen. Die Höchstwerte liegen bei 15 Grad. Im Süden dagegen scheint die Sonne bei angenehmen 24 Grad.\n---\nSprecherin: Morgen ziehen von Westen her neue Wolken auf. Am Nachmittag sind im Westen und in der Mitte Schauer und Gewitter möglich. Die Temperaturen gehen leicht zurück auf 18 bis 20 Grad.\n---\nSprecherin: Zum Wochenende hin beruhigt sich das Wetter. Am Samstag erwarten uns überall sonnige Abschnitte bei 22 bis 25 Grad. Der Wind weht schwach bis mäßig.\n---\nSprecherin: Die UV-Belastung ist am Samstag hoch. Denken Sie an Sonnenschutz. Hier noch die aktuellen Wassertemperaturen: Nordsee 17 Grad, Ostsee 19 Grad.\n---\nSprecherin: Der Ausblick für die nächste Woche bleibt wechselhaft. Wir erwarten eine klassische Aprilwetterlage: warm, kalt, Regen, Sonne – alles möglich.',
'A2', 140, 'daily', true, 'female', 'adult', 'standard', 'daily', 'A2', '2 min',
'{"Unpersönlich (es regnet, ist bewölkt)", "Komparativ (wärmer, kälter)", "Temporale Angaben (morgen, am Samstag)", "Modalverben (können, werden)"}',
'{"Wetter & Klima", "Temperaturen", "Jahreszeiten", "Natur"}',
2, 1),

-- 23. Arzttelefonat
('11111111-1111-1111-1111-111111111123',
'Arzttelefonat',
'Telefonat mit der Arztpraxis – Terminvereinbarung und Symptome schildern',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3',
E'Sprechstundenhilfe: Praxis Dr. Huber, guten Tag, was kann ich für Sie tun?\nPatient: Servus, i hob an Termin braucht. I glab, i hob an grippalen Infekt dawischt.\nSprechstundenhilfe: Oje, des klingt ned guad. Habn''s Fieber?\nPatient: Ja, gestern oba 39 Grad. Und da Hals tuat weh.\nSprechstundenhilfe: Frau Dr. Huber hätte heut Nachmittag um 16:00 Uhr an Termin frei. Dass da passn?\nPatient: Jo, des passt.\nSprechstundenhilfe: Brauchen''s a Krankschreibung?\nPatient: Ja, wenn''s geht. I arbeit im Aldi und der Chef braucht a Attest.\nSprechstundenhilfe: Machma so. Bringen''s Ihre Versichertenkarte mit. Und bleiben''s bis dahin im Bett.\nPatient: Danke schee. Auf Wiederlurschen.\nSprechstundenhilfe: Pfiat di!',
'B1', 130, 'health', true, 'male', 'adult', 'bavarian', 'health', 'B1', '1-2 min',
'{"Bayerischer Dialekt (Servus, hob, glei)", "Modalverben (braucht, kann)", "Konjunktiv II (hätte frei)", "Imperativ (bringen Sie, bleiben Sie)"}',
'{"Gesundheit", "Arztbesuch", "Telefonat", "Dialekt"}',
4, 2),

-- 24. Bewerbungstelefon
('11111111-1111-1111-1111-111111111124',
'Bewerbungstelefon',
'Telefonisches Bewerbungsgespräch',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3',
E'Personalreferentin: Frau Weinhold, guten Tag. Hier ist Petra Klein von der Firma TechSolutions. Danke, dass Sie sich bei uns beworben haben.\nBewerberin: Guten Tag, Frau Klein. Vielen Dank für den Anruf.\nPersonalreferentin: Ich habe Ihre Unterlagen gesehen und finde Ihr Profil sehr interessant. Können Sie mir kurz erklären, warum Sie sich für die Stelle als UX-Designerin interessieren?\nBewerberin: Ich beschäftige mich seit meinem Studium mit benutzerzentriertem Design. Bei meiner letzten Tätigkeit habe ich eine App mitentwickelt, die für den German Design Award nominiert wurde.\nPersonalreferentin: Das klingt spannend. Was reizt Sie besonders an TechSolutions?\nBewerberin: Ihr Unternehmen ist bekannt für innovative Produkte und eine starke Designkultur. Da möchte ich meine Fähigkeiten einbringen und mich weiterentwickeln.\nPersonalreferentin: Haben Sie Erfahrung mit agilen Methoden?\nBewerberin: Ja, ich habe in Scrum-Teams gearbeitet und kenne die gängigen Tools wie Jira und Figma.\nPersonalreferentin: Perfekt. Ich würde Sie gern zu einem persönlichen Gespräch einladen. Passt es nächsten Dienstag um 10 Uhr?\nBewerberin: Ja, sehr gern. Ich freue mich.\nPersonalreferentin: Dann bis Dienstag. Sie bekommen noch eine E-Mail mit den Details.\nBewerberin: Vielen Dank. Auf Wiederhören.',
'B2', 185, 'work', true, 'female', 'young', 'standard', 'work', 'B2', '2-3 min',
'{"Perfekt (habe mich beworben, wurde nominiert)", "Passiv (wurde nominiert)", "Relativsätze (der nominiert wurde)", "Konjunktiv II (würde, möchte)"}',
'{"Bewerbung", "Beruf", "Design", "Telefonat"}',
3, 2),

-- 25. Familienfeier
('11111111-1111-1111-1111-111111111125',
'Familienfeier',
'Gespräche auf einer Familienfeier',
'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3',
E'Oma: Ach, wie schön, dass ihr alle da seid. Kommt rein, kommt rein. Setzt euch!\nTante: Oma, das Essen riecht aber gut! Was hast du gekocht?\nOma: Dein Lieblingsgericht: Rouladen mit Rotkohl und Kartoffelklößen.\nTante: Oh, das gibt es ja nur einmal im Jahr! Ich freu mich!\n---\nOnkel: Und, Lena, wie läuft die Schule?\nLena: Ganz gut. Ich habe in Mathe eine Eins bekommen.\nOnkel: Super! Da bist du wohl nach mir gekommen. Ich war auch immer gut in Mathe.\nLena: Opa, stimmt das, dass du mal sitzengeblieben bist?\nOpa: Ja, in der zehnten Klasse. Aber das ist lange her. Heute bin ich Rentner.\n---\nMutter: Leute, das Essen ist fertig! Wir müssen uns beeilen, sonst wird der Rotkohl kalt.\nVater: Ich habe schon den Tisch gedeckt. Jeder sucht sich einen Platz.\nOma: Das freut mich aber. Früher haben wir uns immer um den Tisch gestritten!\n---\nOpa: Auf die Familie! Prost!\nAlle: Prost!',
'A2', 160, 'daily', true, 'mixed', 'mixed', 'standard', 'daily', 'A2', '2-3 min',
'{"Imperativ (kommt rein, setzt euch)", "Perfekt (hast gekocht, bin gewesen)", "Possessivpronomen (dein, mein)", "Vergleiche (so gut wie, einmal im Jahr)"}',
'{"Familie", "Feiern & Feste", "Essen", "Verwandtschaft"}',
2, 5);


-- ====================================================================
-- LISTENING EXERCISES (3-5 per lesson, ~100 total)
-- ====================================================================

-- Lesson 1: Im Restaurant (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111101',
'Warum gibt der Gast das Schnitzel zurück?',
'["Weil es zu kalt ist", "Weil es innen noch roh ist", "Weil es zu salzig ist", "Weil keine Pommes dabei sind"]',
'Weil es innen noch roh ist',
1, 'multiple_choice',
'["Weil es zu kalt ist (der Gast sagt nichts zur Temperatur)", "Weil es zu salzig ist (Geschmack wird nicht kritisiert)", "Weil keine Pommes dabei sind (Pommes waren dabei)"]',
2,
'Achten Sie auf die genaue Beschreibung des Problems mit dem Fleisch.',
'Der Gast sagt: "das Fleisch ist innen noch roh". Er hatte es "gut durch" bestellt. Roh bedeutet nicht durchgegart – die anderen Optionen werden im Dialog nicht genannt.'),

('11111111-1111-1111-1111-111111111101',
'Der Kelller bietet dem Gast ein Brot an, während das neue Schnitzel zubereitet wird.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Kellner ignoriert das Problem", "Der Kellner bietet einen kostenlosen Wein an"]',
1,
'Der Kellner macht einen Vorschlag zur Überbrückung der Wartezeit.',
'Der Kellner sagt: "Darf ich Ihnen in der Zwischenzeit ein Brot bringen?" Das Angebot ist also wahr.'),

('11111111-1111-1111-1111-111111111101',
'Ordnen Sie die Ereignisse in der richtigen Reihenfolge: A) Der Gast bestellt ein Schnitzel. B) Der Gast bekommt das Essen. C) Der Gast reklamiert. D) Der Kellner bringt das Essen in die Küche zurück.',
'["A -> B -> C -> D", "B -> A -> C -> D", "A -> C -> B -> D", "D -> A -> B -> C"]',
'A -> B -> C -> D',
3, 'order_events',
'["B -> A -> C -> D (Essen kam vor Bestellung?)", "A -> C -> B -> D (Gast reklamiert vor dem Essen?)", "D -> A -> B -> C (Küche zuerst?)"]',
2,
'Überlegen Sie, was zuerst passiert: Bestellen, bekommen, reklamieren oder zurückbringen.',
'Die richtige Chronologie: Der Gast bestellt (A), bekommt das Essen (B), reklamiert, weil das Fleisch roh ist (C), und der Kellner bringt es in die Küche zurück (D).');

-- Lesson 2: Beim Arzt (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111102',
'Welche Diagnose stellt der Arzt?',
'["Eine Grippe", "Eine Bronchitis", "Eine Allergie", "Eine Erkältung"]',
'Eine Bronchitis',
1, 'multiple_choice',
'["Eine Grippe (nicht genannt)", "Eine Allergie (nicht genannt)", "Eine Erkältung (Bronchitis genauer)"]',
2,
'Hören Sie genau, welche Krankheit der Arzt nennt.',
'Der Arzt sagt: "Das klingt nach einer Bronchitis." Die anderen Krankheiten werden nicht erwähnt.'),

('11111111-1111-1111-1111-111111111102',
'Der Patient soll zwei Tage im Bett bleiben und ein Antibiotikum nehmen.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Patient soll sofort operiert werden", "Der Patient braucht nur viel Schlaf"]',
1,
'Der Arzt gibt zwei konkrete Anweisungen.',
'Der Arzt sagt: "Zwei Tage Ruhe wären gut" und "Ich verschreibe Ihnen ein Antibiotikum." Beide Aussagen sind richtig.'),

('11111111-1111-1111-1111-111111111102',
'Der Patient soll ___ einnehmen und sich ___.',
'["ein Antibiotikum / schonen", "Schmerztabletten / bewegen", "Hustensaft / ausruhen", "Vitamine / belasten"]',
'ein Antibiotikum / schonen',
3, 'fill_blank',
'["Schmerztabletten / bewegen (falsche Medikation + falsche Anweisung)", "Hustensaft / ausruhen (Hustensaft nicht genannt)", "Vitamine / belasten (nicht genannt)"]',
2,
'Konzentrieren Sie sich auf die ärztlichen Anweisungen am Ende.',
'Der Arzt sagt: "Ich verschreibe Ihnen ein Antibiotikum. Trinken Sie viel und schonen Sie sich."'),

('11111111-1111-1111-1111-111111111102',
'Warum verschreibt der Arzt kein Rezept für eine erneute Untersuchung?',
'["Weil der Patient gesund ist", "Weil der Patient nur wiederkommen soll, wenn es nicht besser wird", "Weil die Praxis geschlossen hat", "Weil das Rezept abgelaufen ist"]',
'Weil der Patient nur wiederkommen soll, wenn es nicht besser wird',
4, 'short_answer',
'["Weil der Patient gesund ist (der Patient ist noch krank)", "Weil die Praxis geschlossen hat (nicht erwähnt)", "Weil das Rezept abgelaufen ist (kein Rezept nötig)"]',
2,
'Hören Sie die letzte Frage des Patienten und die Antwort des Arztes.',
'Der Patient fragt "Soll ich wiederkommen?" Der Arzt antwortet: "Nur wenn es nicht besser wird und das Fieber steigt."');

-- Lesson 3: Hotelbuchung (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111103',
'Für welchen Zeitraum bucht Frau Weber das Hotelzimmer?',
'["Vom 15. bis 19. Oktober", "Vom 15. bis 19. September", "Vom 5. bis 9. Oktober", "Vom 15. bis 18. Oktober"]',
'Vom 15. bis 19. Oktober',
1, 'multiple_choice',
'["Vom 15. bis 19. September (Monat verwechselt)", "Vom 5. bis 9. Oktober (falsche Daten)", "Vom 15. bis 18. Oktober (falsches Enddatum)"]',
2,
'Achten Sie auf die genauen Daten, die die Gast nennt.',
'Die Gast sagt: "vom 15. bis zum 19. Oktober." Das sind vier Übernachtungen.'),

('11111111-1111-1111-1111-111111111103',
'Das Hotel hat ein günstigeres Zimmer als das Einzelzimmer angeboten.',
'["true", "false"]',
'false',
2, 'true_false',
'["Das Einzelzimmer war das günstigste", "Das Doppelzimmer war billiger"]',
1,
'Hören Sie, was die Angestellte über die Preise sagt.',
'Die Angestellte sagt: "Leider ist das unser günstigstes Zimmer in der Kategorie." Das Doppelzimmer kostet 95 Euro, also mehr.'),

('11111111-1111-1111-1111-111111111103',
'Das Doppelzimmer zur Einzelnutzung kostet ___ Euro pro Nacht.',
'["89", "95", "105", "80"]',
'95',
3, 'fill_blank',
'["89 (das ist der Preis für das Einzelzimmer)", "105 (falscher Preis)", "80 (nicht genannt)"]',
2,
'Vergleichen Sie die beiden Zimmerpreise.',
'Die Angestellte sagt: "Wir haben noch ein Doppelzimmer zur Einzelnutzung für 95 Euro." Das Einzelzimmer kostet 89 Euro.'),

('11111111-1111-1111-1111-111111111103',
'Ordnen Sie die Ereignisse: A) Frau Weber fragt nach einem günstigeren Zimmer. B) Frau Weber bucht das Zimmer. C) Die Angestellte nennt den Preis. D) Frau Weber fragt, ob das Zimmer ruhig ist.',
'["A -> C -> D -> B", "C -> A -> B -> D", "D -> A -> C -> B", "A -> B -> C -> D"]',
'A -> C -> D -> B',
4, 'order_events',
'["C -> A -> B -> D (Preis genannt, bevor gefragt?)", "D -> A -> C -> B (Ruhe zuerst?)", "A -> B -> C -> D (Buchung vor dem Preis?)"]',
2,
'Folgen Sie dem Gesprächsverlauf: Frage nach Preis, Antwort, Nachfrage, Entscheidung.',
'Frau Weber fragt zuerst, ob es ein günstigeres Zimmer gibt (A). Die Angestellte nennt den Preis (C). Dann fragt Frau Weber, ob das Zimmer ruhig ist (D). Danach bucht sie (B).');

-- Lesson 4: Am Flughafen (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111104',
'Warum muss der Passagier etwas aus dem Koffer nehmen?',
'["Weil der Koffer zu groß ist", "Weil der Koffer 22 Kilo wiegt und nur 20 erlaubt sind", "Weil der Koffer beschädigt ist", "Weil er den Koffer als Handgepäck mitnehmen will"]',
'Weil der Koffer 22 Kilo wiegt und nur 20 erlaubt sind',
1, 'multiple_choice',
'["Weil der Koffer zu groß ist (Größe wird nicht genannt)", "Weil der Koffer beschädigt ist (nicht erwähnt)", "Weil er den Koffer als Handgepäck mitnehmen will (er gibt ihn auf)"]',
2,
'Achten Sie auf das Gewichtslimit.',
'Der Angestellte sagt: "22 Kilo. Das ist zwei Kilo zu viel." Das Freigepäck ist vermutlich 20 Kilo.'),

('11111111-1111-1111-1111-111111111104',
'Der Flug LH 472 hat eine Verspätung von 30 Minuten.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Flug geht früher", "Der Flug ist pünktlich"]',
1,
'Hören Sie die letzte Durchsage genau.',
'Die Durchsage sagt: "Flug LH 472 hat eine Verspätung von etwa 30 Minuten."'),

('11111111-1111-1111-1111-111111111104',
'Der Passagier kann ___ Kilo Handgepäck mitnehmen.',
'["acht", "zehn", "fünf", "zwölf"]',
'acht',
3, 'fill_blank',
'["zehn (nicht genannt)", "fünf (zu niedrig)", "zwölf (das wäre zu schwer)"]',
1,
'Hören Sie das Gewichtslimit für Handgepäck.',
'Der Angestellte sagt: "Sie können einen Handgepäckartikel mitnehmen. Maximal acht Kilo."'),

('11111111-1111-1111-1111-111111111104',
'An welchem Gate ist das Boarding?',
'["Gate B12", "Gate A7", "Gate C3", "Gate B22"]',
'Gate B12',
4, 'matching',
'["Gate A7 (andere Halle)", "Gate C3 (falscher Buchstabe)", "Gate B22 (falsche Zahl)"]',
2,
'Hören Sie die genaue Gate-Nummer am Ende des Gesprächs.',
'Der Angestellte sagt: "Boarding ist um 14:30 Uhr an Gate B12."');

-- Lesson 5: Vorlesung Universität (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111105',
'Was ist laut Dozent der Hauptgrund für die Inflation?',
'["Gestiegene Energiepreise und Lieferkettenprobleme", "Zu niedrige Leitzinsen", "Zu hohe Löhne", "Die Coronavirus-Pandemie"]',
'Gestiegene Energiepreise und Lieferkettenprobleme',
1, 'multiple_choice',
'["Zu niedrige Leitzinsen (EZB erhöht die Zinsen, also waren sie nicht die Ursache)", "Zu hohe Löhne (wird nicht genannt)", "Die Coronavirus-Pandemie (indirekt, aber nicht genannt)"]',
3,
'Der Dozent nennt zwei konkrete Faktoren.',
'Der Dozent sagt: "Die Hauptgründe sind gestiegene Energiepreise und Lieferkettenprobleme."'),

('11111111-1111-1111-1111-111111111105',
'Die EZB senkt die Leitzinsen, um die Inflation zu bekämpfen.',
'["true", "false"]',
'false',
2, 'true_false',
'["Die EZB will damit die Nachfrage senken", "Niedrige Zinsen fördern Investitionen"]',
2,
'Hören Sie genau, was die EZB mit den Zinsen macht.',
'Der Dozent sagt: "Die Europäische Zentralbank versucht gegenzusteuern, indem sie die Leitzinsen anhebt." Sie erhöht Zinsen, nicht senkt.'),

('11111111-1111-1111-1111-111111111105',
'Die Erhöhung der Leitzinsen soll die ___ senken und die Preise stabilisieren.',
'["Nachfrage", "Steuern", "Löhne", "Produktion"]',
'Nachfrage',
3, 'fill_blank',
'["Steuern (EZB kontrolliert keine Steuern)", "Löhne (wird nicht genannt)", "Produktion (indirekt, nicht Ziel)"]',
3,
'Der Dozent erklärt den Mechanismus hinter der Zinserhöhung.',
'Der Dozent sagt: "Die Hoffnung ist, dass dadurch die Nachfrage sinkt und die Preise sich stabilisieren."');

-- Lesson 6: Büro Meeting (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111106',
'Was muss Lara noch von der IT-Abteilung bekommen?',
'["Die Kundendaten", "Das Budget", "Das Design-Update", "Den Zeitplan"]',
'Die Kundendaten',
1, 'multiple_choice',
'["Das Budget (wird separat besprochen)", "Das Design-Update (Kollege arbeitet daran)", "Den Zeitplan (Lara sagt, sie liegt im Zeitplan)"]',
2,
'Hören Sie, was Lara braucht, um ihre Arbeit fortzusetzen.',
'Lara sagt: "Allerdings brauche ich noch die Kundendaten von der IT."'),

('11111111-1111-1111-1111-111111111106',
'Das Projekt liegt unter dem Budget.',
'["true", "false"]',
'true',
2, 'true_false',
'["Das Budget wurde überschritten", "Die Druckkosten sind das Problem"]',
1,
'Hören Sie die Aussage zur Kostenkalkulation.',
'Lara sagt: "Die liegt vor. Wir sind etwa fünf Prozent unter dem Budget."'),

('11111111-1111-1111-1111-111111111106',
'Die Chefin möchte die finale Version bis ___ sehen.',
'["Freitag", "Mittwoch", "nächste Woche", "heute Nachmittag"]',
'Freitag',
3, 'fill_blank',
'["Mittwoch (nicht genannt)", "nächste Woche (zu spät)", "heute Nachmittag (sie will die Entwürfe sehen)"]',
2,
'Die Chefin setzt eine Deadline für das fertige Projekt.',
'Die Chefin sagt: "Bis Freitag will ich die finale Version sehen."'),

('11111111-1111-1111-1111-111111111106',
'Ordnen Sie die Themen in der Reihenfolge des Meetings: A) Kostenkalkulation B) Zeitplan C) Design-Farbpalette D) Marketingstrategie',
'["B -> C -> A -> D", "A -> B -> C -> D", "C -> A -> B -> D", "B -> A -> C -> D"]',
'B -> C -> A -> D',
4, 'order_events',
'["A -> B -> C -> D (Budget zuerst besprochen)", "C -> A -> B -> D (Design kam nicht zuerst)", "B -> A -> C -> D (Kosten vor Design?)"]',
3,
'Folgen Sie der Agenda des Meetings von Anfang bis Ende.',
'Die Chefin startet mit dem Zeitplan (B), dann fragt sie nach dem Design (C), dann nach der Kostenkalkulation (A), und zum Schluss sagt sie "Nächster Punkt auf der Agenda ist die Marketingstrategie" (D).');

-- Lesson 7: Vorstellungsgespräch (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111107',
'Welche Schwäche nennt der Bewerber im Gespräch?',
'["Detailorientierung", "Unpünktlichkeit", "Teamwork-Probleme", "Präsentationsschwäche"]',
'Detailorientierung',
1, 'multiple_choice',
'["Unpünktlichkeit (nicht genannt)", "Teamwork-Probleme (er war Teamleiter)", "Präsentationsschwäche (nicht genannt)"]',
2,
'Hören Sie die Frage nach Schwächen und die Antwort.',
'Der Bewerber sagt: "Ich bin manchmal zu detailorientiert." Er präsentiert es als Stärke mit Übertreibung.'),

('11111111-1111-1111-1111-111111111107',
'Der Bewerber hat die Durchlaufzeit um 30 Prozent reduziert.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Bewerber hat das Budget optimiert", "Die Reduktion war 20 Prozent"]',
2,
'Hören Sie die Antwort auf die Frage nach Stärken.',
'Der Bewerber sagt: "In meinem letzten Projekt habe ich die Durchlaufzeit um 30 Prozent reduziert."'),

('11111111-1111-1111-1111-111111111107',
'Der Bewerber möchte in fünf Jahren ___ werden.',
'["Senior-Projektmanager", "Abteilungsleiter", "Geschäftsführer", "Teamleiter"]',
'Senior-Projektmanager',
3, 'fill_blank',
'["Abteilungsleiter (nicht genannt)", "Geschäftsführer (zu hoch für fünf Jahre)", "Teamleiter (das war er schon)"]',
2,
'Hören Sie die letzte Frage zur Zukunftsperspektive.',
'Der Bewerber sagt: "Ich möchte mich zum Senior-Projektmanager weiterentwickeln."'),

('11111111-1111-1111-1111-111111111107',
'Warum möchte der Bewerber die Stelle bei TechSolutions?',
'["Wegen des höheren Gehalts", "Wegen des hervorragenden Rufs in der Digitalbranche", "Weil er näher an der Wohnung wohnt", "Weil sein Freund dort arbeitet"]',
'Wegen des hervorragenden Rufs in der Digitalbranche',
4, 'short_answer',
'["Wegen des höheren Gehalts (nicht genannt)", "Weil er näher an der Wohnung wohnt (nicht genannt)", "Weil sein Freund dort arbeitet (nicht genannt)"]',
2,
'Hören Sie den Grund für den Wechselwunsch.',
'Der Bewerber sagt: "Ihr Unternehmen hat einen hervorragenden Ruf in der Digitalbranche, und ich möchte mich in diesem Bereich weiterentwickeln."');

-- Lesson 8: Einkaufen (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111108',
'Warum passt das erste Kleid nicht?',
'["Es ist zu groß", "Es ist eng an den Schultern", "Die Farbe gefällt nicht", "Es ist zu teuer"]',
'Es ist eng an den Schultern',
1, 'multiple_choice',
'["Es ist zu groß (es ist zu eng, nicht zu groß)", "Die Farbe gefällt nicht (Kundin sucht blau, das Kleid ist blau)", "Es ist zu teuer (Preis wird nicht kritisiert)"]',
2,
'Hören Sie das konkrete Problem des ersten Kleides.',
'Die Kundin sagt: "Es ist etwas eng an den Schultern."'),

('11111111-1111-1111-1111-111111111108',
'Das rote Kleid ist teurer als das blaue.',
'["true", "false"]',
'false',
2, 'true_false',
'["Rot ist günstiger", "Das rote Kleid ist aus Seide"]',
2,
'Hören Sie die Beschreibung des roten Kleides.',
'Die Verkäuferin schlägt das rote vor, aber die Kundin lehnt ab ("Rot ist nicht so mein Fall"), ohne dass ein Preis verglichen wird. Der Preis wird nur für das gekaufte Kleid genannt. Kein Preisvergleich.'),

('11111111-1111-1111-1111-111111111108',
'Das Kleid, das die Kundin kauft, ist reduziert von ___ auf ___.',
'["120 auf 89 Euro", "150 auf 89 Euro", "120 auf 99 Euro", "89 auf 69 Euro"]',
'120 auf 89 Euro',
3, 'fill_blank',
'["150 auf 89 Euro (Ursprungspreis ist falsch)", "120 auf 99 Euro (falscher Rabattpreis)", "89 auf 69 Euro (89 ist der reduzierte Preis)"]',
2,
'Hören Sie genau, was die Verkäuferin über den Preis sagt.',
'Die Verkäuferin sagt: "Es ist übrigens reduziert, ursprünglich 120." und "Was kostet es? 89 Euro."'),

('11111111-1111-1111-1111-111111111108',
'Die Kundin sucht ein Kleid für ___ .',
'["eine Hochzeit", "ein Vorstellungsgespräch", "einen Geburtstag", "einen Urlaub"]',
'eine Hochzeit',
4, 'matching',
'["ein Vorstellungsgespräch (nicht genannt)", "einen Geburtstag (nicht genannt)", "einen Urlaub (nicht genannt)"]',
1,
'Hören Sie den Anlass, den die Kundin nennt.',
'Die Kundin sagt gleich zu Beginn: "Ich suche ein Kleid für eine Hochzeit."');

-- Lesson 9: Telefonat (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111109',
'Warum kann der Mitarbeiter keinen Ersatz-Laptop schicken?',
'["Weil der Laptop ausverkauft ist", "Weil das Paket erst nach 48 Stunden als verloren gemeldet werden kann", "Weil der Kunde nicht gezahlt hat", "Weil der Laptop noch im Lager ist"]',
'Weil das Paket erst nach 48 Stunden als verloren gemeldet werden kann',
1, 'multiple_choice',
'["Weil der Laptop ausverkauft ist (nicht genannt)", "Weil der Kunde nicht gezahlt hat (Rechnung ist offen?)", "Weil der Laptop noch im Lager ist (wurde verschickt)"]',
3,
'Hören Sie die Bedingung für einen Ersatz.',
'Der Mitarbeiter sagt: "Das kann ich leider erst veranlassen, wenn das Paket offiziell als verloren gemeldet wurde. Noch dauert das 48 Stunden."'),

('11111111-1111-1111-1111-111111111109',
'Die Bestellnummer des Kunden ist 3847291.',
'["true", "false"]',
'true',
2, 'true_false',
'["Die Nummer ist 3847391", "Die Nummer ist 3847290"]',
1,
'Hören Sie die Zahl, die der Kunde nennt.',
'Der Kunde sagt: "Ja, die Nummer ist 3847291."'),

('11111111-1111-1111-1111-111111111109',
'Der Mitarbeiter setzt den Fall auf ___ .',
'["prioritär", "normal", "Standard", "dringend"]',
'prioritär',
3, 'fill_blank',
'["normal (das Gegenteil)", "Standard (nicht genannt)", "dringend (ähnlich, aber nicht das genaue Wort)"]',
2,
'Hören Sie das letzte Angebot des Mitarbeiters.',
'Der Mitarbeiter sagt: "Ich setze den Fall auf prioritär. Sie hören spätestens morgen von mir."'),

('11111111-1111-1111-1111-111111111109',
'Ordnen Sie die Ereignisse im Telefonat: A) Der Kunde gibt die Bestellnummer. B) Der Kunde beschwert sich über die Verspätung. C) Der Mitarbeiter schlägt vor, den Fall prioritär zu behandeln. D) Der Mitarbeiter überprüft den Status.',
'["B -> A -> D -> C", "A -> B -> C -> D", "D -> B -> A -> C", "B -> D -> A -> C"]',
'B -> A -> D -> C',
4, 'order_events',
'["A -> B -> C -> D (Beschwerde nach Nummer?)", "D -> B -> A -> C (Prüfung vor Beschwerde?)", "B -> D -> A -> C (Prüfung nach Nummer?)"]',
2,
'Der Kunde beginnt mit dem Problem, dann identifiziert der Mitarbeiter die Bestellung.',
'Der Kunde beginnt mit der Beschwerde (B), nennt dann die Bestellnummer (A), der Mitarbeiter prüft (D), und bietet dann prioritäre Bearbeitung (C).');

-- Lesson 10: Behörde (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111110',
'Was möchte die Besucherin auf dem Bürgeramt erledigen?',
'["Einen neuen Personalausweis beantragen", "Sich ummelden", "Ein Auto anmelden", "Ein Gewerbe anmelden"]',
'Sich ummelden',
1, 'multiple_choice',
'["Einen neuen Personalausweis beantragen (sie hat ihren dabei)", "Ein Auto anmelden (wird separat besprochen)", "Ein Gewerbe anmelden (nicht genannt)"]',
2,
'Hören Sie den Grund des Besuchs zu Beginn.',
'Die Besucherin sagt: "Ich möchte mich ummelden. Ich bin vor einer Woche umgezogen."'),

('11111111-1111-1111-1111-111111111110',
'Die Besucherin bekommt noch am selben Tag eine neue Steuer-ID.',
'["true", "false"]',
'false',
2, 'true_false',
'["Die alte Steuer-ID behält ihre Gültigkeit", "Die Steuer-ID kommt per Post"]',
1,
'Hören Sie, wann die neue Steuer-ID kommt.',
'Die Angestellte sagt: "Dann bekommen Sie in etwa zwei Wochen eine neue Steuer-ID."'),

('11111111-1111-1111-1111-111111111110',
'Die Kfz-Ummeldung muss innerhalb von ___ Wochen erfolgen.',
'["zwei", "einer", "drei", "vier"]',
'zwei',
3, 'fill_blank',
'["einer (zu kurz)", "drei (zu lang)", "vier (zu lang)"]',
2,
'Hören Sie die Frist für die Kfz-Ummeldung.',
'Die Angestellte sagt: "Das müssen Sie innerhalb von zwei Wochen beim Straßenverkehrsamt tun."'),

('11111111-1111-1111-1111-111111111110',
'Die Besucherin bekommt einen Termin für die Kfz-Ummeldung am nächsten ___ um 10 Uhr.',
'["Mittwoch", "Montag", "Freitag", "Dienstag"]',
'Mittwoch',
4, 'matching',
'["Montag (nicht genannt)", "Freitag (nicht genannt)", "Dienstag (nicht genannt)"]',
2,
'Hören Sie den Wochentag, den die Angestellte vorschlägt.',
'Die Angestellte sagt: "Nächsten Mittwoch um 10 Uhr wäre möglich."');

-- Lesson 11: Alltagsgespräch (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111111',
'Wohin möchte Felix Lena einladen?',
'["Ins Kino", "Ins Theater", "In die Pizzeria", "In den Park"]',
'Ins Kino',
1, 'multiple_choice',
'["Ins Theater (nicht genannt, Kino ist korrekt)", "In die Pizzeria (die ist fürs Essen vor dem Kino)", "In den Park (nicht genannt)"]',
1,
'Hören Sie, wofür Felix zwei Karten hat.',
'Felix sagt: "Ich hab zwei Karten fürs Kino bekommen."'),

('11111111-1111-1111-1111-111111111111',
'Lena hat am Wochenende schon Pläne.',
'["true", "false"]',
'false',
2, 'true_false',
'["Lena muss lernen", "Lena will in die Pizzeria"]',
1,
'Lenas erste Antwort auf Felix Frage.',
'Lena antwortet auf "hast du am Wochenende schon was vor?" mit "Nein, noch nicht."'),

('11111111-1111-1111-1111-111111111111',
'Lena muss am ___ lernen, weil sie nächste Woche eine ___ schreibt.',
'["Sonntag / Klausur", "Samstag / Prüfung", "Sonntag / Mathearbeit", "Samstag / Test"]',
'Sonntag / Klausur',
3, 'fill_blank',
'["Samstag / Prüfung (Samstag geht sie ins Kino)", "Sonntag / Mathearbeit (Klausur ist das genaue Wort)", "Samstag / Test (falscher Tag)"]',
2,
'Hören Sie, warum Lena Sonntag nicht kann.',
'Lena sagt: "Ich muss Sonntag lernen, wir schreiben nächste Woche eine Klausur."'),

('11111111-1111-1111-1111-111111111111',
'Um wie viel Uhr treffen sie sich vor dem Kino?',
'["17 Uhr", "18 Uhr", "15 Uhr", "16 Uhr"]',
'17 Uhr',
4, 'short_answer',
'["18 Uhr (Kinozeit, nicht Treffzeit)", "15 Uhr (Sonntagsvorstellung)", "16 Uhr (nicht genannt)"]',
1,
'Hören Sie die Verabredungszeit vor dem Kinobesuch.',
'Felix sagt: "Da ist die neue Pizzeria am Marktplatz. Sagen wir 17 Uhr?"');

-- Lesson 12: Zug Durchsage (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111112',
'Warum fährt der ICE 782 von Gleis 5 statt von Gleis 3?',
'["Wegen einer Baustelle", "Wegen einer Signalstörung", "Wegen einer Verspätung", "Wegen des Wetters"]',
'Wegen einer Baustelle',
1, 'multiple_choice',
'["Wegen einer Signalstörung (das betrifft den RE 427)", "Wegen einer Verspätung (Folge, nicht Grund)", "Wegen des Wetters (nicht genannt)"]',
2,
'Die Durchsage nennt einen konkreten Grund für die Gleisänderung.',
'Die Durchsage sagt: "aufgrund einer Baustelle von Gleis 5 ab statt von Gleis 3."'),

('11111111-1111-1111-1111-111111111112',
'Der Regionalexpress 427 hat 15 Minuten Verspätung.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der ICE hat Verspätung", "Die Verspätung beträgt 30 Minuten"]',
1,
'Hören Sie die zweite Durchsage.',
'Die Durchsage sagt: "Der Regionalexpress 427 nach Stuttgart hat voraussichtlich 15 Minuten Verspätung."'),

('11111111-1111-1111-1111-111111111112',
'Der Fahrgast muss in ___ umsteigen, um nach Köln zu kommen.',
'["Frankfurt", "Stuttgart", "München", "Hamburg"]',
'Frankfurt',
3, 'fill_blank',
'["Stuttgart (RE 427 fährt nach Stuttgart)", "München (ICE 782 fährt nach München)", "Hamburg (nicht genannt)"]',
2,
'Hören Sie die Anweisung der Bahnmitarbeiterin.',
'Die Bahnmitarbeiterin sagt: "Ja, aber Sie müssen in Frankfurt umsteigen."');

-- Lesson 13: Bewerbung (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111113',
'Was hat der Bewerber bei seinen Bewerbungen gleich gelassen?',
'["Das Anschreiben", "Den Lebenslauf", "Das Portfolio", "Das Deckblatt"]',
'Den Lebenslauf',
1, 'multiple_choice',
'["Das Anschreiben (hat er angepasst, nicht gleich gelassen)", "Das Portfolio (wird später besprochen)", "Das Deckblatt (nicht erwähnt)"]',
2,
'Hören Sie, was der Bewerber über seine Unterlagen sagt.',
'Der Bewerber sagt: "Ich habe das Anschreiben pro Stelle angepasst, aber der Lebenslauf war immer gleich."'),

('11111111-1111-1111-1111-111111111113',
'Der Berater empfiehlt, den Lebenslauf für jede Stelle anzupassen.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Lebenslauf sollte standardisiert sein", "Der Berater sagt, die Unterlagen sind gut"]',
2,
'Hören Sie die Reaktion des Beraters.',
'Der Berater sagt: "Das sollten Sie ändern. Jede Stelle erfordert andere Schwerpunkte."'),

('11111111-1111-1111-1111-111111111113',
'Viele Unternehmen nutzen ___, die Lebensläufe filtern.',
'["Software", "Personalberater", "Agenturen", "Fragebögen"]',
'Software',
3, 'fill_blank',
'["Personalberater (nicht genannt)", "Agenturen (nicht genannt)", "Fragebögen (nicht genannt)"]',
3,
'Hören Sie den Hinweis zur digitalen Vorauswahl.',
'Der Berater sagt: "Viele Unternehmen nutzen Software, die Lebensläufe filtert."'),

('11111111-1111-1111-1111-111111111113',
'Welche Schlüsselwörter kommen laut Berater fast immer gut an?',
'["Agil, skalierbar, Optimierung", "Flexibel, pünktlich, freundlich", "Erfahren, qualifiziert, motiviert", "Global, digital, innovativ"]',
'Agil, skalierbar, Optimierung',
4, 'matching',
'["Flexibel, pünktlich, freundlich (zu allgemein)", "Erfahren, qualifiziert, motiviert (Standardfloskeln)", "Global, digital, innovativ (nicht genannt)"]',
3,
'Hören Sie die genauen Begriffe, die der Berater nennt.',
'Der Berater sagt: "Aber Begriffe wie agil, skalierbar, Optimierung kommen fast immer gut an."');

-- Lesson 14: Im Café (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111114',
'Was bestellt die Kundin zu ihrem Cappuccino?',
'["Käsekuchen", "Schokoladenkuchen", "Apfelstrudel", "Nichts"]',
'Käsekuchen',
1, 'multiple_choice',
'["Schokoladenkuchen (nicht genannt)", "Apfelstrudel (nicht genannt)", "Nichts (sie bestellt beides)"]',
1,
'Hören Sie die gesamte Bestellung.',
'Die Kundin sagt: "Ich hätte gern einen Cappuccino und ein Stück Käsekuchen, bitte."'),

('11111111-1111-1111-1111-111111111114',
'Die Kundin bezahlt mit Bargeld.',
'["true", "false"]',
'false',
2, 'true_false',
'["Barista fragt nach Zahlungsmethode", "Kundin zahlt mit Karte"]',
1,
'Hören Sie die Antwort auf die Frage nach der Zahlungsmethode.',
'Der Barista fragt "Zahlen Sie bar oder mit Karte?" Die Kundin antwortet: "Mit Karte, bitte."'),

('11111111-1111-1111-1111-111111111114',
'Der Käsekuchen ist nach einem ___ Rezept der Bäckerin.',
'["Spezial-", "Familien-", "Geheim-", "traditionellen"]',
'Spezial-',
3, 'fill_blank',
'["Familien- (nicht genannt)", "Geheim- (nicht genannt)", "traditionellen (nicht das genaue Wort)"]',
2,
'Hören Sie die Beschreibung des Käsekuchens.',
'Der Barista sagt: "Der Käsekuchen ist ihr Spezialrezept."');

-- Lesson 15: Diskussion (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111115',
'Was ist Herr Königs Hauptargument gegen den schnellen Ausbau erneuerbarer Energien?',
'["Die Industrie braucht stabile Grundlastkraftwerke", "Erneuerbare sind zu teuer", "Deutschland ist zu klein", "Die Technik ist nicht ausgereift"]',
'Die Industrie braucht stabile Grundlastkraftwerke',
1, 'multiple_choice',
'["Erneuerbare sind zu teuer (Kosten sind gefallen, sagt Dr. Bauer)", "Deutschland ist zu klein (nicht genannt)", "Die Technik ist nicht ausgereift (wird nicht behauptet)"]',
3,
'Hören Sie die industriepolitische Sorge von Herrn König.',
'Herr König sagt: "Die Industrie kann nicht einfach auf grünen Strom umschalten. Wir brauchen stabile Grundlastkraftwerke."'),

('11111111-1111-1111-1111-111111111115',
'Dr. Bauer sagt, die Kosten für Solar und Wind sind gestiegen.',
'["true", "false"]',
'false',
2, 'true_false',
'["Dr. Bauer sagt, die Kosten sind gefallen", "Erneuerbare haben sich verteuert"]',
2,
'Hören Sie, was Dr. Bauer über die Kostenentwicklung sagt.',
'Dr. Bauer sagt: "Die Kosten für Solar und Wind sind drastisch gefallen." Das Gegenteil der Behauptung.'),

('11111111-1111-1111-1111-111111111115',
'Dr. Bauer argumentiert, dass Deutschland ___ braucht, um die Energiewende zu schaffen.',
'["Speichertechnologien und Netzausbau", "mehr Kohlekraftwerke", "Atomenergie", "weniger Industrie"]',
'Speichertechnologien und Netzausbau',
3, 'fill_blank',
'["mehr Kohlekraftwerke (König argumentiert andersherum)", "Atomenergie (nicht genannt)", "weniger Industrie (nicht genannt)"]',
3,
'Hören Sie Dr. Bauers Lösung für Tage ohne Wind und Sonne.',
'Dr. Bauer sagt: "Dafür brauchen wir Speichertechnologien. Und den Ausbau der Netze."'),

('11111111-1111-1111-1111-111111111115',
'Ordnen Sie die Argumente im Gespräch: A) Herr König warnt vor Abwanderung der Industrie. B) Dr. Bauer fordert beschleunigten Ausbau der Erneuerbaren. C) Herr König fragt nach der Versorgungssicherheit. D) Dr. Bauer betont die Kosten des Klimawandels.',
'["B -> A -> C -> D", "A -> B -> C -> D", "B -> C -> A -> D", "C -> A -> B -> D"]',
'B -> A -> C -> D',
4, 'order_events',
'["A -> B -> C -> D (König sprach zuerst)", "B -> C -> A -> D (Königs Industrie-Sorge kam vor der Versorgungssicherheit?)", "C -> A -> B -> D (Versorgungssicherheit zuerst?)"]',
4,
'Beachten Sie, wer zuerst spricht und wie die Diskussion aufeinander aufbaut.',
'Dr. Bauer beginnt mit der Forderung nach beschleunigtem Ausbau (B). Herr König widerspricht mit der Industrie-Sorge (A). Dann fragt er nach Versorgungssicherheit (C). Dr. Bauer schließt mit den Klimawandel-Kosten (D).');

-- Lesson 16: Nachrichten (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111116',
'Was ist der Kernpunkt des neuen Klimaschutzgesetzes?',
'["Die Verschärfung der CO₂-Grenzwerte für die Industrie", "Die Einführung einer CO₂-Steuer", "Der Ausstieg aus der Kohle", "Ein Verbot von Verbrennungsmotoren"]',
'Die Verschärfung der CO₂-Grenzwerte für die Industrie',
1, 'multiple_choice',
'["Die Einführung einer CO₂-Steuer (nicht genannt)", "Der Ausstieg aus der Kohle (nicht genannt)", "Ein Verbot von Verbrennungsmotoren (nicht genannt)"]',
4,
'Hören Sie den ersten Satz zu den Kernpunkten des Gesetzes.',
'Der Sprecher sagt: "Kernpunkt ist die Verschärfung der CO₂-Grenzwerte für die Industrie."'),

('11111111-1111-1111-1111-111111111116',
'Die Arbeitslosenzahl ist im September um 2,4 Millionen gesunken.',
'["true", "false"]',
'false',
2, 'true_false',
'["2,4 Millionen sind die aktuelle Zahl", "Die Arbeitslosigkeit ist gesunken"]',
3,
'Hören Sie genau den Unterschied zwischen der Zahl und der Veränderung.',
'Der Sprecher sagt: "2,4 Millionen Menschen sind arbeitslos gemeldet, ein Rückgang um 0,2 Prozent." 2,4 Mio ist der absolute Wert, nicht der Rückgang.'),

('11111111-1111-1111-1111-111111111116',
'Die Berliner Staatsoper war für ___ Jahre wegen Renovierung geschlossen.',
'["fünf", "drei", "zwei", "vier"]',
'fünf',
3, 'fill_blank',
'["drei (falsche Dauer)", "zwei (falsche Dauer)", "vier (falsche Dauer)"]',
3,
'Hören Sie die Dauer der Renovierungsarbeiten.',
'Der Sprecher sagt: "Nach fünfjähriger Renovierung präsentiert sich das Haus mit einer modernisierten Bühne."'),

('11111111-1111-1111-1111-111111111116',
'Die Höchsttemperaturen liegen heute zwischen ___ und ___ Grad.',
'["14 / 18", "15 / 20", "12 / 16", "18 / 22"]',
'14 / 18',
4, 'matching',
'["15 / 20 (das sind die morgigen Temperaturen)", "12 / 16 (nicht genannt)", "18 / 22 (nicht genannt)"]',
2,
'Hören Sie die Wettervorhersage am Ende der Nachrichten.',
'Der Sprecher sagt: "Die Höchsttemperaturen liegen zwischen 14 und 18 Grad."');

-- Lesson 17: Kulturevent (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111117',
'Welche Musikrichtung schlägt das Vereinsmitglied für das Konzert vor?',
'["Jazz und Soul", "Rock und Pop", "Klassik", "Elektro"]',
'Jazz und Soul',
1, 'multiple_choice',
'["Rock und Pop (nicht genannt)", "Klassik (nicht genannt)", "Elektro (nicht genannt)"]',
2,
'Hören Sie die Antwort auf die Frage nach der Musikrichtung.',
'Das Mitglied sagt: "Jazz und Soul. Das kommt beim Publikum gut an."'),

('11111111-1111-1111-1111-111111111117',
'Der Bürgersaal kostet 200 Euro Miete.',
'["true", "false"]',
'false',
2, 'true_false',
'["Die Stadt stellt den Saal zur Verfügung", "Der Saal ist teuer"]',
2,
'Hören Sie die Information über die Raummiete.',
'Das Mitglied sagt: "Die Stadt stellt den Bürgersaal kostenlos zur Verfügung, wenn die Veranstaltung gemeinnützig ist."'),

('11111111-1111-1111-1111-111111111117',
'Das Motto der Veranstaltung ist "Kultur aus der ___".',
'["Nachbarschaft", "Region", "Stadt", "Heimat"]',
'Nachbarschaft',
3, 'fill_blank',
'["Region (nicht das genaue Wort)", "Stadt (nicht genannt)", "Heimat (nicht genannt)"]',
2,
'Hören Sie den Vorschlag für das Motto.',
'Die Organisatorin sagt: "Das Motto könnte ''Kultur aus der Nachbarschaft'' heißen."'),

('11111111-1111-1111-1111-111111111117',
'Die Veranstaltung findet am ___ Samstag im Oktober statt.',
'["ersten", "zweiten", "dritten", "letzten"]',
'ersten',
4, 'matching',
'["zweiten (nicht genannt)", "dritten (nicht genannt)", "letzten (nicht genannt)"]',
2,
'Hören Sie die Festlegung des Datums.',
'Die Organisatorin sagt: "Dann legen wir das Datum fest: Erster Samstag im Oktober."');

-- Lesson 18: WG Besprechung (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111118',
'Was ist Klaras Hauptproblem mit Max?',
'["Max spült das Geschirr nicht sofort", "Max ist zu laut", "Max putzt nicht das Bad", "Max zahlt keine Miete"]',
'Max spült das Geschirr nicht sofort',
1, 'multiple_choice',
'["Max ist zu laut (das ist Tims Thema)", "Max putzt nicht das Bad (wird nicht genannt)", "Max zahlt keine Miete (nicht genannt)"]',
1,
'Hören Sie die erste Beschwerde von Klara.',
'Klara sagt: "Seit letzter Woche stapelt sich das in der Spüle. Der Plan sagt, jeder spült sein Zeug sofort."'),

('11111111-1111-1111-1111-111111111118',
'Max findet den Vorschlag mit dem gemeinsamen Fonds unfair.',
'["true", "false"]',
'false',
2, 'true_false',
'["Max kritisiert den Vorschlag", "Max will lieber einzeln kaufen"]',
2,
'Hören Sie Max Reaktion auf den Fonds-Vorschlag.',
'Klara schlägt 20 Euro pro Monat vor, und Max sagt: "Das finde ich fair."'),

('11111111-1111-1111-1111-111111111118',
'Jeder WG-Bewohner soll ___ Euro im Monat in den gemeinsamen Fonds einzahlen.',
'["20", "15", "10", "25"]',
'20',
3, 'fill_blank',
'["15 (nicht genannt)", "10 (zu wenig)", "25 (zu viel)"]',
1,
'Hören Sie den konkreten Betrag.',
'Klara sagt: "Jeder zahlt 20 Euro im Monat."'),

('11111111-1111-1111-1111-111111111118',
'Bis 21 Uhr ist Musik in der WG erlaubt, danach nur mit ___ .',
'["Kopfhörern", "leiser", "geschlossener Tür", "Erlaubnis"]',
'Kopfhörern',
4, 'short_answer',
'["leiser (keine klare Regel)", "geschlossener Tür (nicht genannt)", "Erlaubnis (nicht genannt)"]',
1,
'Hören Sie die Einigung zur Musiklautstärke.',
'Klara sagt: "Tagsüber bis 21 Uhr ist Musik okay, danach nur mit Kopfhörern."');

-- Lesson 19: Restaurant Kritik (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111119',
'Wie lange musste der Gast auf seinen Tisch warten, obwohl er reserviert hatte?',
'["40 Minuten", "25 Minuten", "30 Minuten", "20 Minuten"]',
'40 Minuten',
1, 'multiple_choice',
'["25 Minuten (das war die Wartezeit auf das neue Steak)", "30 Minuten (nicht genannt)", "20 Minuten (nicht genannt)"]',
2,
'Hören Sie die genaue Wartezeit.',
'Der Gast sagt: "Wir hatten einen Tisch für 19 Uhr reserviert, aber wir mussten 40 Minuten warten."'),

('11111111-1111-1111-1111-111111111119',
'Der Gast hat das Rumpsteak medium bestellt, aber es kam durchgebraten.',
'["true", "false"]',
'true',
2, 'true_false',
'["Der Gast bestellte well-done", "Das Steak war medium, wie bestellt"]',
2,
'Hören Sie die genaue Bestellung und den Fehler.',
'Der Gast sagt: "Ich habe das Rumpsteak bestellt – medium. Es kam durchgebraten."'),

('11111111-1111-1111-1111-111111111119',
'Der Restaurantleiter bietet dem Gast als Entschuldigung einen ___ an.',
'["Gutschein", "Rabatt", "Freundschaftspreis", "kostenloses Getränk"]',
'Gutschein',
3, 'fill_blank',
'["Rabatt (nicht angeboten)", "Freundschaftspreis (nicht genannt)", "kostenloses Getränk (nicht genannt)"]',
2,
'Hören Sie die Wiedergutmachung des Restaurantleiters.',
'Der Restaurantleiter sagt: "Ich möchte Ihnen als Entschuldigung einen Gutschein für einen weiteren Besuch anbieten."'),

('11111111-1111-1111-1111-111111111119',
'Ordnen Sie die Reklamation: A) Der Gast bestellt das Rumpsteak medium. B) Das Steak kommt durchgebraten. C) Der Gast wartet 25 Minuten auf ein neues Steak. D) Die Bedienung sagt, sie bringt ein neues.',
'["A -> B -> D -> C", "B -> A -> D -> C", "A -> B -> C -> D", "A -> D -> B -> C"]',
'A -> B -> D -> C',
4, 'order_events',
'["B -> A -> D -> C (Bestellung nach dem Essen?)", "A -> B -> C -> D (Bedienung sagt etwas, bevor sie etwas sagt?)", "A -> D -> B -> C (Steak kam, nachdem neues versprochen wurde?)"]',
3,
'Denken Sie an die logische Reihenfolge: Bestellung, falsche Lieferung, Reaktion, Ersatz.',
'Der Gast bestellt (A), bekommt das falsch gegarte Steak (B), die Bedienung verspricht Ersatz (D), und dann wartet er 25 Minuten (C).');

-- Lesson 20: Museumsführung (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111120',
'Welches Flugzeug ist im Deutschen Museum ausgestellt?',
'["Die Messerschmitt Me 262", "Die Boeing 747", "Der Airbus A380", "Der Zeppelin"]',
'Die Messerschmitt Me 262',
1, 'multiple_choice',
'["Die Boeing 747 (deutsches Museum - kein amerikanisches Flugzeug)", "Der Airbus A380 (nicht genannt)", "Der Zeppelin (nicht genannt)"]',
2,
'Hören Sie den Namen des Flugzeugs.',
'Die Führerin sagt: "Das ist die Messerschmitt Me 262, das erste einsatzfähige Düsenflugzeug der Welt."'),

('11111111-1111-1111-1111-111111111120',
'Die Besucher dürfen das Flugzeug berühren.',
'["true", "false"]',
'false',
2, 'true_false',
'["Die Besucher dürfen näher ran", "Das Flugzeug steht hinter Glas"]',
1,
'Hören Sie die Anweisung der Führerin.',
'Die Führerin sagt: "Ja, aber bitte nicht berühren."'),

('11111111-1111-1111-1111-111111111120',
'Der erste deutsche Satellit hieß ___ und wurde 1969 gestartet.',
'["Azur", "Luna", "Sputnik", "Explorer"]',
'Azur',
3, 'fill_blank',
'["Luna (sowjetisch)", "Sputnik (sowjetisch)", "Explorer (amerikanisch)"]',
3,
'Hören Sie den Namen des Satelliten.',
'Die Führerin sagt: "Der Satellit hieß Azur. Er erforschte die Strahlungsgürtel der Erde."'),

('11111111-1111-1111-1111-111111111120',
'Die Führung macht um ___ Uhr weiter nach der Pause.',
'["14:00", "13:30", "14:30", "15:00"]',
'14:00',
4, 'matching',
'["13:30 (nicht genannt)", "14:30 (nicht genannt)", "15:00 (nicht genannt)"]',
2,
'Hören Sie die Ansage der Pausenregelung.',
'Die Führerin sagt: "Um 14 Uhr geht es weiter mit der Abteilung für erneuerbare Energien."');

-- Lesson 21: Sport Kommentar (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111121',
'Welches Spiel wird kommentiert?',
'["Bayern München gegen Borussia Dortmund", "Bayern München gegen RB Leipzig", "Borussia Dortmund gegen Schalke 04", "Bayern München gegen Bayer Leverkusen"]',
'Bayern München gegen Borussia Dortmund',
1, 'multiple_choice',
'["Bayern München gegen RB Leipzig (nicht genannt)", "Borussia Dortmund gegen Schalke 04 (falsches Heimteam)", "Bayern München gegen Bayer Leverkusen (nicht genannt)"]',
2,
'Hören Sie die Ansage zu Beginn.',
'Der Kommentator sagt: "Bayern München empfängt Borussia Dortmund."'),

('11111111-1111-1111-1111-111111111121',
'Das Spiel endet 2:1 für Bayern München.',
'["true", "false"]',
'false',
2, 'true_false',
'["Bayern gewinnt knapp", "Dortmund verliert knapp"]',
2,
'Hören Sie das Endergebnis.',
'Der Kommentator sagt: "Bayern gewinnt 1:0."'),

('11111111-1111-1111-1111-111111111121',
'Der Kommentator sagt, das Spiel sei ___ von beiden Teams gewesen.',
'["Spitzenklasse", "enttäuschend", "langweilig", "durchschnittlich"]',
'Spitzenklasse',
3, 'fill_blank',
'["enttäuschend (das Gegenteil)", "langweilig (nicht genannt)", "durchschnittlich (nicht genannt)"]',
2,
'Hören Sie die abschließende Bewertung.',
'Der Kommentator sagt zum Schluss: "Das war Spitzenklasse von beiden Teams."');

-- Lesson 22: Wetterbericht (3 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111122',
'Wie ist das Wetter heute im Norden?',
'["Stark bewölkt mit Regen", "Sonnig und warm", "Gewitter", "Nebel"]',
'Stark bewölkt mit Regen',
1, 'multiple_choice',
'["Sonnig und warm (das ist der Süden)", "Gewitter (kommt morgen)", "Nebel (nicht genannt)"]',
1,
'Hören Sie die regionale Aufteilung.',
'Die Sprecherin sagt: "Heute ist es im Norden stark bewölkt und es fällt Regen."'),

('11111111-1111-1111-1111-111111111122',
'Für morgen werden Temperaturen von 18 bis 20 Grad im Westen vorhergesagt.',
'["true", "false"]',
'true',
2, 'true_false',
'["Es wird wärmer als heute", "Morgen ist es überall sonnig"]',
2,
'Hören Sie die Vorhersage für morgen.',
'Die Sprecherin sagt: "Die Temperaturen gehen leicht zurück auf 18 bis 20 Grad." und erwähnt Schauer im Westen.'),

('11111111-1111-1111-1111-111111111122',
'Am Samstag ist die UV-Belastung ___.',
'["hoch", "niedrig", "mittel", "extrem"]',
'hoch',
3, 'fill_blank',
'["niedrig (Gegenteil der Ansage)", "mittel (nicht genannt)", "extrem (nicht genannt)"]',
2,
'Hören Sie die Warnung für Samstag.',
'Die Sprecherin sagt: "Die UV-Belastung ist am Samstag hoch. Denken Sie an Sonnenschutz."');

-- Lesson 23: Arzttelefonat (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111123',
'In welcher Region Deutschlands spielt dieses Gespräch?',
'["In Bayern", "In Berlin", "In Hamburg", "In Nordrhein-Westfalen"]',
'In Bayern',
1, 'multiple_choice',
'["In Berlin (Dialekt ist nicht berlinerisch)", "In Hamburg (Dialekt ist nicht norddeutsch)", "In Nordrhein-Westfalen (Dialekt ist bayerisch)"]',
3,
'Achten Sie auf den Dialekt der Sprecher.',
'Die Sprecher nutzen bayerische Ausdrücke wie "Servus", "i hob", "Pfiat di", "Auf Wiederlurschen". Das ist typisch bayerischer Dialekt.'),

('11111111-1111-1111-1111-111111111123',
'Der Patient hat 38 Grad Fieber.',
'["true", "false"]',
'false',
2, 'true_false',
'["Der Patient hat 39 Grad", "Der Patient hat kein Fieber"]',
2,
'Hören Sie die genaue Temperaturangabe.',
'Der Patient sagt: "Gestern oba 39 Grad."'),

('11111111-1111-1111-1111-111111111123',
'Der Patient braucht ein Attest für seinen Chef, weil er bei ___ arbeitet.',
'["Aldi", "Lidl", "Edeka", "Rewe"]',
'Aldi',
3, 'fill_blank',
'["Lidl (nicht genannt)", "Edeka (nicht genannt)", "Rewe (nicht genannt)"]',
2,
'Hören Sie, wo der Patient arbeitet.',
'Der Patient sagt: "I arbeit im Aldi und der Chef braucht a Attest."'),

('11111111-1111-1111-1111-111111111123',
'Die Sprechstundenhilfe sagt: "Bringen''s Ihre ___ mit."',
'["Versichertenkarte", "Überweisung", "Medikamentenliste", "Überweisungsschein"]',
'Versichertenkarte',
4, 'matching',
'["Überweisung (nicht genannt)", "Medikamentenliste (nicht genannt)", "Überweisungsschein (nicht genannt)"]',
2,
'Hören Sie, was der Patient zur Praxis mitbringen soll.',
'Die Sprechstundenhilfe sagt: "Bringen''s Ihre Versichertenkarte mit."');

-- Lesson 24: Bewerbungstelefon (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111124',
'Als was bewirbt sich Frau Weinhold?',
'["Als UX-Designerin", "Als Projektmanagerin", "Als Softwareentwicklerin", "Als Produktmanagerin"]',
'Als UX-Designerin',
1, 'multiple_choice',
'["Als Projektmanagerin (nicht genannt)", "Als Softwareentwicklerin (nicht genannt)", "Als Produktmanagerin (nicht genannt)"]',
2,
'Hören Sie die genaue Stellenbezeichnung.',
'Die Personalreferentin sagt: "Können Sie mir kurz erklären, warum Sie sich für die Stelle als UX-Designerin interessieren?"'),

('11111111-1111-1111-1111-111111111124',
'Frau Weinholds vorherige App wurde für den German Design Award nominiert.',
'["true", "false"]',
'true',
2, 'true_false',
'["Die App wurde ausgezeichnet", "Die App wurde nicht nominiert"]',
2,
'Hören Sie den Erfolg, den Frau Weinhold erwähnt.',
'Frau Weinhold sagt: "Ich habe eine App mitentwickelt, die für den German Design Award nominiert wurde."'),

('11111111-1111-1111-1111-111111111124',
'Frau Weinhold hat Erfahrung mit agilen Methoden wie ___ und kennt Tools wie ___ und ___.',
'["Scrum / Jira / Figma", "Kanban / Trello / Slack", "Waterfall / Asana / Miro", "XP / Notion / GitHub"]',
'Scrum / Jira / Figma',
3, 'fill_blank',
'["Kanban / Trello / Slack (nicht genannt)", "Waterfall / Asana / Miro (nicht genannt)", "XP / Notion / GitHub (nicht genannt)"]',
3,
'Hören Sie die Antwort auf die Frage nach agilen Methoden und Tools.',
'Frau Weinhold sagt: "Ich habe in Scrum-Teams gearbeitet und kenne die gängigen Tools wie Jira und Figma."'),

('11111111-1111-1111-1111-111111111124',
'Das persönliche Gespräch ist für nächsten ___ um 10 Uhr geplant.',
'["Dienstag", "Montag", "Mittwoch", "Donnerstag"]',
'Dienstag',
4, 'short_answer',
'["Montag (nicht genannt)", "Mittwoch (nicht genannt)", "Donnerstag (nicht genannt)"]',
1,
'Hören Sie den Terminvorschlag der Personalreferentin.',
'Die Personalreferentin sagt: "Passt es nächsten Dienstag um 10 Uhr?"');

-- Lesson 25: Familienfeier (4 exercises)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111125',
'Was kocht die Oma für die Familie?',
'["Rouladen mit Rotkohl und Kartoffelklößen", "Schnitzel mit Pommes", "Lasagne", "Fisch mit Reis"]',
'Rouladen mit Rotkohl und Kartoffelklößen',
1, 'multiple_choice',
'["Schnitzel mit Pommes (nicht genannt)", "Lasagne (nicht genannt)", "Fisch mit Reis (nicht genannt)"]',
1,
'Hören Sie, was die Tante als Lieblingsgericht bezeichnet.',
'Die Oma sagt: "Dein Lieblingsgericht: Rouladen mit Rotkohl und Kartoffelklößen."'),

('11111111-1111-1111-1111-111111111125',
'Lena hat in Mathe eine Eins bekommen.',
'["true", "false"]',
'true',
2, 'true_false',
'["Lena hat eine Drei bekommen", "Lena hat in Deutsch eine Eins bekommen"]',
1,
'Hören Sie Lenas Antwort auf die Frage nach der Schule.',
'Lena sagt: "Ich habe in Mathe eine Eins bekommen."'),

('11111111-1111-1111-1111-111111111125',
'Der Opa ist in der ___ Klasse sitzengeblieben.',
'["zehnten", "neunten", "elften", "achten"]',
'zehnten',
3, 'fill_blank',
'["neunten (falsche Klasse)", "elften (falsche Klasse)", "achten (falsche Klasse)"]',
2,
'Hören Sie die Antwort des Opas auf Lenas Frage.',
'Der Opa sagt: "Ja, in der zehnten Klasse."'),

('11111111-1111-1111-1111-111111111125',
'Der Großvater hebt sein Glas und sagt: "Auf die ___! Prost!"',
'["Familie", "Gesundheit", "Feier", "Gäste"]',
'Familie',
4, 'matching',
'["Gesundheit (üblich, aber nicht gesagt)", "Feier (nicht genannt)", "Gäste (nicht genannt)"]',
1,
'Hören Sie den letzten Toast.',
'Der Opa sagt: "Auf die Familie! Prost!"');

-- Additional exercises to meet target counts

-- Lesson 1 bonus: matching (question type)
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111101',
'Welches Getränk bestellt der Gast?',
'["Rotwein", "Weißwein", "Bier", "Wasser"]',
'Rotwein',
4, 'matching',
'["Weißwein (nicht genannt)", "Bier (nicht genannt)", "Wasser (kam später als Extra)"]',
1,
'Hören Sie die Getränkebestellung zu Beginn.',
'Der Gast sagt: "Ja, ich hätte gern ein Glas Rotwein, bitte."');

-- Lesson 5 bonus: short_answer
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111105',
'Welches Paper sollen die Studierenden für die nächste Sitzung lesen?',
'["Professor Müllers Paper zur Geldpolitik", "Professor Müllers Paper zur Inflation", "Professor Müllers Paper zur EU", "Ein Paper der EZB"]',
'Professor Müllers Paper zur Geldpolitik',
4, 'short_answer',
'["Professor Müllers Paper zur Inflation (falsches Thema)", "Professor Müllers Paper zur EU (nicht genannt)", "Ein Paper der EZB (nicht genannt)"]',
3,
'Hören Sie die Hausaufgabe am Ende der Vorlesung.',
'Der Dozent sagt: "Zur nächsten Sitzung lesen Sie bitte das Kapitel von Professor Müllers Paper zur Geldpolitik."');

-- Lesson 12 bonus: order_events
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111112',
'Ordnen Sie die Ereignisse: A) Der Fahrgast erfährt, dass er in Frankfurt umsteigen muss. B) Der ICE 782 wird von Gleis 5 abfahren. C) Der Fahrgast fragt nach der Ankunftszeit. D) Die Bahnmitarbeiterin sagt, sie holen die Verspätung raus.',
'["B -> A -> C -> D", "A -> B -> C -> D", "B -> C -> A -> D", "C -> A -> B -> D"]',
'B -> A -> C -> D',
4, 'order_events',
'["A -> B -> C -> D (Gleisänderung nach Umstiegsinfo?)", "B -> C -> A -> D (Fahrgast fragt, bevor er umsteigt?)", "C -> A -> B -> D (Ankunft zuerst?)"]',
2,
'Die Durchsagen und das Gespräch folgen einer zeitlichen Abfolge.',
'Zuerst die Gleisänderungsdurchsage (B), dann erfährt der Fahrgast vom Umstieg in Frankfurt (A), dann fragt er nach der Ankunft (C), dann die Antwort (D).');

-- Lesson 14 bonus: short_answer
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111114',
'Warum schmeckt der Käsekuchen laut Barista so gut?',
'["Weil er nach Spezialrezept der Bäckerin frisch zubereitet wird", "Weil er aus Italien importiert wird", "Weil er teure Zutaten enthält", "Weil er von einer bekannten Konditorei kommt"]',
'Weil er nach Spezialrezept der Bäckerin frisch zubereitet wird',
4, 'short_answer',
'["Weil er aus Italien importiert wird (nicht genannt)", "Weil er teure Zutaten enthält (nicht genannt)", "Weil er von einer bekannten Konditorei kommt (hausgemacht)"]',
2,
'Hören Sie die Erklärung des Barista zum Kuchen.',
'Der Barista sagt: "Der Käsekuchen ist ihr Spezialrezept" und "unsere Bäckerin macht ihn jeden Morgen frisch."');

-- Lesson 21 bonus: order_events
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111121',
'Ordnen Sie die Spielereignisse: A) Müller spielt auf Sané. B) Reus tritt zum Freistoß an. C) Kimmich erzielt das Tor. D) Dortmund stellt auf Dreierkette um.',
'["A -> B -> C -> D", "B -> A -> C -> D", "A -> C -> B -> D", "C -> A -> B -> D"]',
'A -> B -> C -> D',
4, 'order_events',
'["B -> A -> C -> D (Freistoß vor dem Tor?)", "A -> C -> B -> D (Tor vor Freistoß?)", "C -> A -> B -> D (Tor zu Beginn?)"]',
3,
'Der Kommentator beschreibt die Aktionen in chronologischer Reihenfolge.',
'Zuerst spielt Müller auf Sané (A), dann Reus'' Freistoß (B), dann Kimmichs Tor (C), in der zweiten Halbzeit die Umstellung von Dortmund (D).');

-- Lesson 22 bonus: order_events + short_answer
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111122',
'Ordnen Sie die Wetterentwicklung: A) Wochenende wird sonnig bei 22-25 Grad. B) Heute Norden regnerisch, Süden sonnig. C) Morgen Schauer und Gewitter möglich. D) Nächste Woche wechselhaft wie Aprilwetter.',
'["B -> C -> A -> D", "C -> B -> A -> D", "A -> B -> C -> D", "B -> A -> C -> D"]',
'B -> C -> A -> D',
4, 'order_events',
'["C -> B -> A -> D (Morgen vor heute?)", "A -> B -> C -> D (Wochenende zuerst?)", "B -> A -> C -> D (Morgen vor Wochenende?)"]',
2,
'Die Wettervorhersage folgt der zeitlichen Abfolge der Tage.',
'Heute (B), morgen (C), Wochenende (A), nächste Woche (D).'),

('11111111-1111-1111-1111-111111111122',
'Welches Wetterphänomen erwartet die Sprecherin am Samstag als Warnung?',
'["Hohe UV-Belastung", "Sturm", "Gewitter", "Glatteis"]',
'Hohe UV-Belastung',
5, 'short_answer',
'["Sturm (nicht genannt)", "Gewitter (für morgen vorhergesagt)", "Glatteis (nicht genannt)"]',
2,
'Hören Sie die Warnung in der Wochenendvorhersage.',
'Die Sprecherin sagt: "Die UV-Belastung ist am Samstag hoch. Denken Sie an Sonnenschutz."');

-- Lesson 8 bonus: order_events
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111108',
'Ordnen Sie die Ereignisse beim Einkauf: A) Die Kundin probiert das dunkelblaue Kleid an. B) Die Kundin sucht ein Kleid für eine Hochzeit. C) Die Kundin sagt, rot sei nicht ihr Fall. D) Die Kundin bezahlt 89 Euro.',
'["B -> C -> A -> D", "A -> B -> C -> D", "B -> A -> C -> D", "C -> B -> A -> D"]',
'B -> C -> A -> D',
5, 'order_events',
'["A -> B -> C -> D (Anprobieren vor Suchen?)", "B -> A -> C -> D (Blaues Kleid vor rotem?)", "C -> B -> A -> D (Rot vor Suchen?)"]',
2,
'Folgen Sie dem Gesprächsablauf vom Betreten bis zum Kauf.',
'Zunächst sucht die Kundin (B), dann lehnt sie rot ab (C), probiert dunkelblau an (A), und kauft (D).');

-- Lesson 11 bonus: order_events
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values
('11111111-1111-1111-1111-111111111111',
'Ordnen Sie die Verabredung: A) Felix schlägt die Pizzeria am Marktplatz vor. B) Felix fragt Lena, ob sie schon Pläne hat. C) Lena schlägt vor, vor dem Kino zu essen. D) Felix sagt, er hat zwei Kinokarten.',
'["B -> D -> C -> A", "B -> C -> D -> A", "D -> B -> C -> A", "B -> D -> A -> C"]',
'B -> D -> C -> A',
4, 'order_events',
'["B -> C -> D -> A (Essen vor Kinokarten?)", "D -> B -> C -> A (Kinokarten vor Frage?)", "B -> D -> A -> C (Pizzeria vor Vorschlag, essen zu gehen?)"]',
2,
'Überlegen Sie die natürliche Reihenfolge eines Gesprächs.',
'Felix fragt zuerst (B), sagt dann von den Karten (D), Lena schlägt Essen vor (C), Felix nennt die Pizzeria (A).');

-- Additional multiple_choice, order_events, and short_answer exercises
insert into public.listening_exercises (audio_lesson_id, question, options, correct_answer, order_index, question_type, distractors, difficulty_level, hint, explanation) values

('11111111-1111-1111-1111-111111111101',
'Warum bringt der Kellner dem Gast ein Brot?',
'["Weil der Gast Hunger hat", "Weil das Schnitzel nochmal zubereitet werden muss", "Weil der Gast Brot bestellt hat", "Weil die Küche geschlossen hat"]',
'Weil das Schnitzel nochmal zubereitet werden muss',
5, 'multiple_choice',
'["Weil der Gast Hunger hat (Brot ist eine Geste, nicht weil er Hunger hat)", "Weil der Gast Brot bestellt hat (er hat nicht, der Kellner bietet an)", "Weil die Küche geschlossen hat (nicht genannt)"]',
2,
'Überlegen Sie, warum der Kellner das Brot als "in der Zwischenzeit" anbietet.',
'Der Kellner sagt: "Darf ich Ihnen in der Zwischenzeit ein Brot bringen?" – die Zwischenzeit bezieht sich auf die Zubereitung des neuen Schnitzels.'),

('11111111-1111-1111-1111-111111111105',
'Was passiert, wenn die Zentralbank die Zinsen zu früh senkt?',
'["Es droht eine Zweitrundeneffekte-Spirale", "Die Inflation sinkt sofort", "Die Wirtschaft wächst schneller", "Die Arbeitslosigkeit steigt"]',
'Es droht eine Zweitrundeneffekte-Spirale',
5, 'multiple_choice',
'["Die Inflation sinkt sofort (das Gegenteil ist der Fall)", "Die Wirtschaft wächst schneller (kurzfristig, aber mit Risiko)", "Die Arbeitslosigkeit steigt (nicht direkt genannt)"]',
4,
'Hören Sie die Warnung des Dozenten zu voreiligen Zinssenkungen.',
'Der Dozent sagt: "Was wäre, wenn die Zentralbank die Zinsen zu früh senkt? Dann droht uns eine Zweitrundeneffekte-Spirale."'),

('11111111-1111-1111-1111-111111111107',
'Was hat der Bewerber studiert?',
'["Betriebswirtschaft", "Informatik", "Wirtschaftsinformatik", "Maschinenbau"]',
'Betriebswirtschaft',
5, 'multiple_choice',
'["Informatik (er arbeitet in der Digitalbranche, hat aber BWL studiert)", "Wirtschaftsinformatik (nicht genannt)", "Maschinenbau (nicht genannt)"]',
2,
'Hören Sie den ersten Teil der Vorstellung.',
'Der Bewerber sagt: "Ich habe Betriebswirtschaft studiert."'),

('11111111-1111-1111-1111-111111111109',
'Warum ist das Paket laut Sendungsverfolgung noch nicht angekommen?',
'["Es ist im Verteilerzentrum seit drei Tagen", "Es wurde noch nicht verschickt", "Die Adresse war falsch", "Der Zoll hat das Paket gestoppt"]',
'Es ist im Verteilerzentrum seit drei Tagen',
5, 'multiple_choice',
'["Es wurde noch nicht verschickt (laut Mitarbeiter wurde es am Montag verschickt)", "Die Adresse war falsch (nicht genannt)", "Der Zoll hat das Paket gestoppt (nicht genannt)"]',
2,
'Hören Sie den genauen Status des Pakets.',
'Der Mitarbeiter sagt: "Laut Sendungsverfolgung ist es aktuell im Verteilerzentrum. Seit drei Tagen."'),

('11111111-1111-1111-1111-111111111112',
'Was sagt die Bahnmitarbeiterin über die Pünktlichkeit des Zuges?',
'["Sie holen die Verspätung raus und sind fast im Plan", "Der Zug hat 30 Minuten Verspätung", "Der Zug fällt ganz aus", "Sie wissen es nicht"]',
'Sie holen die Verspätung raus und sind fast im Plan',
5, 'multiple_choice',
'["Der Zug hat 30 Minuten Verspätung (das war die Verspätung des ICE)", "Der Zug fällt ganz aus (nicht genannt)", "Sie wissen es nicht (die Mitarbeiterin gibt eine Antwort)"]',
2,
'Hören Sie die Antwort auf die Frage nach der Ankunftszeit.',
'Die Bahnmitarbeiterin sagt: "Wir holen die Verspätung raus. Ja, wir sind fast im Plan."'),

('11111111-1111-1111-1111-111111111116',
'Ordnen Sie die Nachrichtenthemen in der Reihenfolge: A) Arbeitslosenzahlen B) Klimaschutzgesetz C) Wetter D) Staatsoper-Eröffnung',
'["B -> A -> D -> C", "A -> B -> C -> D", "B -> D -> A -> C", "C -> A -> B -> D"]',
'B -> A -> D -> C',
5, 'order_events',
'["A -> B -> C -> D (Klima nach Arbeit?)", "B -> D -> A -> C (Staatsoper vor Arbeit?)", "C -> A -> B -> D (Wetter zuerst?)"]',
3,
'Der Sprecher kündigt die Themen in einer bestimmten Reihenfolge an.',
'Die Nachrichten beginnen mit dem Klimaschutzgesetz (B), dann kommen Arbeitslosenzahlen (A), dann die Staatsoper (D), und das Wetter (C) am Ende.'),

('11111111-1111-1111-1111-111111111119',
'Ordnen Sie die Ereignisse im Telefonat: A) Der Restaurantleiter bietet einen Gutschein an. B) Der Gast beschwert sich über die Wartezeit. C) Der Restaurantleiter entschuldigt sich. D) Der Gast erklärt das Problem mit dem Steak.',
'["B -> D -> C -> A", "D -> B -> C -> A", "B -> C -> D -> A", "A -> B -> C -> D"]',
'B -> D -> C -> A',
5, 'order_events',
'["D -> B -> C -> A (Steak vor Wartezeit?)", "B -> C -> D -> A (Entschuldigung vor Problem?)", "A -> B -> C -> D (Gutschein zuerst?)"]',
2,
'Das Gespräch beginnt mit den allgemeinen Problemen.',
'Der Gast beschwert sich zuerst über die Wartezeit (B), dann über das Steak (D), der Leiter entschuldigt sich (C) und bietet den Gutschein (A).'),

('11111111-1111-1111-1111-111111111120',
'Ordnen Sie die Museumsführung: A) Besucher fragen nach Audioguides. B) Führerin zeigt die Messerschmitt Me 262. C) Führung macht 30 Minuten Pause. D) Führerin zeigt den Satelliten Azur.',
'["B -> D -> C -> A", "D -> B -> C -> A", "B -> C -> D -> A", "A -> B -> D -> C"]',
'B -> D -> C -> A',
5, 'order_events',
'["D -> B -> C -> A (Satellit vor Flugzeug?)", "B -> C -> D -> A (Pause vor Astronomie?)", "A -> B -> D -> C (Audioguides zuerst?)"]',
2,
'Folgen Sie dem Weg durch die verschiedenen Abteilungen.',
'Die Führung beginnt mit dem Flugzeug (B), geht zur Astronomie (D), dann Pause (C), danach Fragen am Ende (A).'),

('11111111-1111-1111-1111-111111111123',
'Ordnen Sie das Telefonat: A) Patient nennt seine Symptome. B) Sprechstundenhilfe bietet Termin um 16 Uhr an. C) Patient fragt nach Krankschreibung. D) Patient sagt, er arbeitet beim Aldi.',
'["A -> B -> D -> C", "A -> B -> C -> D", "B -> A -> C -> D", "A -> C -> B -> D"]',
'A -> B -> D -> C',
5, 'order_events',
'["A -> B -> C -> D (Aldi vor Krankschreibung?)", "B -> A -> C -> D (Termin vor Symptomen?)", "A -> C -> B -> D (Krankschreibung vor Termin?)"]',
3,
'Das Gespräch folgt dem typischen Ablauf eines Arzttelefonats.',
'Der Patient schildert Symptome (A), bekommt einen Termin (B), nennt den Arbeitgeber (D) und fragt nach der Krankschreibung (C).'),

('11111111-1111-1111-1111-111111111108',
'Die Verkäuferin sagt, das dunkelblaue Kleid fällt größer aus. Warum empfiehlt sie es?',
'["Weil es elastisch und bequem ist", "Weil es günstiger ist", "Weil es die letzte Größe 38 ist", "Weil es neu eingetroffen ist"]',
'Weil es elastisch und bequem ist',
6, 'short_answer',
'["Weil es günstiger ist (Preis wird nicht verglichen)", "Weil es die letzte Größe 38 ist (das sagt sie über das blaue)", "Weil es neu eingetroffen ist (nicht genannt)"]',
2,
'Hören Sie die Beschreibung des dunkelblauen Kleides.',
'Die Verkäuferin sagt: "Ja, dieses dunkelblaue mit Spitze. Es ist elastisch und bequem."'),

('11111111-1111-1111-1111-111111111118',
'Warum sagt Klara zu Max: "Ich bin nicht deine Mutter"?',
'["Weil Max erwartet, dass Klara den Haushalt macht", "Weil Max sie Mutter genannt hat", "Weil Klara älter ist als Max", "Weil Klara Mutti genannt werden will"]',
'Weil Max erwartet, dass Klara den Haushalt macht',
5, 'short_answer',
'["Weil Max sie Mutter genannt hat (das sagt er nicht)", "Weil Klara älter ist als Max (nicht genannt)", "Weil Klara Mutti genannt werden will (Gegenteil)"]',
2,
'Hören Sie die genaue Situation vor Klaras Aussage.',
'Klara sagt: "Verstehe ich. Aber ich bin nicht deine Mutter. Können wir uns daran halten?" – sie meint, dass sie nicht für Max'' Aufgaben verantwortlich ist.');
