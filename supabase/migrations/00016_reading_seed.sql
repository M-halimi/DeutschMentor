-- DeutschMentor AI - Reading Section Seed Data (15 articles with questions and vocabulary)
-- Replaces the 5 basic seed articles with authentic, high-quality content
-- Covers A2, B1, B2, C1 across multiple categories with varied question types

-- ============================================================
-- A2 ARTICLES (2)
-- ============================================================

insert into public.articles (title, content, summary, level, category, word_count, author, source, reading_time_minutes, difficulty_rating, tags, grammar_focus) values
(
  'Ein Tag auf dem Münchner Oktoberfest',
  'Letzten September war ich zum ersten Mal auf dem Oktoberfest in München. Meine Freundin Anna und ich sind mit dem Zug gefahren. Die Fahrt hat drei Stunden gedauert, aber es hat sich gelohnt.\n\nAls wir ankamen, waren wir überrascht: Überall waren Menschen in Tracht. Die Frauen trugen Dirndl, die Männer Lederhosen. Viele standen auf den Tischen und haben getanzt. Die Musik war laut, aber fröhlich. Wir haben ein großes Zelt gefunden und uns an einen Tisch gesetzt.\n\nEine Kellnerin hat uns Maß Bier gebracht. „Maß" bedeutet ein ganzer Liter! Ich habe noch nie so viel Bier auf einmal getrunken. Dazu haben wir Brezen und Hendl gegessen – das ist bairisch für Hähnchen. Es hat fantastisch geschmeckt.\n\nAm Nachmittag haben wir die Fahrgeschäfte ausprobiert. Die Geisterbahn war gruselig, aber das Riesenrad war wunderschön. Von oben konnten wir die ganze Stadt sehen. Ich habe viele Fotos gemacht.\n\nUm 22 Uhr waren wir sehr müde, aber glücklich. Der Tag war einfach perfekt. Nächstes Jahr möchte ich wieder hinfahren.',
  'A first visit to Munich Oktoberfest with a friend – a simple story about German culture, food, and fun.',
  'A2', 'culture', 220, 'Laura Weber', 'Deutsch perfekt – Lesestufe A2', 2, 1,
  '{Oktoberfest,München,Tradition,Essen,Reise}',
  '{Perfekt (bin gefahren, haben getanzt),Präteritum von sein/haben (war, hatte),Modalverben im Präteritum (konnten)}'
),
(
  'Jonas lernt Fahrradfahren',
  'Jonas ist acht Jahre alt und geht in die zweite Klasse. Jeden Tag sieht er die großen Kinder auf dem Schulhof mit dem Fahrrad. Er möchte auch Fahrradfahren lernen.\n\nSein Papa hat ihm ein blaues Fahrrad geschenkt. Es ist gebraucht, aber es sieht fast neu aus. Jonas findet es toll.\n\nAm Samstag gehen Jonas und sein Papa in den Park. Der Park ist groß und es gibt keine Autos. „Setz den Helm auf!", sagt Papa. Jonas setzt den Helm auf und steigt auf das Fahrrad. Papa hält den Sattel fest. Jonas tritt in die Pedale. Es ist schwer!\n\nNach ein paar Minuten kann Jonas schon besser fahren. Papa lässt den Sattel los. Jonas fährt allein! Er strahlt über das ganze Gesicht. „Ich kann es! Ich kann Fahrradfahren!", ruft er.\n\nPlötzlich sieht Jonas einen Stein auf dem Weg. Er möchte ausweichen, aber er fällt hin. Es tut ein bisschen weh. Papa hilft ihm auf. „Das ist normal", sagt Papa lächelnd. „Hinfallen gehört dazu."\n\nJonas steht auf und versucht es noch einmal. Diesmal klappt es besser. Er fährt eine ganze Runde durch den Park, ohne zu fallen. Am Abend sagt er stolz zu seiner Mama: „Morgen fahre ich mit dem Fahrrad zur Schule!"',
  'A heartwarming story about an eight-year-old boy learning to ride a bike with his father.',
  'A2', 'story', 270, 'Claudia Meier', 'Lernmaterialien DaF A2', 2, 1,
  '{Fahrrad,Kinder,Familie,Erfahrung}',
  '{Imperativ (setz den Helm auf),Modalverben (möchte, kann),trennbare Verben (aufsteigen, hinfahren),Satzklammer}'
);

-- ============================================================
-- B1 ARTICLES (4)
-- ============================================================

insert into public.articles (title, content, summary, level, category, word_count, author, source, reading_time_minutes, difficulty_rating, tags, grammar_focus) values
(
  'Die Rückkehr des Wolfes nach Deutschland',
  'Jahrhundertelang war der Wolf in Deutschland ausgestorben. Die letzten Tiere wurden im 19. Jahrhundert gejagt und getötet. Doch seit der Jahrtausendwende kehren die Wölfe langsam zurück – und das sorgt für Diskussionen.\n\nIm Jahr 2000 wurde in Sachsen der erste Wolfsnachwuchs seit 150 Jahren geboren. Seitdem hat sich die Population erholt. Laut dem Bundesamt für Naturschutz leben heute etwa 1600 Wölfe in Deutschland. Die meisten findet man in Brandenburg, Sachsen und Niedersachsen.\n\nNaturschützer freuen sich über diese Entwicklung. Der Wolf gehört zur natürlichen Artenvielfalt Deutschlands, sagen sie. Er halte das ökologische Gleichgewicht, indem er kranke und schwache Tiere reißt. Außerdem meiden Wölfe in der Regel den Menschen – Angriffe auf Menschen sind äußerst selten.\n\nDoch nicht alle sind begeistert. Besonders Schäfer und Landwirte sind besorgt. Wölfe reißen immer wieder Schafe und Ziegen, die nicht ausreichend geschützt sind. Für viele Bauern bedeutet das finanzielle Verluste. Zwar gibt es staatliche Zuschüsse für Schutzzäune und Herdenschutzhunde, aber nicht jeder Landwirt kann sich das leisten.\n\nAuch in der Politik wird gestritten. Die einen fordern einen strengeren Schutz des Wolfes, die anderen wollen die Population regulieren, also die Zahl der Wölfe durch Abschüsse verringern. Eine einfache Lösung gibt es nicht.\n\nFest steht: Deutschland muss einen Weg finden, wie Mensch und Wolf miteinander leben können. Das ist eine Herausforderung für die ganze Gesellschaft.',
  'The return of wolves to Germany after 150 years – a balanced look at the debate between conservationists and farmers.',
  'B1', 'environment', 320, 'Dr. Michael Hartmann', 'Deutschlandfunk – Umwelt', 3, 2,
  '{Wolf,Tiere,Umwelt,Naturschutz,Landwirtschaft,Konflikt}',
  ARRAY['Passiv (wurden gejagt, wurde geboren)','temporale Angaben (seit, nachdem, während)','Modalverben im Konjunktiv II (könnte, müsste)']
),
(
  'Street Food in Berlin: Von Currywurst bis Döner',
  'Berlin ist bekannt für seine vielfältige Food-Szene. Aber während andere Städte mit Sternerestaurants und teuren Lokalen punkten, ist Berlin stolz auf seine Street-Food-Kultur. Nirgendwo sonst in Deutschland gibt es so viele Imbissbuden wie in der Hauptstadt.\n\nDer absolute Klassiker ist die Currywurst. Erfunden wurde sie angeblich 1949 von Herta Heuwer in Berlin-Charlottenburg. Sie mischte Ketchup mit Currypulver und anderen Gewürzen – die Currywurstsoße war geboren. Heute essen die Berliner jedes Jahr rund 70 Millionen Currywürste. Die bekannteste Bude ist „Konnopke''s Imbiss" unter der U-Bahn-Station Eberswalder Straße.\n\nGenauso beliebt ist der Döner Kebab. Der Döner, wie man in Deutschland sagt, wurde in den 1970er Jahren von türkischen Einwanderern in Berlin populär gemacht. Der Legende nach war Kadir Nurman der Erste, der das Fleisch im Fladenbrot mit Salat und Soße servierte. Heute gibt es in Berlin über 1000 Dönerläden.\n\nIn den letzten Jahren sind neue Trends dazugekommen. Foodtrucks bieten Burger, asiatische Nudeln oder vegane Speisen an. Auf Street-Food-Märkten wie dem „Markthaus Neun" in Kreuzberg kann man Gerichte aus aller Welt probieren. Besonders beliebt sind internationale Spezialitäten: vietnamesische Pho-Suppe, syrische Falafel oder mexikanische Tacos.\n\nWas alle Berliner Imbisse gemeinsam haben: Sie sind günstig, schnell und die Portionen sind groß. Für viele Berliner ist der Imbiss um die Ecke wie ein zweites Wohnzimmer – ein Ort, an dem man sich trifft, redet und natürlich isst.',
  'Berlin street food culture from traditional Currywurst to international food trucks.',
  'B1', 'culture', 310, 'Sofia Berger', 'Berliner Zeitung – Kultur', 3, 2,
  '{Berlin,Essen,Kultur,International,Trends,Streetfood}',
  ARRAY['Passiv mit Modalverben (wurde erfunden, wurde populär gemacht)','Relativsätze (der Ort, an dem; die bekannteste Bude)','Partizip II als Adjektiv']
),
(
  'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung',
  'Die Deutsche Bahn – kaum ein Thema sorgt in Deutschland für so viele Emotionen. Für die einen ist die Bahn ein zuverlässiges Verkehrsmittel, für die andere ein einziger Ärgernis. Die Wahrheit liegt irgendwo dazwischen.\n\nTatsache ist: Die Deutsche Bahn befördert täglich etwa 20 Millionen Fahrgäste. Das ist eine enorme Leistung. Rund 60 Prozent der Fernverkehrszüge kommen pünktlich an, also mit weniger als sechs Minuten Verspätung. Das klingt gut, bedeutet aber auch, dass vier von zehn Zügen Verspätung haben. Im internationalen Vergleich liegt Deutschland damit im Mittelfeld. In der Schweiz kommen über 90 Prozent der Züge pünktlich an, in Italien dagegen sind es weniger als 50 Prozent.\n\nWarum gibt es so viele Verspätungen? Die Gründe sind vielfältig. Baustellen sind ein großes Problem: Viele Strecken sind veraltet und müssen saniert werden. Auch das Wetter spielt eine Rolle: Stürme, Überschwemmungen oder extreme Hitze können den Zugverkehr lahmlegen. Und dann gibt es noch die sogenannten „betrieblichen Gründe" – wenn ein Zug auf einen anderen warten muss oder wenn eine Tür nicht schließt.\n\nDie Deutsche Bahn investiert Milliarden in die Modernisierung des Netzes. Neue Hochgeschwindigkeitsstrecken werden gebaut, alte Brücken erneuert. Bis 2030 soll das gesamte Netz fit für die Zukunft sein. Ob das gelingt, bleibt abzuwarten.\n\nFür Reisende heißt das: Wer mit der Bahn fährt, sollte etwas Zeit einplanen. Ein guter Tipp: Direktverbindungen sind meist zuverlässiger als Züge mit Umsteigen. Und wer eine Fahrkarte für einen bestimmten Zug hat, darf bei Verspätung auch einen früheren oder späteren Zug nehmen.',
  'An honest look at train travel in Germany covering punctuality, delays, and modernization.',
  'B1', 'travel', 340, 'Oliver Stein', 'Süddeutsche Zeitung – Reise', 3, 2,
  '{Bahn,Reisen,Deutschland,Infrastruktur,Alltag}',
  '{obwohl + Nebensatz,indirekte Fragesätze (ob das gelingt),Nominalisierungen (die Verspätung, die Modernisierung),Relativsätze mit Präpositionen}'
),
(
  'Ein Tag im Leben einer Pflegekraft',
  'Um 5:30 Uhr klingelt der Wecker. Maria, 34 Jahre alt, arbeitet als Krankenschwester im Städtischen Klinikum in Köln. Sie hat Frühdienst, das bedeutet: Dienstbeginn um 7 Uhr. Eine halbe Stunde braucht sie mit dem Fahrrad zur Arbeit.\n\nPünktlich um sieben beginnt die Übergabe. Die Nachtschwester berichtet, was in der Nacht passiert ist. Herr Müller in Zimmer 312 hatte Fieber, Frau Schmidt hat schlecht geschlafen. Maria hört genau zu und macht sich Notizen. Danach geht sie auf ihre Station. Sie ist für acht Patienten zuständig.\n\nDer Morgen ist hektisch. Maria verteilt Medikamente, misst Blutdruck und wechselt Verbände. Um 9 Uhr kommt Frühstück. Sie hilft einer älteren Dame beim Essen. „Danke, Schwester Maria", sagt die Dame. Das freut Maria sehr. Sie mag ihren Beruf, weil sie Menschen helfen kann.\n\nUm 11 Uhr hat sie Zeit für die Dokumentation. Das ist wichtig, aber auch viel Papierarbeit. „Manchmal fühle ich mich mehr als Bürokraft denn als Pflegekraft", seufzt sie. Seit der Einführung neuer Dokumentationspflichten bleibt weniger Zeit für die Patienten.\n\nMittagspause hat Maria um 13 Uhr. 30 Minuten. Sie isst in der Kantine und trinkt einen Kaffee. Dann geht es weiter bis 14:30 Uhr. Die zweite Hälfte des Dienstes ist oft ruhiger. Am Nachmittag kann sie sich mehr Zeit für Gespräche mit den Patienten nehmen.\n\nÜberstunden sind normal. „Ich bleibe meistens 30 bis 45 Minuten länger", erzählt Maria. „Das macht der Job nun mal so." Nach der Arbeit fährt sie nach Hause, duscht und kocht etwas. Um 21 Uhr ist sie müde und geht ins Bett. Morgen um 5:30 geht es wieder los.\n\nMaria liebt ihren Beruf, aber sie wünscht sich mehr Personal und bessere Bezahlung. „Wir tun unser Bestes", sagt sie, „aber manchmal ist es einfach zu viel."',
  'A day in the life of a nurse in Cologne – a realistic portrait of the care sector in Germany.',
  'B1', 'society', 390, 'Eva Lorenz', 'Die Zeit – Gesellschaft', 4, 2,
  '{Pflege,Arbeit,Alltag,Gesundheit,Köln}',
  ARRAY['Nebensätze (weil, dass, wenn)','indirekte Rede (berichtet, was passiert ist)','temporale Angaben','Infinitivsätze mit zu']
);

