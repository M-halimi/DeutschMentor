/**
 * Goethe/TELC Exam Content Generator
 * Generates mock exams, exam topics, and level guides for DeutschMentor.
 * Run with: npx tsx scripts/generate-content-exam.ts
 * Output: scripts/seed-data/exam.json
 */
import * as fs from 'fs'
import * as path from 'path'

const OUTPUT_FILE = path.join(__dirname, 'seed-data', 'exam.json')

interface Question {
  questionNumber: number
  type: string
  question: string
  options?: string[]
  correctAnswer: string
}

interface Task {
  taskNumber: number
  instructions: string
  text: string
  questions: Question[]
  maxPoints: number
}

interface MockExam {
  title: string
  examType: string
  level: string
  module: string
  description: string
  tasks: Task[]
  totalPoints: number
  passThreshold: number
  timeMinutes: number
  rubric: { criteria: { name: string; description: string; maxPoints: number }[] }
  goetheStyleNotes: string
  tips: string[]
}

interface ExamData {
  mockExams: MockExam[]
  examTopics: any[]
  goetheLevelGuides: any[]
}

function mc(qn: number, q: string, opts: string[], correct: string): Question {
  return { questionNumber: qn, type: 'multiple_choice', question: q, options: opts, correctAnswer: correct }
}
function tf(qn: number, q: string, correct: string = 'Richtig'): Question {
  return { questionNumber: qn, type: 'richtig_falsch', question: q, options: ['Richtig', 'Falsch'], correctAnswer: correct }
}
function matching(qn: number, q: string, opts: string[], correct: string): Question {
  return { questionNumber: qn, type: 'zuordnung', question: q, options: opts, correctAnswer: correct }
}
function task(tn: number, instr: string, text: string, qs: Question[], pts: number): Task {
  return { taskNumber: tn, instructions: instr, text, questions: qs, maxPoints: pts }
}
function mockExam(
  title: string, examType: string, level: string, module: string,
  desc: string, tasks: Task[], total: number, pass: number, time: number,
  rubric: { criteria: { name: string; description: string; maxPoints: number }[] },
  notes: string, tips: string[]
): MockExam {
  return { title, examType, level, module, description: desc, tasks, totalPoints: total, passThreshold: pass, timeMinutes: time, rubric, goetheStyleNotes: notes, tips }
}
function criterion(name: string, desc: string, max: number) {
  return { name, description: desc, maxPoints: max }
}

// ============ A1 LESEN ============
function generateA1LesenMocks(): MockExam[] {
  return [
    mockExam(
      'Goethe A1 Lesen Mock Exam 1', 'goethe', 'A1', 'lesen',
      'Dieser Modelltest bereitet auf das Goethe-Zertifikat A1 Lesen vor. Drei Teile mit kurzen Texten, Anzeigen und Schildern aus dem Alltag.',
      [
        task(1,
          'Lesen Sie die Situationen 1-5 und die Anzeigen A-G. Welche Anzeige passt zu welcher Situation?',
          'Situationen:\n1. Sie moechten Deutsch lernen.\n2. Sie suchen eine Wohnung.\n3. Sie moechten einen Arzttermin.\n4. Sie brauchen ein neues Handy.\n5. Sie suchen einen Job.\n\nAnzeigen:\nA. Sprachschule Berlin Kurse fuer Anfaenger und Fortgeschrittene.\nB. Praxis Dr. Mueller Terminvereinbarung unter 030-123456.\nC. 2-Zimmer-Wohnung ab 1. Maerz zu vermieten.\nD. Elektronik-Shop Handys, Laptops & Zubehoer.\nE. Supermarkt Aldi geoeffnet Mo-Sa 8-20 Uhr.\nF. Stellenanzeige: Verkaeufer/in gesucht.\nG. Restaurant Zum Italiener heute Mittagstisch ab 8 EUR.',
          [
            matching(1, 'Situation 1', ['A','B','C','D','E','F','G'], 'A'),
            matching(2, 'Situation 2', ['A','B','C','D','E','F','G'], 'C'),
            matching(3, 'Situation 3', ['A','B','C','D','E','F','G'], 'B'),
            matching(4, 'Situation 4', ['A','B','C','D','E','F','G'], 'D'),
            matching(5, 'Situation 5', ['A','B','C','D','E','F','G'], 'F'),
          ], 5),
        task(2,
          'Lesen Sie den Text. Sind die Aussagen 1-5 richtig oder falsch?',
          'Hallo, ich heisse Anna und komme aus Polen. Ich wohne seit zwei Jahren in Berlin. Ich arbeite in einem Krankenhaus als Krankenschwester. Ich wohne in einer kleinen Wohnung in Kreuzberg. Am Wochenende gehe ich gern spazieren oder treffe Freunde. Ich mag Berlin, weil die Stadt sehr bunt und lebendig ist.',
          [
            tf(1, 'Anna kommt aus Deutschland.'), tf(2, 'Anna wohnt seit zwei Jahren in Berlin.'),
            tf(3, 'Anna arbeitet in einer Schule.'), tf(4, 'Anna wohnt in einer grossen Wohnung.'),
            tf(5, 'Anna geht am Wochenende gern spazieren.'),
          ], 5),
        task(3,
          'Lesen Sie die E-Mail. Waehlen Sie A, B oder C.',
          'Betreff: Willkommen im Sprachkurs!\n\nLiebe Frau Schmidt,\n\nherzlich willkommen in Ihrem Deutschkurs A1. Der Kurs beginnt am 15. Maerz um 9:00 Uhr im Raum 204. Bitte bringen Sie ein Heft, einen Stift und das Lehrbuch "Menschen A1" mit. Der Kurs kostet 180 Euro. Sie koennen bar oder mit Karte bezahlen.\n\nMit freundlichen Gruessen\nThomas Weber\nKursleitung',
          [
            mc(1, 'Wann beginnt der Kurs?', ['A. Am 15. Maerz','B. Am 15. Mai','C. Am 5. Maerz'], 'A'),
            mc(2, 'Wie viel kostet der Kurs?', ['A. 80 Euro','B. 180 Euro','C. 280 Euro'], 'B'),
            mc(3, 'Was muessen die Teilnehmer mitbringen?', ['A. Einen Laptop','B. Ein Heft, Stift und Lehrbuch','C. Ein Woerterbuch'], 'B'),
            mc(4, 'In welchem Raum findet der Kurs statt?', ['A. Raum 204','B. Raum 402','C. Raum 240'], 'A'),
            mc(5, 'Wer ist Thomas Weber?', ['A. Ein Teilnehmer','B. Der Kursleiter','C. Ein Lehrer aus Muenchen'], 'B'),
          ], 5),
      ], 15, 60, 25,
      { criteria: [criterion('Inhalt','Wurden alle Aufgaben bearbeitet?',5), criterion('Leseverstehen','Wurden die Texte richtig verstanden?',5), criterion('Aufgabenverstaendnis','Wurden die Aufgaben korrekt umgesetzt?',5)] },
      'Orientiert sich am Goethe-Zertifikat A1: Lesen (3 Teile, 25 Minuten).',
      ['Lesen Sie zuerst die Aufgabenstellung genau.','Ueberfliegen Sie den Text vor den Fragen.','Markieren Sie Schluesselwoerter im Text.']
    ),
    mockExam(
      'Goethe A1 Lesen Mock Exam 2', 'goethe', 'A1', 'lesen',
      'Zweiter Modelltest mit Fokus auf Alltagstexte, oeffentliche Hinweise und einfache Korrespondenz.',
      [
        task(1,
          'Wo sehen Sie diese Schilder? Ordnen Sie die Schilder 1-5 den Orten A-G zu.',
          'Schilder:\n1. Eintritt frei\n2. Ausgang\n3. Bitte nicht rauchen\n4. Geoeffnet von 9-18 Uhr\n5. Parken verboten\n\nOrte:\nA. In einem Museum B. An einer Tuer C. In einem Restaurant D. Auf der Strasse E. Vor einem Geschaeft F. Im Krankenhaus G. In der Bibliothek',
          [
            matching(1, 'Schild 1', ['A','B','C','D','E','F','G'], 'A'),
            matching(2, 'Schild 2', ['A','B','C','D','E','F','G'], 'B'),
            matching(3, 'Schild 3', ['A','B','C','D','E','F','G'], 'C'),
            matching(4, 'Schild 4', ['A','B','C','D','E','F','G'], 'E'),
            matching(5, 'Schild 5', ['A','B','C','D','E','F','G'], 'D'),
          ], 5),
        task(2,
          'Lesen Sie den Text. Sind die Aussagen richtig oder falsch?',
          'Liebe Lena,\n\nwie geht es dir? Mir geht es gut. Ich bin jetzt in Muenchen. Die Stadt ist sehr schoen. Ich wohne in einem Hotel in der Innenstadt. Morgen besuche ich das Deutsche Museum. Am Abend esse ich im Hofbraeuhaus. Das Wetter ist sonnig und warm.\n\nViele Gruesse\nMaria',
          [
            tf(1, 'Maria ist in Berlin.'), tf(2, 'Maria wohnt in einem Hotel.'),
            tf(3, 'Maria besucht morgen den Zoo.'), tf(4, 'Das Wetter ist schlecht.'),
            tf(5, 'Maria schreibt eine Postkarte an Lena.'),
          ], 5),
        task(3,
          'Lesen Sie die Kurztexte 1-3 und beantworten Sie die Fragen.',
          'Text 1: Fruehlingsfest am Samstag, 20. April, ab 14 Uhr im Stadtpark. Musik, Essen und Spiele fuer Kinder. Eintritt frei.\nText 2: Zimmermaedchen gesucht! Hotel Sonne sucht Reinigungskraft. Arbeitszeit 9-13 Uhr. 12 EUR pro Stunde. Tel: 089-1234567.\nText 3: Ihre Bestellung ist angekommen. Abholung ab Montag im Geschaeft. Oeffnungszeiten Mo-Fr 10-19 Uhr. MediaMarkt-Team.',
          [
            mc(1, 'Wann ist das Fruehlingsfest?', ['A. Am Sonntag','B. Am Samstag, 20. April','C. Am 20. Mai'], 'B'),
            mc(2, 'Was wird im Hotel Sonne angeboten?', ['A. Stelle als Koch','B. Stelle als Zimmermaedchen','C. Stelle als Rezeptionist'], 'B'),
            mc(3, 'Wo kann Herr Schulz seine Bestellung abholen?', ['A. Im Hotel Sonne','B. Im MediaMarkt','C. Im Stadtpark'], 'B'),
          ], 5),
      ], 15, 60, 25,
      { criteria: [criterion('Inhalt','Wurden alle Aufgaben bearbeitet?',5), criterion('Leseverstehen','Wurden die Texte richtig verstanden?',5), criterion('Aufgabenverstaendnis','Wurden die Aufgaben korrekt umgesetzt?',5)] },
      'Orientiert sich am Goethe-Zertifikat A1: Lesen (3 Teile, 25 Minuten).',
      ['Achten Sie auf Signalwoerter wie nicht, kein, aber.','Bei Richtig/Falsch: Nur der Text zaehlt.','Lesen Sie alle Optionen vor der Antwort.']
    ),
  ]
}

