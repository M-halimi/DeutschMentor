/**
 * DeutschMentor Writing Prompts Generator
 * Generates writing prompts for the writing_submissions table.
 * Run with: npx tsx scripts/generate-content-writing.ts
 *
 * Output: scripts/seed-data/writing.json
 */

import * as fs from 'fs'
import * as path from 'path'

const OUTPUT_DIR = path.join(__dirname, 'seed-data')

interface WritingPrompt {
  title: string
  description: string
  prompt: string
  instructions: string
  wordRange: { min: number; max: number }
  level: string
  category: string
  goetheModule: string
  topics: string[]
  gradingCriteria: Record<string, { weight: number; description: string }>
  exampleSolution: string
  tips: string[]
}

const writingPrompts: WritingPrompt[] = []

function addPrompt(
  title: string,
  description: string,
  prompt: string,
  instructions: string,
  wordRange: { min: number; max: number },
  level: string,
  category: string,
  topics: string[],
  exampleSolution: string,
  tips: string[],
) {
  writingPrompts.push({
    title,
    description,
    prompt,
    instructions,
    wordRange,
    level,
    category,
    goetheModule: 'Schreiben',
    topics,
    gradingCriteria: {
      inhalt: { weight: 25, description: 'Content relevance and completeness' },
      wortschatz: { weight: 25, description: 'Vocabulary range and accuracy' },
      grammatik: { weight: 25, description: 'Grammatical correctness' },
      aufbau: { weight: 15, description: 'Structure and coherence' },
      stil: { weight: 10, description: 'Style and register' },
    },
    exampleSolution,
    tips,
  })
}

// ============================================================
// A1 PROMPTS (10) — Goethe A1 Schreiben Teil 1-2
// ============================================================

addPrompt(
  'Sich vorstellen',
  'Write a short self-introduction',
  'Stellen Sie sich vor. Schreiben Sie einen kurzen Text über sich. Wie heißen Sie? Woher kommen Sie? Wo wohnen Sie? Was machen Sie?',
  'Schreiben Sie 4-6 Sätze über sich selbst. Nennen Sie Ihren Namen, Ihr Land, Ihren Wohnort und Ihre Tätigkeit.',
  { min: 30, max: 50 },
  'A1',
  'daily_life',
  ['Alltag', 'Familie', 'Vorstellung'],
  'Hallo! Ich heiße Anna Müller und komme aus Spanien. Ich wohne in Berlin. Ich bin Studentin und lerne Deutsch. Ich habe einen Bruder und eine Schwester. Mein Hobby ist Lesen.',
  ['Verwenden Sie einfache Hauptsätze mit Subjekt-Verb-Objekt.', 'Nutzen Sie die Verben "sein", "haben", "wohnen" und "kommen".', 'Erwähnen Sie Ihren Namen, Herkunft, Wohnort und Beruf/Studium.'],
)

addPrompt(
  'Eine Postkarte aus dem Urlaub',
  'Write a postcard from vacation',
  'Sie machen Urlaub in München. Schreiben Sie eine Postkarte an Ihre Familie. Schreiben Sie: Wo sind Sie? Wie ist das Wetter? Was machen Sie?',
  'Schreiben Sie 3-5 Sätze auf eine Postkarte. Verwenden Sie Präsens.',
  { min: 30, max: 50 },
  'A1',
  'travel',
  ['Urlaub', 'Wetter', 'Familie'],
  'Liebe Mama, lieber Papa, ich bin in München. Das Wetter ist schön und warm. Ich besuche das Stadtzentrum und esse eine Brezel. Das Essen schmeckt gut. Bis bald! Eure Anna',
  ['Schreiben Sie kurze, einfache Sätze.', 'Verwenden Sie "sein" und "haben" für Beschreibungen.', 'Nutzen Sie Wettervokabeln wie "sonnig", "warm", "schön".'],
)

addPrompt(
  'Meine Familie',
  'Describe your family',
  'Beschreiben Sie Ihre Familie. Wie viele Personen hat Ihre Familie? Wie heißen Ihre Eltern und Geschwister? Wie alt sind sie?',
  'Schreiben Sie 5-6 Sätze über Ihre Familie. Nennen Sie Namen, Alter und Beziehungen.',
  { min: 30, max: 60 },
  'A1',
  'daily_life',
  ['Familie', 'Alltag', 'Vorstellung'],
  'Meine Familie ist klein. Ich habe einen Vater, eine Mutter und eine Schwester. Mein Vater heißt Klaus und ist 45 Jahre alt. Meine Mutter heißt Maria und ist 42 Jahre alt. Meine Schwester ist 10 Jahre alt und heißt Lisa.',
  ['Nutzen Sie Possessivartikel: mein, meine.', 'Üben Sie Zahlen für das Alter.', 'Verwenden Sie "haben" für Familienmitglieder.'],
)

addPrompt(
  'Ein Formular ausfüllen',
  'Fill in a registration form',
  'Sie möchten einen Deutschkurs besuchen. Füllen Sie das Anmeldeformular aus. Schreiben Sie: Ihren Namen, Ihre Adresse, Ihre Telefonnummer, Ihren Beruf und Ihre Sprachkenntnisse.',
  'Schreiben Sie einen kurzen Text mit den Informationen für das Formular. Verwenden Sie einfache Sätze.',
  { min: 30, max: 50 },
  'A1',
  'daily_life',
  ['Alltag', 'Schule', 'Formular'],
  'Mein Name ist Tom Weber. Ich wohne in der Hauptstraße 12 in Köln. Meine Telefonnummer ist 0157 12345678. Ich bin Kellner von Beruf. Ich spreche ein bisschen Deutsch und lerne seit einem Monat.',
  ['Schreiben Sie zuerst Ihre persönlichen Daten.', 'Nutzen Sie "von Beruf" für Ihren Job.', 'Verwenden Sie "wohnen in" für die Adresse.'],
)

addPrompt(
  'Mein Zuhause',
  'Describe your home',
  'Beschreiben Sie Ihre Wohnung oder Ihr Haus. Wo wohnen Sie? Wie viele Zimmer gibt es? Was mögen Sie an Ihrer Wohnung?',
  'Schreiben Sie 4-5 Sätze über Ihr Zuhause. Beschreiben Sie die Räume und Ihre Lieblingsgegend.',
  { min: 30, max: 60 },
  'A1',
  'daily_life',
  ['Alltag', 'Wohnen', 'Haus'],
  'Ich wohne in einer Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Mein Zimmer ist klein, aber gemütlich. Ich mag den Balkon sehr.',
  ['Nutzen Sie "es gibt" + Akkusativ.', 'Verwenden Sie Adjektive wie "groß", "klein", "schön".', 'Beschreiben Sie, was Ihnen gefällt: "Ich mag ...".'],
)

addPrompt(
  'Mein Tagesablauf',
  'Describe your daily routine',
  'Beschreiben Sie Ihren Tagesablauf. Wann stehen Sie auf? Was essen Sie zum Frühstück? Was machen Sie am Vormittag und am Nachmittag? Wann gehen Sie schlafen?',
  'Schreiben Sie 5-6 Sätze über Ihren Tag. Verwenden Sie Uhrzeiten und trennbare Verben.',
  { min: 40, max: 60 },
  'A1',
  'daily_life',
  ['Alltag', 'Tagesablauf', 'Zeit'],
  'Ich stehe um 7 Uhr auf. Ich frühstücke um halb acht. Ich esse Brot und trinke Kaffee. Um 8 Uhr gehe ich zur Arbeit. Ich arbeite bis 17 Uhr. Am Abend koche ich und sehe fern. Um 22 Uhr gehe ich schlafen.',
  ['Verwenden Sie trennbare Verben wie "aufstehen" und "fernsehen".', 'Nutzen Sie Uhrzeiten: "um 7 Uhr", "um halb acht".', 'Schreiben Sie die Aktivitäten in zeitlicher Reihenfolge.'],
)