-- ============================================================
-- B2 ARTICLES (5)
-- ============================================================

insert into public.articles (title, content, summary, level, category, word_count, author, source, reading_time_minutes, difficulty_rating, tags, grammar_focus) values
(
  'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?',
  'In den Büros und Fabrikhallen Deutschlands zeichnet sich eine stille Revolution ab. Künstliche Intelligenz hält Einzug in nahezu alle Branchen – mit weitreichenden Folgen für Arbeitnehmer und Arbeitgeber. Die einen prophezeien das Ende der Arbeit, wie wir sie kennen. Die anderen sehen in der KI die größte Chance seit der Erfindung des Internets.\n\nDie Automatisierung durch KI ist längst keine Zukunftsmusik mehr. In der Automobilindustrie analysieren Algorithmen Qualitätsmängel schneller als jeder Mensch. In der Medizin erkennen KI-Systeme auf Röntgenbildern Tumore, die selbst erfahrenen Ärzten entgehen. Im Kundenservice beantworten Chatbots tausende Anfragen pro Minute – rund um die Uhr, ohne Pause und ohne schlechte Laune.\n\nDoch die Kehrseite der Medaille ist die Angst vor Arbeitsplatzverlust. Eine Studie des Instituts für Arbeitsmarkt- und Berufsforschung kommt zu dem Ergebnis, dass bis 2040 etwa 15 Prozent der aktuellen Arbeitsplätze durch KI ersetzt werden könnten. Besonders betroffen sind einfache Tätigkeiten in der Buchhaltung, der Dateneingabe und der Produktion. Gleichzeitig entstehen neue Berufsfelder: KI-Trainer, Ethikbeauftragte für Algorithmen oder Datenqualitätsmanager.\n\nDie Gewerkschaften fordern deshalb ein Recht auf Weiterbildung. Wenn sich die Arbeitswelt so rasant verändert, müssten Arbeitnehmer die Möglichkeit haben, sich kontinuierlich weiterzubilden, argumentieren sie. Arbeitgeber wiederum betonen die Produktivitätsgewinne: KI übernimmt Routineaufgaben, sodass sich die Mitarbeiter auf kreative und strategische Tätigkeiten konzentrieren können.\n\nEin besonderes Problem ist die Frage der Verantwortung. Wer haftet, wenn ein KI-System einen Fehler macht? Wenn ein autonom fahrendes Auto einen Unfall verursacht oder eine KI eine falsche medizinische Diagnose stellt? Hier bewegt sich das deutsche Rechtssystem auf juristischem Neuland. Die EU arbeitet derzeit an einer KI-Verordnung, die klare Regeln schaffen soll.\n\nSo unterschiedlich die Meinungen auch sind: Eines ist sicher – die KI wird kommen. Die entscheidende Frage ist nicht, ob wir sie wollen, sondern wie wir sie gestalten. Deutschland hat die Chance, diesen Wandel aktiv zu gestalten, statt ihn nur zu erleiden. Die Weichen dafür werden jetzt gestellt.',
  'A balanced analysis of AI in the workplace covering automation risks, new job creation, legal responsibility, and the need for continuous education.',
  'B2', 'technology', 500, 'Dr. Sabine Werner', 'Handelsblatt – Digital', 5, 3,
  '{KI,Arbeiten,Zukunft,Automatisierung,Digitalisierung,Beruf}',
  '{indirekte Rede im Konjunktiv I,Passiv (wird gestellt, ersetzt werden),Genitivattribute (die Frage der Verantwortung, das Institut für ...),erweiterte Partizipialattribute}'
),
(
  'Die Energiewende und ihre versteckten Kosten',
  'Deutschlands Energiewende gilt international als Vorzeigeprojekt. Der Ausstieg aus der Atomkraft, der massive Ausbau erneuerbarer Energien und die ehrgeizigen Klimaziele bis 2045 – all das findet weltweit Beachtung. Bei genauerer Betrachtung zeigt sich jedoch ein komplexeres Bild als die optimistische Darstellung der Bundesregierung vermuten lässt.\n\nEinerseits sind die Fortschritte beeindruckend: Der Anteil erneuerbarer Energien am Strommix liegt inzwischen bei über 50 Prozent. Windkraftanlagen an Nord- und Ostsee, Solarparks in Bayern und Biogasanlagen in Niedersachsen produzieren jährlich mehr Strom als alle deutschen Atomkraftwerke je produziert haben. Deutschland ist weltweit führend bei der Photovoltaik-Forschung und bei der Integration fluktuierender erneuerbarer Energien ins Stromnetz.\n\nAndererseits steigen die Kosten unaufhaltsam. Die EEG-Umlage, mit der Verbraucher den Ökostrom-Ausbau finanzieren, hat die Strompreise in Deutschland auf ein Rekordhoch getrieben. Deutsche Haushalte zahlen pro Kilowattstunde fast doppelt so viel wie der europäische Durchschnitt. Für energieintensive Unternehmen bedeuten die hohen Strompreise eine massive Belastung im internationalen Wettbewerb.\n\nHinzu kommt ein infrastrukturelles Problem: Der Ausbau der Stromnetze hält mit dem Zubau erneuerbarer Energien nicht Schritt. Im Norden wird viel Windstrom produziert, im Süden wird er gebraucht – aber die Trassen fehlen. Im Jahr 2025 mussten die Netzbetreiber Rekordmengen an Strom abregeln, weil die Leitungen überlastet waren. Das ist nicht nur ineffizient, sondern teuer: Die Entschädigungen für die Betreiber der stillgelegten Anlagen belaufen sich auf Milliardenbeträge.\n\nKritiker der Energiewende argumentieren, dass die sozialen Kosten ungleich verteilt seien. Während Hausbesitzer mit Solaranlagen auf dem Dach von den Einspeisevergütungen profitieren, zahlen Mieter und Geringverdiener die steigenden Netzkosten mit. „Die Energiewende darf nicht zur sozialen Spaltung führen", warnte kürzlich der Präsident des Deutschen Mieterbundes.\n\nTrotz aller Kritik: An der grundsätzlichen Richtung der Energiewende zweifeln nur wenige. Die Debatte dreht sich vielmehr um das Tempo und die Finanzierung. Die Herausforderung besteht darin, die ökologischen Notwendigkeiten mit sozialer Gerechtigkeit und wirtschaftlicher Wettbewerbsfähigkeit zu vereinbaren. Ein Balanceakt, der noch lange nicht abgeschlossen ist.',
  'Critical analysis of Germany''s energy transition examining hidden costs, grid infrastructure problems, and social inequality.',
  'B2', 'environment', 580, 'Prof. Dr. Hans-Jürgen Becker', 'Frankfurter Allgemeine Zeitung', 6, 4,
  '{Energiewende,Strom,Klima,Kosten,Politik,Soziales}',
  '{indirekte Rede mit Konjunktiv I,Partizipialkonstruktionen (fluktuierender, stillgelegten),temporale Adverbien (inzwischen, mittlerweile),komplexe Satzgefüge}'
),
(
  'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet',
  'Kaum ein Industriestaat hängt so stark von der sozialen Herkunft seiner Schüler ab wie Deutschland. Zu diesem Ergebnis kommen internationale Schulleistungsstudien wie PISA und IGLU seit nunmehr zwei Jahrzehnten. Und trotz aller Reformbemühungen hat sich an dieser grundlegenden Problematik bis heute wenig geändert.\n\nDie Zahlen sind ernüchternd: Kinder aus Akademikerfamilien haben dreimal häufiger die Chance, ein Gymnasium zu besuchen, als Kinder aus nicht-akademischen Haushalten – selbst bei gleichen kognitiven Fähigkeiten und Noten. Bildungsforscher bezeichnen dieses Phänomen als „Primäreffekt" der sozialen Herkunft. Gemeint ist damit, dass bereits die Entscheidung für eine weiterführende Schulform stark von der Bildungsnähe der Eltern abhängt.\n\nHinzu kommt der „Sekundäreffekt": Auch wenn Kinder aus bildungsfernen Familien den Sprung auf das Gymnasium schaffen, brechen sie häufiger ab oder wechseln früher auf eine niedrigere Schulform als ihre Mitschüler aus Akademikerfamilien. Die Ursachen sind vielfältig: finanzielle Engpässe, fehlende Nachhilfemöglichkeiten, geringere elterliche Unterstützung bei Hausaufgaben und nicht zuletzt ein Gefühl der Fremdheit im akademischen Umfeld.\n\nDas deutsche Schulsystem mit seiner frühen Aufteilung nach der vierten Klasse auf Gymnasium, Realschule oder Hauptschule verstärkt diese Ungleichheit noch. In keinem anderen OECD-Land werden die Kinder so früh auf verschiedene Bildungswege verteilt. Während Finnland oder Kanada bis zur neunten Klasse weitgehend gemeinsamen Unterricht anbieten, steht in Deutschland mit neun oder zehn Jahren bereits die Weichenstellung für den späteren Bildungsweg an.\n\nDie Corona-Pandemie hat die bestehenden Ungleichheiten zusätzlich verschärft. Kinder aus bildungsfernen Familien hatten seltener Zugang zu digitalen Endgeräten, weniger Unterstützung beim Homeschooling und litten stärker unter den Schulschließungen. Die Lernrückstände, die in dieser Zeit entstanden sind, konnten bis heute nicht vollständig aufgeholt werden.\n\nBildungspolitiker diskutieren seit Jahren über Gegenmaßnahmen. Gefordert werden: mehr Ganztagsschulen, eine bessere Ausstattung von Schulen in sozialen Brennpunkten, kostenlose Nachhilfeangebote und ein späterer Übergang auf die weiterführenden Schulen. Was fehlt, ist der politische Wille und vor allem die finanzielle Ausstattung. Der sogenannte „Digitalpakt Schule" ist ein Beispiel für gut gemeinte, aber schlecht umgesetzte Reformen: Zwar stellte der Bund fünf Milliarden Euro für die digitale Ausstattung bereit, doch die Antragsverfahren waren so bürokratisch, dass viele Schulen bis heute auf ihr Geld warten.\n\nSolange die Bildungschancen eines Kindes in Deutschland maßgeblich davon abhängen, ob die Eltern studiert haben oder nicht, kann von Chancengleichheit keine Rede sein. Hier liegt eine der größten gesellschaftlichen Aufgaben der kommenden Jahre.',
  'An in-depth examination of educational inequality in Germany showing how social background determines academic success.',
  'B2', 'education', 700, 'Prof. Dr. Anna Kleinschmidt', 'Die ZEIT – Bildung', 7, 4,
  '{Bildung,Schule,Ungleichheit,Soziales,Chancengleichheit,Politik}',
  '{indirekte Rede, erweiterte Nominalphrasen,Konjunktiv II für irreale Sachverhalte,Konnektoren (während, hingegen, vielmehr),Genitiv}'
),
(
  'Der deutsche Mittelstand im globalen Wettbewerb',
  'Der deutsche Mittelstand – oft liebevoll als „das Rückgrat der Wirtschaft" bezeichnet – steht vor tiefgreifenden Veränderungen. Rund 3,8 Millionen kleine und mittlere Unternehmen (KMU) bilden das Fundament der deutschen Wirtschaft. Sie beschäftigen etwa 60 Prozent aller Arbeitnehmer und gelten als Motor für Innovation und Ausbildung. Doch der Druck von allen Seiten wächst.\n\nBesonders der Mittelstand leidet unter dem Fachkräftemangel. Laut einer Umfrage des Deutschen Industrie- und Handelskammertages können zwei von drei Unternehmen offene Stellen nicht besetzen. Besonders betroffen sind technische Berufe, die IT-Branche und das Handwerk. Abwanderung in die Großstädte, der demografische Wandel und die gleichzeitig steigenden Anforderungen an digitale Kompetenzen verschärfen die Lage.\n\nHinzu kommt der Transformationsdruck durch die Digitalisierung. Viele inhabergeführte Familienunternehmen, die seit Generationen erfolgreich wirtschaften, müssen sich plötzlich mit Themen wie Cloud-Computing, KI-Integration und digitalen Geschäftsmodellen auseinandersetzen. Eine Studie von McKinsey zeigt: KMU, die frühzeitig auf Digitalisierung gesetzt haben, konnten ihre Produktivität um bis zu 25 Prozent steigern. Diejenigen, die den Wandel verschlafen haben, verlieren zunehmend Marktanteile.\n\nDie Bürokratiebelastung ist ein weiteres Dauerproblem. Deutsche Unternehmer verbringen durchschnittlich acht Stunden pro Woche mit Bürokratie: Steuererklärungen, Nachweise, Statistiken, Berichtspflichten. Für einen Handwerksbetrieb mit fünf Mitarbeitern bedeutet das einen erheblichen Wettbewerbsnachteil gegenüber größeren Unternehmen, die eigene Verwaltungsabteilungen unterhalten.\n\nDoch der Mittelstand hat auch Stärken, die seine Widerstandsfähigkeit erklären. Die hohe Spezialisierung vieler „Hidden Champions" – das sind Weltmarktführer, die kaum jemand kennt – sichert ihnen eine einzigartige Marktposition. Das sind Unternehmen aus dem schwäbischen Maschinenbau oder der oberfränkischen Medizintechnik, die trotz ihrer geringen Größe Weltmarktführer in ihrer Nische sind. Ihre Produkte sind so spezialisiert, dass sie kaum substituierbar sind.\n\nDie größte Herausforderung steht jedoch unmittelbar bevor: die Nachfolge. In den nächsten zehn Jahren werden etwa 30 Prozent der inhabergeführten Unternehmen einen Nachfolger suchen. Bei vielen ist unklar, ob die nächste Generation den Betrieb übernehmen will oder kann. Gelingt die Übergabe nicht, droht nicht nur der Verlust von Arbeitsplätzen, sondern auch von jahrzehntelang aufgebautem Know-how.',
  'Comprehensive analysis of German SMEs facing skilled labor shortage, digital transformation, bureaucracy, and succession problems.',
  'B2', 'business', 620, 'Dr. Friedrich Neumann', 'WirtschaftsWoche', 6, 3,
  '{Wirtschaft,Mittelstand,Unternehmen,Digitalisierung,Fachkräfte}',
  ARRAY['Genitivobjekte','indirekte Rede (Konjunktiv I)','Konnektoren (zwar ... aber, jedoch, dennoch)','Nominalisierungen']
),
(
  'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen',
  'Lange Zeit war psychische Erkrankung ein Tabuthema. Depressionen, Angststörungen oder Burnout wurden hinter vorgehaltener Hand besprochen oder gleich ganz verschwiegen. Das ändert sich langsam. Immer mehr Prominente sprechen öffentlich über ihre psychischen Probleme, Unternehmen bieten Mental-Health-Programme an, und die Krankenkassen verzeichnen eine steigende Zahl von Behandlungen.\n\nDer Bedarf ist enorm. Laut der Weltgesundheitsorganisation ist Depression die häufigste Ursache für Arbeitsunfähigkeit weltweit. In Deutschland leidet etwa jeder vierte Erwachsene einmal im Leben an einer psychischen Erkrankung. Besonders betroffen sind junge Menschen: Die Zahl der Fehltage aufgrund psychischer Diagnosen bei unter 30-Jährigen hat sich in den letzten zehn Jahren verdoppelt.\n\nDie Ursachen sind vielschichtig. Der Leistungsdruck in Schule und Studium, die Unsicherheit auf dem Arbeitsmarkt, der Einfluss sozialer Medien und nicht zuletzt die Folgen der Pandemie – all das belastet die mentale Gesundheit einer ganzen Generation. Hinzu kommen strukturelle Probleme: Die Wartezeiten auf einen Therapieplatz betragen in vielen Regionen Deutschlands sechs bis zwölf Monate. Die gesetzlichen Krankenkassen finanzieren zwar die Behandlung, doch es fehlt an ausgebildeten Psychotherapeuten.\n\nBesonders problematisch ist die Situation an den Universitäten. Die Zahl der Studierenden mit psychischen Problemen steigt, die Beratungsangebote sind überlastet. Einige Hochschulen haben deshalb damit begonnen, niedrigschwellige Angebote wie Peer-Beratung oder Online-Selbsthilfeprogramme zu entwickeln. Doch das reicht nicht.\n\nArbeitgeber beginnen langsam, Verantwortung zu übernehmen. Große Konzerne wie SAP oder die Deutsche Telekom haben Betriebsärzte, psychologische Beratungsdienste und Programme zur Stressprävention eingeführt. Im Mittelstand sieht die Lage anders aus: Hier fehlen oft die Ressourcen für solche Angebote. Dabei sind die volkswirtschaftlichen Kosten enorm – allein durch Produktivitätsausfälle entstehen jährlich Schäden in Milliardenhöhe.\n\nDie eigentliche Hürde bleibt die Stigmatisierung. Viele Betroffene fürchten, als schwach oder unzuverlässig zu gelten, wenn sie über ihre psychischen Probleme sprechen. Dabei ist psychische Gesundheit genauso wichtig wie körperliche Gesundheit – und genauso behandlungsbedürftig, wenn sie gestört ist.\n\nEin gesellschaftliches Umdenken hat begonnen, aber der Weg ist noch lang. Wir brauchen mehr Aufklärung, kürzere Wartezeiten auf Therapieplätze und eine Arbeitskultur, die nicht nur Leistung, sondern auch Gesundheit belohnt. Denn eines ist klar: Psychische Gesundheit ist kein Luxus – sie ist eine Grundvoraussetzung für ein erfülltes Leben.',
  'A thorough exploration of mental health in Germany covering stigma, access to therapy, workplace programs, and generational stress.',
  'B2', 'health', 650, 'Dr. Julia Rosenfeld', 'Der Spiegel – Gesundheit', 6, 3,
  '{Gesundheit,Psyche,Therapie,Gesellschaft,Arbeit,Jugend}',
  ARRAY['Konjunktiv II (wäre, hätte, müsste)','indirekte Rede','Passiv (wurden besprochen, wird behandelt)','Infinitivsätze (um ... zu)']
);