// ============ A1 HOEREN ============
function generateA1HoerenMocks(): MockExam[] {
  return [
    mockExam(
      'Goethe A1 Hoeren Mock Exam 1', 'goethe', 'A1', 'hoeren',
      'Modelltest fuer das Goethe-Zertifikat A1 Hoeren. Uebt das Verstehen von Durchsagen, kurzen Gespraechen und Alltagsdialogen.',
      [
        task(1,
          'Sie hoeren fuenf kurze Durchsagen. Waehlen Sie A, B oder C.',
          'Durchsage 1: "Achtung, Bahnsteig 3, der Zug nach Muenchen faehrt um 14:30 Uhr ab."\nDurchsage 2: "Liebe Kunden, unser Geschaeft schliesst heute um 18:00 Uhr."\nDurchsage 3: "Bitte leise sein. Hier ist die Bibliothek."\nDurchsage 4: "Die naechste U-Bahn kommt in 5 Minuten."\nDurchsage 5: "Tisch Nummer 7, Ihre Bestellung ist fertig."',
          [
            mc(1, 'Wohin faehrt der Zug?', ['A. Nach Berlin','B. Nach Muenchen','C. Nach Hamburg'], 'B'),
            mc(2, 'Wann schliesst das Geschaeft?', ['A. Um 16:00','B. Um 17:00','C. Um 18:00'], 'C'),
            mc(3, 'Wo ist diese Durchsage zu hoeren?', ['A. Im Supermarkt','B. In der Bibliothek','C. Im Schwimmbad'], 'B'),
            mc(4, 'Wie lange bis zur naechsten U-Bahn?', ['A. 2 Minuten','B. 5 Minuten','C. 10 Minuten'], 'B'),
            mc(5, 'Was ist fertig?', ['A. Die Waesche','B. Die Bestellung','C. Die Arbeit'], 'B'),
          ], 5),
        task(2,
          'Sie hoeren ein Gespraech am Fahrkartenschalter. Sind die Aussagen richtig oder falsch?',
          'A: "Guten Tag, ich haette gern ein Ticket nach Frankfurt."\nB: "Einzelfahrt oder Hin- und Rueckfahrt?"\nA: "Hin- und Rueckfahrt, bitte."\nB: "Das macht 45 Euro."\nA: "Hier ist mein Studentenausweis. Gibt es Ermassigung?"\nB: "Ja, dann kostet es 30 Euro."\nA: "OK, ich zahle mit Karte."',
          [
            tf(1, 'Die Person moechte nach Berlin fahren.'), tf(2, 'Die Person kauft eine Hin- und Rueckfahrkarte.'),
            tf(3, 'Der normale Preis ist 45 Euro.'), tf(4, 'Die Person hat keinen Studentenausweis.'),
            tf(5, 'Die Person bezahlt bar.'),
          ], 5),
        task(3,
          'Sie hoeren fuenf Aussagen. Was ist das Thema? A, B oder C.',
          '1. "Ich habe Kopfschmerzen und Fieber."\n2. "Ich moechte ein Zimmer mit Bad und Balkon."\n3. "Mein Flug geht um 6 Uhr morgens."\n4. "Ich haette gern einen Kaffee und ein Stueck Kuchen."\n5. "Ich brauche ein Rezept fuer die Erkaeltung."',
          [
            mc(1, 'Aussage 1', ['A. Einkaufen','B. Krankheit','C. Reisen'], 'B'),
            mc(2, 'Aussage 2', ['A. Wohnungssuche','B. Urlaub','C. Arbeit'], 'A'),
            mc(3, 'Aussage 3', ['A. Hotel','B. Flughafen','C. Restaurant'], 'B'),
            mc(4, 'Aussage 4', ['A. Im Cafe','B. Im Kino','C. Im Museum'], 'A'),
            mc(5, 'Aussage 5', ['A. Beim Arzt','B. In der Apotheke','C. Im Supermarkt'], 'A'),
          ], 5),
      ], 15, 60, 20,
      { criteria: [criterion('Inhalt','Wurden alle Aufgaben bearbeitet?',5), criterion('Hoerverstehen','Wurden die Hoertexte richtig verstanden?',5), criterion('Detailverstaendnis','Wurden Details korrekt erkannt?',5)] },
      'Orientiert sich am Goethe-Zertifikat A1: Hoeren (3 Teile, 20 Minuten).',
      ['Lesen Sie die Fragen vor dem Hoeren.','Konzentrieren Sie sich auf Zahlen, Namen und Orte.','Keine Panik bei Unverstaendnis - der Kontext hilft.']
    ),
    mockExam(
      'Goethe A1 Hoeren Mock Exam 2', 'goethe', 'A1', 'hoeren',
      'Zweiter Modelltest mit Telefonansagen und Alltagsgespraechen.',
      [
        task(1,
          'Sie hoeren fuenf Ansagen auf einem Telefonbeantworter. Welche Information ist richtig?',
          '1. "Hallo Herr Meier, hier ist die Praxis Dr. Schneider. Termin morgen um 10 Uhr faellt aus. Bitte rueckrufen."\n2. "Hier ist Anna. Ich komme spaeter zur Party. Erst um 21 Uhr."\n3. "Paket fuer Frau Schmidt in der Filiale Hauptstrasse 12 bereit. Abholung ab 15 Uhr."\n4. "ICE 728 nach Hamburg faehrt heute von Gleis 7 ab."\n5. "Kino Union: Film beginnt um 20:15 Uhr. Karten an der Abendkasse."',
          [
            mc(1, 'Warum ruft die Praxis an?', ['A. Terminbestaetigung','B. Terminabsage','C. Rechnungserinnerung'], 'B'),
            mc(2, 'Wann kommt Anna?', ['A. Um 19 Uhr','B. Um 20 Uhr','C. Um 21 Uhr'], 'C'),
            mc(3, 'Wo kann Frau Schmidt das Paket abholen?', ['A. Hauptstrasse 12','B. Postfiliale Bahnhof','C. Zu Hause'], 'A'),
            mc(4, 'Von welchem Gleis faehrt der ICE?', ['A. Gleis 5','B. Gleis 7','C. Gleis 9'], 'B'),
            mc(5, 'Wann beginnt der Film?', ['A. 20:15 Uhr','B. 19:45 Uhr','C. 21:00 Uhr'], 'A'),
          ], 5),
        task(2,
          'Sie hoeren ein Gespraech im Restaurant. Richtig oder falsch?',
          'Kellner: "Guten Abend, haben Sie schon gewaehlt?"\nGast: "Ja, Tomatensuppe und dann Schnitzel mit Pommes."\nKellner: "Als Getraenk?"\nGast: "Mineralwasser, bitte."\nKellner: "Moechten Sie auch einen Nachtisch?"\nGast: "Nein, danke."',
          [
            tf(1, 'Der Gast bestellt zuerst Tomatensuppe.'), tf(2, 'Der Gast moechte Schnitzel mit Reis.'),
            tf(3, 'Der Gast trinkt Mineralwasser.'), tf(4, 'Der Gast moechte einen Nachtisch.'),
            tf(5, 'Der Kellner bringt zuerst das Schnitzel.'),
          ], 5),
        task(3,
          'Sie hoeren fuenf Personen ueber ihre Hobbys. Welches Hobby passt?',
          '1. "Ich gehe jeden Samstag ins Schwimmbad."\n2. "Ich lese gern Krimis und Romane."\n3. "Ich spiele Gitarre in einer Band."\n4. "Ich koche gern italienische Gerichte."\n5. "Ich mache jeden Morgen Yoga."',
          [
            mc(1, 'Person 1', ['A. Schwimmen','B. Lesen','C. Kochen'], 'A'),
            mc(2, 'Person 2', ['A. Musik','B. Lesen','C. Sport'], 'B'),
            mc(3, 'Person 3', ['A. Kochen','B. Reisen','C. Musik'], 'C'),
            mc(4, 'Person 4', ['A. Backen','B. Kochen','C. Malen'], 'B'),
            mc(5, 'Person 5', ['A. Yoga','B. Joggen','C. Tanzen'], 'A'),
          ], 5),
      ], 15, 60, 20,
      { criteria: [criterion('Inhalt','Wurden alle Aufgaben bearbeitet?',5), criterion('Hoerverstehen','Wurden die Hoertexte richtig verstanden?',5), criterion('Detailverstaendnis','Wurden Details korrekt erkannt?',5)] },
      'Orientiert sich am Goethe-Zertifikat A1: Hoeren (3 Teile, 20 Minuten).',
      ['Achten Sie auf Zahlen und Uhrzeiten.','Lesen Sie die Antworten vor dem Hoeren.','Notieren Sie Schluesselwoerter.']
    ),
  ]
}

// ============ A1 SCHREIBEN ============
function generateA1SchreibenMocks(): MockExam[] {
  return [
    mockExam('Goethe A1 Schreiben Mock Exam 1','goethe','A1','schreiben',
      'Modelltest fuer das Goethe-Zertifikat A1 Schreiben. Formular ausfuellen und kurze Nachricht schreiben.',
      [task(1,'Sie moechten einen Deutschkurs besuchen. Fuellen Sie das Anmeldeformular aus.','Anmeldeformular Sprachschule Berlin\n\nName: _________\nVorname: _________\nAdresse: _________\nTelefon: _________\nE-Mail: _________\nSprachniveau: _________\nKursbeginn: _________',[mc(1,'Welche Informationen muessen Sie angeben?',['A. Name, Adresse, Telefon, E-Mail, Sprachniveau, Kursbeginn','B. Nur Name und Adresse','C. Name, Geburtsdatum, Beruf'],'A'),mc(2,'Was ist ein passendes Sprachniveau fuer Anfaenger?',['A. A1','B. C1','C. B2'],'A')],4),task(2,'Ihr Freund Max hat Geburtstag. Schreiben Sie eine kurze Glueckwunschkarte (20-30 Woerter).','Beispiel: Lieber Max, herzlichen Glueckwunsch zum Geburtstag! Ich schenke dir ein Buch. Was machst du heute?',[mc(1,'Was ist der wichtigste Teil einer Geburtstagskarte?',['A. Die Glueckwuensche','B. Das Datum','C. Die Unterschrift'],'A'),mc(2,'Wie lang sollte die Nachricht sein?',['A. 5-10 Woerter','B. 20-30 Woerter','C. 50-60 Woerter'],'B')],6)],
      10,60,20,{criteria:[criterion('Inhalt','Wurden alle Punkte bearbeitet?',4),criterion('Kommunikative Gestaltung','Ist der Text verstaendlich?',3),criterion('Formale Richtigkeit','Grammatik und Rechtschreibung?',3)]},
      'Orientiert sich am Goethe A1: Schreiben (2 Teile, 20 Minuten).',['Lesen Sie die Aufgabenstellung genau.','Schreiben Sie nicht zu wenig.','Kontrollieren Sie Rechtschreibung und Grammatik.']),
    mockExam('Goethe A1 Schreiben Mock Exam 2','goethe','A1','schreiben',
      'Zweiter Modelltest mit Formular und E-Mail.',
      [task(1,'Sie melden sich fuer einen Sportkurs an. Fuellen Sie das Formular aus.','Anmeldung Sportkurs Fit im Park\n\nVorname: _________\nNachname: _________\nGeburtsdatum: _________\nStrasse: _________\nPLZ, Ort: _________\nKurs: Yoga / Pilates / Zumba / Joggen\nZahlungsart: Bar / Ueberweisung',[mc(1,'Welche Angabe wird nicht verlangt?',['A. Geburtsdatum','B. Beruf','C. Adresse'],'B'),mc(2,'Welche Kurse stehen zur Auswahl?',['A. Yoga, Pilates, Zumba, Joggen','B. Schwimmen, Tennis, Fussball','C. Malen, Singen, Tanzen'],'A')],4),task(2,'Sie haben einen Arzttermin vergessen. Schreiben Sie eine E-Mail an die Praxis (20-30 Woerter).','Beispiel: Sehr geehrte Damen und Herren, ich habe meinen Termin am Montag vergessen. Es tut mir leid. Haben Sie am Freitag um 10 Uhr einen Termin frei?',[mc(1,'Wie sollten Sie die Praxis anreden?',['A. Hallo','B. Sehr geehrte Damen und Herren','C. Liebe Praxis'],'B'),mc(2,'Was sollten Sie nicht vergessen?',['A. Eine Entschuldigung','B. Eine Beschwerde','C. Eine Rechnung'],'A')],6)],
      10,60,20,{criteria:[criterion('Inhalt','Wurden alle Punkte bearbeitet?',4),criterion('Kommunikative Gestaltung','Ist der Text verstaendlich?',3),criterion('Formale Richtigkeit','Grammatik und Rechtschreibung?',3)]},
      'Orientiert sich am Goethe A1: Schreiben (2 Teile, 20 Minuten).',['Achten Sie auf formelle Anrede in E-Mails.','Fuellen Sie alle Formularfelder aus.','Schreiben Sie leserlich.'])
  ]
}