addPrompt(
  'Das Wetter heute',
  'Describe the weather',
  'Wie ist das Wetter heute in Ihrer Stadt? Schreiben Sie einen kurzen Text. Ist es sonnig, regnerisch oder kalt? Was tragen Sie? Was machen Sie bei diesem Wetter?',
  'Schreiben Sie 4-5 Sätze über das Wetter heute. Beschreiben Sie die Temperatur und Ihre Aktivitäten.',
  { min: 30, max: 50 },
  'A1',
  'daily_life',
  ['Wetter', 'Alltag', 'Kleidung'],
  'Heute ist das Wetter kalt und regnerisch. Die Temperatur ist 5 Grad. Ich trage eine Jacke und einen Schal. Ich bleibe zu Hause und lese ein Buch. Ich trinke heißen Tee.',
  ['Nutzen Sie Wetteradjektive: "sonnig", "wolkig", "kalt", "warm".', 'Verwenden Sie "tragen" für Kleidung.', 'Verbinden Sie Wetter mit Aktivitäten.'],
)

addPrompt(
  'Beim Einkaufen',
  'Write about grocery shopping',
  'Sie gehen einkaufen. Schreiben Sie eine Einkaufsliste und einen kurzen Text. Was kaufen Sie? Wie viel kostet alles? Wo kaufen Sie ein?',
  'Schreiben Sie 4-5 Sätze über Ihren Einkauf. Nennen Sie Lebensmittel und Preise.',
  { min: 30, max: 50 },
  'A1',
  'shopping',
  ['Einkaufen', 'Essen', 'Zahlen'],
  'Ich gehe in den Supermarkt. Ich kaufe Brot, Milch, Eier und Äpfel. Das Brot kostet 2 Euro. Die Milch kostet 1 Euro. Alles zusammen kostet 8 Euro. Ich bezahle an der Kasse.',
  ['Nutzen Sie "kaufen" und "kosten" für Preise.', 'Verwenden Sie "Ich brauche" für Ihre Einkaufsliste.', 'Üben Sie Zahlen und Euro-Beträge.'],
)

addPrompt(
  'Eine Einladung zum Geburtstag',
  'Write a birthday invitation',
  'Sie haben bald Geburtstag. Schreiben Sie eine kurze Einladung an Ihren Freund oder Ihre Freundin. Wann ist die Party? Wo findet sie statt? Was gibt es zu essen und zu trinken?',
  'Schreiben Sie 4-5 Sätze. Laden Sie Ihren Freund ein. Nennen Sie Datum, Uhrzeit und Ort.',
  { min: 30, max: 60 },
  'A1',
  'daily_life',
  ['Familie', 'Feier', 'Einladung'],
  'Liebe Sara, am Samstag habe ich Geburtstag. Ich lade dich zu meiner Party ein. Die Party ist bei mir zu Hause um 18 Uhr. Es gibt Kuchen, Pizza und Cola. Ich freue mich auf dich! Deine Anna',
  ['Verwenden Sie die Anrede "Liebe/Lieber".', 'Nutzen Sie "Ich lade dich ein" (trennbares Verb).', 'Schreiben Sie Datum und Uhrzeit klar.'],
)

addPrompt(
  'Ein Hobby beschreiben',
  'Describe a hobby',
  'Beschreiben Sie Ihr Lieblingshobby. Was machen Sie gern in Ihrer Freizeit? Wie oft machen Sie das? Macht es Spaß?',
  'Schreiben Sie 4-5 Sätze über Ihr Hobby. Nutzen Sie "gern" und "Spaß machen".',
  { min: 30, max: 50 },
  'A1',
  'daily_life',
  ['Hobby', 'Freizeit', 'Sport'],
  'Mein Hobby ist Fußball. Ich spiele jeden Samstag mit meinen Freunden Fußball. Das macht großen Spaß. Ich bin im Fußballverein. Am Abend sehe ich mir Fußball im Fernsehen an.',
  ['Verwenden Sie "gern" + Verb: "Ich spiele gern ...".', 'Nutzen Sie "Spaß machen" für Aktivitäten.', 'Nennen Sie, wie oft Sie das Hobby machen.'],
)

// ============================================================
// A2 PROMPTS (10) — Goethe A2 Schreiben
// ============================================================

addPrompt(
  'Eine E-Mail über die Wochenendpläne',
  'Write an email about weekend plans',
  'Schreiben Sie eine E-Mail an Ihren Freund Max. Erzählen Sie von Ihren Plänen für das Wochenende. Schreiben Sie: Was machen Sie am Samstag? Was machen Sie am Sonntag? Wen treffen Sie?',
  'Schreiben Sie eine E-Mail mit 4-6 Sätzen. Verwenden Sie die Punkte aus der Aufgabe.',
  { min: 60, max: 90 },
  'A2',
  'daily_life',
  ['Wochenende', 'Freizeit', 'Freunde'],
  'Hallo Max, wie geht es dir? Am Samstag möchte ich ins Kino gehen. Es läuft ein neuer Film. Am Sonntag fahre ich mit meiner Familie an den See. Wir wollen schwimmen und grillen. Möchtest du am Samstag mitkommen? Viele Grüße, Tom',
  ['Beziehen Sie sich auf die 3-4 Punkte in der Aufgabe.', 'Verwenden Sie "möchte" und "wollen" für Pläne.', 'Beenden Sie die E-Mail mit einer freundlichen Frage.'],
)

addPrompt(
  'Eine Reise beschreiben',
  'Describe a recent trip',
  'Sie waren letzte Woche in Hamburg. Schreiben Sie eine Nachricht an Ihre Freundin Lisa. Erzählen Sie: Wo haben Sie gewohnt? Was haben Sie besichtigt? Wie war das Wetter? Hat es Ihnen gefallen?',
  'Schreiben Sie 5-7 Sätze. Verwenden Sie das Perfekt.',
  { min: 60, max: 90 },
  'A2',
  'travel',
  ['Reise', 'Urlaub', 'Stadt'],
  'Liebe Lisa, ich war letzte Woche in Hamburg. Es hat super gefallen! Ich habe in einem Hotel in der Stadtmitte gewohnt. Ich habe den Hafen und die Speicherstadt besichtigt. Das Wetter war leider regnerisch, aber das war nicht schlimm. Das Essen war sehr lecker. Ganz liebe Grüße, Maria',
  ['Verwenden Sie Perfekt mit "haben" und "sein".', 'Nutzen Sie "besichtigen", "gefallen", "wohnen".', 'Erzählen Sie in der Reihenfolge: Ankunft → Aktivitäten → Fazit.'],
)

addPrompt(
  'Eine Entschuldigung für den Kurs',
  'Apologize for missing a class',
  'Sie können heute nicht zum Deutschkurs kommen. Schreiben Sie eine kurze Nachricht an Ihre Lehrerin, Frau Schmidt. Erklären Sie: Warum können Sie nicht kommen? Was haben Sie? Wann kommen Sie wieder?',
  'Schreiben Sie eine E-Mail mit 4-6 Sätzen. Entschuldigen Sie sich höflich.',
  { min: 60, max: 90 },
  'A2',
  'education',
  ['Schule', 'Kurs', 'Entschuldigung'],
  'Sehr geehrte Frau Schmidt, leider kann ich heute nicht zum Deutschkurs kommen. Ich bin krank und habe Fieber. Ich möchte niemanden anstecken. Ich bleibe zu Hause und ruhe mich aus. Nächste Woche komme ich hoffentlich wieder. Viele Grüße, Anna Müller',
  ['Beginnen Sie mit "Sehr geehrte/r" im formellen Kontext.', 'Erklären Sie den Grund klar und einfach.', 'Verwenden Sie Modalverben: "können", "möchten".'],
)