-- ============================================================
-- C1 ARTICLES (4)
-- ============================================================

insert into public.articles (title, content, summary, level, category, word_count, author, source, reading_time_minutes, difficulty_rating, tags, grammar_focus) values
(
  'Die deutsche Erinnerungskultur: Ein Modell für die Welt?',
  'Deutschland hat einen besonderen Umgang mit seiner Vergangenheit entwickelt. Die Auseinandersetzung mit dem Nationalsozialismus und der Shoah, aber auch mit der SED-Diktatur der DDR hat eine Kultur hervorgebracht, die international als vorbildhaft – wenn auch nicht ohne Widersprüche – gilt. Der Begriff „Erinnerungskultur" ist inzwischen ein Exportartikel geworden.\n\nDie Wurzeln dieser Entwicklung liegen in der unmittelbaren Nachkriegszeit. Zwar war die erste Dekade nach 1945 von kollektivem Beschweigen geprägt – die meisten Deutschen waren zunächst damit beschäftigt, den eigenen Opferstatus zu pflegen. Doch spätestens mit der 68er-Bewegung setzte ein Generationenkonflikt ein, der die kritische Aufarbeitung der NS-Vergangenheit erzwang. Die Studenten warfen ihren Eltern vor, die Verbrechen des Nationalsozialismus verdrängt zu haben. Diese gesellschaftliche Selbstbefragung war schmerzhaft, aber notwendig.\n\nInstitutionell manifestiert sich die deutsche Erinnerungskultur in einem dichten Netz aus Gedenkstätten, Museen und Forschungseinrichtungen. Das Holocaust-Mahnmal in Berlin, die Gedenkstätte Buchenwald, die Topographie des Terrors – sie alle dienen der Dokumentation und der Mahnung. Ein zentrales Element ist dabei die Abwesenheit eines deutschen Opferdiskurses auf staatlicher Ebene. Anders als in vielen anderen Ländern, die Konflikte oder Kriege erlebt haben, definiert sich die deutsche Identität nicht über heroische Opfernarrative, sondern über die historische Verantwortung.\n\nIn den letzten Jahren ist diese Form der Erinnerungskultur jedoch zunehmend unter Druck geraten. Rechte Populisten bezeichnen die permanente Selbstbefragung als „Schuldkult" und fordern einen Schlussstrich unter die Vergangenheit. Gleichzeitig fordern postmigrantische Stimmen eine Erweiterung des Erinnerungskanons: Es gehe nicht nur um die NS-Verbrechen, sondern auch um Kolonialverbrechen, Rassismus und Diskriminierung in der Gegenwart. „Wir brauchen eine multidirektionale Erinnerung", fordert der Kulturwissenschaftler Michael Rothberg.\n\nHinzu kommt ein praktisches Problem: Die Zeitzeugen sterben. In wenigen Jahren wird es keine Überlebenden mehr geben, die aus eigener Erfahrung berichten können. Wie also kann Erinnerung lebendig bleiben, wenn die direkte Zeugenschaft wegfällt? Künstlerische Arbeiten, digitale Archive und inszenierte Begegnungen versuchen, diese Lücke zu füllen. Ob dies gelingt, ist eine offene Frage.\n\nInternational wird die deutsche Erinnerungskultur oft als vorbildlich zitiert. Länder wie Ruanda, Kambodscha oder Südafrika haben sich bei der Aufarbeitung ihrer eigenen Traumata am deutschen Modell orientiert. Doch eine einfache Übertragung ist nicht möglich – jede Gesellschaft muss ihren eigenen Weg im Umgang mit der Vergangenheit finden.\n\nDie deutsche Erfahrung lehrt, dass Erinnerung niemals abgeschlossen ist. Sie bleibt ein dynamischer, oft konflikthafter Prozess. Das macht sie unbequem – aber auch wertvoll. Eine Gesellschaft, die sich ihrer Vergangenheit stellt, ist besser gerüstet für die Herausforderungen der Zukunft.',
  'A critical examination of Germany''s culture of remembrance as a potential global model, covering its history, institutions, and current challenges.',
  'C1', 'history', 720, 'Prof. Dr. Klaus Schröder', 'Aus Politik und Zeitgeschichte', 8, 5,
  '{Erinnerungskultur,Geschichte,NS,Politik,Gesellschaft,Identität}',
  '{indirekte Rede mit Konjunktiv I,komplexe Satzgefüge,erweiterte Partizipialattribute,Nominalstil,passive Konstruktionen}'
),
(
  'Die Zukunft der Demokratie im digitalen Zeitalter',
  'Die Demokratie steht unter Druck – nicht erst seit gestern, aber die Bedrohungen haben eine neue Qualität erreicht. Desinformationskampagnen, algorithmische Radikalisierung, die Ökonomisierung persönlicher Daten und die Fragmentierung der öffentlichen Sphäre stellen liberale Demokratien vor existenzielle Herausforderungen. In Deutschland und Europa wird intensiv darüber debattiert, wie die Demokratie im digitalen Zeitalter gerettet werden kann.\n\nEin zentrales Problem ist die sogenannte „Infodemie" – die Flut an Falschinformationen, die sich in sozialen Netzwerken rasant verbreitet und schwer zu korrigieren ist. Studien belegen, dass Falschinformationen auf Plattformen wie X, Facebook oder TikTok sechsmal schneller verbreitet werden als wahre Inhalte. Die Algorithmen, die eigentlich Aufmerksamkeit maximieren sollen, begünstigen emotionale, polarisierende Inhalte. Die Folgen sind messbar: Vertrauen in Medien und politische Institutionen sinkt, die Gesellschaft polarisiert sich.\n\nDie Politik reagiert. Der Digital Services Act der Europäischen Union ist der ambitionierteste Versuch, Plattformen zur Verantwortung zu ziehen. Er verpflichtet große Technologiekonzerne, systematische Risiken für die Demokratie zu bewerten und zu minimieren. Kritiker monieren jedoch, dass die Durchsetzung des Gesetzes an der mangelnden personellen Ausstattung der Aufsichtsbehörden scheitere.\n\nEin zweiter Problemkomplex ist die Rolle der Datenökonomie. Geschäftsmodelle, die auf der Sammlung und Verwertung persönlicher Daten basieren, führen zu einer asymmetrischen Machtverteilung zwischen den Plattformen und den Nutzern. Der Politikwissenschaftler Shoshana Zuboff spricht in diesem Zusammenhang von „Überwachungskapitalismus" – einer Wirtschaftsform, die Verhalten vorhersagt und steuert, ohne dass die Betroffenen dies durchschauen oder beeinflussen können.\n\nGleichzeitig bieten digitale Technologien auch Chancen für die Demokratie. Partizipationsplattformen wie der „Bundesrat Digital" oder der „Österreichische Bürgerrat" zeigen, wie Bürger jenseits von Wahlen in politische Entscheidungsprozesse eingebunden werden können. Auch die Transparenz von Verwaltungshandeln hat sich durch Open-Data-Initiativen verbessert. Und nicht zuletzt ermöglichen soziale Medien marginalisierten Gruppen, Gehör zu finden, das ihnen in traditionellen Medien verwehrt bleibt.\n\nDie entscheidende Frage ist, ob es gelingt, die technologische Entwicklung demokratisch zu gestalten, statt sie nur zu erleiden. Dazu gehört die Förderung von Medienkompetenz ebenso wie die Regulierung von Plattformen und die Entwicklung gemeinwohlorientierter digitaler Infrastrukturen. Norbert Lammert, der frühere Bundestagspräsident, hat einmal gesagt: „Demokratie lebt vom Streit, aber sie stirbt an der Polarisierung." Im digitalen Zeitalter ist diese Unterscheidung schwieriger geworden – und wichtiger denn je.',
  'A sophisticated analysis of challenges facing democracy in the digital age: disinformation, algorithmic radicalization, surveillance capitalism, and digital participation.',
  'C1', 'politics', 700, 'Dr. Martina Fischer', 'Blätter für deutsche und internationale Politik', 8, 5,
  '{Demokratie,Digitalisierung,Politik,Medien,Europa,Zukunft}',
  ARRAY['Nominalstil (die Fragmentierung, die Polarisierung)','indirekte Rede (Konjunktiv I)','komplexe Attribute','Satzverschränkungen']
),
(
  'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation',
  'Die Schere zwischen wissenschaftlichem Erkenntnisstand und öffentlicher Meinung klafft an vielen Stellen weit auseinander. Ob Impfskepsis, Klimawandelleugnung oder die Debatte um die Kernfusion – in einer zunehmend komplexen Wissensgesellschaft wird die Vermittlung wissenschaftlicher Inhalte zu einer immer drängenderen Herausforderung.\n\nDas Problem liegt nicht allein in der kognitiven Komplexität der Inhalte begründet, sondern hat eine tiefere epistemologische Dimension. Die Wissenschaft des 21. Jahrhunderts operiert mit Konzepten, die sich der alltäglichen Erfahrung weitgehend entziehen. Quantenphysikalische Phänomene widersprechen der klassischen Newton''schen Mechanik, die unser Alltagsverständnis prägt. Evolutionäre Prozesse vollziehen sich in Zeiträumen, die jenseits unserer individuellen Wahrnehmung liegen. Die Klimaforschung arbeitet mit Modellen, deren Aussagekraft auf Wahrscheinlichkeiten und nicht auf Gewissheiten beruht.\n\nDie traditionelle Wissenschaftskommunikation hat lange Zeit auf das sogenannte „Defizitmodell" gesetzt. Dieses Modell geht davon aus, dass Wissenschaftsfeindlichkeit oder -skepsis auf einem Mangel an Information beruht und durch bloße Wissensvermittlung behoben werden kann. Dass dieses Modell gescheitert ist, zeigen nicht zuletzt die Impfdebatten der letzten Jahre. Je mehr Informationen manche Menschen erhielten, desto tiefer gruben sie sich in ihre Positionen ein – ein Phänomen, das die Psychologie als „motiviertes Reasoning" bezeichnet.\n\nNeuere Ansätze in der Wissenschaftskommunikation setzen daher auf dialogische Formate. Statt Menschen von oben herab zu belehren, suchen sie den Austausch auf Augenhöhe. „Science-Slams", Bürgerforen oder partizipative Forschungsprojekte wie „Citizen Science" versuchen, die Distanz zwischen Wissenschaft und Gesellschaft zu verringern. Diese Formate haben eines gemeinsam: Sie nehmen die Sorgen und Fragen der Menschen ernst.\n\nEin weiterer wichtiger Aspekt ist die Rolle der Emotionen. Psychologische Forschung zeigt, dass rein rationale Argumente oft wirkungslos bleiben, wenn sie mit tiefsitzenden Ängsten oder Weltbildern kollidieren. Glaubwürdige Wissenschaftskommunikation muss narrative Elemente integrieren – sie muss Geschichten erzählen, nicht nur Daten präsentieren. Die Neurobiologin Hannah Monyer bringt es auf den Punkt: „Das Gehirn ist kein informationsverarbeitender Apparat, sondern ein bedeutungsgenerierendes Organ."\n\nDie digitale Transformation eröffnet neue Möglichkeiten, birgt aber auch Risiken. Einerseits können Plattformen wie YouTube oder TikTok genutzt werden, um wissenschaftliche Inhalte einem jungen Publikum zugänglich zu machen. Andererseits konkurrieren wissenschaftliche Inhalte auf diesen Plattformen mit Desinformation, die algorithmisch oft bevorzugt wird.\n\nWissenschaftskommunikation ist keine bloße Übersetzungsleistung – sie ist eine gesellschaftliche Kernaufgabe geworden. In einer Zeit, in der demokratische Entscheidungen zunehmend auf komplexen wissenschaftlichen Erkenntnissen beruhen, entscheidet die Qualität der Wissenschaftskommunikation mit über die Zukunftsfähigkeit der Gesellschaft.',
  'A sophisticated essay on science communication paradigms, exploring why facts alone fail, the role of emotion, and the need for narrative approaches.',
  'C1', 'science', 760, 'Prof. Dr. Matthias Richter', 'Spektrum der Wissenschaft', 8, 5,
  '{Wissenschaft,Kommunikation,Psychologie,Digitalisierung,Gesellschaft}',
  ARRAY['Nominalisierungen','indirekte Rede (Konjunktiv I)','komplexe Attributkonstruktionen','Satzverschachtelungen','erweiterte Partizipialattribute']
),
(
  'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie',
  'Die COVID-19-Pandemie hat als Brennglas gewirkt und die Vulnerabilitäten urbaner Räume schonungslos offengelegt. Was lange als selbstverständlich galt – die Dichte, die Mobilität, die globale Vernetzung der Städte – wurde über Nacht zur Risikofaktoren. Drei Jahre nach dem Ende der akuten Pandemiephase stellt sich die Frage: Befinden sich unsere Städte in einer Transformation oder kehren sie zur alten Normalität zurück?\n\nDie empirischen Befunde sind widersprüchlich. Einerseits zeigen Immobiliendaten aus deutschen Großstädten, dass die Nachfrage nach Wohnraum in zentralen Lagen wieder das Vorkrisenniveau erreicht hat. Innenstädte, die während der Lockdowns wie leergefegt wirkten, füllen sich wieder. Restaurants, Theater und Clubs boomen. Die These von der „Toten Innenstadt" scheint vom Puls der Zeit widerlegt.\n\nAndererseits haben sich strukturelle Verschiebungen manifestiert, die kaum reversibel erscheinen. Die Hybridisierung der Arbeitswelt ist das auffälligste Phänomen. Während im Jahr 2019 lediglich 12 Prozent der Erwerbstätigen in Deutschland zumindest teilweise im Homeoffice arbeiteten, sind es heute über 30 Prozent – mit steigender Tendenz. Dies hat weitreichende Folgen für die Stadtstruktur: Weniger Pendlerverkehr, veränderte Nachfrage nach Gewerbeflächen, neue Anforderungen an Wohnungsgrundrisse.\n\nAuch der Einzelhandel durchläuft einen Strukturwandel, der durch die Pandemie beschleunigt wurde. Die Filialdichte traditioneller Einzelhändler nimmt kontinuierlich ab, während Logistikflächen für den Online-Handel boomen. Stadtplaner stehen vor der Herausforderung, leerstehende Ladenlokale einer neuen Nutzung zuzuführen. Erste Erfolge zeigen Konzepte wie „Urban Manufacturing" – die Rückkehr von Produktion in die Stadt – oder die Umwandlung in soziale Infrastruktur wie Nachbarschaftstreffs und Bibliotheken.\n\nEin besonders kontrovers diskutiertes Thema ist die Verkehrswende in den Städten. Während der Pandemie haben viele Städte temporäre Pop-up-Radwege eingerichtet, die in der Folge häufig verstetigt wurden. Die Zahl der Fahrradfahrer ist in Großstädten wie Berlin, München oder Köln um bis zu 40 Prozent gestiegen. Gleichzeitig wächst der Widerstand gegen autofreie Zonen, insbesondere aus dem Einzelhandel, der Umsatzeinbußen befürchtet.\n\nEine weitere Dimension ist die soziale Segregation. Studien belegen, dass die Pandemie bestehende Ungleichheiten in den Städten verschärft hat. Während Besserverdienende ins Homeoffice ausweichen konnten, waren Geringverdiener in systemrelevanten Berufen weiterhin auf die physische Präsenz angewiesen. Die Digitalisierung der Verwaltungs- und Bildungsdienstleistungen hat einen digitalen Graben aufgerissen, der insbesondere ältere Menschen und bildungsferne Haushalte trifft.\n\nDie Stadt der Zukunft wird nicht die autogerechte Stadt der Nachkriegsmoderne sein, aber auch nicht die vollständig digitalisierte, dezentrale Utopie der Tech-Visionäre. Sie wird hybride Räume schaffen müssen, die sowohl Dichte als auch Distanz ermöglichen, die Begegnung fördern und Rückzug erlauben. Die Urbanistin Jane Jacobs hat bereits in den 1960er Jahren darauf hingewiesen, dass lebendige Städte nicht geplant, sondern erkämpft werden – von den Menschen, die in ihnen leben. Das gilt heute mehr denn je.',
  'A sophisticated essay on post-pandemic urban transformation in Germany examining remote work, retail decline, cycling infrastructure, and social segregation.',
  'C1', 'society', 820, 'Dr. Angela Bergmann', 'Stadtbauwelt – Zeitschrift für Architektur und Städtebau', 9, 4,
  '{Stadt,Pandemie,Wohnen,Mobilität,Digitalisierung,Wandel}',
  '{indirekte Rede (Konjunktiv I),Nominalstil (die Hybridisierung, die Transformation),komplexe Satzgefüge mit mehreren Nebensätzen,Partizipialkonstruktionen}'
);