// ============ A1 SPRECHEN ============
function generateA1SprechenMock(): MockExam[] {
  return [mockExam('Goethe A1 Sprechen Mock Exam','goethe','A1','sprechen',
    'Modelltest fuer Goethe A1 Sprechen. Sich vorstellen, Fragen stellen und beantworten, Bitten formulieren.',
    [task(1,'Sich vorstellen: Name, Wohnort, Beruf, Hobbys (ca. 30 Sekunden).','Beispiel: Guten Tag! Ich heisse Maria Schmidt. Ich wohne in Koeln. Ich bin Studentin. In meiner Freizeit lese ich gern.',[mc(1,'Welche Informationen gehoeren zur Vorstellung?',['A. Name, Wohnort, Beruf, Hobbys','B. Nur den Namen','C. Lieblingstier'],'A'),mc(2,'Wie lange sollten Sie sprechen?',['A. 10 Sekunden','B. 30 Sekunden','C. 2 Minuten'],'B')],5),
    task(2,'Fragen stellen und antworten: Ihr Partner wohnt in Berlin und arbeitet als Arzt. Stellen Sie drei Fragen.','Moegliche Fragen: Seit wann wohnen Sie in Berlin? Gefaellt es Ihnen? Was machen Sie in der Freizeit?',[mc(1,'Welche Frage passt zu "Ich wohne in Berlin"?',['A. Seit wann wohnen Sie da?','B. Wie viel kostet das?','C. Haben Sie Haustiere?'],'A'),mc(2,'Welche Frage passt nicht zum Thema Arbeit?',['A. Wo arbeiten Sie?','B. Moegen Sie Ihren Beruf?','C. Was ist Ihre Lieblingsfarbe?'],'C')],5),
    task(3,'Bitten formulieren: Im Cafe Kaffee bestellen, bezahlen, Toilette suchen.','Beispiel: "Ich haette gern einen Kaffee, bitte." / "Die Rechnung, bitte." / "Wo ist die Toilette?"',[mc(1,'Wie bestellen Sie hoefflich?',['A. Kaffee!','B. Ich haette gern einen Kaffee, bitte.','C. Geben Sie mir Kaffee.'],'B'),mc(2,'Wie fragen Sie nach der Toilette?',['A. Wo ist Klo?','B. Toilette!','C. Entschuldigung, wo ist die Toilette?'],'C')],5)],
    15,60,15,{criteria:[criterion('Aussprache','Ist die Aussprache verstaendlich?',5),criterion('Kommunikative Gestaltung','Kann der Pruefling angemessen reagieren?',5),criterion('Formale Richtigkeit','Sind die Saetze korrekt?',5)]},
    'Orientiert sich am Goethe A1: Sprechen (3 Teile, 15 Minuten).',['Ueben Sie die Selbstvorstellung taeglich.','Sprechen Sie langsam und deutlich.','Nachfragen ist erlaubt!'])]
}

// ============ A2 MOCKS ============
function generateA2Mocks(): MockExam[] {
  return [
    mockExam('Goethe A2 Lesen Mock Exam','goethe','A2','lesen',
      'Modelltest fuer Goethe A2 Lesen mit E-Mails, Textverstaendnis und Anzeigen.',
      [task(1,'Lesen Sie die E-Mails 1-5. Ordnen Sie die passenden Betreffzeilen A-H zu.','E-Mails:\n1. Ihre Bewerbung ist eingegangen. Einladung zum Vorstellungsgespraech am 15. Mai.\n2. Ich kann leider nicht zum Training kommen. Bin krank.\n3. Hiermit kuendige ich mein Abo zum 30. Juni.\n4. Vielen Dank fuer das Geburtstagsgeschenk! Der Pullover gefaellt mir.\n5. Ihre Rechnung ueber 89,90 EUR ist bis 10. Mai faellig.\nBetreffe: A. Einladung Vorstellungsgespraech B. Trainingsabsage C. Danke fuer Geschenk D. Kuendigung Abo E. Zahlungserinnerung F. Urlaubsgruesse G. Paketankuendigung H. Terminbestaetigung',[matching(1,'E-Mail 1',['A','B','C','D','E','F','G','H'],'A'),matching(2,'E-Mail 2',['A','B','C','D','E','F','G','H'],'B'),matching(3,'E-Mail 3',['A','B','C','D','E','F','G','H'],'D'),matching(4,'E-Mail 4',['A','B','C','D','E','F','G','H'],'C'),matching(5,'E-Mail 5',['A','B','C','D','E','F','G','H'],'E')],5),
      task(2,'Lesen Sie den Text ueber Hamburg. Richtig oder falsch?','Hamburg ist eine Stadt im Norden Deutschlands mit ca. 1,8 Mio. Einwohnern. Bekannt fuer den Hafen, den zweitgroessten Containerhafen Europas. Sehenswuerdigkeiten: Speicherstadt, Rathaus, Elbphilharmonie. Das Wetter ist oft windig und regnerisch. Beste Reisezeit: Mai bis September.',[tf(1,'Hamburg liegt im Sueden Deutschlands.'),tf(2,'Der Hamburger Hafen ist der groesste Containerhafen Europas.'),tf(3,'Die Elbphilharmonie ist in Hamburg.'),tf(4,'In Hamburg regnet es selten.'),tf(5,'Beste Reisezeit ist Mai bis September.')],5),
      task(3,'Lesen Sie die Anzeigen und beantworten Sie die Fragen.','Anzeige 1: Italienisch-Intensivkurs 4 Wochen, 2x pro Woche, 180 EUR inkl. Material. Start 10. Juni.\nAnzeige 2: Gebrauchtes Damenrad, 28 Zoll, 3 Jahre, guter Zustand. 120 EUR VB. Tel: 0176-12345678.\nAnzeige 3: Studentin sucht 1-Zimmer-Wohnung in Stuttgart bis 500 EUR warm.',[mc(1,'Wie lange dauert der Italienischkurs?',['A. 2 Wochen','B. 4 Wochen','C. 6 Wochen'],'B'),mc(2,'Was ist im Kurspreis enthalten?',['A. Unterkunft','B. Lernmaterial','C. Verpflegung'],'B'),mc(3,'Wie viel kostet das Fahrrad?',['A. 100 EUR','B. 120 EUR','C. 150 EUR'],'B'),mc(4,'Was bedeutet VB?',['A. Verkauft','B. Verhandlungsbasis','C. Viel billiger'],'B'),mc(5,'Welche Wohnung sucht die Studentin?',['A. 2-Zimmer','B. 1-Zimmer','C. Einfamilienhaus'],'B')],5)],
      15,60,30,{criteria:[criterion('Inhalt','Wurden alle Aufgaben bearbeitet?',5),criterion('Leseverstehen','Texte richtig verstanden?',5),criterion('Detailverstaendnis','Details korrekt erfasst?',5)]},
      'Orientiert sich am Goethe A2: Lesen (3 Teile, 30 Minuten).',['Lesen Sie zuerst die Fragen, dann den Text.','Achten Sie auf Signalwoerter.','Bei unbekannten Woertern: Kontext hilft.']),
    mockExam('Goethe A2 Hoeren Mock Exam','goethe','A2','hoeren',
      'Modelltest fuer Goethe A2 Hoeren mit Radiodurchsagen, Telefongespraechen und Alltagsdialogen.',
      [task(1,'Sie hoeren fuenf Radiodurchsagen. Waehlen Sie A, B oder C.','1. A3 zwischen Koeln und Frankfurt: Stau von 10 km.\n2. Wetter morgen: bewolkt mit Regen, 12-15 Grad.\n3. Stadtmuseum: Ausstellung ueber Geschichte Berlins.\n4. Zug nach Stuttgart faellt aus. Grund: Personen im Gleis.\n5. Supermaerkte sonntags in Deutschland geschlossen.',[mc(1,'Wo gibt es Stau?',['A. A3','B. A1','C. A9'],'A'),mc(2,'Wetter morgen?',['A. Sonnig','B. Bewoelkt mit Regen','C. Schnee'],'B'),mc(3,'Was ist im Stadtmuseum?',['A. Konzert','B. Ausstellung','C. Filmabend'],'B'),mc(4,'Warum Zugausfall?',['A. Streik','B. Personen im Gleis','C. Schnee'],'B'),mc(5,'Was ist sonntags geschlossen?',['A. Restaurants','B. Supermaerkte','C. Apotheken'],'B')],5),
      task(2,'Telefongespraech Hotelreservierung. Richtig oder falsch?','Mitarbeiter: "Hotel Sonne, guten Tag."\nFrau Klein: "Ich moechte ein Zimmer reservieren."\nM: "Von wann bis wann?"\nFK: "Vom 3. bis 7. August."\nM: "Einzel- oder Doppelzimmer?"\nFK: "Einzelzimmer mit Bad."\nM: "85 Euro pro Nacht. Fruehstueck inklusive."\nFK: "Gut, ich reserviere."',[tf(1,'Frau Klein ruft im Hotel Sonne an.'),tf(2,'Sie moechte ein Doppelzimmer.'),tf(3,'Das Zimmer kostet 85 Euro pro Nacht.'),tf(4,'Fruehstueck kostet extra.'),tf(5,'Reservierung vom 3. bis 7. August.')],5),
      task(3,'Fuenf Personen ueber ihre Tagesroutine. Was machen sie?','1. "Ich stehe um 6 Uhr auf und mache einen Spaziergang."\n2. "In der Mittagspause esse ich in der Kantine."\n3. "Nach der Arbeit gehe ich ins Fitnessstudio."\n4. "Am Wochenende schlafe ich lange."\n5. "Vor dem Schlafen lese ich ein Kapitel."',[mc(1,'Person 1 steht auf und...',['A. macht Spaziergang','B. fruehstueckt','C. geht joggen'],'A'),mc(2,'Person 2 isst...',['A. zu Hause','B. in der Kantine','C. im Restaurant'],'B'),mc(3,'Person 3 geht...',['A. schwimmen','B. ins Fitnessstudio','C. nach Hause'],'B'),mc(4,'Person 4 schlaft...',['A. wenig','B. lange','C. gar nicht'],'B'),mc(5,'Person 5 liest...',['A. Zeitung','B. ein Kapitel','C. E-Mails'],'B')],5)],
      15,60,25,{criteria:[criterion('Inhalt','Aufgaben vollstaendig?',5),criterion('Hoerverstehen','Hoertexte richtig verstanden?',5),criterion('Detailverstaendnis','Details korrekt?',5)]},
      'Orientiert sich am Goethe A2: Hoeren (3 Teile, ca. 25 Minuten).',['Hoe ren Sie aktiv: Machen Sie Notizen.','Konzentrieren Sie sich auf Wer? Was? Wann? Wo?','Bei Zahlen: genau zuhoeren.']),
    mockExam('Goethe A2 Schreiben Mock Exam','goethe','A2','schreiben',
      'Modelltest fuer Goethe A2 Schreiben. Private und formelle Nachricht.',
      [task(1,'Sie machen Urlaub. Schreiben Sie Ihrer Freundin Lisa (ca. 40 Woerter): Wann/wohin, mit wem, Blumen giessen?','Beispiel: Liebe Lisa, ich fahre von Montag bis Freitag nach Wien. Ich reise mit meiner Schwester. Kannst du bitte meine Blumen giessen? Danke!',[mc(1,'Welche Infos gehoeren in die E-Mail?',['A. Reiseziel, Begleitung, Bitte','B. Wetter, Hotel, Flugnummer','C. Lieblingsgericht, Hobbys'],'A'),mc(2,'Wie bitten Sie hoefflich um Hilfe?',['A. Giess meine Blumen!','B. Kannst du bitte meine Blumen giessen?','C. Du musst meine Blumen giessen.'],'B')],5),
      task(2,'Sie muessen einen Sprachkurs absagen. Schreiben Sie eine formelle E-Mail (ca. 50 Woerter).','Beispiel: Betreff: Kursabsage\nSehr geehrte Damen und Herren, leider kann ich am Deutschkurs ab 15. Maerz nicht teilnehmen. Ich bin krank. Kann ich auf Mai verschieben? Mit freundlichen Gruessen, [Name]',[mc(1,'Passender Betreff?',['A. Hallo','B. Kursabsage','C. Sprachschule'],'B'),mc(2,'Angemessener Gruss in formeller E-Mail?',['A. Liebe Gruesse','B. Mit freundlichen Gruessen','C. Tschuess'],'B')],5)],
      10,60,30,{criteria:[criterion('Inhalt','Alle Punkte bearbeitet?',4),criterion('Kommunikative Gestaltung','Verstaendlich und angemessen?',3),criterion('Formale Richtigkeit','Grammatik, Rechtschreibung?',3)]},
      'Orientiert sich am Goethe A2: Schreiben (2 Teile, 30 Minuten).',['Planen Sie kurz vor dem Schreiben.','Einfache Saetze, aber Satzbau variieren.','Kontrollieren: Alle Punkte beantwortet?']),
    mockExam('Goethe A2 Sprechen Mock Exam','goethe','A2','sprechen',
      'Modelltest fuer Goethe A2 Sprechen. Vorstellung, Gespraech ueber Alltag, gemeinsame Planung.',
      [task(1,'Sich vorstellen: Name, Herkunft, Familie, Spracherfahrung, Hobbys (ca. 1 Min.).','Beispiel: Guten Morgen! Ich heisse Anna und komme aus Spanien. Ich wohne mit meinem Mann in Frankfurt. Ich lerne seit drei Monaten Deutsch.',[mc(1,'Wie lange sprechen?',['A. 30 Sekunden','B. 1 Minute','C. 3 Minuten'],'B'),mc(2,'Was gehoert nicht zur Vorstellung?',['A. Spracherfahrung','B. Lieblingsfarbe des Partners','C. Hobbys'],'B')],5),
      task(2,'Thema: Mein Lieblingsort. Ort, Grund, Aktivitaeten, Haeufigkeit.','Mein Lieblingsort ist der Park am Fluss. Ich gehe gern hin, weil es ruhig ist. Ich lese dort oder treffe Freunde.',[mc(1,'Welche Aspekte nennen?',['A. Ort, Grund, Aktivitaeten, Haeufigkeit','B. Nur Name','C. Geschichte'],'A'),mc(2,'Wie begruenden Sie Vorlieben?',['A. Es gefaellt mir, weil...','B. Es ist uninteressant.','C. Ich weiss nicht.'],'A')],5),
      task(3,'Gemeinsam planen: Picknick organisieren. Wann, wo, Essen, Ausruestung.','Dialog: A: "Wann moechtest du das Picknick?" B: "Am Samstag um 14 Uhr?" A: "Gute Idee. Wo?" B: "Im Stadtpark." A: "Ich bringe Brote und Wasser mit."',[mc(1,'Was besprechen?',['A. Datum, Ort, Essen, Ausruestung','B. Nur Musik','C. Kleiderordnung'],'A'),mc(2,'Wie Vorschlag machen?',['A. Ich will...','B. Moechtest du am Samstag?','C. Das ist bloed.'],'B')],5)],
      15,60,15,{criteria:[criterion('Aussprache','Klar und verstaendlich?',5),criterion('Kommunikative Gestaltung','Fluessig und angemessen?',5),criterion('Formale Richtigkeit','Grammatik und Wortschatz angemessen?',5)]},
      'Orientiert sich am Goethe A2: Sprechen (3 Teile, ca. 15 Minuten).',['Sprechen Sie auch bei Unsicherheit.','Nutzen Sie Fuellwoerter wie also, dann, und.','Bei Partneraufgabe: Zuh oren und reagieren.'])
  ]
}