addPrompt(
  'Eine Einladung zur Hochzeit',
  'Write about a wedding invitation',
  'Ihre Cousine heiratet. Schreiben Sie eine Nachricht an Ihren Freund und erzählen Sie von der Hochzeit. Schreiben Sie: Wo und wann ist die Hochzeit? Was ziehen Sie an? Was schenken Sie?',
  'Schreiben Sie 5-7 Sätze. Verwenden Sie die angegebenen Punkte.',
  { min: 60, max: 100 },
  'A2',
  'daily_life',
  ['Familie', 'Feier', 'Hochzeit'],
  'Hallo Paul, meine Cousine Laura heiratet am 15. Juni! Die Hochzeit ist in einem Schloss bei München. Ich freue mich sehr darauf. Ich ziehe ein blaues Kleid an. Wir schenken dem Paar einen Gutschein für eine Reise. Es gibt bestimmt gutes Essen und Musik. Kommst du auch? Liebe Grüße, Lena',
  ['Beschreiben Sie zukünftige Pläne mit Präsens oder "werden".', 'Nutzen Sie "ziehen ... an" für Kleidung.', 'Fragen Sie am Ende nach der Meinung des Lesers.'],
)

addPrompt(
  'Ein verlorenes Gegenstand melden',
  'Report a lost item',
  'Sie haben Ihre Tasche im Bus verloren. Schreiben Sie eine Nachricht an die Fundbüro. Beschreiben Sie: Wann und wo haben Sie die Tasche verloren? Wie sieht die Tasche aus? Was ist drin?',
  'Schreiben Sie 5-6 Sätze. Beschreiben Sie die Tasche genau.',
  { min: 60, max: 90 },
  'A2',
  'daily_life',
  ['Alltag', 'Verloren', 'Beschreibung'],
  'Guten Tag, ich habe heute Morgen um 9 Uhr meine Tasche im Bus der Linie 142 verloren. Die Tasche ist schwarz und aus Leder. Sie ist nicht sehr groß. In der Tasche sind mein Portemonnaie, mein Schlüssel und ein Buch. Ich freue mich sehr, wenn Sie sie finden. Vielen Dank!',
  ['Beschreiben Sie Farbe, Material und Größe.', 'Nutzen Sie "verlieren" im Perfekt.', 'Verwenden Sie "sich freuen" für Höflichkeit.'],
)

addPrompt(
  'Eine Reklamation schreiben',
  'Write a complaint about a product',
  'Sie haben gestern ein T-Shirt gekauft. Zu Hause sehen Sie: Das T-Shirt hat ein Loch. Schreiben Sie eine E-Mail an den Kundenservice. Beschreiben Sie das Problem und sagen Sie, was Sie möchten.',
  'Schreiben Sie eine formelle E-Mail mit 4-6 Sätzen.',
  { min: 60, max: 90 },
  'A2',
  'shopping',
  ['Einkaufen', 'Reklamation', 'Kundenservice'],
  'Sehr geehrte Damen und Herren, gestern habe ich bei Ihnen ein T-Shirt gekauft. Leider hat das T-Shirt ein Loch am Ärmel. Ich möchte das T-Shirt gern umtauschen oder mein Geld zurückbekommen. Die Rechnung habe ich noch. Können Sie mir bitte helfen? Mit freundlichen Grüßen, Anna Müller',
  ['Verwenden Sie "Sehr geehrte Damen und Herren" für formelle E-Mails.', 'Beschreiben Sie das Problem sachlich.', 'Fragen Sie nach einer Lösung.'],
)

addPrompt(
  'Freunde zu sich nach Hause einladen',
  'Invite friends to your home',
  'Sie möchten am Samstag eine kleine Party machen. Schreiben Sie eine Nachricht an Ihre Freunde. Schreiben Sie: Wann beginnt die Party? Was sollen die Gäste mitbringen? Wie ist Ihre Adresse?',
  'Schreiben Sie 5-6 Sätze. Die Nachricht soll freundlich sein.',
  { min: 60, max: 90 },
  'A2',
  'daily_life',
  ['Freunde', 'Party', 'Einladung'],
  'Hallo zusammen, am Samstag mache ich eine kleine Party bei mir zu Hause! Die Party beginnt um 19 Uhr. Bringt bitte etwas zu essen oder zu trinken mit. Ich habe schon Musik und Spiele vorbereitet. Meine Adresse ist: Goethestraße 15, 3. Stock. Ich freue mich auf euch! Bis Samstag, Tom',
  ['Verwenden Sie "mitbringen" (trennbares Verb).', 'Geben Sie alle wichtigen Informationen: Zeit, Ort, was mitbringen.', 'Beenden Sie mit einem freundlichen Satz.'],
)

addPrompt(
  'Einen Arzttermin vereinbaren',
  'Make a doctor appointment',
  'Sie haben Rückenschmerzen. Schreiben Sie eine Nachricht an die Arztpraxis von Dr. Weber. Schreiben Sie: Wer sind Sie? Was haben Sie für Probleme? Wann möchten Sie kommen?',
  'Schreiben Sie eine kurze formelle Nachricht mit 4-5 Sätzen.',
  { min: 50, max: 80 },
  'A2',
  'health',
  ['Gesundheit', 'Arzt', 'Termin'],
  'Sehr geehrte Damen und Herren, ich heiße Anna Müller und bin Patientin bei Dr. Weber. Ich habe seit drei Tagen starke Rückenschmerzen. Könnte ich bitte einen Termin in dieser Woche bekommen? Mir passt es am Vormittag am besten. Vielen Dank!',
  ['Nennen Sie zuerst Ihren Namen.', 'Beschreiben Sie Ihre Symptome kurz.', 'Fragen Sie höflich nach einem Termin: "Könnte ich ...?"'],
)

addPrompt(
  'Eine Stadt beschreiben',
  'Describe your city',
  'Beschreiben Sie Ihre Stadt. Wo liegt sie? Was gibt es dort? Welche Sehenswürdigkeiten hat die Stadt? Was kann man dort machen? Gefällt es Ihnen dort?',
  'Schreiben Sie 6-8 Sätze. Nutzen Sie "es gibt" und Adjektive.',
  { min: 60, max: 100 },
  'A2',
  'travel',
  ['Stadt', 'Reise', 'Sehenswürdigkeiten'],
  'Ich wohne in Köln. Die Stadt liegt am Rhein. Es gibt viele Sehenswürdigkeiten, zum Beispiel den Kölner Dom und die Altstadt. Man kann gut einkaufen und essen gehen. Im Sommer sitzen viele Menschen am Rhein. Ich finde Köln sehr schön, weil die Stadt lebendig ist und die Menschen freundlich sind.',
  ['Verwenden Sie "es gibt" + Akkusativ.', 'Nutzen Sie "man kann" für Möglichkeiten.', 'Begründen Sie Ihre Meinung mit "weil" + Nebensatz.'],
)

addPrompt(
  'Ein Wochenende mit der Familie',
  'Write about a weekend with family',
  'Letztes Wochenende waren Ihre Großeltern zu Besuch. Schreiben Sie eine E-Mail an Ihre Freundin. Was haben Sie zusammen gemacht? Was haben Sie gekocht? Wie war das Wochenende?',
  'Schreiben Sie 5-7 Sätze im Perfekt.',
  { min: 60, max: 100 },
  'A2',
  'daily_life',
  ['Familie', 'Wochenende', 'Essen'],
  'Hallo Laura, letzten Samstag haben mich meine Großeltern besucht. Wir haben zusammen Mittagessen gekocht. Meine Oma hat eine leckere Suppe gemacht. Danach haben wir Karten gespielt und viel geredet. Am Sonntag sind wir spazieren gegangen. Das Wochenende war sehr schön! Liebe Grüße, Julia',
  ['Verwenden Sie konsequent das Perfekt.', 'Erzählen Sie chronologisch.', 'Nutzen Sie "danach", "dann", "später" für Reihenfolge.'],
)

// ============================================================
// B1 PROMPTS (8) — Goethe B1 Schreiben
// ============================================================