-- ============================================================
-- READING QUESTIONS
-- ============================================================

-- A2 ARTICLE 1: Ein Tag auf dem Münchner Oktoberfest
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'),
  'Wie sind die Freunde zum Oktoberfest gekommen?',
  '["Mit dem Auto", "Mit dem Zug", "Zu Fuß", "Mit dem Bus"]',
  'Mit dem Zug', 1, 'multiple_choice',
  'Im Text steht: "Meine Freundin Anna und ich sind mit dem Zug gefahren." Die anderen Optionen werden nicht erwähnt.', 1
),
(
  (select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'),
  'Was bedeutet "Maß" auf dem Oktoberfest?',
  '["Ein kleines Glas Bier", "Ein halber Liter Bier", "Ein ganzer Liter Bier", "Eine Flasche Bier"]',
  'Ein ganzer Liter Bier', 2, 'vocabulary_context',
  'Der Text erklärt: "Maß bedeutet ein ganzer Liter!" Die Autorin betont, dass sie noch nie so viel Bier auf einmal getrunken hat.', 1
),
(
  (select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'),
  'Die Autorin hatte Angst in der Geisterbahn.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 3, 'true_false',
  'Die Autorin sagt, die Geisterbahn war "gruselig", was unheimlich oder etwas angsteinflößend bedeutet, aber sie hat sie trotzdem ausprobiert. Die Aussage "hatte Angst" geht über den Text hinaus.', 2
),
(
  (select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'),
  'Was hat die Autorin auf dem Oktoberfest gegessen?',
  '["Pizza und Salat", "Brezen und Hendl", "Currywurst und Pommes", "Fischbrötchen"]',
  'Brezen und Hendl', 4, 'multiple_choice',
  'Explizit genannt: "Dazu haben wir Brezen und Hendl gegessen." Der Text erklärt auch, dass "Hendl" bairisch für Hähnchen ist.', 1
);

-- A2 ARTICLE 2: Jonas lernt Fahrradfahren
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Jonas lernt Fahrradfahren'),
  'Warum will Jonas Fahrradfahren lernen?',
  '["Weil er ein neues Fahrrad bekommen hat", "Weil er die großen Kinder auf dem Schulhof mit dem Fahrrad sieht", "Weil sein Papa es will", "Weil er zur Schule fahren muss"]',
  'Weil er die großen Kinder auf dem Schulhof mit dem Fahrrad sieht', 1, 'multiple_choice',
  'Im ersten Absatz heißt es: "Jeden Tag sieht er die großen Kinder auf dem Schulhof mit dem Fahrrad. Er möchte auch Fahrradfahren lernen." Die Motivation kommt von den anderen Kindern.', 1
),
(
  (select id from public.articles where title = 'Jonas lernt Fahrradfahren'),
  'Das Fahrrad von Jonas ist fabrikneu.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Der Text sagt: "Es ist gebraucht, aber es sieht fast neu aus." Also ist es nicht fabrikneu, sondern gebraucht.', 1
),
(
  (select id from public.articles where title = 'Jonas lernt Fahrradfahren'),
  'Warum fährt Jonas in den Park?',
  '["Weil es dort keine Autos gibt", "Weil der Park am größten ist", "Weil seine Freunde dort warten", "Weil es dort einen Fahrradkurs gibt"]',
  'Weil es dort keine Autos gibt', 3, 'inference',
  'Der Papa sagt: "Der Park ist groß und es gibt keine Autos." Die logische Schlussfolgerung ist, dass der Park sicherer zum Üben ist.', 1
);

-- B1 ARTICLE 1: Die Rückkehr des Wolfes
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'),
  'Wann wurde der erste Wolfsnachwuchs in Deutschland nach 150 Jahren geboren?',
  '["1990", "2000", "2010", "2020"]',
  '2000', 1, 'multiple_choice',
  'Der Text sagt: "Im Jahr 2000 wurde in Sachsen der erste Wolfsnachwuchs seit 150 Jahren geboren." Das ist der konkrete Zeitpunkt für die Rückkehr.', 2
),
(
  (select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'),
  'Wie viele Wölfe leben heute laut Bundesamt für Naturschutz in Deutschland?',
  '["Etwa 600", "Etwa 1600", "Etwa 6000", "Etwa 16000"]',
  'Etwa 1600', 2, 'multiple_choice',
  'Der Text zitiert das Bundesamt für Naturschutz: "Heute etwa 1600 Wölfe in Deutschland."', 2
),
(
  (select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'),
  'Naturschützer sind gegen jede Regulierung der Wolfspopulation.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Nicht im Text', 3, 'true_false',
  'Der Text sagt, dass die einen strengeren Schutz fordern und andere die Population regulieren wollen. Die Position der Naturschützer zur Regulierung wird nicht explizit genannt.', 3
),
(
  (select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'),
  'Welche Berufsgruppe ist besonders besorgt über die Rückkehr der Wölfe?',
  '["Jäger", "Schäfer und Landwirte", "Touristen", "Wissenschaftler"]',
  'Schäfer und Landwirte', 4, 'short_answer',
  'Der Text erwähnt: "Besonders Schäfer und Landwirte sind besorgt." Sie haben finanzielle Verluste durch gerissene Tiere.', 2
);

-- B1 ARTICLE 2: Street Food in Berlin
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'),
  'Ordnen Sie die Erfinder den Gerichten zu: 1. Currywurst, 2. Döner im Fladenbrot',
  '["1 = Kadir Nurman, 2 = Herta Heuwer", "1 = Herta Heuwer, 2 = Kadir Nurman", "1 = Herta Heuwer, 2 = Konnopke", "1 = Konnopke, 2 = Kadir Nurman"]',
  '1 = Herta Heuwer, 2 = Kadir Nurman', 1, 'multiple_choice',
  'Laut Text wurde die Currywurst von Herta Heuwer erfunden und der Döner im Fladenbrot von Kadir Nurman populär gemacht.', 2
),
(
  (select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'),
  'Der Imbiss "Konnopke''s Imbiss" verkauft Döner Kebab.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Konnopke''s Imbiss ist bekannt für Currywurst, nicht Döner. Der Text nennt ihn als "die bekannteste Bude" im Zusammenhang mit Currywurst.', 2
),
(
  (select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'),
  'Was haben alle Berliner Imbisse laut Text gemeinsam?',
  '["Sie sind teuer und exklusiv", "Sie sind günstig, schnell und die Portionen sind groß", "Sie servieren nur deutsche Gerichte", "Sie haben Michelin-Sterne"]',
  'Sie sind günstig, schnell und die Portionen sind groß', 3, 'short_answer',
  'Der letzte Absatz fasst zusammen: "Was alle Berliner Imbisse gemeinsam haben: Sie sind günstig, schnell und die Portionen sind groß."', 1
);

-- B1 ARTICLE 3: Zugreisen in Deutschland
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'),
  'Wie viel Prozent der Fernverkehrszüge kommen pünktlich an?',
  '["Etwa 40 Prozent", "Etwa 60 Prozent", "Etwa 80 Prozent", "Etwa 90 Prozent"]',
  'Etwa 60 Prozent', 1, 'multiple_choice',
  'Der Text gibt an: "Rund 60 Prozent der Fernverkehrszüge kommen pünktlich an." Die Definition von pünktlich ist dabei weniger als sechs Minuten Verspätung.', 2
),
(
  (select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'),
  'In welchem Land kommen über 90 Prozent der Züge pünktlich?',
  '["Italien", "Deutschland", "Der Schweiz", "Frankreich"]',
  'Der Schweiz', 2, 'multiple_choice',
  'Der Text sagt: "In der Schweiz kommen über 90 Prozent der Züge pünktlich an, in Italien dagegen sind es weniger als 50 Prozent."', 2
),
(
  (select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'),
  'Welcher Tipp wird speziell für Reisende mit der Bahn gegeben?',
  '["Immer erste Klasse buchen", "Direktverbindungen sind zuverlässiger als Züge mit Umsteigen", "Nur nachts reisen", "Das Auto nehmen"]',
  'Direktverbindungen sind zuverlässiger als Züge mit Umsteigen', 3, 'short_answer',
  'Der Rat lautet: "Direktverbindungen sind meist zuverlässiger als Züge mit Umsteigen."', 2
),
(
  (select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'),
  'Deutsche Bahn-Züge haben im internationalen Vergleich die meisten Verspätungen.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 4, 'true_false',
  'Der Text sagt, Deutschland liegt "im internationalen Mittelfeld" – es gibt Länder mit mehr Verspätungen (Italien) und mit weniger (Schweiz).', 3
);

-- B1 ARTICLE 4: Ein Tag im Leben einer Pflegekraft
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'),
  'Wann beginnt Marias Frühdienst?',
  '["Um 5:30 Uhr", "Um 7:00 Uhr", "Um 6:30 Uhr", "Um 8:00 Uhr"]',
  'Um 7:00 Uhr', 1, 'multiple_choice',
  'Der Text sagt: "Sie hat Frühdienst, das bedeutet: Dienstbeginn um 7 Uhr." Das Klingeln um 5:30 Uhr ist die Zeit des Aufstehens.', 1
),
(
  (select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'),
  'Maria findet die Dokumentation genauso wichtig wie die Patientenversorgung.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Maria sagt: "Manchmal fühle ich mich mehr als Bürokraft denn als Pflegekraft" und "Seit der Einführung neuer Dokumentationspflichten bleibt weniger Zeit für die Patienten." Sie sieht die Dokumentation als Belastung.', 2
),
(
  (select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'),
  'Was wünscht sich Maria für ihren Beruf?',
  '["Mehr Urlaubstage", "Mehr Personal und bessere Bezahlung", "Einen kürzeren Arbeitsweg", "Weniger Verantwortung"]',
  'Mehr Personal und bessere Bezahlung', 3, 'short_answer',
  'Im letzten Absatz sagt Maria: "Sie wünscht sich mehr Personal und bessere Bezahlung." Sie macht ihren Job gerne, aber die Bedingungen sind schwierig.', 2
);

-- B2 ARTICLE 1: Künstliche Intelligenz am Arbeitsplatz
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'),
  'Laut der genannten Studie könnten bis 2040 etwa wie viele Arbeitsplätze durch KI ersetzt werden?',
  '["5 Prozent", "15 Prozent", "25 Prozent", "50 Prozent"]',
  '15 Prozent', 1, 'multiple_choice',
  'Der Text zitiert eine Studie: "dass bis 2040 etwa 15 Prozent der aktuellen Arbeitsplätze durch KI ersetzt werden könnten."', 3
),
(
  (select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'),
  'Der Text nennt drei neue Berufsfelder, die durch KI entstehen. Welches wird NICHT genannt?',
  '["KI-Trainer", "Ethikbeauftragte für Algorithmen", "Roboter-Ingenieur", "Datenqualitätsmanager"]',
  'Roboter-Ingenieur', 2, 'multiple_choice',
  'Die drei genannten neuen Berufe sind: KI-Trainer, Ethikbeauftragte für Algorithmen und Datenqualitätsmanager. Roboter-Ingenieur wird nicht erwähnt.', 3
),
(
  (select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'),
  'Die Gewerkschaften fordern ein Recht auf Weiterbildung, weil sich die Arbeitswelt rasant verändert.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Richtig', 3, 'true_false',
  'Der Text sagt: "Die Gewerkschaften fordern deshalb ein Recht auf Weiterbildung. Wenn sich die Arbeitswelt so rasant verändert..." Der Zusammenhang wird explizit hergestellt.', 2
),
(
  (select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'),
  'Wer haftet nach Meinung des Autors, wenn ein KI-System einen Fehler macht?',
  '["Der Hersteller", "Der Nutzer", "Das ist unklar – das deutsche Recht bewegt sich hier auf Neuland", "Die Europäische Union"]',
  'Das ist unklar – das deutsche Recht bewegt sich hier auf Neuland', 4, 'inference',
  'Der Text stellt die Frage "Wer haftet?" und sagt dann: "Hier bewegt sich das deutsche Rechtssystem auf juristischem Neuland." Eine klare Antwort gibt es noch nicht.', 4
);

-- B2 ARTICLE 2: Die Energiewende und ihre versteckten Kosten
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'),
  'Welchen Anteil haben erneuerbare Energien am deutschen Strommix?',
  '["Über 30 Prozent", "Über 40 Prozent", "Über 50 Prozent", "Über 60 Prozent"]',
  'Über 50 Prozent', 1, 'multiple_choice',
  'Der Text nennt: "Der Anteil erneuerbarer Energien am Strommix liegt inzwischen bei über 50 Prozent."', 3
),
(
  (select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'),
  'Warum mussten 2025 Rekordmengen an Strom abgeregelt werden?',
  '["Weil zu wenig Strom produziert wurde", "Weil die Stromleitungen überlastet waren", "Weil die Nachfrage zu gering war", "Weil die Kraftwerke gewartet werden mussten"]',
  'Weil die Stromleitungen überlastet waren', 2, 'short_answer',
  'Der Grund: "Die Leitungen waren überlastet." Windstrom im Norden kann nicht in den Süden transportiert werden, weil die Trassen fehlen.', 3
),
(
  (select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'),
  'Laut Kritikern profitieren Hausbesitzer mit Solaranlagen von der Energiewende, während Mieter die steigenden Kosten tragen.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Richtig', 3, 'true_false',
  'Dieser kritische Punkt wird explizit genannt: "Während Hausbesitzer mit Solaranlagen auf dem Dach von den Einspeisevergütungen profitieren, zahlen Mieter und Geringverdiener die steigenden Netzkosten mit."', 4
),
(
  (select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'),
  'Welche drei Bereiche müssen laut Autor miteinander vereinbart werden?',
  '["Wind, Sonne und Wasser", "Ökologie, soziale Gerechtigkeit und wirtschaftliche Wettbewerbsfähigkeit", "Kohle, Atom und erneuerbare Energien", "Nord, Süd und Ost"]',
  'Ökologie, soziale Gerechtigkeit und wirtschaftliche Wettbewerbsfähigkeit', 4, 'inference',
  'Im letzten Absatz heißt es: "Die Herausforderung besteht darin, die ökologischen Notwendigkeiten mit sozialer Gerechtigkeit und wirtschaftlicher Wettbewerbsfähigkeit zu vereinbaren."', 4
);

-- B2 ARTICLE 3: Bildungsungleichheit
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'),
  'Was verstehen Bildungsforscher unter dem "Primäreffekt" der sozialen Herkunft?',
  '["Dass Kinder aus Akademikerfamilien bessere Noten haben", "Dass die Entscheidung für eine Schulform stark von der Bildungsnähe der Eltern abhängt", "Dass Kinder aus bildungsfernen Familien seltener Nachhilfe bekommen", "Dass Lehrer Kinder aus Akademikerfamilien bevorzugen"]',
  'Dass die Entscheidung für eine Schulform stark von der Bildungsnähe der Eltern abhängt', 1, 'vocabulary_context',
  'Der Text definiert: "Gemeint ist damit, dass bereits die Entscheidung für eine weiterführende Schulform stark von der Bildungsnähe der Eltern abhängt."', 4
),
(
  (select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'),
  'In Finnland und Kanada werden Kinder früher auf verschiedene Schulformen verteilt als in Deutschland.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Es ist genau umgekehrt: "Während Finnland oder Kanada bis zur neunten Klasse weitgehend gemeinsamen Unterricht anbieten, steht in Deutschland mit neun oder zehn Jahren bereits die Weichenstellung." Deutschland teilt also früher auf.', 3
),
(
  (select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'),
  'Welche drei Maßnahmen werden von Bildungspolitikern gefordert?',
  '["Mehr Privatschulen, kürzere Schulzeit, weniger Hausaufgaben", "Mehr Ganztagsschulen, bessere Ausstattung in Brennpunkten, kostenlose Nachhilfe", "Mehr digitale Geräte, kleinere Klassen, mehr Ferien", "Mehr Lehrer, höhere Gehälter, weniger Fächer"]',
  'Mehr Ganztagsschulen, bessere Ausstattung in Brennpunkten, kostenlose Nachhilfe', 3, 'short_answer',
  'Die Forderungen sind: "mehr Ganztagsschulen, eine bessere Ausstattung von Schulen in sozialen Brennpunkten, kostenlose Nachhilfeangebote und ein späterer Übergang auf die weiterführenden Schulen."', 3
),
(
  (select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'),
  'Was scheiterte laut Autor beim "Digitalpakt Schule"?',
  '["Die Höhe des Geldes", "Die bürokratischen Antragsverfahren", "Die Ablehnung der Schulen", "Die technische Umsetzung"]',
  'Die bürokratischen Antragsverfahren', 4, 'inference',
  'Der Text sagt: "die Antragsverfahren waren so bürokratisch, dass viele Schulen bis heute auf ihr Geld warten." Das Problem war also die Bürokratie, nicht der Wille oder das Geld an sich.', 4
);

-- B2 ARTICLE 4: Der deutsche Mittelstand
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'),
  'Wie viel Prozent der Arbeitnehmer beschäftigt der deutsche Mittelstand?',
  '["Etwa 40 Prozent", "Etwa 50 Prozent", "Etwa 60 Prozent", "Etwa 70 Prozent"]',
  'Etwa 60 Prozent', 1, 'multiple_choice',
  'Der Text: "Sie beschäftigen etwa 60 Prozent aller Arbeitnehmer."', 3
),
(
  (select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'),
  'Wie viel Zeit verbringen deutsche Unternehmer laut Text durchschnittlich pro Woche mit Bürokratie?',
  '["Vier Stunden", "Sechs Stunden", "Acht Stunden", "Zehn Stunden"]',
  'Acht Stunden', 2, 'multiple_choice',
  'Der Text: "Deutsche Unternehmer verbringen durchschnittlich acht Stunden pro Woche mit Bürokratie." Danach folgt eine Aufzählung von Beispielen.', 3
),
(
  (select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'),
  'Was sind "Hidden Champions"?',
  '["Die größten Unternehmen Deutschlands", "Weltmarktführer, die kaum jemand kennt", "Unternehmen, die keine Mitarbeiter haben", "Start-ups aus der IT-Branche"]',
  'Weltmarktführer, die kaum jemand kennt', 3, 'vocabulary_context',
  'Der Text erklärt den Begriff: "Das sind Weltmarktführer, die kaum jemand kennt." Sie sind hoch spezialisiert und in ihrer Nische weltweit führend.', 4
),
(
  (select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'),
  'Die größte Herausforderung für den Mittelstand ist nach Ansicht des Autors die Digitalisierung.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 4, 'true_false',
  'Der Autor nennt die Digitalisierung als Problem, aber die "größte Herausforderung" ist die Nachfolge: "Die größte Herausforderung steht jedoch unmittelbar bevor: die Nachfolge."', 4
);

-- B2 ARTICLE 5: Psychische Gesundheit
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'),
  'Wie viele Erwachsene in Deutschland leiden laut Artikel mindestens einmal im Leben an einer psychischen Erkrankung?',
  '["Jeder zehnte", "Jeder vierte", "Jeder dritte", "Jeder zweite"]',
  'Jeder vierte', 1, 'multiple_choice',
  'Der Text sagt: "In Deutschland leidet etwa jeder vierte Erwachsene einmal im Leben an einer psychischen Erkrankung."', 3
),
(
  (select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'),
  'Die Wartezeiten auf einen Therapieplatz betragen in vielen Regionen Deutschlands ...',
  '["Einen bis drei Monate", "Drei bis sechs Monate", "Sechs bis zwölf Monate", "Zwölf bis achtzehn Monate"]',
  'Sechs bis zwölf Monate', 2, 'gap_filling',
  'Der Text: "Die Wartezeiten auf einen Therapieplatz betragen in vielen Regionen Deutschlands sechs bis zwölf Monate."', 3
),
(
  (select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'),
  'Die größte Hürde für Betroffene ist laut Autor die fehlende Anzahl an Therapeuten.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 3, 'true_false',
  'Als "eigentliche Hürde" nennt der Autor die Stigmatisierung: "Viele Betroffene fürchten, als schwach oder unzuverlässig zu gelten." Die fehlenden Therapeuten sind ein Problem, aber nicht die größte Hürde.', 4
),
(
  (select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'),
  'Ordnen Sie zu: Welche Unternehmen haben laut Text psychologische Beratungsdienste eingeführt?',
  '["Der Mittelstand", "Große Konzerne wie SAP und Deutsche Telekom", "Alle Krankenkassen", "Start-ups"]',
  'Große Konzerne wie SAP und Deutsche Telekom', 4, 'multiple_choice',
  'Der Text nennt konkret: "Große Konzerne wie SAP oder die Deutsche Telekom haben Betriebsärzte, psychologische Beratungsdienste und Programme zur Stressprävention eingeführt."', 3
);

-- C1 ARTICLE 1: Erinnerungskultur
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'),
  'Welche Phase beschreibt der Autor als die erste Dekade nach 1945?',
  '["Eine Phase der aktiven Aufarbeitung", "Eine Phase des kollektiven Beschweigens", "Eine Phase des politischen Protests", "Eine Phase der internationalen Zusammenarbeit"]',
  'Eine Phase des kollektiven Beschweigens', 1, 'multiple_choice',
  'Der Text sagt: "die erste Dekade nach 1945 war von kollektivem Beschweigen geprägt." Die aktive Auseinandersetzung kam erst später.', 5
),
(
  (select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'),
  'Die 68er-Bewegung warf den Eltern vor, die NS-Verbrechen verdrängt zu haben. Inwiefern war dieser Konflikt nach Meinung des Autors notwendig?',
  '["Er hat die Wirtschaft angekurbelt", "Er hat eine kritische Aufarbeitung der NS-Vergangenheit erzwungen", "Er hat zu mehr Tourismus geführt", "Er hat die Wiedervereinigung beschleunigt"]',
  'Er hat eine kritische Aufarbeitung der NS-Vergangenheit erzwungen', 2, 'inference',
  'Der Autor stellt den Zusammenhang her: "der die kritische Aufarbeitung der NS-Vergangenheit erzwang. Diese gesellschaftliche Selbstbefragung war schmerzhaft, aber notwendig."', 5
),
(
  (select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'),
  'Rechte Populisten fordern eine Erweiterung des Erinnerungskanons um Kolonialverbrechen.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 3, 'true_false',
  'Es sind "postmigrantische Stimmen", die eine Erweiterung fordern. Rechte Populisten bezeichnen die Erinnerungskultur dagegen als "Schuldkult" und fordern einen Schlussstrich.', 5
),
(
  (select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'),
  'Welches praktische Problem der Erinnerungskultur wird im Text genannt?',
  '["Die Museen sind zu teuer", "Die Zeitzeugen sterben", "Die Jugend interessiert sich nicht dafür", "Die Gedenkstätten sind zu voll"]',
  'Die Zeitzeugen sterben', 4, 'short_answer',
  'Der Absatz: "Die Zeitzeugen sterben. In wenigen Jahren wird es keine Überlebenden mehr geben." Dieses Problem erfordert neue Formen der Vermittlung.', 5
),
(
  (select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'),
  'Welcher Begriff von Michael Rothberg wird im Text zitiert?',
  '["Multidirektionale Erinnerung", "Kollektives Gedächtnis", "Vergangenheitsbewältigung", "Erinnerungspolitik"]',
  'Multidirektionale Erinnerung', 5, 'vocabulary_context',
  'Der Text zitiert: "Wir brauchen eine multidirektionale Erinnerung", fordert der Kulturwissenschaftler Michael Rothberg."', 4
);

-- C1 ARTICLE 2: Demokratie im digitalen Zeitalter
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'),
  'Laut Studien verbreiten sich Falschinformationen auf Plattformen wie X oder Facebook wie viel schneller als wahre Inhalte?',
  '["Doppelt so schnell", "Dreimal so schnell", "Sechsmal so schnell", "Zehnmal so schnell"]',
  'Sechsmal so schnell', 1, 'multiple_choice',
  'Der Text: "Studien belegen, dass Falschinformationen auf Plattformen wie X, Facebook oder TikTok sechsmal schneller verbreitet werden als wahre Inhalte."', 4
),
(
  (select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'),
  'Der Digital Services Act der EU wird von Kritikern als zu streng bewertet.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Kritiker monieren laut Text nicht die Strenge, sondern "dass die Durchsetzung des Gesetzes an der mangelnden personellen Ausstattung der Aufsichtsbehörden scheitere."', 5
),
(
  (select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'),
  'Welchen Begriff verwendet Shoshana Zuboff für die Wirtschaftsform, die Verhalten vorhersagt und steuert?',
  '["Digitale Wirtschaft", "Überwachungskapitalismus", "Datenökonomie", "Algorithmische Herrschaft"]',
  'Überwachungskapitalismus', 3, 'vocabulary_context',
  'Der Text führt den Begriff ein: "Der Politikwissenschaftler Shoshana Zuboff spricht in diesem Zusammenhang von Überwachungskapitalismus."', 4
),
(
  (select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'),
  'Welche positiven Beispiele digitaler Demokratie werden im Text genannt?',
  '["E-Wahlen und Online-Abstimmungen", "Bundesrat Digital und Österreichischer Bürgerrat", "Digitale Parteitage und Online-Konferenzen", "Social-Media-Wahlkämpfe und YouTube-Debatten"]',
  'Bundesrat Digital und Österreichischer Bürgerrat', 4, 'short_answer',
  'Der Text nennt: "Partizipationsplattformen wie der Bundesrat Digital oder der Österreichische Bürgerrat zeigen, wie Bürger jenseits von Wahlen in politische Entscheidungsprozesse eingebunden werden können."', 4
),
(
  (select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'),
  'Das Zitat von Norbert Lammert wird verwendet, um welche Unterscheidung zu verdeutlichen?',
  '["Die Unterscheidung zwischen Demokratie und Diktatur", "Die Unterscheidung zwischen produktivem Streit und schädlicher Polarisierung", "Die Unterscheidung zwischen digitaler und analoger Demokratie", "Die Unterscheidung zwischen links und rechts"]',
  'Die Unterscheidung zwischen produktivem Streit und schädlicher Polarisierung', 5, 'inference',
  'Lammert sagt: "Demokratie lebt vom Streit, aber sie stirbt an der Polarisierung." Der Autor kommentiert: "Im digitalen Zeitalter ist diese Unterscheidung schwieriger geworden – und wichtiger denn je."', 5
);

-- C1 ARTICLE 3: Wissenschaftskommunikation
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'),
  'Was versteht der Autor unter dem "Defizitmodell" der Wissenschaftskommunikation?',
  '["Die Annahme, dass Wissenschaft zu komplex für die Öffentlichkeit ist", "Die Annahme, dass Wissenschaftsfeindlichkeit auf mangelnder Information beruht und durch Wissensvermittlung behoben werden kann", "Die Annahme, dass Wissenschaftler ein Bildungsdefizit haben", "Die Annahme, dass die Öffentlichkeit kein Interesse an Wissenschaft hat"]',
  'Die Annahme, dass Wissenschaftsfeindlichkeit auf mangelnder Information beruht und durch Wissensvermittlung behoben werden kann', 1, 'vocabulary_context',
  'Das Defizitmodell wird definiert als: "geht davon aus, dass Wissenschaftsfeindlichkeit oder -skepsis auf einem Mangel an Information beruht und durch bloße Wissensvermittlung behoben werden kann."', 5
),
(
  (select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'),
  'Der Autor behauptet, dass das Defizitmodell erfolgreich ist, wenn es um Impfdebatten geht.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 2, 'true_false',
  'Der Autor sagt das Gegenteil: "Dass dieses Modell gescheitert ist, zeigen nicht zuletzt die Impfdebatten der letzten Jahre." Je mehr Informationen, desto tiefer gruben sich manche in ihre Positionen ein.', 5
),
(
  (select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'),
  'Welches Zitat von Hannah Monyer wird verwendet und was bedeutet es im Kontext?',
  '["Das Gehirn ist ein informationsverarbeitender Apparat – es geht um reine Datenübertragung", "Das Gehirn ist kein informationsverarbeitender Apparat, sondern ein bedeutungsgenerierendes Organ", "Das Gehirn lernt am besten durch Wiederholung", "Das Gehirn ist wie ein Computer"]',
  'Das Gehirn ist kein informationsverarbeitender Apparat, sondern ein bedeutungsgenerierendes Organ', 3, 'inference',
  'Das Zitat unterstreicht die These, dass Wissenschaftskommunikation narrative Elemente braucht und nicht nur Daten liefern darf. Das Gehirn sucht nach Bedeutung, nicht nach Information.', 5
),
(
  (select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'),
  'Welche neuen Formate der Wissenschaftskommunikation werden als positiv hervorgehoben?',
  '["Wissenschaftliche Paper, Konferenzen, Symposien", "Science-Slams, Bürgerforen, Citizen Science", "Fachbücher, Lehrveranstaltungen, Prüfungen", "TV-Dokumentationen, Zeitungsartikel, Radio-Interviews"]',
  'Science-Slams, Bürgerforen, Citizen Science', 4, 'short_answer',
  'Der Text nennt konkret: "Science-Slams, Bürgerforen oder partizipative Forschungsprojekte wie Citizen Science versuchen, die Distanz zwischen Wissenschaft und Gesellschaft zu verringern."', 4
),
(
  (select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'),
  'Warum sind rein rationale Argumente laut psychologischer Forschung oft wirkungslos?',
  '["Weil die Menschen zu unintelligent sind", "Weil sie mit tiefsitzenden Ängsten oder Weltbildern kollidieren", "Weil die Wissenschaftler zu kompliziert sprechen", "Weil die Medien die Informationen falsch darstellen"]',
  'Weil sie mit tiefsitzenden Ängsten oder Weltbildern kollidieren', 5, 'inference',
  'Der Text sagt: "rein rationale Argumente oft wirkungslos bleiben, wenn sie mit tiefsitzenden Ängsten oder Weltbildern kollidieren." Die Ursache liegt nicht in mangelnder Intelligenz, sondern in emotionaler Bindung.', 5
);

-- C1 ARTICLE 4: Großstadtleben auf dem Prüfstand
insert into public.reading_questions (article_id, question, options, correct_answer, order_index, question_type, explanation, difficulty_level) values
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Der Autor stellt fest, dass die Nachfrage nach Wohnraum in zentralen Lagen unter dem Vorkrisenniveau geblieben ist.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Falsch', 1, 'true_false',
  'Der Text sagt: "die Nachfrage nach Wohnraum in zentralen Lagen wieder das Vorkrisenniveau erreicht hat." Sie ist also zurück auf dem alten Niveau, nicht darunter.', 4
),
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Wie viel Prozent der Erwerbstätigen arbeiten heute mindestens teilweise im Homeoffice?',
  '["Über 12 Prozent", "Über 20 Prozent", "Über 30 Prozent", "Über 50 Prozent"]',
  'Über 30 Prozent', 2, 'multiple_choice',
  'Der Text vergleicht: "Während im Jahr 2019 lediglich 12 Prozent ... sind es heute über 30 Prozent."', 4
),
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Was bedeutet "Urban Manufacturing" im Kontext des Textes?',
  '["Die Produktion von Autos in der Stadt", "Die Rückkehr von Produktion in die Stadt als neue Nutzung für leerstehende Ladenlokale", "Der Bau von Hochhäusern in Innenstädten", "Die Herstellung von Möbeln in urbanen Werkstätten"]',
  'Die Rückkehr von Produktion in die Stadt als neue Nutzung für leerstehende Ladenlokale', 3, 'vocabulary_context',
  'Urban Manufacturing wird als Konzept eingeführt für leerstehende Ladenlokale: "Erste Erfolge zeigen Konzepte wie Urban Manufacturing – die Rückkehr von Produktion in die Stadt."', 4
),
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Der Widerstand gegen autofreie Zonen kommt laut Text besonders aus dem Einzelhandel.',
  '["Richtig", "Falsch", "Nicht im Text"]',
  'Richtig', 4, 'true_false',
  'Der Text: "Gleichzeitig wächst der Widerstand gegen autofreie Zonen, insbesondere aus dem Einzelhandel, der Umsatzeinbußen befürchtet."', 4
),
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Wen zitiert der Autor zur These, dass lebendige Städte nicht geplant, sondern erkämpft werden?',
  '["Jane Jacobs", "Norbert Lammert", "Shoshana Zuboff", "Hannah Monyer"]',
  'Jane Jacobs', 5, 'short_answer',
  'Der letzte Absatz bezieht sich auf die Urbanistin Jane Jacobs aus den 1960er Jahren.', 4
),
(
  (select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'),
  'Welchen "digitalen Graben" hat die Pandemie laut Autor aufgerissen?',
  '["Zwischen Stadt und Land", "Zwischen älteren Menschen und bildungsfernen Haushalten und denen mit digitalem Zugang", "Zwischen Großkonzernen und kleinen Unternehmen", "Zwischen verschiedenen politischen Lagern"]',
  'Zwischen älteren Menschen und bildungsfernen Haushalten und denen mit digitalem Zugang', 6, 'inference',
  'Der Text: "Die Digitalisierung ... hat einen digitalen Graben aufgerissen, der insbesondere ältere Menschen und bildungsferne Haushalte trifft." Die Ungleichheit betrifft also spezifisch diese Gruppen.', 5
);

-- ============================================================
-- ARTICLE VOCABULARY
-- ============================================================

-- A2 Article 1: Oktoberfest
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'), 'die Tracht', 'traditional costume', 'Die Frauen trugen Dirndl, die Männer Lederhosen – alle waren in Tracht.'),
  ((select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'), 'sich lohnen', 'to be worth it', 'Die Fahrt hat drei Stunden gedauert, aber es hat sich gelohnt.'),
  ((select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'), 'das Maß', 'a litre of beer (Munich measure)', 'Eine Kellnerin hat uns Maß Bier gebracht.'),
  ((select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'), 'das Hendl', 'chicken (Bavarian dialect)', 'Dazu haben wir Brezen und Hendl gegessen.'),
  ((select id from public.articles where title = 'Ein Tag auf dem Münchner Oktoberfest'), 'gruselig', 'spooky, creepy', 'Die Geisterbahn war gruselig, aber das Riesenrad war wunderschön.');

-- A2 Article 2: Jonas lernt Fahrradfahren
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Jonas lernt Fahrradfahren'), 'gebraucht', 'used, second-hand', 'Es ist gebraucht, aber es sieht fast neu aus.'),
  ((select id from public.articles where title = 'Jonas lernt Fahrradfahren'), 'der Sattel', 'bicycle seat', 'Papa hält den Sattel fest.'),
  ((select id from public.articles where title = 'Jonas lernt Fahrradfahren'), 'in die Pedale treten', 'to pedal', 'Jonas tritt in die Pedale.'),
  ((select id from public.articles where title = 'Jonas lernt Fahrradfahren'), 'ausweichen', 'to dodge, to avoid', 'Er möchte ausweichen, aber er fällt hin.'),
  ((select id from public.articles where title = 'Jonas lernt Fahrradfahren'), 'strahlen', 'to beam, to radiate joy', 'Er strahlt über das ganze Gesicht.');

-- B1 Article 1: Wolf
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'), 'ausgestorben', 'extinct', 'Jahrhundertelang war der Wolf in Deutschland ausgestorben.'),
  ((select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'), 'die Artenvielfalt', 'biodiversity', 'Der Wolf gehört zur natürlichen Artenvielfalt Deutschlands.'),
  ((select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'), 'der Schäfer', 'shepherd', 'Besonders Schäfer und Landwirte sind besorgt.'),
  ((select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'), 'der Herdenschutzhund', 'livestock guardian dog', 'Es gibt staatliche Zuschüsse für Herdenschutzhunde.'),
  ((select id from public.articles where title = 'Die Rückkehr des Wolfes nach Deutschland'), 'regulieren', 'to regulate, to control', 'Die anderen wollen die Population regulieren.');

-- B1 Article 2: Street Food
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'), 'der Imbiss', 'snack bar, fast-food stand', 'Nirgendwo sonst gibt es so viele Imbissbuden.'),
  ((select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'), 'die Bude', 'joint, shop (colloquial)', 'Die bekannteste Bude ist Konnopkes Imbiss.'),
  ((select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'), 'populär machen', 'to popularize', 'Der Döner wurde in den 1970er Jahren populär gemacht.'),
  ((select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'), 'der Foodtruck', 'food truck', 'Foodtrucks bieten Burger, asiatische Nudeln oder vegane Speisen an.'),
  ((select id from public.articles where title = 'Street Food in Berlin: Von Currywurst bis Döner'), 'günstig', 'cheap, affordable', 'Sie sind günstig, schnell und die Portionen sind groß.');

-- B1 Article 3: Zugreisen
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'), 'die Verspätung', 'delay', 'Rund 60 Prozent der Fernverkehrszüge kommen pünktlich an, also mit weniger als sechs Minuten Verspätung.'),
  ((select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'), 'veraltet', 'outdated, obsolete', 'Viele Strecken sind veraltet und müssen saniert werden.'),
  ((select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'), 'lahmlegen', 'to paralyze, to bring to a standstill', 'Stürme oder extreme Hitze können den Zugverkehr lahmlegen.'),
  ((select id from public.articles where title = 'Zugreisen in Deutschland: Zwischen Pünktlichkeit und Verspätung'), 'die Modernisierung', 'modernization', 'Die Deutsche Bahn investiert Milliarden in die Modernisierung des Netzes.');

-- B1 Article 4: Pflegekraft
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'), 'die Pflegekraft', 'nurse, care worker', 'Maria arbeitet als Krankenschwester. Sie ist eine Pflegekraft.'),
  ((select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'), 'die Übergabe', 'handover (shift change)', 'Pünktlich um sieben beginnt die Übergabe.'),
  ((select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'), 'der Blutdruck', 'blood pressure', 'Maria misst Blutdruck und wechselt Verbände.'),
  ((select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'), 'die Dokumentation', 'documentation, record-keeping', 'Um 11 Uhr hat sie Zeit für die Dokumentation.'),
  ((select id from public.articles where title = 'Ein Tag im Leben einer Pflegekraft'), 'die Überstunde', 'overtime', 'Überstunden sind normal.');

-- B2 Article 1: KI am Arbeitsplatz
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'), 'die Künstliche Intelligenz', 'artificial intelligence', 'Künstliche Intelligenz hält Einzug in nahezu alle Branchen.'),
  ((select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'), 'die Automatisierung', 'automation', 'Die Automatisierung durch KI ist längst keine Zukunftsmusik mehr.'),
  ((select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'), 'die Kehrseite der Medaille', 'the flip side of the coin', 'Doch die Kehrseite der Medaille ist die Angst vor Arbeitsplatzverlust.'),
  ((select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'), 'haften', 'to be liable', 'Wer haftet, wenn ein KI-System einen Fehler macht?'),
  ((select id from public.articles where title = 'Künstliche Intelligenz am Arbeitsplatz: Fluch oder Segen?'), 'die Verordnung', 'regulation, ordinance', 'Die EU arbeitet derzeit an einer KI-Verordnung.');

-- B2 Article 2: Energiewende
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'), 'die Energiewende', 'energy transition', 'Deutschlands Energiewende gilt international als Vorzeigeprojekt.'),
  ((select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'), 'die EEG-Umlage', 'renewable energy surcharge', 'Die EEG-Umlage hat die Strompreise auf ein Rekordhoch getrieben.'),
  ((select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'), 'abregeln', 'to curtail (power generation)', 'Die Netzbetreiber mussten Rekordmengen an Strom abregeln.'),
  ((select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'), 'die Einspeisevergütung', 'feed-in tariff', 'Hausbesitzer profitieren von den Einspeisevergütungen.'),
  ((select id from public.articles where title = 'Die Energiewende und ihre versteckten Kosten'), 'der Balanceakt', 'balancing act', 'Ein Balanceakt, der noch lange nicht abgeschlossen ist.');

-- B2 Article 3: Bildungsungleichheit
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'die Herkunft', 'origin, background', 'Die soziale Herkunft entscheidet über den Bildungserfolg.'),
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'ernüchternd', 'sobering', 'Die Zahlen sind ernüchternd.'),
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'das Gymnasium', 'academic high school', 'Kinder aus Akademikerfamilien haben dreimal häufiger die Chance, ein Gymnasium zu besuchen.'),
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'die Segregation', 'segregation', 'Soziale Segregation wird durch das Schulsystem verstärkt.'),
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'der Brennpunkt', 'hotspot, deprived area', 'Eine bessere Ausstattung von Schulen in sozialen Brennpunkten.'),
  ((select id from public.articles where title = 'Bildungsungleichheit in Deutschland: Die soziale Herkunft entscheidet'), 'bürokratisch', 'bureaucratic', 'Die Antragsverfahren waren so bürokratisch.');

-- B2 Article 4: Mittelstand
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'), 'der Mittelstand', 'SMEs, mid-sized companies', 'Der deutsche Mittelstand ist das Rückgrat der Wirtschaft.'),
  ((select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'), 'der Fachkräftemangel', 'skilled labor shortage', 'Der Mittelstand leidet unter dem Fachkräftemangel.'),
  ((select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'), 'die Abwanderung', 'migration, exodus', 'Abwanderung in die Großstädte verschärft die Lage.'),
  ((select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'), 'die Bürokratiebelastung', 'bureaucratic burden', 'Die Bürokratiebelastung ist ein Dauerproblem.'),
  ((select id from public.articles where title = 'Der deutsche Mittelstand im globalen Wettbewerb'), 'der Hidden Champion', 'hidden champion (market leader)', 'Viele Hidden Champions sind Weltmarktführer in ihrer Nische.');

-- B2 Article 5: Psychische Gesundheit
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'), 'die psychische Erkrankung', 'mental illness', 'Lange Zeit war psychische Erkrankung ein Tabuthema.'),
  ((select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'), 'das Tabuthema', 'taboo subject', 'Depressionen waren ein Tabuthema.'),
  ((select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'), 'der Leistungsdruck', 'performance pressure', 'Der Leistungsdruck in Schule und Studium belastet die mentale Gesundheit.'),
  ((select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'), 'niedrigschwellig', 'low-threshold, easily accessible', 'Einige Hochschulen bieten niedrigschwellige Angebote wie Peer-Beratung an.'),
  ((select id from public.articles where title = 'Psychische Gesundheit: Warum wir mehr darüber sprechen müssen'), 'die Stigmatisierung', 'stigmatization', 'Die eigentliche Hürde bleibt die Stigmatisierung.');

-- C1 Article 1: Erinnerungskultur
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'die Erinnerungskultur', 'culture of remembrance', 'Deutschland hat einen besonderen Umgang mit seiner Vergangenheit entwickelt – eine Erinnerungskultur.'),
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'das Beschweigen', 'silencing, remaining silent about', 'Die erste Dekade nach 1945 war von kollektivem Beschweigen geprägt.'),
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'verdrängen', 'to repress, to suppress', 'Die Studenten warfen ihren Eltern vor, die Verbrechen verdrängt zu haben.'),
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'die Gedenkstätte', 'memorial site', 'Ein dichtes Netz aus Gedenkstätten und Museen.'),
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'der Zeitzeuge', 'contemporary witness', 'Die Zeitzeugen sterben – eine Herausforderung für die Erinnerungskultur.'),
  ((select id from public.articles where title = 'Die deutsche Erinnerungskultur: Ein Modell für die Welt?'), 'multidirektional', 'multidirectional', 'Der Kulturwissenschaftler Michael Rothberg fordert eine multidirektionale Erinnerung.');

-- C1 Article 2: Demokratie im digitalen Zeitalter
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'), 'die Desinformation', 'disinformation', 'Desinformationskampagnen stellen liberale Demokratien vor Herausforderungen.'),
  ((select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'), 'die Radikalisierung', 'radicalization', 'Algorithmische Radikalisierung ist ein wachsendes Problem.'),
  ((select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'), 'polarisierend', 'polarizing', 'Die Algorithmen begünstigen emotionale, polarisierende Inhalte.'),
  ((select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'), 'die Datenökonomie', 'data economy', 'Die Rolle der Datenökonomie ist ein zweiter Problemkomplex.'),
  ((select id from public.articles where title = 'Die Zukunft der Demokratie im digitalen Zeitalter'), 'der Bürgerrat', 'citizens'' council', 'Der Österreichische Bürgerrat zeigt, wie Bürger eingebunden werden können.');

-- C1 Article 3: Wissenschaftskommunikation
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'), 'die Quantenphysik', 'quantum physics', 'Quantenphysikalische Phänomene widersprechen der klassischen Mechanik.'),
  ((select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'), 'die Epistemologie', 'epistemology', 'Das Problem hat eine tiefere epistemologische Dimension.'),
  ((select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'), 'das Defizitmodell', 'deficit model (of science communication)', 'Die traditionelle Wissenschaftskommunikation hat auf das Defizitmodell gesetzt.'),
  ((select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'), 'dialogisch', 'dialogic, dialogue-based', 'Neuere Ansätze setzen auf dialogische Formate.'),
  ((select id from public.articles where title = 'Zwischen Quantenphysik und Lebenswelt: Neue Paradigmen in der Wissenschaftskommunikation'), 'der Science-Slam', 'science slam', 'Science-Slams versuchen, die Distanz zwischen Wissenschaft und Gesellschaft zu verringern.');

-- C1 Article 4: Großstadtleben
insert into public.article_vocabulary (article_id, german_word, english_translation, context_sentence) values
  ((select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'), 'das Brennglas', 'burning glass, magnifying lens', 'Die Pandemie hat als Brennglas gewirkt.'),
  ((select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'), 'die Vulnerabilität', 'vulnerability', 'Die Vulnerabilitäten urbaner Räume wurden offengelegt.'),
  ((select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'), 'reversibel', 'reversible', 'Strukturelle Verschiebungen erscheinen kaum reversibel.'),
  ((select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'), 'die Hybridisierung', 'hybridization', 'Die Hybridisierung der Arbeitswelt ist das auffälligste Phänomen.'),
  ((select id from public.articles where title = 'Großstadtleben auf dem Prüfstand: Urbane Transformation nach der Pandemie'), 'verstetigen', 'to make permanent', 'Temporäre Pop-up-Radwege wurden häufig verstetigt.');