// ============ B1 MOCKS ============
function generateB1Mocks(): MockExam[] {
  return [
    mockExam('Goethe B1 Lesen Mock Exam','goethe','B1','lesen',
      'Modelltest fuer Goethe B1 Lesen mit Blogbeitraegen, Zeitungsartikeln und Forumsbeitraegen.',
      [task(1,'Blogbeitrag ueber nachhaltiges Leben. Richtig oder falsch?','Seit einem Jahr lebe ich nachhaltiger. Ich kaufe Obst auf dem Wochenmarkt, fahre mit dem Fahrrad zur Arbeit und repariere kaputte Sachen. Mein Strom kommt von einem Oeko-Anbieter. Nachhaltiges Leben ist nicht immer einfach, aber es fuehlt sich richtig an.',[tf(1,'Die Person benutzt noch Plastiktueten.'),tf(2,'Sie kauft Obst im Supermarkt.'),tf(3,'Sie faehrt mit dem Fahrrad zur Arbeit.'),tf(4,'Sie wirft kaputte Sachen sofort weg.'),tf(5,'Nachhaltiges Leben ist manchmal nicht einfach.')],5),
      task(2,'Zeitungsartikel ueber Homeoffice. A, B oder C.','35% der Erwerbstaetigen arbeiten mindestens einen Tag pro Woche im Homeoffice. Besonders in der IT-Branche. Vorteile: flexible Zeiten, keine Anfahrt. Nachteile: Einsamkeit. Experten empfehlen klare Grenzen zwischen Arbeit und Freizeit.',[mc(1,'Wie viel Prozent arbeiten im Homeoffice?',['A. 25%','B. 30%','C. 35%'],'C'),mc(2,'In welcher Branche ist Homeoffice verbreitet?',['A. Gesundheitswesen','B. IT-Branche','C. Einzelhandel'],'B'),mc(3,'Welcher Nachteil wird genannt?',['A. Hoehere Kosten','B. Einsamkeit','C. Weniger Produktivitaet'],'B'),mc(4,'Was empfehlen Experten?',['A. Mehr Ueberstunden','B. Klare Grenzen setzen','C. Jeden Tag im Buero'],'B'),mc(5,'Welcher Vorteil wird nicht genannt?',['A. Flexible Zeiten','B. Hoeheres Gehalt','C. Keine Anfahrt'],'B')],5),
      task(3,'Forumsbeitraege 1-5. Welche Ueberschrift A-G passt?','1. "Erstes Auto gekauft - gebrauchter Golf."\n2. "Urlaub in Schweden, Nordlichter gesehen."\n3. "Gehaltserhoeung bekommen!"\n4. "Marathon gelaufen - hart aber toll."\n5. "Von Freund getrennt - tut weh, aber richtig."\nUeberschriften: A. Naturerlebnis B. Erster Autokauf C. Sportlicher Erfolg D. Gehaltserhoeung E. Beziehungsende F. Wohnungswechsel G. Studienbeginn',[matching(1,'Beitrag 1',['A','B','C','D','E','F','G'],'B'),matching(2,'Beitrag 2',['A','B','C','D','E','F','G'],'A'),matching(3,'Beitrag 3',['A','B','C','D','E','F','G'],'D'),matching(4,'Beitrag 4',['A','B','C','D','E','F','G'],'C'),matching(5,'Beitrag 5',['A','B','C','D','E','F','G'],'E')],5)],
      15,60,40,{criteria:[criterion('Inhalt','Alle Aufgaben bearbeitet?',5),criterion('Leseverstehen','Texte richtig verstanden?',5),criterion('Detailverstaendnis','Details und Gesamtverstaendnis?',5)]},
      'Orientiert sich am Goethe B1: Lesen (3 Teile, 40 Minuten).',['Lesen Sie zuerst die ganze Aufgabe.','Achten Sie auf Woerter wie immer, nie, alle.','Markieren Sie wichtige Textstellen.']),
    mockExam('Goethe B1 Hoeren Mock Exam','goethe','B1','hoeren',
      'Modelltest fuer Goethe B1 Hoeren mit Radiogespraechen, Interviews und Alltagsdiskussionen.',
      [task(1,'Radiogespraech ueber digitales Lernen. A, B oder C.','Moderator: "Frau Dr. Weber, Vorteile von digitalem Lernen?"\nDr. Weber: "Flexibilitaet, jederzeit und ueberall lernen, interaktive Uebungen."\nM: "Nachteile?"\nW: "Disziplin noetig, manche verlieren Motivation. Nicht alle Kurse sind qualitativ hochwertig."\nM: "Zukunft?"\nW: "Mischung aus digital und Praesenz ist ideal."',[mc(1,'Vorteil von digitalem Lernen?',['A. Niedrige Kosten','B. Flexibilitaet','C. Soziale Kontakte'],'B'),mc(2,'Nachteil?',['A. Zu viele Uebungen','B. Braucht Disziplin','C. Zu teuer'],'B'),mc(3,'Empfehlung fuer Zukunft?',['A. Nur digital','B. Nur Praesenz','C. Mischung aus beidem'],'C')],5),
      task(2,'Gespraech ueber Wohnungssuche. Richtig oder falsch?','Anna: "Suche seit 3 Monaten eine Wohnung in Muenchen. 2-Zimmer-Wohnung kostet mindestens 1200 Euro warm."\nBen: "Wie viel suchst du?"\nA: "Bis 900 Euro warm - fast nichts zu finden."\nB: "Hast du WG probiert?"\nA: "Ja, aber mit 32 will ich nicht mehr in WG wohnen."\nB: "Vielleicht ausserhalb von Muenchen?"\nA: "Gute Idee."',[tf(1,'Anna sucht seit 2 Monaten.'),tf(2,'2-Zimmer-Wohnung kostet mindestens 1200 Euro warm.'),tf(3,'Anna sucht bis 900 Euro warm.'),tf(4,'Anna will in einer WG wohnen.'),tf(5,'Ben schlaegt Umland vor.')],5),
      task(3,'Fuenf Aussagen zum Thema Gesundheit. Situationen A-G zuordnen.','1. "Rueckenschmerzen - sollte zum Physio."\n2. "Letzte Nacht kaum geschlafen - Baustellenlaerm."\n3. "Will mit Rauchen aufhoeren."\n4. "Nur Fertiggerichte - fuehle mich schlapp."\n5. "Heute gejoggt - endlich wieder Sport!"\nSituationen: A. Bewegung nach Pause B. Schlafprobleme C. Sucht bekaempfen D. Rueckenschmerzen E. Ungesunde Ernaehrung F. Arztbesuch G. Entspannung',[matching(1,'Aussage 1',['A','B','C','D','E','F','G'],'D'),matching(2,'Aussage 2',['A','B','C','D','E','F','G'],'B'),matching(3,'Aussage 3',['A','B','C','D','E','F','G'],'C'),matching(4,'Aussage 4',['A','B','C','D','E','F','G'],'E'),matching(5,'Aussage 5',['A','B','C','D','E','F','G'],'A')],5)],
      15,60,30,{criteria:[criterion('Inhalt','Aufgaben vollstaendig?',5),criterion('Hoerverstehen','Hoertexte richtig verstanden?',5),criterion('Detailverstaendnis','Details und Zusammenhaenge?',5)]},
      'Orientiert sich am Goethe B1: Hoeren (3 Teile, ca. 30 Minuten).',['Bewusst auf Hauptaussage und Details achten.','Kurze Notizen machen.','Nicht jedes Wort verstehen muessen.']),
    mockExam('Goethe B1 Schreiben Mock Exam','goethe','B1','schreiben',
      'Modelltest fuer Goethe B1 Schreiben. Formelle Beschwerde und persoenliche Mitteilung.',
      [task(1,'Buch beschaeftigt angekommen. Beschwerde-E-Mail (ca. 80 Woerter).','Betreff: Beschwerde - beschaeftigte Lieferung\nSehr geehrte Damen und Herren,\nam 10. Maerz bestellte ich Buch "Deutsche Grammatik" (Nr. 12345). Heute kam die Lieferung - das Buch ist beschaeftigt. Seiten 20-30 sind eingerissen. Ich bitte um Ersatz oder Rueckerstattung.\nMit freundlichen Gruessen\nMax Mustermann',[mc(1,'Infos in der Beschwerde?',['A. Bestellnr., Problem, Erwartung','B. Hobbys, Beruf, Wohnort','C. Lieblingsbuch, Autor'],'A'),mc(2,'Angemessene Formulierung?',['A. Ihr Service ist schlecht!','B. Ich bitte um Ersatz oder Rueckerstattung.','C. Geben Sie mir mein Geld!'],'B')],5),
      task(2,'Freund hat Geburtstag. Persoenliche E-Mail (ca. 80 Woerter).','Lieber Jonas,\nherzlichen Glueckwunsch! Erinnerst du dich an Hamburg? Das war so lustig! Bei mir: neuer Job, nach Koeln gezogen. Wie geht es dir? Plaene fuer Sommer?\nViele Gruesse\nAnna',[mc(1,'Elemente einer Geburtstagsmail?',['A. Glueckwunsch, Erinnerung, Neuigkeiten, Frage','B. Nur Glueckwunsch','C. Formelle Anrede und Beschwerde'],'A'),mc(2,'Anrede fuer Freund?',['A. Sehr geehrter Herr Jonas','B. Lieber Jonas','C. An Jonas'],'B')],5)],
      10,60,40,{criteria:[criterion('Inhalt','Alle Punkte vollstaendig?',4),criterion('Kommunikative Gestaltung','Kohaerent und angemessen?',3),criterion('Formale Richtigkeit','Grammatik, Rechtschreibung?',3)]},
      'Orientiert sich am Goethe B1: Schreiben (2 Teile, 40 Minuten).',['Auf Textsorte achten (formell vs. informell).','Einleitung, Hauptteil, Schluss.','Satzverbindungen wie ausserdem, deshalb, obwohl.']),
    mockExam('Goethe B1 Sprechen Mock Exam','goethe','B1','sprechen',
      'Modelltest fuer Goethe B1 Sprechen. Vortrag, Diskussion und gemeinsame Planung.',
      [task(1,'Vortrag (ca. 3 Min.): Umweltschutz im Alltag.','Ich moechte ueber Umweltschutz im Alltag sprechen. Klimawandel betrifft uns alle. Privat: Muell trennen, weniger Fleisch, Fahrrad. Politik: erneuerbare Energien foerdern. Meiner Meinung nach muessen alle zusammenhelfen.',[mc(1,'Vortrag-Struktur?',['A. Einleitung, Hauptteil, Schluss','B. Nur Fakten','C. Nur Meinung'],'A'),mc(2,'Meinung ausdruecken?',['A. Fakt ist...','B. Meiner Meinung nach...','C. Alle sagen...'],'B')],5),
      task(2,'Diskussion: Sollte man im Studium ins Ausland gehen?','Pro: Sprache lernen, Kultur kennenlernen, selbstaendiger werden. Contra: teuer, Familie vermissen, Anerkennungsprobleme.',[mc(1,'Pro-Argument einleiten?',['A. Dagegen spricht...','B. Ein Vorteil ist...','C. Leider...'],'B'),mc(2,'Contra-Argument einleiten?',['A. Positiv ist...','B. Ein Nachteil ist...','C. Zum Glueck...'],'B')],5),
      task(3,'Gemeinsam planen: Abschlussfeier fuer Deutschkurs.','A: "Wann sollen wir feiern?" B: "Am letzten Kurstag, 20. Juni?" A: "Wo?" B: "Im Kursraum, jeder bringt was mit." A: "Ich bringe Getraenke." B: "Ich bringe Salat." A: "Sollen wir Musik machen?" B: "Ja, ich mache Playlist."',[mc(1,'Planungsaspekte?',['A. Termin, Ort, Programm, Budget','B. Nur Datum','C. Nur Essen'],'A'),mc(2,'Zustimmung ausdruecken?',['A. Keine gute Idee.','B. Einverstanden.','C. Vielleicht.'],'B')],5)],
      15,60,25,{criteria:[criterion('Aussprache','Klar und natuerlich?',5),criterion('Kommunikative Gestaltung','Fluessig, strukturiert, interaktiv?',5),criterion('Formale Richtigkeit','Wortschatz und Satzbau angemessen?',5)]},
      'Orientiert sich am Goethe B1: Sprechen (3 Teile, ca. 25 Minuten).',['Vortrag strukturieren: Einleitung, Hauptteil, Fazit.','Meinung begruenden koennen.','Auf Partnerargumente eingehen.'])
  ]
}