addPrompt(
  'Teilzeitjob für Schüler: Pro und Contra',
  'Write a forum post about part-time jobs for students',
  'In einem Internetforum wird diskutiert: "Sollten Schüler einen Teilzeitjob haben?" Schreiben Sie einen Beitrag. Nennen Sie Vorteile und Nachteile. Geben Sie Ihre Meinung.',
  'Schreiben Sie einen Forumsbeitrag mit 80-120 Wörtern. Begründen Sie Ihre Meinung.',
  { min: 80, max: 120 },
  'B1',
  'education',
  ['Schule', 'Job', 'Diskussion'],
  'Ich finde, dass ein Teilzeitjob für Schüler sowohl Vorteile als auch Nachteile hat. Ein Vorteil ist, dass man eigenes Geld verdient und lernt, mit Geld umzugehen. Außerdem sammelt man wichtige Erfahrungen für die Zukunft. Aber man darf nicht vergessen, dass die Schule Vorrang hat. Wenn man zu viel arbeitet, leidet die Schule darunter. Meiner Meinung nach ist ein Job am Wochenende oder in den Ferien ideal, solange die Noten gut bleiben.',
  ['Strukturieren Sie: Einleitung, Pro, Contra, eigene Meinung.', 'Verwenden Sie "Einerseits ... andererseits ...".', 'Nutzen Sie "meiner Meinung nach" für Ihre Position.'],
)

addPrompt(
  'Soziale Medien: Fluch oder Segen?',
  'Write an opinion on social media',
  'In Ihrem Deutschkurs diskutieren Sie über soziale Medien. Schreiben Sie einen Text: Wie nutzen Sie soziale Medien? Welche Vorteile sehen Sie? Welche Nachteile gibt es?',
  'Schreiben Sie 80-120 Wörter. Äußern Sie Ihre Meinung und begründen Sie.',
  { min: 80, max: 130 },
  'B1',
  'technology',
  ['Internet', 'Social Media', 'Kommunikation'],
  'Soziale Medien sind aus meinem Alltag nicht mehr wegzudenken. Ich nutze Instagram und WhatsApp, um mit Freunden zu kommunizieren. Ein großer Vorteil ist, dass man schnell und einfach Kontakt halten kann, auch über weite Entfernungen. Allerdings finde ich es problematisch, dass viele Menschen zu viel Zeit auf Social Media verbringen. Außerdem gibt es oft falsche Informationen. Ich glaube, man sollte Social Media bewusst nutzen und nicht zu viel Zeit damit verbringen.',
  ['Geben Sie zuerst Ihre persönliche Erfahrung.', 'Nutzen Sie "allerdings" für Gegenargumente.', 'Schließen Sie mit einer klaren Schlussfolgerung.'],
)

addPrompt(
  'Gesunde Ernährung im Alltag',
  'Write about healthy eating',
  'Ihr Freund isst jeden Tag Fast Food. Schreiben Sie ihm eine E-Mail. Erklären Sie, warum gesunde Ernährung wichtig ist. Geben Sie Tipps für eine gesündere Ernährung.',
  'Schreiben Sie eine informelle E-Mail mit 80-120 Wörtern. Geben Sie Ratschläge.',
  { min: 80, max: 120 },
  'B1',
  'health',
  ['Gesundheit', 'Essen', 'Alltag'],
  'Hallo Max, ich habe gehört, dass du jeden Tag Fast Food isst. Das ist auf Dauer nicht gut für deine Gesundheit. Du solltest mehr Obst und Gemüse essen, das gibt dir mehr Energie. Versuche doch, selbst zu kochen, das macht Spaß und ist gesünder. Es muss nicht kompliziert sein: Ein Salat oder eine warme Suppe geht schnell. Ich kann dir auch ein paar einfache Rezepte schicken. Pass auf dich auf! Liebe Grüße, Anna',
  ['Verwenden Sie "sollten" für Ratschläge.', 'Machen Sie konkrete Vorschläge.', 'Beenden Sie freundlich.'],
)

addPrompt(
  'Stadtleben vs. Landleben',
  'Compare city and country living',
  'In einem Forum wird diskutiert: "Wo lebt es sich besser: in der Stadt oder auf dem Land?" Schreiben Sie Ihre Meinung. Nennen Sie Vor- und Nachteile von beiden.',
  'Schreiben Sie einen Forumsbeitrag mit 100-150 Wörtern. Vergleichen Sie beide Seiten.',
  { min: 100, max: 150 },
  'B1',
  'daily_life',
  ['Stadt', 'Land', 'Wohnen'],
  'Das ist eine interessante Frage. In der Stadt hat man viele Möglichkeiten: gute Verkehrsanbindung, viele Geschäfte und kulturelle Angebote wie Museen und Theater. Allerdings ist das Leben in der Stadt oft teuer und laut. Auf dem Land ist es ruhiger und die Natur ist nah. Man hat mehr Platz und die Mieten sind niedriger. Aber die Infrastruktur ist nicht so gut und man braucht oft ein Auto. Persönlich lebe ich lieber in der Stadt, weil ich die Nähe zu allem schätze.',
  ['Vergleichen Sie systematisch Stadt vs. Land.', 'Nutzen Sie "während", "im Gegensatz zu".', 'Geben Sie am Ende eine klare persönliche Präferenz.'],
)

addPrompt(
  'Öffentliche Verkehrsmittel verbessern',
  'Write about public transport',
  'In Ihrer Stadt gibt es Probleme mit den öffentlichen Verkehrsmitteln. Schreiben Sie einen Leserbrief an die Lokalzeitung. Beschreiben Sie die Probleme und machen Sie Vorschläge.',
  'Schreiben Sie einen formellen Leserbrief mit 100-150 Wörtern.',
  { min: 100, max: 150 },
  'B1',
  'daily_life',
  ['Verkehr', 'Stadt', 'Öffentliche Verkehrsmittel'],
  'Sehr geehrte Damen und Herren, in den letzten Monaten sind die Busse in unserer Stadt immer unzuverlässiger geworden. Oft kommen sie zu spät oder fallen ganz aus. Besonders morgens ist die Situation schwierig, wenn Schüler und Berufstätige auf die Busse angewiesen sind. Ich schlage vor, dass die Stadt mehr Busse einsetzt und die Taktung erhöht. Außerdem sollten die Haltestellen besser gepflegt werden. Ich hoffe, dass sich bald etwas verbessert. Mit freundlichen Grüßen, Thomas Wagner',
  ['Verwenden Sie formelle Anrede und Grußformel.', 'Beschreiben Sie das Problem konkret.', 'Machen Sie mindestens zwei konstruktive Vorschläge.'],
)

addPrompt(
  'Sollte man im Ausland studieren?',
  'Write about studying abroad',
  'Ein Freund überlegt, ein Semester im Ausland zu studieren. Schreiben Sie ihm eine E-Mail. Nennen Sie Vorteile und Nachteile. Geben Sie Ihre Meinung.',
  'Schreiben Sie eine informelle E-Mail mit 80-120 Wörtern. Beraten Sie Ihren Freund.',
  { min: 80, max: 130 },
  'B1',
  'education',
  ['Studium', 'Ausland', 'Erfahrung'],
  'Hallo Lukas, ich finde es toll, dass du ein Semester im Ausland machen möchtest. Das ist eine einmalige Chance! Du lernst eine neue Kultur kennen, verbesserst deine Sprachkenntnisse und knüpfst internationale Kontakte. Allerdings solltest du bedenken, dass es auch Herausforderungen gibt: Heimweh, Bürokratie und manchmal auch Einsamkeit. Aber ich bin sicher, dass die positiven Erfahrungen überwiegen. Du wirst daran wachsen! Wenn du Hilfe bei der Organisation brauchst, melde dich!',
  ['Motivieren Sie Ihren Freund.', 'Nennen Sie sowohl Positives als auch Herausforderungen.', 'Verwenden Sie "allerdings", "trotzdem" für Nuancen.'],
)

addPrompt(
  'Umweltschutz im Alltag',
  'Write about environmental protection',
  'In Ihrem Kurs diskutieren Sie über Umweltschutz. Schreiben Sie einen Beitrag: Was tun Sie persönlich für die Umwelt? Was könnte man noch verbessern?',
  'Schreiben Sie 80-120 Wörter. Geben Sie Beispiele aus Ihrem Alltag.',
  { min: 80, max: 120 },
  'B1',
  'environment',
  ['Umwelt', 'Alltag', 'Nachhaltigkeit'],
  'Umweltschutz ist mir wichtig. In meinem Alltag versuche ich, Müll zu vermeiden. Ich kaufe Obst und Gemüse ohne Plastikverpackung und benutze einen Stoffbeutel. Außerdem fahre ich mit dem Fahrrad zur Arbeit statt mit dem Auto. Aber ich könnte noch mehr tun: Zum Beispiel weniger Fleisch essen oder alte Kleidung spenden statt wegzuwerfen. Ich finde, jeder sollte einen kleinen Beitrag leisten, dann haben wir gemeinsam eine große Wirkung.',
  ['Beginnen Sie mit Ihren persönlichen Maßnahmen.', 'Verwenden Sie "vermeiden", "benutzen", "spenden".', 'Schließen Sie mit einem positiven Ausblick.'],
)

addPrompt(
  'Bildung: Schule oder praktische Ausbildung?',
  'Write about education choices',
  'In einem Forum wird diskutiert: "Ist eine praktische Ausbildung besser als ein Studium?" Schreiben Sie Ihre Meinung. Nennen Sie Vor- und Nachteile beider Wege.',
  'Schreiben Sie einen Forumsbeitrag mit 100-150 Wörtern. Argumentieren Sie.',
  { min: 100, max: 150 },
  'B1',
  'education',
  ['Bildung', 'Ausbildung', 'Studium', 'Beruf'],
  'In Deutschland haben junge Menschen die Wahl zwischen einer Ausbildung und einem Studium. Eine Ausbildung ist praxisorientiert: Man arbeitet direkt im Betrieb und verdient eigenes Geld. Nach zwei bis drei Jahren ist man fertig und kann in den Beruf einsteigen. Ein Studium dauert länger und ist theoretischer, aber die Karrierechancen sind oft besser und man kann in vielen Bereichen arbeiten. Meiner Meinung nach kommt es auf die persönlichen Ziele an. Wer praktisch arbeiten möchte, ist mit einer Ausbildung gut beraten. Wer Führungsaufgaben anstrebt, sollte studieren.',
  ['Vergleichen Sie systematisch.', 'Nutzen Sie Fachvokabular: "praxisorientiert", "theoretisch".', 'Zeigen Sie Verständnis für beide Seiten.'],
)

// ============================================================
// B2 PROMPTS (7) — Goethe B2 Schreiben
// ============================================================

addPrompt(
  'Wohnungsmarkt: Eine Analyse',
  'Write a formal analysis of the housing market',
  'In Ihrer Stadt steigen die Mieten stark an. Schreiben Sie einen formellen Brief an die Stadtverwaltung. Analysieren Sie die Situation. Nennen Sie Ursachen und schlagen Sie Lösungen vor.',
  'Schreiben Sie einen formellen Brief mit 150-200 Wörtern. Strukturieren Sie in Einleitung, Analyse und Lösungsvorschläge.',
  { min: 150, max: 200 },
  'B2',
  'daily_life',
  ['Wohnen', 'Stadt', 'Miete'],
  'Sehr geehrte Damen und Herren, als langjähriger Bewohner dieser Stadt möchte ich auf die zunehmend problematische Lage auf dem Wohnungsmarkt aufmerksam machen. Die Mietpreise sind in den letzten zwei Jahren um durchschnittlich 15 Prozent gestiegen, während die Einkommen stagnieren. Eine wesentliche Ursache ist der Mangel an bezahlbarem Wohnraum, insbesondere für Familien mit niedrigem Einkommen. Ich schlage vor, dass die Stadt den Bau von Sozialwohnungen fördert und strengere Regelungen für Mieterhöhungen einführt. Zudem könnten leerstehende Gebäude in Wohnraum umgewandelt werden. Ich bitte Sie, dieses dringende Problem anzugehen. Mit freundlichen Grüßen, Anna Müller',
  ['Beschreiben Sie die Situation mit konkreten Daten.', 'Analysieren Sie Ursachen sachlich.', 'Formulieren Sie mindestens zwei konkrete Lösungsvorschläge.'],
)

addPrompt(
  'Technologie am Arbeitsplatz',
  'Write about technology in the workplace',
  'Ihr Unternehmen führt neue Software ein. Schreiben Sie einen Bericht an Ihre Abteilungsleitung. Bewerten Sie die Vor- und Nachteile der neuen Technologie. Geben Sie eine Empfehlung.',
  'Schreiben Sie einen formellen Bericht mit 180-250 Wörtern. Strukturieren Sie mit Pro/Contra.',
  { min: 180, max: 250 },
  'B2',
  'technology',
  ['Arbeit', 'Technologie', 'Digitalisierung'],
  'Betrifft: Bewertung der neuen Projektmanagement-Software Sehr geehrte Frau Dr. Schmidt, nach einer dreimonatigen Testphase möchte ich die neue Software bewerten. Positiv ist hervorzuheben, dass die Kommunikation zwischen den Abteilungen effizienter geworden ist. Aufgaben können zentral verwaltet werden, was Doppelarbeit vermeidet. Jedoch zeigt sich, dass die Einarbeitungszeit für ältere Kollegen erheblich ist. Zudem gibt es technische Probleme bei der Synchronisierung mit dem bestehenden System. Ich empfehle, die Software beizubehalten, aber ein zusätzliches Schulungsprogramm anzubieten. Für die technischen Probleme sollte der Support kontaktiert werden. Insgesamt überwiegen die Vorteile. Mit freundlichen Grüßen, Thomas Wagner',
  ['Schreiben Sie einen formellen Bericht mit Betreffzeile.', 'Nutzen Sie "hervorzuheben", "jedoch", "zudem".', 'Enden Sie mit einer klaren Empfehlung.'],
)

addPrompt(
  'Kulturelle Veranstaltungen in der Stadt',
  'Write about cultural events',
  'In Ihrer Stadt finden immer weniger kulturelle Veranstaltungen statt. Schreiben Sie einen Artikel für die Stadtzeitung. Erklären Sie, warum kulturelle Angebote wichtig sind. Machen Sie Vorschläge zur Verbesserung.',
  'Schreiben Sie einen Artikel mit 180-220 Wörtern. Argumentieren Sie überzeugend.',
  { min: 180, max: 220 },
  'B2',
  'culture',
  ['Kultur', 'Stadt', 'Veranstaltungen'],
  'Kultur ist ein wesentlicher Bestandteil des städtischen Lebens. In den letzten Jahren ist das Angebot an kulturellen Veranstaltungen in unserer Stadt jedoch drastisch zurückgegangen. Dies ist bedauerlich, denn Kultur fördert nicht nur den gesellschaftlichen Zusammenhalt, sondern zieht auch Touristen an und stärkt die lokale Wirtschaft. Konzerte, Theateraufführungen und Ausstellungen schaffen Begegnungsräume für Menschen unterschiedlicher Herkunft. Um das kulturelle Leben wiederzubeleben, schlage ich vor, dass die Stadt mehr Fördermittel bereitstellt und leerstehende Räume für kulturelle Nutzung öffnet. Auch Kooperationen mit Schulen und Vereinen könnten das Interesse junger Menschen wecken. Eine lebendige Kulturszene ist kein Luxus, sondern eine Notwendigkeit.',
  ['Beginnen Sie mit einer starken These.', 'Argumentieren Sie mit gesellschaftlichen und wirtschaftlichen Gründen.', 'Schließen Sie mit einem Appell.'],
)

addPrompt(
  'Freiwilligenarbeit: Ein Gewinn für alle',
  'Write about volunteering',
  'Sie engagieren sich ehrenamtlich in einem Tierheim. Schreiben Sie einen Erfahrungsbericht für Ihre Kurswebsite. Beschreiben Sie Ihre Tätigkeit. Erklären Sie, warum Freiwilligenarbeit wichtig ist. Motivieren Sie andere, sich zu engagieren.',
  'Schreiben Sie einen Bericht mit 150-200 Wörtern.',
  { min: 150, max: 200 },
  'B2',
  'daily_life',
  ['Freiwilligenarbeit', 'Tiere', 'Engagement'],
  'Seit einem Jahr arbeite ich ehrenamtlich im örtlichen Tierheim. Meine Aufgaben umfassen das Füttern der Tiere, das Reinigen der Gehege und die Betreuung von Besuchern, die ein Tier adoptieren möchten. Diese Arbeit hat mein Leben bereichert: Ich habe gelernt, Verantwortung zu übernehmen, und bin Teil einer engagierten Gemeinschaft geworden. Freiwilligenarbeit ist aus meiner Sicht von unschätzbarem Wert. Sie stärkt den gesellschaftlichen Zusammenhalt und bietet die Möglichkeit, etwas Sinnvolles zu tun. Ich kann nur jedem empfehlen, sich ebenfalls zu engagieren, sei es im Tierheim, im Sportverein oder in der Nachbarschaftshilfe. Der Einsatz für andere macht nicht nur die Gesellschaft besser, sondern auch jeden Einzelnen zufriedener.',
  ['Beschreiben Sie konkrete Tätigkeiten.', 'Erklären Sie den persönlichen Nutzen und den gesellschaftlichen Wert.', 'Motivieren Sie den Leser direkt.'],
)