// ============ B2 MOCKS ============
function generateB2Mocks(): MockExam[] {
  return [
    mockExam('Goethe B2 Lesen Mock Exam','goethe','B2','lesen',
      'Modelltest fuer Goethe B2 Lesen mit komplexen Sachtexten, Meinungsartikeln und Briefen.',
      [task(1,'Artikel "Digitalisierung der Arbeitswelt". A, B, C oder D.','Die Digitalisierung veraendert die Arbeitswelt. Bis 2030 werden ca. 40% der heutigen Taetigkeiten durch Automatisierung ersetzt oder veraendert. Betroffen: Routineaufgaben in Produktion und Buero. Neue Berufe: KI und Datenanalyse. Kritiker: Politik reagiert nicht ausreichend. Experten: Investitionen in Bildung und soziale Sicherung.',[mc(1,'Wie viel Prozent der Taetigkeiten veraendert?',['A. 20%','B. 30%','C. 40%','D. 50%'],'C'),mc(2,'Welche Bereiche betroffen?',['A. Kreative Berufe','B. Routineaufgaben Produktion/Buero','C. Fuehrungspositionen','D. Soziale Berufe'],'B'),mc(3,'Was kritisieren Kritiker?',['A. Unternehmen investieren wenig','B. Politik reagiert nicht ausreichend','C. AN zu wenig qualifiziert','D. Technologie nicht ausgereift'],'B'),mc(4,'Experten empfehlen?',['A. Weniger Digitalisierung','B. Investitionen in Bildung und soziale Sicherung','C. Mehr Schutz traditioneller Berufe','D. Steuererleichterungen'],'B'),mc(5,'Was muessen Arbeitnehmer?',['A. Beruf wechseln','B. Lebenslang lernen','C. Frueher in Rente','D. Weniger arbeiten'],'B')],5),
      task(2,'Fuenf Abschnitte ueber Lebensmittelverschwendung. Ueberschriften A-G zuordnen.','1. Jedes Jahr 19 Mio. Tonnen Lebensmittel weggeworfen - 235 kg pro Sekunde.\n2. Private Haushalte 52%, Landwirtschaft 18%, Verarbeitung 18%, Handel 5%.\n3. Strenge Handelsnormen: krumme Gurken nicht angenommen. MHD fuehrt zu Wegwuerfen.\n4. Frankreich verbietet Supermaerkten, unverkaufte Lebensmittel unbrauchbar zu machen.\n5. Jeder kann helfen: bewusst einkaufen, Reste verwerten, Apps wie Too Good To Go.\nUeberschriften: A. Rolle des Handels B. Mengen und Fakten C. Internationale Gesetze D. Verteilung ueber Wertschopfungskette E. Was Verbraucher tun koennen F. Geschichte des MHD G. Wirtschaftliche Folgen',[matching(1,'Abschnitt 1',['A','B','C','D','E','F','G'],'B'),matching(2,'Abschnitt 2',['A','B','C','D','E','F','G'],'D'),matching(3,'Abschnitt 3',['A','B','C','D','E','F','G'],'A'),matching(4,'Abschnitt 4',['A','B','C','D','E','F','G'],'C'),matching(5,'Abschnitt 5',['A','B','C','D','E','F','G'],'E')],5),
      task(3,'Leserbrief. Richtig oder falsch?','Sehr geehrte Damen und Herren,\nmit Interesse las ich "Studentenleben in der Krise". Sie behaupten, die meisten Studierenden kaempfen mit gestiegenen Kosten. Aus Erfahrung kann ich das bestaetigen. Aber Sie vergessen BAföG und Studentenwohnheime zu erwaehnen. Das duale Studium verbindet Studium und Beruf. Meiner Meinung nach sollten Sie auch Loesungen zeigen.\nLukas Meier',[tf(1,'Der Leser ist mit dem Artikel zufrieden.'),tf(2,'Der Leser bestaetigt, dass Studierende neben dem Studium arbeiten.'),tf(3,'Der Leser kritisiert fehlende Erwaehnung von BAföG und Wohnheimen.'),tf(4,'Der Leser findet das duale Studium schlecht.'),tf(5,'Der Leser will mehr Loesungen und positive Beispiele.')],5)],
      15,60,50,{criteria:[criterion('Inhalt','Alle Aufgaben vollstaendig?',5),criterion('Leseverstehen','Komplexe Texte verstanden?',5),criterion('Analyse','Zusammenhaenge erkannt?',5)]},
      'Orientiert sich am Goethe B2: Lesen (3 Teile, 50 Minuten).',['Ganzen Text vor Fragen lesen.','Argumentationsstruktur beachten.','Hauptaussagen der Absaetze notieren.']),
    mockExam('Goethe B2 Hoeren Mock Exam','goethe','B2','hoeren',
      'Modelltest fuer Goethe B2 Hoeren mit Vortraegen, Diskussionen und Radiofeatures.',
      [task(1,'Vortrag ueber erneuerbare Energien. A, B, C oder D.','Dr. Schneider: "Deutschland will bis 2045 klimaneutral sein. Anteil erneuerbarer Energien am Strommix: 47%. Windkraft: 25%, Photovoltaik: 12%. Groesste Herausforderung: Speicherung. Forscher arbeiten an Batterietechnologien und Wasserstoff. Problem: Stromnetzausbau scheitert an Genehmigungsverfahren."',[mc(1,'Bis wann klimaneutral?',['A. 2030','B. 2045','C. 2050','D. 2035'],'B'),mc(2,'Anteil erneuerbarer Energien?',['A. 25%','B. 37%','C. 47%','D. 57%'],'C'),mc(3,'Groesste Herausforderung?',['A. Kosten','B. Speicherung','C. Politischer Wille','D. Akzeptanz'],'B'),mc(4,'Speichermoeglichkeit?',['A. Erdgas','B. Wasserstoff','C. Biomasse','D. Kernenergie'],'B'),mc(5,'Warum Netzausbau schwierig?',['A. Fehlende Technologie','B. Genehmigungsverfahren','C. Zu teuer','D. Fachkraeftemangel'],'B')],5),
      task(2,'Diskussion bezahlbarer Wohnraum. Richtig oder falsch?','T1: "Mieten steigen unaufhoerlich. Normalverdiener koennen sich nichts leisten."\nT2: "Stimmt. Aber nicht nur Mietendeckel, wir brauchen mehr Wohnungsbau."\nT1: "Bezahlbaren Wohnungsbau, nicht nur Luxus."\nT2: "Bauland teuer, Auflagen verteuern."\nT1: "Genossenschaften und kommunale Gesellschaften koennten Loesung sein."',[tf(1,'T1 findet Mieten zu hoch.'),tf(2,'T2 ist gegen staatliche Eingriffe.'),tf(3,'T1 fordert mehr Luxuswohnungen.'),tf(4,'T2 nennt Bauland und Auflagen als Probleme.'),tf(5,'T1 schlaegt Genossenschaften vor.')],5),
      task(3,'Fuenf Personen ueber ehrenamtliche Arbeit. Motive A-G zuordnen.','1. "Helfe in der Tafel - Menschen mit weniger helfen."\n2. "Nachhilfe fuer Kinder mit Migrationshintergrund."\n3. "Tierschutz - pflege verletzte Tiere."\n4. "Vorstand im Sportverein - fuer Gemeinschaft."\n5. "Spendenlaeufe fuer krebskranke Kinder."\nMotive: A. Soziale Verantwortung B. Tierschutz C. Integration/Bildung D. Gemeinschaftsarbeit E. Gesundheitsfoerderung F. Umweltschutz G. Kultur',[matching(1,'Person 1',['A','B','C','D','E','F','G'],'A'),matching(2,'Person 2',['A','B','C','D','E','F','G'],'C'),matching(3,'Person 3',['A','B','C','D','E','F','G'],'B'),matching(4,'Person 4',['A','B','C','D','E','F','G'],'D'),matching(5,'Person 5',['A','B','C','D','E','F','G'],'E')],5)],
      15,60,35,{criteria:[criterion('Inhalt','Aufgaben vollstaendig?',5),criterion('Hoerverstehen','Komplexe Hoertexte verstanden?',5),criterion('Detailverstaendnis','Details und Zusammenhaenge erfasst?',5)]},
      'Orientiert sich am Goethe B2: Hoeren (3 Teile, ca. 35 Minuten).',['Auf Hauptargumente und Struktur achten.','Signale wie Zunaechst, Ein weiterer Punkt, Zusammenfassend.','Sprecher und Positionen unterscheiden.']),
    mockExam('Goethe B2 Schreiben Mock Exam','goethe','B2','schreiben',
      'Modelltest fuer Goethe B2 Schreiben. Argumentation und formelle Korrespondenz.',
      [task(1,'Leserbrief: Neues Einkaufszentrum auf Gruenstreifen (ca. 120 Woerter).','Betreff: Leserbrief zum geplanten Einkaufszentrum\nEinerseits verstehe ich den Wunsch nach mehr Einkaufsmoeglichkeiten. Andererseits sollte man dafuer keinen Gruenstreifen opfern. Grünflaechen sind wichtig fuer Stadtklima und Erholung. Mein Vorschlag: Das leerstehende Gebaeude am Bahnhof umbauen.',[mc(1,'Leserbrief-Struktur?',['A. Einleitung, Argumente, Schluss','B. Nur Kritik','C. Nur Lob'],'A'),mc(2,'Alternative einleiten?',['A. Das ist schlecht.','B. Mein Vorschlag:...','C. Man muss...'],'B')],5),
      task(2,'E-Mail an Kursleiter nach Rhetorikkurs (ca. 120 Woerter).','Sehr geehrter Herr Wagner,\n vielen Dank fuer den Rhetorikkurs. Besonders die Videoanalyse hat mir geholfen. Ein Verbesserungsvorschlag: mehr Zeit fuer individuelle Rueckmeldungen. Gibt es einen Aufbaukurs?\nMit freundlichen Gruessen',[mc(1,'Elemente dieser E-Mail?',['A. Dank, Feedback, Verbesserung, Frage','B. Nur Kritik','C. Nur Beschwerde'],'A'),mc(2,'Hoefflich nach Info fragen?',['A. Sagen Sie mir Bescheid.','B. Gibt es die Moeglichkeit...?','C. Ich will...'],'B')],5)],
      10,60,60,{criteria:[criterion('Inhalt','Alle Punkte differenziert bearbeitet?',4),criterion('Kommunikative Gestaltung','Klar strukturiert und adressatengerecht?',3),criterion('Formale Richtigkeit','Grammatik, Stil angemessen?',3)]},
      'Orientiert sich am Goethe B2: Schreiben (2 Teile, 60 Minuten).',['Argumente vor Schreiben planen.','Klaren Aufbau: These - Argument - Beispiel.','Differenzierten Wortschatz nutzen.']),
    mockExam('Goethe B2 Sprechen Mock Exam','goethe','B2','sprechen',
      'Modelltest fuer Goethe B2 Sprechen. Praesentation, Diskussion und Problemloesung.',
      [task(1,'Praesentation (3-4 Min.): Gesundheit am Arbeitsplatz.','Guten Tag, mein Thema ist Gesundheit am Arbeitsplatz. Typische Risiken: Rueckenschmerzen, Augenbelastung, Stress. Praevention: regelmaessige Bewegung, ergonomische Arbeitsplaetze, Pausen. Ich selbst nutze einen hoehenverstellbaren Schreibtisch.',[mc(1,'Praesentation beginnen?',['A. Also...','B. Guten Tag, mein Thema ist...','C. Hoeren Sie zu!'],'B'),mc(2,'Praesentation beenden?',['A. Das war es.','B. Vielen Dank fuer Ihre Aufmerksamkeit.','C. Fragen?'],'B')],5),
      task(2,'Diskussion: Social Media fuer Jugendliche unter 16 verbieten?','Pro: Schutz vor Cybermobbing, weniger Zeitverschwendung. Contra: Meinungsfreiheit, wichtige soziale Plattform.',[mc(1,'Hoefflich widersprechen?',['A. Stimmt nicht.','B. Da bin ich anderer Meinung, denn...','C. Sie luegen.'],'B'),mc(2,'Position zusammenfassen?',['A. Zusammenfassend moechte ich sagen...','B. Also...','C. Egal.'],'A')],5),
      task(3,'Problemloesung: Sportverein verliert Mitglieder.','A: "Warum verlieren wir Mitglieder?" B: "Angebote nicht modern genug." A: "Brauchen neue Kurse wie Yoga." B: "Und in Social Media werben." A: "Treue-Rabatte fuer bestehende Mitglieder." B: "Schnuppertag fuer Neue."',[mc(1,'Problemloesung beginnen?',['A. Das Problem ist...','B. Warum haben wir dieses Problem?','C. Machen wir einfach.'],'B'),mc(2,'Loesungsvorschlag einbringen?',['A. Was haeltst du von...?','B. Wir muessen...','C. Das geht nicht.'],'A')],5)],
      15,60,30,{criteria:[criterion('Aussprache','Klar und natuerlich?',5),criterion('Kommunikative Gestaltung','Fluessig, differenziert, interaktiv?',5),criterion('Formale Richtigkeit','Wortschatz und Stil niveaugerecht?',5)]},
      'Orientiert sich am Goethe B2: Sprechen (3 Teile, ca. 30 Minuten).',['Praesentation gut vorbereiten - klare Struktur.','Beispiele aus Erfahrung geben.','In Diskussion genau zuhoeren und eingehen.'])
  ]
}