addPrompt(
  'Nachrichtenmedien und Glaubwürdigkeit',
  'Write about news media credibility',
  'Immer mehr Menschen bezweifeln die Glaubwürdigkeit der Nachrichtenmedien. Schreiben Sie eine Erörterung. Analysieren Sie die Ursachen dieses Misstrauens. Schlagen Sie Maßnahmen vor, um das Vertrauen wiederherzustellen.',
  'Schreiben Sie eine Erörterung mit 200-250 Wörtern. Verwenden Sie formelle Sprache.',
  { min: 200, max: 250 },
  'B2',
  'media',
  ['Medien', 'Nachrichten', 'Vertrauen'],
  'Die Glaubwürdigkeit der Nachrichtenmedien befindet sich in einer Krise. Laut einer aktuellen Umfrage vertrauen nur noch 40 Prozent der Bevölkerung den traditionellen Medien. Ursächlich hierfür sind mehrere Faktoren: Erstens führt die zunehmende Kommerzialisierung dazu, dass Sensationsmeldungen oft vor sachlicher Berichterstattung priorisiert werden. Zweitens verbreiten sich über soziale Medien Falschinformationen rasant, was die Unterscheidung zwischen wahr und falsch erschwert. Drittens haben viele Menschen das Gefühl, dass bestimmte Themen einseitig dargestellt werden. Um das Vertrauen wiederherzustellen, sollten Medienhäuser in transparente Journalismusstandards investieren und Faktenchecks etablieren. Zudem wäre eine stärkere Trennung von Nachricht und Meinung wünschenswert. Auch die Medienkompetenz in der Bevölkerung muss gefördert werden, damit Nachrichten kritisch hinterfragt werden können.',
  ['Strukturieren Sie in Ursachenanalyse und Lösungsvorschläge.', 'Nutzen Sie "erstens", "zweitens", "drittens".', 'Verwenden Sie Nominalisierungen für formellen Stil.'],
)

addPrompt(
  'Karriereentscheidungen: Sicherheit vs. Leidenschaft',
  'Write about career decisions',
  'Ihr Freund steht vor einer Karriereentscheidung: Ein sicherer Bürojob oder eine unsichere, aber leidenschaftliche Tätigkeit als Künstler. Schreiben Sie eine E-Mail. Analysieren Sie beide Optionen. Geben Sie eine Empfehlung.',
  'Schreiben Sie eine informelle, aber reflektierte E-Mail mit 180-220 Wörtern.',
  { min: 180, max: 220 },
  'B2',
  'education',
  ['Beruf', 'Karriere', 'Entscheidung'],
  'Lieber Jonas, ich habe lange über deine Situation nachgedacht. Die Entscheidung zwischen Sicherheit und Leidenschaft ist wirklich nicht einfach. Der Bürojob bietet dir finanzielle Stabilität, geregelte Arbeitszeiten und soziale Absicherung. Das ist nicht zu unterschätzen, besonders in der heutigen Zeit. Andererseits hast du mir oft erzählt, wie sehr dich die Kunst erfüllt. Wenn du jetzt nicht den Schritt wagst, wirst du es vielleicht später bereuen. Eine Möglichkeit wäre, zunächst einen Kompromiss zu finden: Du könntest den Bürojob in Teilzeit ausüben und dich parallel künstlerisch weiterentwickeln. So hättest du ein finanzielles Polster, ohne deine Leidenschaft aufzugeben. Letztlich muss du selbst entscheiden, was für dich langfristig zählt. Ich unterstütze dich bei jeder Wahl.',
  ['Analysieren Sie beide Optionen fair.', 'Machen Sie einen konkreten Kompromissvorschlag.', 'Respektieren Sie die Entscheidungsfreiheit Ihres Freundes.'],
)

addPrompt(
  'Studium im Ausland: Pro und Contra',
  'Write a pro/con analysis of studying abroad',
  'Immer mehr Studierende verbringen ein Semester im Ausland. Schreiben Sie eine Analyse für Ihre Hochschulzeitung. Untersuchen Sie die Vorteile und Herausforderungen. Bewerten Sie, ob ein Auslandssemester empfehlenswert ist.',
  'Schreiben Sie eine Analyse mit 200-250 Wörtern. Strukturieren Sie mit Einleitung, Hauptteil, Fazit.',
  { min: 200, max: 250 },
  'B2',
  'education',
  ['Studium', 'Ausland', 'International'],
  'Die Zahl der Studierenden, die ein Semester im Ausland verbringen, ist in den letzten zehn Jahren kontinuierlich gestiegen. Doch welche Vor- und Nachteile bringt ein Auslandsaufenthalt tatsächlich mit sich? Zunächst zu den positiven Aspekten: Ein Auslandssemester fördert die interkulturelle Kompetenz, verbessert die Sprachkenntnisse enorm und erweitert den akademischen Horizont. Zudem sammeln Studierende wertvolle Lebenserfahrung und knüpfen internationale Kontakte, die sich später als nützlich erweisen können. Auf der anderen Seite sind die finanziellen Belastungen nicht zu unterschätzen: Studiengebühren, Reisekosten und die höheren Lebenshaltungskosten können eine erhebliche Hürde darstellen. Auch die bürokratischen Hürden und die organisatorische Eigenverantwortung fordern die Studierenden heraus. Zusammenfassend lässt sich sagen, dass ein Auslandssemester trotz der Herausforderungen eine wertvolle Erfahrung ist, die persönlich und akademisch bereichert. Studierende sollten sich jedoch frühzeitig informieren und sorgfältig planen.',
  ['Schreiben Sie eine ausgewogene Analyse.', 'Nutzen Sie "zunächst", "auf der anderen Seite", "zusammenfassend".', 'Enden Sie mit einem abgewogenen Fazit.'],
)

// ============================================================
// C1 PROMPTS (5) — Goethe C1 Schreiben
// ============================================================

addPrompt(
  'Work-Life-Balance in der modernen Arbeitswelt',
  'Write an academic essay on work-life balance',
  'Die Grenzen zwischen Arbeit und Freizeit verschwimmen zunehmend, nicht zuletzt durch die Digitalisierung. Erörtern Sie die Ursachen dieser Entwicklung und analysieren Sie die Auswirkungen auf die Gesundheit und das Privatleben der Arbeitnehmer. Nehmen Sie abschließend Stellung dazu, welche Maßnahmen Arbeitgeber ergreifen sollten.',
  'Schreiben Sie eine Erörterung mit 300-400 Wörtern. Strukturieren Sie formal. Verwenden Sie einen angemessenen akademischen Stil.',
  { min: 300, max: 400 },
  'C1',
  'work',
  ['Arbeit', 'Gesundheit', 'Digitalisierung', 'Gesellschaft'],
  'Die Work-Life-Balance ist in den letzten Jahren zu einem zentralen Thema der Arbeitswelt avanciert. Insbesondere die Digitalisierung hat dazu geführt, dass die einst klar gezogenen Grenzen zwischen Berufs- und Privatleben zunehmend verschwimmen. Im Folgenden sollen die Ursachen dieser Entwicklung analysiert, ihre Auswirkungen beleuchtet und abschließend geeignete Gegenmaßnahmen diskutiert werden. Eine wesentliche Ursache für die Erosion der Work-Life-Balance ist die ständige Erreichbarkeit durch mobile Endgeräte. Während E-Mails und Nachrichtendienste zweifellos die Flexibilität erhöhen, führen sie nicht selten dazu, dass Arbeitnehmer auch abends und am Wochenende berufliche Anfragen bearbeiten. Hinzu kommt der gestiegene Leistungsdruck in vielen Branchen, der durch globale Wettbewerbsstrukturen weiter verschärft wird. Die Auswirkungen dieser Entwicklung sind gravierend. Zahlreiche Studien belegen einen signifikanten Anstieg stressbedingter Erkrankungen wie Burnout, Schlafstörungen und Herz-Kreislauf-Erkrankungen. Darüber hinaus leiden soziale Beziehungen unter der zeitlichen Inanspruchnahme, was langfristig zu gesellschaftlicher Isolation führen kann. Besonders problematisch erscheint, dass viele Arbeitnehmer die Symptome dieser Fehlentwicklung erst dann wahrnehmen, wenn bereits gesundheitliche Schäden eingetreten sind. Aus meiner Sicht sind hier in erster Linie die Arbeitgeber in der Pflicht. Sie sollten klare Richtlinien für Erreichbarkeit außerhalb der Arbeitszeit etablieren und eine Unternehmenskultur fördern, die Pausen und Erholung wertschätzt. Flexible Arbeitszeitmodelle können helfen, die individuellen Bedürfnisse der Beschäftigten besser zu berücksichtigen. Letztlich liegt es jedoch auch in der Verantwortung jedes Einzelnen, bewusst Grenzen zu setzen und auf die eigenen Bedürfnisse zu achten.',
  ['Strukturieren Sie mit Einleitung, Analyse, Auswirkungen und Stellungnahme.', 'Verwenden Sie komplexe Satzstrukturen und Nominalisierungen.', 'Nutzen Sie funktionalen Stil: "im Folgenden", "abschließend", "zusammenfassend".'],
)

addPrompt(
  'Digitale Transformation in der Bildung',
  'Write a detailed analysis of digital transformation in education',
  'Die Digitalisierung verändert das Bildungswesen grundlegend. Analysieren Sie die Chancen und Risiken digitaler Lernformate. Gehen Sie dabei besonders auf die Rolle der Lehrkräfte und die Frage der Bildungsgerechtigkeit ein. Nehmen Sie abschließend begründet Stellung, ob digitale Medien den Präsenzunterricht ersetzen können.',
  'Schreiben Sie eine wissenschaftlich fundierte Erörterung mit 300-400 Wörtern.',
  { min: 300, max: 400 },
  'C1',
  'education',
  ['Bildung', 'Digitalisierung', 'Technologie', 'Gesellschaft'],
  'Die digitale Transformation hat nahezu alle gesellschaftlichen Bereiche erfasst, und das Bildungswesen bildet hier keine Ausnahme. Während Befürworter digitaler Lernformate auf die Chancen der Personalisierung und Flexibilisierung verweisen, warnen Kritiker vor einer zunehmenden sozialen Spaltung und dem Verlust sozialer Interaktion. Die vorliegende Erörterung analysiert die Chancen und Risiken dieser Entwicklung unter besonderer Berücksichtigung der Rolle der Lehrkräfte und der Bildungsgerechtigkeit. Die Chancen digitaler Lernformate liegen auf der Hand: Lerninhalte können individualisiert und dem jeweiligen Kenntnisstand angepasst werden, was insbesondere in heterogenen Lerngruppen von Vorteil ist. Zudem ermöglichen digitale Medien einen orts- und zeitunabhängigen Zugang zu Bildung, was beispielsweise Berufstätigen oder Menschen in ländlichen Regionen zugutekommt. Allerdings zeigt sich, dass diese Chancen nur dann realisiert werden können, wenn die notwendige Infrastruktur vorhanden ist. Hier offenbart sich ein zentrales Risiko: Die digitale Spaltung der Gesellschaft verschärft bestehende Bildungsungleichheiten, da nicht alle Haushalte über angemessene Endgeräte und Breitbandanschlüsse verfügen. Die Rolle der Lehrkräfte wandelt sich im Zuge der Digitalisierung fundamental. Sie sind nicht länger primär Wissensvermittler, sondern zunehmend Lernbegleiter und Moderatoren digitaler Prozesse. Diese Transformation erfordert umfassende Fortbildungsmaßnahmen, die bisher in vielen Bildungseinrichtungen nicht ausreichend angeboten werden. Meiner Auffassung nach können digitale Medien den Präsenzunterricht nicht vollständig ersetzen, da der soziale Austausch und die unmittelbare Interaktion zwischen Lehrenden und Lernenden durch kein digitales Format adäquat abgebildet werden können. Ein sinnvoller Ansatz liegt vielmehr in der Integration beider Formen, also in einem durchdachten Blended-Learning-Konzept, das die Stärken beider Welten vereint.',
  ['Verwenden Sie eine klare Gliederung mit Thementeilung.', 'Nutzen Sie bildungswissenschaftliche Terminologie.', 'Formulieren Sie eine differenzierte Schlussaussage.'],
)

addPrompt(
  'Integrationspolitik in Deutschland',
  'Write a formal report on integration policy',
  'Die Integration von Zugewanderten ist eines der zentralen gesellschaftspolitischen Themen in Deutschland. Verfassen Sie einen Bericht, in dem Sie die aktuellen Herausforderungen der Integrationspolitik darstellen. Analysieren Sie die Bereiche Sprache, Arbeitsmarkt und Bildung. Entwickeln Sie abschließend konkrete Handlungsempfehlungen.',
  'Schreiben Sie einen formalen Bericht mit 350-400 Wörtern. Nutzen Sie eine objektive, analytische Sprache.',
  { min: 350, max: 400 },
  'C1',
  'society',
  ['Integration', 'Politik', 'Gesellschaft', 'Bildung'],
  'Betrifft: Herausforderungen und Handlungsempfehlungen in der Integrationspolitik Die Integration von Zugewanderten stellt die deutsche Gesellschaft und Politik vor komplexe Aufgaben, die weit über die reine Aufenthaltsgewährung hinausgehen. Eine erfolgreiche Integration setzt vielmehr das Zusammenwirken mehrerer gesellschaftlicher Teilsysteme voraus, namentlich des Bildungssystems, des Arbeitsmarkts und der sprachlichen Vermittlung. Im Bereich der Sprachförderung besteht nach wie vor erheblicher Handlungsbedarf. Obwohl Integrationskurse flächendeckend angeboten werden, sind die Wartezeiten vielerorts zu lang und die Kursformate zu unflexibel, insbesondere für berufstätige Zugewanderte oder Menschen mit Betreuungspflichten. Zudem erreichen die Kurse diejenigen nicht ausreichend, die aufgrund geringer Alphabetisierung oder traumatischer Erfahrungen besonderen Unterstützungsbedarf haben. Auf dem Arbeitsmarkt zeigt sich ein differenziertes Bild: Während gut qualifizierte Zugewanderte vergleichsweise schnell Anschluss finden, gestaltet sich die Integration von gering Qualifizierten und Geflüchteten deutlich schwieriger. Ein zentrales Hemmnis ist die mangelnde Anerkennung ausländischer Berufsabschlüsse, die häufig langwierige Verfahren nach sich zieht. Im Bildungssystem sind die Herausforderungen ebenso evident. Kinder und Jugendliche mit Migrationshintergrund sind an deutschen Schulen nach wie vor benachteiligt, was sich in niedrigeren Schulabschlüssen und schlechteren Übergangschancen in höhere Bildungsgänge manifestiert. Um diese Probleme nachhaltig zu adressieren, empfehle ich folgende Maßnahmen: Erstens eine deutliche Aufstockung der Mittel für Sprachkurse mit flexibleren Angebotsformaten. Zweitens die Einführung einer zentralen Anerkennungsstelle für ausländische Qualifikationen mit verbindlichen Bearbeitungsfristen. Drittens eine gezielte Förderung von Schulen mit hohem Migrantenanteil durch zusätzliche Personalstellen und sozialpädagogische Unterstützung. Nur durch ein abgestimmtes Vorgehen in allen drei Bereichen kann eine gelingende Integration erreicht werden.',
  ['Schreiben Sie einen formalen Bericht mit Betreffzeile.', 'Gliedern Sie in Problembereiche.', 'Formulieren Sie konkrete, umsetzbare Empfehlungen.'],
)