// ============ C1 LESEN ============
function generateC1LesenMock(): MockExam[] {
  return [mockExam('Goethe C1 Lesen Mock Exam','goethe','C1','lesen',
    'Modelltest fuer Goethe C1 Lesen mit wissenschaftlichen Texten, Kommentaren und literarischen Texten.',
    [task(1,'Wissenschaftlicher Artikel ueber KI und Ethik. A, B, C oder D.','Die rasante Entwicklung KI wirft ethische Fragen auf. Black-Box-Problematik: Bei neuronalen Netzen ist nicht nachvollziehbar, wie Entscheidungen getroffen werden. Problematisch in Rechtsprechung und Kreditvergabe. Haftungsfrage bei autonomen Fahrzeugen ungeklaert. EU arbeitet an KI-Regulierungsgesetz mit Risikoklassifizierung. Experten fordern Transparenz und unabhaengige Ethikraete.',[mc(1,'Black-Box-Problematik?',['A. Hohe Kosten','B. Mangelnde Nachvollziehbarkeit','C. Fehlende Rechenleistung','D. Mangelnde Akzeptanz'],'B'),mc(2,'Wo besonders problematisch?',['A. Unterhaltung','B. Rechtsprechung und Kreditvergabe','C. Logistik','D. Marketing'],'B'),mc(3,'EU-KI-Gesetz sieht vor?',['A. Komplettverbot','B. Risikoklassifizierung mit Auflagen','C. Steuererleichterungen','D. Zertifizierungspflicht'],'B'),mc(4,'Zusaetzlich gefordert?',['A. Mehr Foerderung','B. Transparenz und Ethikraete','C. Moratorium','D. Handelsabkommen'],'B'),mc(5,'Problem bei autonomen Fahrzeugen?',['A. Reichweite','B. Haftungsfrage','C. Infrastruktur','D. Energieverbrauch'],'B')],5),
    task(2,'Fuenf Aussagen zur Digitalisierung der Bildung. Thesen A-G zuordnen.','1. "Digitale Medien sollen Praesenz ergaenzen, nicht ersetzen."\n2. "Jeder Schueler braucht eigenes Endgeraet - Bildungsgerechtigkeit."\n3. "Lehrkraefte brauchen mehr Fortbildung."\n4. "Digitale Plattformen ermoeglichen individualisiertes Lernen."\n5. "Smartphones fuehren zu Ablenkung."\nThesen: A. Bildungsgerechtigkeit B. Lehrerfortbildung C. Blended Learning D. Individuelle Foerderung E. Negative Auswirkungen F. Datenschutz G. Kosten-Nutzen',[matching(1,'Aussage 1',['A','B','C','D','E','F','G'],'C'),matching(2,'Aussage 2',['A','B','C','D','E','F','G'],'A'),matching(3,'Aussage 3',['A','B','C','D','E','F','G'],'B'),matching(4,'Aussage 4',['A','B','C','D','E','F','G'],'D'),matching(5,'Aussage 5',['A','B','C','D','E','F','G'],'E')],5),
    task(3,'Kommentar zur Vier-Tage-Woche. Richtig oder falsch?','Befuerworter verweisen auf Produktivitaetssteigerung - Island und Neuseeland als Vorreiter. Doch nicht alle Branchen sind geeignet: Einzelhandel, Pflege, Schichtarbeit. Studien aus Suedkorea zeigen: Arbeitsverdichtung kann Stress erhoehen. Entscheidend ist die Arbeitsorganisation, nicht die Anzahl der Tage. Flexible Modelle wie Vertrauensarbeitszeit sind vielversprechender.',[tf(1,'Befuerworter argumentieren mit Produktivitaet.'),tf(2,'Island und Neuseeland sind Beispiele GEGEN die Vier-Tage-Woche.'),tf(3,'Der Autor ist uneingeschraenkt fuer die Vier-Tage-Woche.'),tf(4,'Der Autor haelt flexible Modelle fuer vielversprechender.'),tf(5,'Die Branche ist irrelevant fuer die Umsetzbarkeit.')],5),
    task(4,'Literarischer Text "Das letzte Blatt" (Auszug). A, B, C oder D.','Er sass am Fenster und blickte auf den kahlen Baum. Seit Wochen krank. "Wenn das letzte Blatt faellt", dachte er, "sterbe ich." Drei Blaetter waren noch uebrig. Die Nachbarin, eine alte Malerin, malte in einer stuermischen Nacht ein Blatt an die Mauer. Er sah es und schoepfte Hoffnung. Monate spaeter erfuhr er: Die Nachbarin war in jener Nacht an Lungenentzuendung gestorben. Sie hatte ihm das Leben gerettet.',[mc(1,'Warum beobachtet er das letzte Blatt?',['A. Langeweile','B. Glaubt, damit zu sterben','C. Botaniker','D. Mag Ausblick'],'B'),mc(2,'Was macht die Nachbarin?',['A. Pflanzt Baum','B. Malt Blatt an Mauer','C. Ruft Arzt','D. Schneidet Blatt ab'],'B'),mc(3,'Reaktion des Kranken?',['A. Enttaeuscht','B. Schoepft Hoffnung','C. Merkt nicht','D. Wird wuetend'],'B'),mc(4,'Was passiert mit der Nachbarin?',['A. Zieht um','B. Wird krank und stirbt','C. Malt Bild','D. Zieht in Sueden'],'B'),mc(5,'Botschaft?',['A. Keine Hoffnung','B. Selbstlose Hilfe rettet Leben','C. Natur unbesiegbar','D. Kuenstler realistisch malen'],'B')],5)],
    20,60,60,{criteria:[criterion('Inhalt','Alle Aufgaben differenziert bearbeitet?',7),criterion('Leseverstehen','Komplexe Texte implizit verstanden?',7),criterion('Analyse','Textstrukturen und Argumentation erkannt?',6)]},
    'Orientiert sich am Goethe C1: Lesen (4 Teile, 60 Minuten).',['Komplexe Texte zweimal lesen: global und detailliert.','Auf implizite Aussagen und Ironie achten.','Bei literarischen Texten: Symbole und Motive interpretieren.'])]
}

// ============ ASSEMBLE MOCK EXAMS ============
function generateAllMockExams(): MockExam[] {
  return [
    ...generateA1LesenMocks(), ...generateA1HoerenMocks(),
    ...generateA1SchreibenMocks(), ...generateA1SprechenMock(),
    ...generateA2Mocks(), ...generateB1Mocks(),
    ...generateB2Mocks(), ...generateC1LesenMock(),
  ]
}

// ============ EXAM TOPICS ============
function generateExamTopics(): any[] {
  return [
    {
      examType: 'goethe', level: 'A2', module: 'sprechen',
      commonTopics: ['Familie','Wohnen','Essen und Trinken','Tagesablauf','Freizeit','Einkaufen','Reisen','Gesundheit','Wetter','Beruf'],
      preparationGuides: [
        {topic:'Familie',usefulVocabulary:['die Familie','der Vater','die Mutter','der Bruder','die Schwester','verheiratet','das Kind'],possibleQuestions:['Wie gross ist deine Familie?','Hast du Geschwister?'],argumentsFor:['Eine grosse Familie ist schoen, weil man nie allein ist.','Familie gibt Halt.'],argumentsAgainst:['Eine grosse Familie kann anstrengend sein.','Man hat weniger Zeit fuer sich.'],keyPhrases:['In meiner Familie gibt es...','Mein Vater arbeitet als...']},
        {topic:'Wohnen',usefulVocabulary:['die Wohnung','das Haus','das Zimmer','die Kueche','das Bad','der Balkon','die Miete'],possibleQuestions:['Wo wohnst du?','Ist deine Wohnung gross?','Zahlst du viel Miete?'],argumentsFor:['Eine Wohnung in der Stadt ist praktisch.','Ein Haus im Gruenen ist ruhiger.'],argumentsAgainst:['Wohnungen in der Stadt sind teuer.','Ein Haus braucht viel Arbeit.'],keyPhrases:['Ich wohne in...','Meine Wohnung hat...','Die Miete kostet...']},
        {topic:'Essen und Trinken',usefulVocabulary:['das Fruehstueck','das Mittagessen','das Abendessen','kochen','bestellen','der Geschmack','die Zutat','das Rezept'],possibleQuestions:['Was isst du gern?','Kannst du kochen?','Was ist dein Lieblingsgericht?'],argumentsFor:['Selber kochen ist gesuender.','Neue Gerichte probieren macht Spass.'],argumentsAgainst:['Kochen braucht Zeit.','Essen gehen ist teuer.'],keyPhrases:['Ich esse gern...','Mein Lieblingsgericht ist...']},
        {topic:'Tagesablauf',usefulVocabulary:['aufstehen','fruehstuecken','zur Arbeit gehen','Mittagspause','Feierabend','einschlafen','taeglich','normalerweise'],possibleQuestions:['Um wie viel Uhr stehst du auf?','Was machst du am Abend?'],argumentsFor:['Ein fester Tagesablauf gibt Struktur.','Frueh aufstehen ist produktiver.'],argumentsAgainst:['Ein starrer Tagesablauf ist langweilig.','Man will auch spontan sein.'],keyPhrases:['Ich stehe um... auf.','Normalerweise arbeite ich...','Am Abend...']},
        {topic:'Freizeit',usefulVocabulary:['das Hobby','der Sport','lesen','Musik hoeren','Freunde treffen','spazieren gehen','reisen'],possibleQuestions:['Was machst du in deiner Freizeit?','Machst du Sport?','Triffst du oft Freunde?'],argumentsFor:['Hobbys sind wichtig fuer Erholung.','Sport haelt fit.'],argumentsAgainst:['Manche Hobbys sind teuer.','Freizeitaktivitaeten brauchen Zeit.'],keyPhrases:['In meiner Freizeit...','Ich treibe gern Sport.']},
        {topic:'Einkaufen',usefulVocabulary:['der Supermarkt','einkaufen','bezahlen','bar','mit Karte','der Preis','das Angebot','die Kasse'],possibleQuestions:['Wo kaufst du ein?','Bezahlst du bar oder mit Karte?'],argumentsFor:['Auf dem Wochenmarkt ist Obst frischer.','Im Supermarkt ist alles guenstiger.'],argumentsAgainst:['Einkaufen kann stressig sein.','Am Wochenende ist es voll.'],keyPhrases:['Ich kaufe bei... ein.','Das kostet...','Ich bezahle mit...']},
        {topic:'Reisen',usefulVocabulary:['der Urlaub','verreisen','das Hotel','der Flug','der Zug','buchen','der Koffer','die Reise'],possibleQuestions:['Reist du gern?','Wohin faehrst du in Urlaub?'],argumentsFor:['Reisen erweitert den Horizont.','Im Urlaub kann man entspannen.'],argumentsAgainst:['Reisen ist teuer.','Fliegen ist schlecht fuer Umwelt.'],keyPhrases:['Ich reise gern nach...','Mein letzter Urlaub war...']},
        {topic:'Gesundheit',usefulVocabulary:['der Arzt','das Krankenhaus','die Medizin','Schmerzen haben','krank','gesund','der Termin','die Versicherung'],possibleQuestions:['Gehst du regelmaessig zum Arzt?','Was machst du, wenn du krank bist?'],argumentsFor:['Regelmaessige Vorsorge ist wichtig.','Gesund essen beugt Krankheiten vor.'],argumentsAgainst:['Arztbesuche kosten Zeit.','Medikamente sind teuer.'],keyPhrases:['Ich habe... Schmerzen.','Ich gehe zum Arzt, weil...']},
      ]
    },
    {
      examType: 'goethe', level: 'B1', module: 'sprechen',
      commonTopics: ['Umwelt','Gesundheit','Arbeit','Freizeit','Medien','Bildung','Ernaehrung','Digitalisierung','Wohnen','Mobilitaet'],
      preparationGuides: [
        {topic:'Umwelt',usefulVocabulary:['der Klimawandel','die Umweltverschmutzung','erneuerbare Energien','der Muell','recyceln','der CO2-Ausstoss','die Nachhaltigkeit'],possibleQuestions:['Was kann man fuer die Umwelt tun?','Sollte man mehr in oeffentlichen Nahverkehr investieren?','Klimaschutz: Politik oder Einzelner?'],argumentsFor:['Jeder kann durch kleine Veraenderungen beitragen.','Erneuerbare Energien schaffen Arbeitsplaetze.'],argumentsAgainst:['Einzelmassnahmen reichen nicht, wenn Industrie nicht mitmacht.','Klimaschutz nicht zu Lasten der Wirtschaft.'],keyPhrases:['Ich bin der Meinung, dass...','Einerseits... andererseits...','Meiner Ansicht nach...']},
        {topic:'Gesundheit',usefulVocabulary:['die Vorsorge','die Krankenversicherung','der Lebensstil','die Bewegung','die Ernaehrung','der Stress','die Praevention'],possibleQuestions:['Wie wichtig ist Gesundheit?','Sollten Arbeitgeber mehr fuer Gesundheit tun?'],argumentsFor:['Praevention ist besser als Nachsorge.','Betriebliche Gesundheitsfoerderung senkt Kosten.'],argumentsAgainst:['Viele haben keine Zeit fuer Vorsorge.','Gesundheitssystem ist zu teuer.'],keyPhrases:['Aus meiner Sicht...','Dafuer spricht...','Dagegen spricht...']},
        {topic:'Arbeit',usefulVocabulary:['der Beruf','die Karriere','die Arbeitszeit','das Gehalt','die Bewerbung','der Arbeitgeber','der Arbeitnehmer'],possibleQuestions:['Was ist dir bei Arbeit wichtig?','Traumjob oder Sicherheit?','Ist Homeoffice gut?'],argumentsFor:['Sicherer Job gibt Stabilitaet.','Homeoffice bietet Flexibilitaet.'],argumentsAgainst:['Sicherheit allein macht nicht gluecklich.','Homeoffice kann einsam machen.'],keyPhrases:['Meiner Erfahrung nach...','Viele sind der Auffassung...']},
        {topic:'Medien',usefulVocabulary:['soziale Medien','Nachrichten','die Zeitung','das Fernsehen','das Internet','Meinungsfreiheit','Fake News','Journalismus'],possibleQuestions:['Wie informierst du dich?','Sind soziale Medien eine Gefahr?','Sollte man Kommentare moderieren?'],argumentsFor:['Soziale Medien ermoeglichen schnellen Austausch.','Journalismus ist wichtig fuer Demokratie.'],argumentsAgainst:['Fake News manipulieren.','Algorithmen schaffen Filterblasen.'],keyPhrases:['Ein haeufig genanntes Argument ist...','Es laesst sich nicht leugnen...']},
        {topic:'Bildung',usefulVocabulary:['das Schulsystem','die Universitaet','die Ausbildung','der Unterricht','die Note','das Studium','die Weiterbildung'],possibleQuestions:['Sollte das Schulsystem reformiert werden?','Studium wichtiger als Ausbildung?','Mehr digitale Bildung?'],argumentsFor:['Bildung ist Schluessel zum Aufstieg.','Digitalisierung bereitet auf Arbeitswelt vor.'],argumentsAgainst:['Schulsystem ist ungerecht.','Zu viel Digitalisierung lenkt ab.'],keyPhrases:['Es ist allgemein bekannt...','Studien belegen...','Ich vertrete den Standpunkt...']},
        {topic:'Ernaehrung',usefulVocabulary:['vegetarisch','vegan','Bio-Produkte','Fleischkonsum','Nahrungsmittel','Tierwohl','Lebensmittelverschwendung'],possibleQuestions:['Ist vegetarische Ernaehrung gesuender?','Sollte Fleisch teurer sein?','Was haltest du von Bio?'],argumentsFor:['Weniger Fleisch ist gut fuer Umwelt und Gesundheit.','Bio hat weniger Schadstoffe.'],argumentsAgainst:['Bio ist zu teuer.','Ausgewogene Ernaehrung auch mit Fleisch.'],keyPhrases:['Pro/Contra abwaegen...','Sowohl... als auch...']},
        {topic:'Digitalisierung',usefulVocabulary:['die Automatisierung','der Algorithmus','kuenstliche Intelligenz','der Datenschutz','die Digitalisierung','die Cybersicherheit'],possibleQuestions:['Veraendert Digitalisierung die Gesellschaft zu schnell?','Sollte Staat mehr investieren?','Zu abhaengig von Technologie?'],argumentsFor:['Digitalisierung macht Prozesse effizienter.','Deutschland muss wettbewerbsfaehig bleiben.'],argumentsAgainst:['Datenschutz wird vernachlaessigt.','Digitale Kluft zwischen Menschen.'],keyPhrases:['Es ist nicht von der Hand zu weisen...','Ein wichtiger Aspekt ist...']},
        {topic:'Mobilitaet',usefulVocabulary:['das Elektroauto','oeffentlicher Nahverkehr','die Verkehrswende','das Fahrrad','Carsharing','die Infrastruktur','die Emission'],possibleQuestions:['Auto aus Innenstaedten verbannen?','Elektroauto die Zukunft?','OePNV kostenlos?'],argumentsFor:['Weniger Autos = bessere Luft.','OePNV ausbauen und ver billigen.'],argumentsAgainst:['Viele sind auf Auto angewiesen.','Elektroautos zu teuer, Infrastruktur fehlt.'],keyPhrases:['Ich moechte darauf hinweisen...','Abschliessend laesst sich sagen...']},
      ]
    },
    {
      examType: 'goethe', level: 'B2', module: 'sprechen',
      commonTopics: ['Umwelt und Klimapolitik','Globalisierung','Migration und Integration','Gesundheitssystem','Bildungsreform','Arbeitsmarkt der Zukunft','Medien und Meinungsfreiheit','Kuenstliche Intelligenz','Nachhaltigkeit','Kultur und Identitaet'],
      preparationGuides: [
        {topic:'Umwelt und Klimapolitik',usefulVocabulary:['die Klimaneutralitaet','der Emissionshandel','die CO2-Steuer','die Klimabewegung','das Pariser Abkommen','die Ressourcenschonung','der oekologische Fussabdruck'],possibleQuestions:['Sollte Deutschland Vorreiter sein?','Ist CO2-Steuer geeignet?','Klimaschutz und Wirtschaftswachstum vereinbar?'],argumentsFor:['Deutschland hat besondere Verantwortung.','CO2-Steuer setzt Anreize fuer Innovation.'],argumentsAgainst:['Deutschland allein kann Weltklima nicht retten.','CO2-Steuer belastet Geringverdiener.'],keyPhrases:['Ich moechte aus verschiedenen Perspektiven betrachten...','Waehrend die einen argumentieren...']},
        {topic:'Globalisierung',usefulVocabulary:['der Welthandel','die Lieferkette','der Protektionismus','multinationale Konzerne','die globale Arbeitsteilung','der kulturelle Austausch'],possibleQuestions:['Ist Globalisierung gescheitert?','Mehr regionale Produktion?','Auswirkungen auf Kultur?'],argumentsFor:['Globalisierung hat Wohlstand gefoerdert.','Lieferketten senken Kosten.'],argumentsAgainst:['Vergroessert Kluft zwischen Arm und Reich.','Krisen zeigen Verletzlichkeit.'],keyPhrases:['Eine komplexe Thematik...','Befuerworter heben hervor...']},
        {topic:'Migration und Integration',usefulVocabulary:['die Zuwanderung','die Integration','der Asylbewerber','die Willkommenskultur','der Spracherwerb','die Arbeitsmigration','der Fachkraeftemangel'],possibleQuestions:['Braucht Deutschland mehr Einwanderung?','Voraussetzungen fuer Integration?','Integration gesetzlich verpflichtend?'],argumentsFor:['Deutschland braucht Einwanderung gegen Fachkraeftemangel.','Kulturelle Vielfalt bereichert.'],argumentsAgainst:['Integration braucht Zeit.','Zu schnelle Zuwanderung belastet Sozialsysteme.'],keyPhrases:['In der aktuellen Debatte wird kontrovers diskutiert...','Es gibt gute Gruende...']},
        {topic:'Gesundheitssystem',usefulVocabulary:['gesetzliche Krankenversicherung','private Krankenversicherung','der Fachkraeftemangel','Digitalisierung im Gesundheitswesen','die Telemedizin','die Pflege','die Gesundheitspraevention'],possibleQuestions:['Gesundheitssystem reformbeduerftig?','Elektronische Patientenakte verpflichtend?','Pflegenotstand beheben?'],argumentsFor:['Deutsches System bietet umfassende Versorgung.','Digitalisierung steigert Effizienz.'],argumentsAgainst:['Zweiklassenmedizin ist ungerecht.','Buerokratieaufwand zu hoch.'],keyPhrases:['Ein weiterer Gesichtspunkt...','Problematisch ist jedoch...']},
        {topic:'Bildungsreform',usefulVocabulary:['die Bildungspolitik','der Bildungsfoederalismus','die Ganztagsschule','das Abitur','die Inklusion','die fruehkindliche Bildung','die Hochschulreform'],possibleQuestions:['Vereinheitlichung des Schulsystems?','Abitur nach 12. Klasse abschaffen?','Inklusion umsetzbar?'],argumentsFor:['Zentrales System = mehr Chancengerechtigkeit.','Inklusion foerdert soziales Miteinander.'],argumentsAgainst:['Foederalismus ermoeglicht regionale Anpassung.','Inklusion erfordert Ressourcen.'],keyPhrases:['Dieses Thema ist vielschichtig...','Befuerworter einer Reform argumentieren...']},
        {topic:'Arbeitsmarkt der Zukunft',usefulVocabulary:['der Strukturwandel','die Automatisierung','lebenslanges Lernen','der Fachkraeftemangel','die Gig-Economy','das Grundeinkommen','die Umschulung'],possibleQuestions:['Wie wird die Arbeit der Zukunft aussehen?','Bedroht Automation unsere Jobs?','Brauchen wir ein Grundeinkommen?'],argumentsFor:['Automatisierung schafft neue Berufe.','Lebenslanges Lernen ist Chance.'],argumentsAgainst:['Viele Berufe werden verschwinden.','Nicht alle koennen sich anpassen.'],keyPhrases:['Es zeichnet sich ab, dass...','Prognosen zufolge werden...']},
        {topic:'Medien und Meinungsfreiheit',usefulVocabulary:['die Pressefreiheit','die Zensur','die Desinformation','der Journalismus','die oeffentlich-rechtlichen Medien','die Algorithmen','die Echokammer'],possibleQuestions:['Ist die Pressefreiheit in Gefahr?','Sollten soziale Medien staerker reguliert werden?','Brauchen wir oeffentlich-rechtlichen Rundfunk?'],argumentsFor:['Pressefreiheit ist Grundpfeiler der Demokratie.','Oeffentlich-rechtliche sichern Qualitaetsjournalismus.'],argumentsAgainst:['Soziale Medien verbreiten Desinformation.','OeR-Rundfunk ist zu teuer und nicht mehr zeitgemaess.'],keyPhrases:['In dieser Diskussion stehen sich zwei Positionen gegenueber...','Waehrend die einen die Meinungsfreiheit betonen...']},
        {topic:'Kuenstliche Intelligenz',usefulVocabulary:['maschinelles Lernen','neuronale Netze','die Ethik','die Automatisierung','die Daten','der Algorithmus','die Transparenz','die Verantwortung'],possibleQuestions:['Ist KI eine Chance oder Gefahr?','Sollte KI reguliert werden?','Wird KI Arbeitsplaetze ersetzen?'],argumentsFor:['KI kann medizinische Diagnosen verbessern.','KI steigert Effizienz in vielen Bereichen.'],argumentsAgainst:['KI entscheidet undurchschaubar.','KI kann Vorurteile verstaerken.'],keyPhrases:['Bei diesem Thema muss man differenzieren...','Die Potenziale sind enorm, aber die Risiken...']},
      ]
    },
  ]
}