addPrompt(
  'Wissenschaftlicher Fortschritt und ethische Verantwortung',
  'Write an academic essay on scientific progress and ethics',
  'Der wissenschaftliche Fortschritt, insbesondere in der Gentechnologie und der Künstlichen Intelligenz, wirft zunehmend ethische Fragen auf. Erörtern Sie das Spannungsverhältnis zwischen wissenschaftlicher Freiheit und ethischer Verantwortung. Analysieren Sie anhand konkreter Beispiele, wo die Grenzen des Machbaren liegen sollten. Nehmen Sie begründet Stellung zur Rolle der Politik in diesem Diskurs.',
  'Schreiben Sie eine akademische Erörterung mit 350-400 Wörtern.',
  { min: 350, max: 400 },
  'C1',
  'technology',
  ['Wissenschaft', 'Ethik', 'Technologie', 'Gesellschaft'],
  'Der wissenschaftliche Fortschritt hat in den vergangenen Jahrzehnten Entwicklungen hervorgebracht, die noch vor einer Generation undenkbar schienen. Die Möglichkeit, das menschliche Genom zu editieren oder maschinelle Intelligenz zu erschaffen, die menschliche kognitive Fähigkeiten übertrifft, konfrontiert die Gesellschaft jedoch mit grundlegenden ethischen Fragen. Im Folgenden soll das Spannungsverhältnis zwischen wissenschaftlicher Freiheit und ethischer Verantwortung beleuchtet werden. Ein anschauliches Beispiel für dieses Dilemma bietet die Genschere CRISPR-Cas9. Einerseits eröffnet diese Technologie die Möglichkeit, Erbkrankheiten zu heilen und menschliches Leid zu verhindern. Andererseits ist der Missbrauchspotenzial enorm: Die Möglichkeit, das Erbgut zukünftiger Generationen gezielt zu verändern, berührt die fundamentale Frage nach der Definition des Menschen und seiner Würde. Ähnlich verhält es sich mit der Entwicklung Künstlicher Intelligenz. Während KI-Systeme in der Medizin Diagnosen verbessern und in der Klimaforschung komplexe Modelle berechnen können, werfen autonome Waffensysteme oder algorithmische Entscheidungssysteme, die diskriminieren können, schwerwiegende ethische Probleme auf. Die zentrale Herausforderung besteht darin, eine Balance zu finden zwischen der Förderung von Innovation und der Wahrung ethischer Prinzipien. Wissenschaftliche Freiheit ist ein hohes Gut, sie darf jedoch nicht als Freibrief für unkontrollierte Forschung missverstanden werden. Meines Erachtens kommt der Politik in diesem Diskurs eine Schlüsselrolle zu: Sie muss klare rechtliche Rahmenbedingungen schaffen, die sowohl Innovation ermöglichen als auch Missbrauch verhindern. Dabei darf sie sich nicht auf nationale Gesetzgebungen beschränken, da wissenschaftliche Entwicklungen globale Auswirkungen haben. Internationale Abkommen und ethische Leitlinien, die von multidisziplinären Gremien erarbeitet werden, könnten hier einen gangbaren Weg darstellen. Letztlich ist jedoch auch die Wissenschaft selbst gefordert, eine Kultur der ethischen Reflexion zu etablieren, die über die reine Machbarkeitslogik hinausweist.',
  ['Verwenden Sie eine klare These und Beispiele.', 'Nutzen Sie Fachvokabular aus Wissenschaftsethik.', 'Formulieren Sie eine differenzierte Position zur Rolle der Politik.'],
)

addPrompt(
  'Die Rolle der Kunst in der modernen Gesellschaft',
  'Write an essay on the role of art in society',
  'In einer zunehmend von wirtschaftlichen und technologischen Zwängen geprägten Gesellschaft gerät die Kunst zunehmend unter Legitimationsdruck. Analysieren Sie die gesellschaftliche Funktion von Kunst in der Gegenwart. Gehen Sie auf die Bedeutung von Kunst für die individuelle Entwicklung, den gesellschaftlichen Diskurs und die Wirtschaft ein. Entwickeln Sie eine begründete Position zur Frage der öffentlichen Kunstförderung.',
  'Schreiben Sie eine ausführliche Analyse mit 350-400 Wörtern.',
  { min: 350, max: 400 },
  'C1',
  'culture',
  ['Kunst', 'Kultur', 'Gesellschaft', 'Wirtschaft'],
  'Die Kunst sieht sich in der gegenwärtigen Gesellschaft zunehmend mit der Forderung konfrontiert, ihren gesellschaftlichen Nutzen unter Beweis zu stellen. Sparmaßnahmen im Kulturbereich und die anhaltende Debatte um die Legitimation öffentlicher Kunstförderung verdeutlichen diesen Druck. Dieser Essay analysiert die vielfältigen Funktionen von Kunst in der modernen Gesellschaft und entwickelt darauf aufbauend eine Position zur Frage der staatlichen Kunstförderung. Auf individueller Ebene erfüllt die Kunst eine fundamentale Funktion für die Persönlichkeitsentwicklung. Sie ermöglicht ästhetische Erfahrungen, die über den Alltag hinausweisen, und schult die Fähigkeit zur Empathie, indem sie den Rezipienten in fremde Perspektiven versetzt. Darüber hinaus fördert die kreative Auseinandersetzung mit Kunst die kognitive Flexibilität und die Fähigkeit, Ambiguität auszuhalten – Kompetenzen, die in einer komplexer werdenden Welt zunehmend an Bedeutung gewinnen. Im gesellschaftlichen Diskurs übernimmt Kunst die Rolle eines Seismografen für gesellschaftliche Entwicklungen und eines katalytischen Raums für kritische Reflexion. Künstlerische Werke können Missstände benennen, Tabus brechen und alternative Denkräume eröffnen, ohne dabei den Zwängen des journalistischen Objektivitätsgebots oder der wissenschaftlichen Beweisführung zu unterliegen. Gerade diese Freiheit macht Kunst zu einem unverzichtbaren Bestandteil einer lebendigen Demokratie. Auch die wirtschaftliche Bedeutung der Kunst ist nicht zu unterschätzen. Der Kulturbetrieb generiert nicht nur direkt Wertschöpfung und Arbeitsplätze, sondern fungiert auch als weicher Standortfaktor für die Ansiedlung von Unternehmen und Fachkräften. Internationale Studien belegen, dass Städte mit einer lebendigen Kunstszene wirtschaftlich dynamischer sind. Vor diesem Hintergrund plädiere ich für eine verstärkte öffentliche Kunstförderung. Diese sollte jedoch nicht primär an wirtschaftlichen Kriterien gemessen werden, sondern an ihrem Beitrag zur kulturellen Vielfalt und gesellschaftlichen Reflexionsfähigkeit. Die Förderung muss dabei sowohl renommierte Institutionen als auch die freie Szene und experimentelle Formate einschließen, denn gerade die Avantgarde von heute ist oft der Klassiker von morgen. Eine Gesellschaft, die ihrer Kunst keinen Raum gibt, beraubt sich ihrer eigenen Reflexionsfähigkeit.',
  ['Verbinden Sie individuelle, gesellschaftliche und wirtschaftliche Perspektiven.', 'Nutzen Sie ästhetische und kulturpolitische Terminologie.', 'Formulieren Sie ein klares, begründetes Plädoyer.'],
)

// ============================================================
// MAIN — Generate writing.json
// ============================================================

function main() {
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true })
  }

  const outputPath = path.join(OUTPUT_DIR, 'writing.json')
  fs.writeFileSync(outputPath, JSON.stringify(writingPrompts, null, 2))
  console.log(`Writing prompts generated: ${writingPrompts.length}`)
  console.log(`File written to: ${outputPath}`)
}

main()