// ============ GOETHE LEVEL GUIDES ============
function generateLevelGuides(): any[] {
  return [
    {
      level: 'A1', description: 'Grundlegende Kenntnisse: vertraute alltaegliche Ausdruecke und einfache Saetze verstehen und verwenden.',
      modules: ['Hoeren','Lesen','Schreiben','Sprechen'],
      moduleDetails: [
        {name:'Hoeren',duration_minutes:20,format:'3 Teile: Durchsagen, kurze Gespraeche und Alltagsdialoge',passScore:'60%',skills:['Einfache Woerter und Phrasen verstehen','Grundlegende Informationen aus kurzen Audios extrahieren'],practiceTips:['Langsame deutsche Audios taeglich hoeren','Auf Zahlen und Namen konzentrieren']},
        {name:'Lesen',duration_minutes:25,format:'3 Teile: kurze Texte, Schilder, Anzeigen, E-Mails',passScore:'60%',skills:['Einfache Schilder und Notizen verstehen','Informationen aus kurzen Texten finden'],practiceTips:['Kurze Anzeigen und Schilder lesen','Schluesselinformationen ueberfliegen ueben']},
        {name:'Schreiben',duration_minutes:20,format:'2 Teile: Formular ausfuellen + kurze Nachricht',passScore:'60%',skills:['Einfache persoenliche Informationen schreiben','Kurze Mitteilung ueber Alltag schreiben'],practiceTips:['Formulare ausfuellen ueben','Kurze E-Mails ueber sich schreiben']},
        {name:'Sprechen',duration_minutes:15,format:'3 Teile: sich vorstellen, Fragen stellen/antworten, Bitten',passScore:'60%',skills:['Sich einfach vorstellen','Grundlegende Fragen stellen und beantworten'],practiceTips:['Selbstvorstellung taeglich ueben','Sich beim Sprechen aufnehmen']},
      ]
    },
    {
      level: 'A2', description: 'Elementare Verwendung: versteht Satze und haeufig gebrauchte Ausdruecke in wichtigen Bereichen (Person, Familie, Einkaufen, Arbeit).',
      modules: ['Hoeren','Lesen','Schreiben','Sprechen'],
      moduleDetails: [
        {name:'Hoeren',duration_minutes:25,format:'3 Teile: Radioansagen, Telefongespraeche, Alltagsdialoge',passScore:'60%',skills:['Hauptinformationen in kurzen Gespraechen verstehen','Einfache Erklaerungen verstehen'],practiceTips:['Podcasts fuer A2-Niveau hoeren','Dialoge aus Lehrbuechern anhoeren']},
        {name:'Lesen',duration_minutes:30,format:'3 Teile: laengere Alltagstexte, E-Mails, Anzeigen',passScore:'60%',skills:['Einfache Texte ueber vertraute Themen verstehen','Konkrete Informationen in Anzeigen finden'],practiceTips:['Kurze Zeitungsartikel lesen','Wortschatz thematisch erweitern']},
        {name:'Schreiben',duration_minutes:30,format:'2 Teile: private und formelle Nachricht',passScore:'60%',skills:['Ueber vertraute Themen schreiben','Formelle E-Mails verfassen'],practiceTips:['Tagebuch auf Deutsch fuehren','E-Mails mit verschiedenen Anlaessen schreiben']},
        {name:'Sprechen',duration_minutes:15,format:'3 Teile: Vorstellung, Thema besprechen, gemeinsame Planung',passScore:'60%',skills:['In einfachen Saetzen kommunizieren','Ueber Alltagsthemen sprechen', 'Einfache Planungen durchfuehren'],practiceTips:['Alltagssituationen nachspielen','Mit Sprachpartner ueben']},
      ]
    },
    {
      level: 'B1', description: 'Selbststaendige Sprachverwendung: Hauptinhalte vertrauter Themen verstehen, sich einfach zusammenhaengend ausdruecken.',
      modules: ['Hoeren','Lesen','Schreiben','Sprechen'],
      moduleDetails: [
        {name:'Hoeren',duration_minutes:30,format:'3 Teile: Radiogespraeche, Interviews, Diskussionen',passScore:'60%',skills:['Hauptaussagen von Radiobeitraegen verstehen','Meinungen und Standpunkte erkennen'],practiceTips:['Nachrichten auf Deutsch hoeren (langsam)','Verschiedene Stimmen und Akzente ueben']},
        {name:'Lesen',duration_minutes:40,format:'3 Teile: Blogbeitraege, Zeitungsartikel, Forumsbeitraege',passScore:'60%',skills:['Sachtexte und persoenliche Briefe verstehen','Wichtige Informationen im Text finden'],practiceTips:['Blogs zu Interessenthemen lesen','Unbekannte Woerter aus Kontext erschliessen']},
        {name:'Schreiben',duration_minutes:40,format:'2 Teile: formelle Beschwerde/Anfrage + persoenliche Mitteilung',passScore:'60%',skills:['Zusammenhaengende Texte schreiben','Persoenliche Meinung ausdruecken und begruenden'],practiceTips:['Forumsbeitraege schreiben','Texte mit Einleitung, Hauptteil, Schluss gliedern']},
        {name:'Sprechen',duration_minutes:25,format:'3 Teile: Vortrag, Diskussion, gemeinsame Planung',passScore:'60%',skills:['Zusammenhaengend ueber vertraute Themen sprechen','Meinungen begruenden','An Gespraechen teilnehmen'],practiceTips:['Kurze Vortraege zu Alltagsthemen halten','Argumente sammeln und strukturieren']},
      ]
    },
    {
      level: 'B2', description: 'Selbststaendige Sprachverwendung: komplexe Texte verstehen, sich spontan und fluessig verstaendigen.',
      modules: ['Hoeren','Lesen','Schreiben','Sprechen'],
      moduleDetails: [
        {name:'Hoeren',duration_minutes:35,format:'3 Teile: Vortraege, Diskussionsrunden, Radiofeatures',passScore:'60%',skills:['Laengere Redebeitraege verstehen','Argumentation folgen','Implizite Einstellungen erkennen'],practiceTips:['TED-Talks auf Deutsch anhoeren','Debatten und Diskussionen verfolgen']},
        {name:'Lesen',duration_minutes:50,format:'3 Teile: komplexe Sachtexte, Meinungsartikel, Kommentare',passScore:'60%',skills:['Komplexe Texte zu aktuellen Themen verstehen','Argumentation und Standpunkte erkennen'],practiceTips:['Qualitaetszeitungen lesen (Zeit, FAZ, SZ)','Textstruktur analysieren']},
        {name:'Schreiben',duration_minutes:60,format:'2 Teile: Argumentation/Stellungnahme + formelle Korrespondenz',passScore:'60%',skills:['Differenzierte Argumentation verfassen','Formelle Briefe mit komplexem Inhalt schreiben'],practiceTips:['Leserbriefe zu aktuellen Themen schreiben','Argumente pro/contra strukturieren']},
        {name:'Sprechen',duration_minutes:30,format:'3 Teile: Praesentation, Diskussion, Problemloesung',passScore:'60%',skills:['Komplexe Sachverhalte praesentieren','Standpunkte vertreten und verteidigen','Loesungen erarbeiten'],practiceTips:['Aktuelle Themen praesentieren','Debatten ueben, Positionen begruenden']},
      ]
    },
    {
      level: 'C1', description: 'Kompetente Sprachverwendung: anspruchsvolle Texte verstehen, sich spontan und strukturiert ausdruecken.',
      modules: ['Hoeren','Lesen','Schreiben','Sprechen'],
      moduleDetails: [
        {name:'Hoeren',duration_minutes:40,format:'3 Teile: komplexe Vortraege, Diskussionen, Reportagen',passScore:'60%',skills:['Laengere Redebeitraege auch abstrakt verstehen','Zwischentoene erkennen','Kontextuelle Bedeutungen verstehen'],practiceTips:['Wissenschaftliche Vortraege hoeren','Akzente und Dialekte ueben']},
        {name:'Lesen',duration_minutes:60,format:'4 Teile: wissenschaftliche Texte, Kommentare, literarische Texte',passScore:'60%',skills:['Komplexe Sachbuecher und Fachartikel verstehen','Implizite Aussagen interpretieren'],practiceTips:['Fachtexte zum Interessengebiet lesen','Stilmittel und Argumentationsstrategien analysieren']},
        {name:'Schreiben',duration_minutes:75,format:'2 Teile: zusammenfassende/erortende Aufgaben + formelle Korrespondenz',passScore:'60%',skills:['Komplexe Sachverhalte strukturiert darstellen','Stellungnahmen mit Argumenten verfassen'],practiceTips:['Zusammenfassungen von Artikeln schreiben','Koh aerente Argumentationslinien aufbauen']},
        {name:'Sprechen',duration_minutes:35,format:'2 Teile: Vortrag/Praesentation + Diskussion',passScore:'60%',skills:['Anspruchsvolle Praesentationen halten','Sich an komplexen Diskussionen beteiligen','Nuancen ausdruecken'],practiceTips:['Vortraege mit Thesen und Antithesen halten','Sich an Diskussionsrunden beteiligen']},
      ]
    },
  ]
}

// ============ MAIN ============
function main() {
  const dir = path.dirname(OUTPUT_FILE)
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true })
  }

  const mockExams = generateAllMockExams()
  const examTopics = generateExamTopics()
  const goetheLevelGuides = generateLevelGuides()

  const data: any = { mockExams, examTopics, goetheLevelGuides }

  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(data, null, 2), 'utf-8')

  console.log(`Generated ${mockExams.length} mock exams`)
  console.log(`Generated ${examTopics.length} exam topic sets`)
  let totalGuides = 0
  for (const t of examTopics) {
    totalGuides += t.preparationGuides.length
    console.log(`  ${t.level} ${t.module}: ${t.commonTopics.length} topics, ${t.preparationGuides.length} prep guides`)
  }
  console.log(`Total preparation guides: ${totalGuides}`)
  console.log(`Generated ${goetheLevelGuides.length} level guides (A1-C1)`)
  console.log(`\nOutput written to: ${OUTPUT_FILE}`)
}

main()
