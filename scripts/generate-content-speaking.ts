import * as fs from 'fs'
import * as path from 'path'

interface SpeakingScenario {
  title: string
  level: string
  category: string
  scenario: string
  role: string
  situation: string
  prompt: string
  expectedTopics: string[]
  keyPhrases: string[]
  questions: string[]
  rolePlayPartner: string
  duration_minutes: number
  goetheStyle: boolean
  difficulty: number
  tips: string[]
}

const scenarios: SpeakingScenario[] = []

// ============================================================
// A1 — 12 scenarios (Goethe A1 Sprechen style)
// ============================================================

scenarios.push({
  title: 'Sich vorstellen',
  level: 'A1',
  category: 'introductions',
  scenario: 'You meet someone new at a language course. Introduce yourself.',
  role: 'Participant in a beginner German class',
  situation: 'First day of your A1 German course. The teacher asks everyone to introduce themselves.',
  prompt: 'Stellen Sie sich vor. Sagen Sie Ihren Namen, Ihr Alter, wo Sie herkommen, Ihren Beruf und Ihre Hobbys.',
  expectedTopics: ['Name', 'Age', 'Country of origin', 'Job/profession', 'Hobbies'],
  keyPhrases: ['Ich heiße ...', 'Ich komme aus ...', 'Ich bin ... Jahre alt', 'Mein Hobby ist ...', 'Ich arbeite als ...'],
  questions: ['Wie heißen Sie?', 'Woher kommen Sie?', 'Was sind Ihre Hobbys?', 'Was machen Sie beruflich?'],
  rolePlayPartner: 'The teacher or another student asking questions',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Smile and make eye contact', 'Speak slowly and clearly', 'Use complete sentences', 'Practice your name pronunciation'],
})

scenarios.push({
  title: 'Familie beschreiben',
  level: 'A1',
  category: 'family',
  scenario: 'Describe your family members to a new friend.',
  role: 'Student talking about your family',
  situation: 'You are showing photos of your family to a classmate during a break.',
  prompt: 'Beschreiben Sie Ihre Familie. Wie viele Personen? Wie heißen sie? Was machen sie?',
  expectedTopics: ['Family members', 'Names', 'Ages', 'Professions', 'Relationships'],
  keyPhrases: ['Das ist mein/meine ...', 'Mein Vater arbeitet als ...', 'Ich habe einen Bruder/eine Schwester', 'Meine Mutter heißt ...', 'Wir wohnen in ...'],
  questions: ['Haben Sie Geschwister?', 'Wie alt ist Ihre Mutter?', 'Was macht Ihr Vater?', 'Haben Sie Kinder?'],
  rolePlayPartner: 'A classmate who asks about your family',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn family vocabulary beforehand', 'Practice possessive articles (mein, meine)', 'Describe 3-4 family members'],
})

scenarios.push({
  title: 'Mein Tagesablauf',
  level: 'A1',
  category: 'daily_routine',
  scenario: 'Describe what you do on a typical day.',
  role: 'Employee or student describing a normal day',
  situation: 'Your language partner asks how your typical day looks like.',
  prompt: 'Beschreiben Sie Ihren Tagesablauf. Wann stehen Sie auf? Was machen Sie am Vormittag, Mittag und Abend?',
  expectedTopics: ['Waking up', 'Meals', 'Work/study', 'Free time', 'Going to bed'],
  keyPhrases: ['Ich stehe um ... auf', 'Ich frühstücke um ...', 'Ich arbeite von ... bis ...', 'Am Abend ...', 'Ich gehe um ... ins Bett'],
  questions: ['Um wie viel Uhr stehen Sie auf?', 'Was essen Sie zum Frühstück?', 'Wann beginnen Sie zu arbeiten?', 'Was machen Sie am Abend?'],
  rolePlayPartner: 'A language partner curious about your daily routine',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Use time expressions like "um", "am", "von...bis"', 'Practice separable verbs (aufstehen, einkaufen)', 'Keep it simple with present tense'],
})

scenarios.push({
  title: 'Im Café bestellen',
  level: 'A1',
  category: 'food_drink',
  scenario: 'Order food and drinks at a German café.',
  role: 'Customer at a café',
  situation: 'You are at a café in Munich and want to order breakfast.',
  prompt: 'Sie sind in einem Café. Bestellen Sie etwas zu trinken und zu essen. Fragen Sie nach dem Preis.',
  expectedTopics: ['Ordering drinks', 'Ordering food', 'Asking for the price', 'Paying'],
  keyPhrases: ['Ich möchte ...', 'Was kostet ...?', 'Zahlen, bitte', 'Einmal ... bitte', 'Haben Sie ...?'],
  questions: ['Was möchten Sie trinken?', 'Möchten Sie etwas essen?', 'Was kostet ein Kaffee?', 'Zahlen Sie zusammen oder getrennt?'],
  rolePlayPartner: 'A waiter or waitress at the café',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Practice "möchten" conjugation', 'Know common café items (Kaffee, Tee, Kuchen, Brötchen)', 'Practice numbers for prices'],
})

scenarios.push({
  title: 'Einkaufen — Kleidung und Lebensmittel',
  level: 'A1',
  category: 'shopping',
  scenario: 'Go shopping for clothes or groceries at a German store.',
  role: 'Customer at a shop',
  situation: 'You need to buy a few items at a clothing store and a supermarket.',
  prompt: 'Sie kaufen ein. Fragen Sie nach Größe, Farbe und Preis. Bezahlen Sie an der Kasse.',
  expectedTopics: ['Clothing items', 'Colors', 'Sizes', 'Prices', 'Paying'],
  keyPhrases: ['Haben Sie das in Größe ...?', 'Was kostet das?', 'Das ist zu teuer', 'Ich nehme das', 'Haben Sie das in ...?'],
  questions: ['Welche Farbe möchten Sie?', 'Welche Größe brauchen Sie?', 'Möchten Sie bar oder mit Karte zahlen?', 'Sonst noch etwas?'],
  rolePlayPartner: 'A shop assistant or cashier',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn clothing vocabulary', 'Practice "Haben Sie" questions', 'Practice numbers and prices'],
})

scenarios.push({
  title: 'Nach dem Weg fragen',
  level: 'A1',
  category: 'directions',
  scenario: 'Ask for and give simple directions in a city.',
  role: 'Tourist asking for directions',
  situation: 'You are in Berlin and need to find the train station. You ask a passerby.',
  prompt: 'Fragen Sie nach dem Weg zum Bahnhof. Fragen Sie, wie weit es ist und ob Sie geradeaus gehen müssen.',
  expectedTopics: ['Asking for directions', 'Street names', 'Transport', 'Distance', 'Landmarks'],
  keyPhrases: ['Entschuldigung, wo ist ...?', 'Wie komme ich zu ...?', 'Gehen Sie geradeaus', 'Links / Rechts', 'Wie weit ist es?'],
  questions: ['Wo ist der Bahnhof?', 'Wie komme ich zum Museum?', 'Ist es weit?', 'Soll ich links oder rechts gehen?'],
  rolePlayPartner: 'A friendly local on the street',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn direction words (geradeaus, links, rechts)', 'Practice "Entschuldigung" for polite requests', 'Study common city landmarks'],
})

scenarios.push({
  title: 'Über das Wetter sprechen',
  level: 'A1',
  category: 'weather',
  scenario: 'Talk about weather preferences and current weather.',
  role: 'Person making small talk about the weather',
  situation: 'You meet a neighbor and start talking about the weather.',
  prompt: 'Sprechen Sie über das Wetter. Welches Wetter mögen Sie? Wie ist das Wetter heute?',
  expectedTopics: ['Current weather', 'Seasons', 'Temperature', 'Preferences', 'Weather activities'],
  keyPhrases: ['Heute ist es ...', 'Die Sonne scheint', 'Es regnet / schneit', 'Ich mag ... Wetter', 'Im Sommer ist es ...'],
  questions: ['Wie ist das Wetter heute?', 'Welche Jahreszeit mögen Sie?', 'Mögen Sie Regen?', 'Was machen Sie bei schönem Wetter?'],
  rolePlayPartner: 'A neighbor or colleague making small talk',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn weather adjectives (sonnig, regnerisch, bewölkt)', 'Practice "es ist" constructions', 'Connect weather to activities'],
})

scenarios.push({
  title: 'Meine Wohnung / Mein Haus',
  level: 'A1',
  category: 'house_home',
  scenario: 'Describe your apartment or house to a friend.',
  role: 'Homeowner/tenant showing your home',
  situation: 'A friend is visiting your apartment for the first time and you show them around.',
  prompt: 'Beschreiben Sie Ihre Wohnung oder Ihr Haus. Wie viele Zimmer? Welche Möbel haben Sie?',
  expectedTopics: ['Rooms', 'Furniture', 'Location', 'Size', 'Favorite room'],
  keyPhrases: ['Meine Wohnung hat ... Zimmer', 'Das Wohnzimmer ist ...', 'In der Küche gibt es ...', 'Mein Lieblingszimmer ist ...', 'Die Wohnung ist in ...'],
  questions: ['Wie viele Zimmer hat Ihre Wohnung?', 'Welches Zimmer mag Sie am liebsten?', 'Haben Sie einen Balkon?', 'Ist die Wohnung groß?'],
  rolePlayPartner: 'A friend visiting your home',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn room vocabulary (Küche, Bad, Schlafzimmer)', 'Practice "es gibt" construction', 'Describe locations with prepositions'],
})

scenarios.push({
  title: 'Über Haustiere sprechen',
  level: 'A1',
  category: 'pets',
  scenario: 'Talk about pets you have or would like to have.',
  role: 'Pet owner or animal lover',
  situation: 'At a party, someone mentions they have a cat and asks about your pets.',
  prompt: 'Haben Sie ein Haustier? Beschreiben Sie Ihr Haustier. Welches Tier mögen Sie?',
  expectedTopics: ['Pet type', 'Name', 'Appearance', 'Personality', 'Food'],
  keyPhrases: ['Ich habe einen/eine/ein ...', 'Mein Hund heißt ...', 'Er/Sie ist ... Jahre alt', 'Er/Sie mag ...', 'Ich möchte gern ... haben'],
  questions: ['Haben Sie ein Haustier?', 'Wie heißt Ihr Haustier?', 'Welches Tier möchten Sie haben?', 'Mag Ihr Hund andere Hunde?'],
  rolePlayPartner: 'A fellow pet lover at a social gathering',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn animal vocabulary (Hund, Katze, Hamster, Vogel)', 'Practice colors and size words', 'Keep descriptions short and simple'],
})

scenarios.push({
  title: 'Zahlen und Preise',
  level: 'A1',
  category: 'numbers_prices',
  scenario: 'Count objects and talk about prices in various situations.',
  role: 'Customer or student practicing numbers',
  situation: 'You are at a market and need to buy several items. Ask about quantities and prices.',
  prompt: 'Fragen Sie nach Preisen und Mengen. Wie viel kostet das? Wie viele brauchen Sie?',
  expectedTopics: ['Numbers 1-100', 'Euro prices', 'Quantities', 'Shopping', 'Counting'],
  keyPhrases: ['Wie viel kostet ...?', 'Das macht ... Euro', 'Ich brauche ...', 'Das ist zu teuer', 'Haben Sie ...?'],
  questions: ['Wie viel kostet ein Kilo Äpfel?', 'Wie viele Brötchen möchten Sie?', 'Was kostet zusammen?', 'Haben Sie Wechselgeld?'],
  rolePlayPartner: 'A market vendor or shop assistant',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Practice numbers 1-100 thoroughly', 'Practice Euro currency expressions', 'Role-play different shopping scenarios'],
})

scenarios.push({
  title: 'Uhrzeit und Datum',
  level: 'A1',
  category: 'time_dates',
  scenario: 'Tell the time and talk about dates and days of the week.',
  role: 'Person scheduling or checking times',
  situation: 'You need to arrange a meeting time with a friend and discuss the date.',
  prompt: 'Sagen Sie die Uhrzeit. Fragen Sie nach dem Datum. Wann haben Sie Zeit?',
  expectedTopics: ['Clock time', 'Days of the week', 'Months', 'Dates', 'Appointments'],
  keyPhrases: ['Es ist ... Uhr', 'Um wie viel Uhr ...?', 'Heute ist ...', 'Am Montag habe ich ...', 'Der wievielte ist heute?'],
  questions: ['Wie spät ist es?', 'Wann treffen wir uns?', 'Welcher Tag ist heute?', 'Um wie viel Uhr beginnt der Kurs?'],
  rolePlayPartner: 'A friend or colleague arranging a meeting',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Learn formal and informal time telling', 'Practice "Viertel nach / vor" and "halb"', 'Know days and months well'],
})

scenarios.push({
  title: 'Lieblingsfarben und -dinge',
  level: 'A1',
  category: 'preferences',
  scenario: 'Talk about your favorite colors, foods, and things.',
  role: 'Student talking about personal preferences',
  situation: 'In class, the teacher asks everyone about their favorite things.',
  prompt: 'Was ist Ihre Lieblingsfarbe? Was ist Ihr Lieblingsessen? Warum mögen Sie das?',
  expectedTopics: ['Favorite color', 'Favorite food', 'Favorite animal', 'Reasons', 'Likes and dislikes'],
  keyPhrases: ['Meine Lieblingsfarbe ist ...', 'Ich mag ...', 'Mein Lieblingsessen ist ...', 'Das finde ich schön', '... gefällt mir'],
  questions: ['Was ist Ihre Lieblingsfarbe?', 'Warum mögen Sie Blau?', 'Was essen Sie am liebsten?', 'Mögen Sie Tiere?'],
  rolePlayPartner: 'A teacher or classmate asking about preferences',
  duration_minutes: 3,
  goetheStyle: true,
  difficulty: 1,
  tips: ['Practice "gern" vs "am liebsten"', 'Learn color and food vocabulary', 'Combine preferences with simple reasons'],
})

// ============================================================
// A2 — 12 scenarios (Goethe A2 Sprechen style)
// ============================================================

scenarios.push({
  title: 'Wochenendpläne besprechen',
  level: 'A2',
  category: 'plans',
  scenario: 'Discuss your weekend plans with a friend.',
  role: 'Friend making weekend plans',
  situation: 'It is Friday afternoon and you are talking with a colleague about what you will do over the weekend.',
  prompt: 'Was machen Sie am Wochenende? Erzählen Sie von Ihren Plänen. Fragen Sie Ihren Partner nach seinen Plänen.',
  expectedTopics: ['Weekend activities', 'Time', 'Location', 'People', 'Weather'],
  keyPhrases: ['Am Wochenende möchte ich ...', 'Ich will ...', 'Wir könnten ...', 'Hast du am Samstag Zeit?', 'Lust, mitzukommen?'],
  questions: ['Was machst du am Wochenende?', 'Gehst du ins Kino?', 'Hast du schon Pläne?', 'Können wir uns treffen?'],
  rolePlayPartner: 'A colleague or friend discussing weekend plans',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Use "möchte" and "will" for plans', 'Practice "am" + day for weekend days', 'Use "vielleicht" for uncertain plans'],
})

scenarios.push({
  title: 'Eine Urlaubsreise beschreiben',
  level: 'A2',
  category: 'travel',
  scenario: 'Describe a vacation trip you took.',
  role: 'Traveler sharing holiday experiences',
  situation: 'You are back from a holiday and a friend asks about your trip.',
  prompt: 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie gemacht? Wie war das Wetter?',
  expectedTopics: ['Destination', 'Travel method', 'Activities', 'Weather', 'Duration'],
  keyPhrases: ['Ich war in ...', 'Ich bin mit dem ... gereist', 'Das Wetter war ...', 'Wir haben ... besichtigt', 'Es war sehr schön'],
  questions: ['Wo waren Sie im Urlaub?', 'Wie sind Sie gereist?', 'Was haben Sie dort gemacht?', 'Hat es Ihnen gefallen?'],
  rolePlayPartner: 'A friend curious about your vacation',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice Perfekt tense (bin gefahren, habe gesehen)', 'Use location and time expressions', 'Describe feelings and impressions'],
})

scenarios.push({
  title: 'Im Restaurant — Komplimente und Beschwerden',
  level: 'A2',
  category: 'restaurant',
  scenario: 'Visit a restaurant, compliment the food, or handle a complaint.',
  role: 'Restaurant guest',
  situation: 'You are having dinner at a German restaurant. The food is very good, but there is a small issue with the order.',
  prompt: 'Sie sind in einem Restaurant. Bestellen Sie etwas. Sagen Sie, dass das Essen gut schmeckt oder beschweren Sie sich.',
  expectedTopics: ['Ordering food', 'Food quality', 'Compliments', 'Complaints', 'Bill'],
  keyPhrases: ['Die Suppe schmeckt ausgezeichnet', 'Leider stimmt etwas nicht', 'Ich hatte ... bestellt', 'Könnten Sie bitte ...?', 'Das ist nicht, was ich bestellt habe'],
  questions: ['Schmeckt es Ihnen?', 'Ist alles in Ordnung?', 'Was möchten Sie stattdessen?', 'Möchten Sie etwas trinken?'],
  rolePlayPartner: 'A waiter or restaurant manager',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "schmecken" + dative', 'Learn polite complaint phrases', 'Practice "Ich hätte gern" (Konjunktiv II)'],
})

scenarios.push({
  title: 'Hobbys und Freizeit',
  level: 'A2',
  category: 'hobbies',
  scenario: 'Discuss hobbies and how you spend your free time.',
  role: 'Person talking about leisure activities',
  situation: 'You joined a new club and people want to know about your hobbies.',
  prompt: 'Was machen Sie in Ihrer Freizeit? Welche Hobbys haben Sie? Seit wann machen Sie das?',
  expectedTopics: ['Hobbies', 'Frequency', 'Duration', 'Equipment', 'Enjoyment'],
  keyPhrases: ['In meiner Freizeit ...', 'Ich spiele gern ...', 'Ich mache ... seit ...', '... macht mir Spaß', 'Ich gehe gern ...'],
  questions: ['Was sind Ihre Hobbys?', 'Wie oft machen Sie das?', 'Seit wann spielen Sie Gitarre?', 'Machen Sie das allein oder mit Freunden?'],
  rolePlayPartner: 'A new club member or acquaintance',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "gern", "nicht gern", "am liebsten"', 'Use "seit" + dative for duration', 'Add frequency words (oft, manchmal, selten)'],
})

scenarios.push({
  title: 'Meine Stadt / Mein Dorf',
  level: 'A2',
  category: 'city_town',
  scenario: 'Describe your city or town to someone who has never visited.',
  role: 'Local resident giving a tour description',
  situation: 'A friend from another country wants to know what your city is like before visiting.',
  prompt: 'Beschreiben Sie Ihre Stadt. Was gibt es dort? Was kann man machen? Was gefällt Ihnen besonders?',
  expectedTopics: ['Location', 'Size', 'Attractions', 'Transport', 'Pros and cons'],
  keyPhrases: ['Meine Stadt liegt in ...', 'Es gibt einen Bahnhof / einen Park', 'Man kann ... besichtigen', 'Am schönsten finde ich ...', 'Der Bus / die U-Bahn fährt ...'],
  questions: ['Wie groß ist Ihre Stadt?', 'Gibt es ein Museum?', 'Wie ist der öffentliche Verkehr?', 'Was kann man am Abend machen?'],
  rolePlayPartner: 'A friend planning to visit your city',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "es gibt" + accusative', 'Use location prepositions (im Zentrum, am Rand)', 'Compare with "als" (größer als)'],
})

scenarios.push({
  title: 'Beim Arzt',
  level: 'A2',
  category: 'health',
  scenario: 'Visit a doctor to describe symptoms and get advice.',
  role: 'Patient at a doctor\'s office',
  situation: 'You have not been feeling well for a few days and decide to see a doctor.',
  prompt: 'Sie sind beim Arzt. Beschreiben Sie Ihre Symptome. Fragen Sie nach Medikamenten und Ratschlägen.',
  expectedTopics: ['Symptoms', 'Duration', 'Pain', 'Medication', 'Doctor advice'],
  keyPhrases: ['Ich habe Schmerzen in ...', 'Mir tut ... weh', 'Seit wann haben Sie das?', 'Ich fühle mich ...', 'Was soll ich tun?'],
  questions: ['Wo tut es weh?', 'Seit wann haben Sie die Schmerzen?', 'Haben Sie Fieber?', 'Nehmen Sie schon Medikamente?'],
  rolePlayPartner: 'A doctor or medical assistant',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Learn body parts vocabulary', 'Practice "tun...weh" construction', 'Learn common illness phrases'],
})

scenarios.push({
  title: 'Essensvorlieben',
  level: 'A2',
  category: 'food_preferences',
  scenario: 'Talk about food preferences, what you like and dislike eating.',
  role: 'Diner discussing food tastes',
  situation: 'You are at a dinner party and people discuss their favorite cuisines and dishes.',
  prompt: 'Was essen Sie gern? Was essen Sie nicht gern? Gibt es etwas, das Sie noch nie probiert haben?',
  expectedTopics: ['Favorite foods', 'Dislikes', 'International cuisine', 'Cooking', 'Dietary restrictions'],
  keyPhrases: ['Ich esse gern ...', 'Ich mag ...', 'Das schmeckt mir (nicht)', 'Ich bin Vegetarier / Veganer', 'Ich koche gern ...'],
  questions: ['Was ist Ihr Lieblingsgericht?', 'Mögen Sie italienisches Essen?', 'Kochen Sie selbst?', 'Gibt es etwas, das Sie nicht essen?'],
  rolePlayPartner: 'A fellow dinner guest',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "gern" with essen/trinken', 'Learn international dish names', 'Use "finden" for opinions (Ich finde das lecker)'],
})

scenarios.push({
  title: 'Familienfeiern und Feste',
  level: 'A2',
  category: 'celebrations',
  scenario: 'Describe family celebrations and traditions.',
  role: 'Family member describing traditions',
  situation: 'At a language exchange, you talk about how your family celebrates birthdays and holidays.',
  prompt: 'Wie feiern Sie Geburtstag? Welche Feste feiern Sie mit Ihrer Familie? Was machen Sie dabei?',
  expectedTopics: ['Birthday traditions', 'Holidays', 'Food at celebrations', 'Gifts', 'Family gatherings'],
  keyPhrases: ['Wir feiern ...', 'Zum Geburtstag ...', 'Wir essen zusammen ...', 'Ich bekomme Geschenke', 'An Weihnachten ...'],
  questions: ['Wie feiern Sie Geburtstag?', 'Feiern Sie Weihnachten?', 'Was essen Sie an Feiertagen?', 'Schenken Sie Geschenke?'],
  rolePlayPartner: 'A language exchange partner',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Learn holiday vocabulary (Weihnachten, Ostern, Silvester)', 'Practice "man" constructions', 'Describe what usually happens (present tense)'],
})

scenarios.push({
  title: 'Medien — Fernsehen und Bücher',
  level: 'A2',
  category: 'media',
  scenario: 'Discuss TV shows, books, and media consumption.',
  role: 'Media consumer discussing preferences',
  situation: 'A friend wants a recommendation for a good TV series or book to read.',
  prompt: 'Sehen Sie gern fern? Lesen Sie Bücher? Welche Sendung oder welches Buch mögen Sie?',
  expectedTopics: ['Favorite shows', 'Favorite books', 'Genres', 'Frequency', 'Recommendations'],
  keyPhrases: ['Ich sehe gern ...', 'Ich lese gerade ...', 'Das ist ein ... Film', 'Die Serie handelt von ...', 'Kannst du ... empfehlen?'],
  questions: ['Welche Serie sehen Sie gerade?', 'Lesen Sie gern?', 'Welches Buch empfehlen Sie?', 'Schauen Sie lieber Filme oder Serien?'],
  rolePlayPartner: 'A friend looking for media recommendations',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "handeln von" for plots', 'Use "gerade" for current activities', 'Learn genre names (Komödie, Drama, Thriller)'],
})

scenarios.push({
  title: 'Um Hilfe bitten',
  level: 'A2',
  category: 'requests',
  scenario: 'Role play asking for help in different situations.',
  role: 'Person needing assistance',
  situation: 'You are at a train station and your ticket machine is not working. Ask a stranger for help.',
  prompt: 'Bitten Sie um Hilfe. Erklären Sie Ihr Problem. Fragen Sie, ob die Person Ihnen helfen kann.',
  expectedTopics: ['Request type', 'Problem description', 'Polite phrases', 'Gratitude'],
  keyPhrases: ['Können Sie mir bitte helfen?', 'Entschuldigung, ich habe ein Problem', 'Ich verstehe das nicht', 'Könnten Sie mir das erklären?', 'Vielen Dank für Ihre Hilfe'],
  questions: ['Was ist das Problem?', 'Kann ich Ihnen helfen?', 'Verstehen Sie das?', 'Brauchen Sie sonst noch etwas?'],
  rolePlayPartner: 'A kind stranger at the station',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice "können" and "könnten" (Konjunktiv II)', 'Use polite "Sie" forms', 'Explain the problem clearly'],
})

scenarios.push({
  title: 'Einen Film oder ein Buch beschreiben',
  level: 'A2',
  category: 'media_review',
  scenario: 'Describe a movie you watched or a book you read recently.',
  role: 'Movie-goer or reader sharing an opinion',
  situation: 'Your friend asks about the movie you saw last weekend.',
  prompt: 'Erzählen Sie von einem Film oder Buch. Worum geht es? Hat es Ihnen gefallen? Warum oder warum nicht?',
  expectedTopics: ['Plot summary', 'Characters', 'Opinion', 'Recommendation', 'Genre'],
  keyPhrases: ['Der Film handelt von ...', 'Die Hauptfigur ist ...', 'Mir hat gefallen, dass ...', 'Ich fand den Film ...', 'Ich empfehle ...'],
  questions: ['Worum geht es in dem Film?', 'Wer spielt die Hauptrolle?', 'Hat dir der Film gefallen?', 'Würdest du ihn empfehlen?'],
  rolePlayPartner: 'A friend asking for a review',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Practice Perfekt tense for review', 'Use "finden" + adjective for opinions', 'Describe basic plot without spoilers'],
})

scenarios.push({
  title: 'Wetter- und Klimavorlieben',
  level: 'A2',
  category: 'climate',
  scenario: 'Talk about weather and climate preferences in more depth.',
  role: 'Person discussing climate and seasons',
  situation: 'You are chatting with someone who is considering moving to your region and asks about the climate.',
  prompt: 'Welches Wetter mögen Sie? Welche Jahreszeit ist die beste? Wie ist das Klima in Ihrer Heimat?',
  expectedTopics: ['Seasonal preferences', 'Climate description', 'Activities by weather', 'Regional weather', 'Changes'],
  keyPhrases: ['Am liebsten mag ich ...', 'Im Winter ist es ...', 'Das Klima hier ist ...', 'Im Vergleich zu ...', 'Früher war das Wetter ...'],
  questions: ['Welche Jahreszeit mögen Sie am meisten?', 'Wie ist der Winter in Ihrer Stadt?', 'Hat sich das Klima verändert?', 'Welche Aktivitäten machen Sie bei schlechtem Wetter?'],
  rolePlayPartner: 'Someone considering a move to your region',
  duration_minutes: 4,
  goetheStyle: true,
  difficulty: 2,
  tips: ['Use comparative (wärmer, kälter)', 'Practice "je...desto" constructions', 'Describe regional weather patterns'],
})

// ============================================================
// B1 — 10 scenarios (Goethe B1 Sprechen style)
// ============================================================

scenarios.push({
  title: 'Meinung zu einem Thema — Diskutieren',
  level: 'B1',
  category: 'opinion_discussion',
  scenario: 'Present your opinion on a topic with reasons. Topic: Sollte man im Homeoffice arbeiten?',
  role: 'Employee with a strong opinion on remote work',
  situation: 'In your German class, the teacher asks you to discuss whether working from home is a good idea.',
  prompt: 'Nehmen Sie Stellung zum Thema "Homeoffice". Nennen Sie Vorteile und Nachteile und sagen Sie Ihre Meinung.',
  expectedTopics: ['Pros of home office', 'Cons of home office', 'Personal experience', 'Productivity', 'Work-life balance'],
  keyPhrases: ['Meiner Meinung nach ...', 'Ein Vorteil ist, dass ...', 'Ein Nachteil ist, dass ...', 'Ich finde, dass ...', 'Dagegen spricht, dass ...'],
  questions: ['Was sind die Vorteile von Homeoffice?', 'Welche Nachteile gibt es?', 'Arbeiten Sie lieber im Büro oder zu Hause?', 'Wie wichtig ist der persönliche Kontakt?'],
  rolePlayPartner: 'A classmate with a different opinion',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Use "meiner Meinung nach" for structured opinions', 'Practice "dafür spricht / dagegen spricht"', 'Give at least 2 pros and 2 cons'],
})

scenarios.push({
  title: 'Meinung — Sollten Kinder Handys haben?',
  level: 'B1',
  category: 'opinion_discussion',
  scenario: 'Present your opinion: Should children have smartphones?',
  role: 'Parent or educator with a viewpoint',
  situation: 'A discussion group debates whether children under 12 should own smartphones.',
  prompt: 'Sollten Kinder ein Smartphone haben? Sagen Sie Ihre Meinung und geben Sie Beispiele.',
  expectedTopics: ['Age appropriateness', 'Safety concerns', 'Educational value', 'Social media', 'Parental control'],
  keyPhrases: ['Ich bin der Meinung, dass ...', 'Es kommt darauf an ...', 'Einerseits ... andererseits ...', 'Aus meiner Erfahrung ...', 'Ich finde es wichtig, dass ...'],
  questions: ['Ab welchem Alter ist ein Handy sinnvoll?', 'Welche Gefahren gibt es?', 'Können Handys beim Lernen helfen?', 'Wie kontrollieren Eltern die Nutzung?'],
  rolePlayPartner: 'Another participant in the discussion',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Use "einerseits...andererseits" for balance', 'Practice "Ich bin der Meinung, dass"', 'Give real-life examples'],
})

scenarios.push({
  title: 'Meinung — Fast Food und Gesundheit',
  level: 'B1',
  category: 'opinion_discussion',
  scenario: 'Present your opinion: Is fast food the main cause of health problems?',
  role: 'Health-conscious individual',
  situation: 'A class discussion about nutrition and modern eating habits.',
  prompt: 'Ist Fast Food schuld an Gesundheitsproblemen? Sagen Sie Ihre Meinung und begründen Sie.',
  expectedTopics: ['Health impact', 'Cost', 'Time', 'Alternatives', 'Personal habits'],
  keyPhrases: ['Ich glaube, dass ...', 'Das Hauptproblem ist ...', 'Viele Leute denken, dass ...', 'Meiner Erfahrung nach ...', 'Eine gute Alternative ist ...'],
  questions: ['Wie oft essen Sie Fast Food?', 'Ist Fast Food wirklich so ungesund?', 'Was sind gute Alternativen?', 'Sollte Fast Food teurer sein?'],
  rolePlayPartner: 'A discussion partner',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['State your position clearly at the start', 'Use "weil" and "da" for reasons', 'Acknowledge counterarguments'],
})

scenarios.push({
  title: 'Gemeinsam planen — Ein Ausflug',
  level: 'B1',
  category: 'planning',
  scenario: 'Plan a trip together with a partner — decide on destination, activities, and logistics.',
  role: 'Friend planning a weekend trip',
  situation: 'You and a friend want to take a weekend trip together. You need to agree on where to go and what to do.',
  prompt: 'Planen Sie gemeinsam einen Ausflug. Wohin möchten Sie fahren? Was möchten Sie machen? Entscheiden Sie sich gemeinsam.',
  expectedTopics: ['Destination', 'Transport', 'Activities', 'Budget', 'Dates'],
  keyPhrases: ['Was hältst du von ...?', 'Ich schlage vor, dass ...', 'Wohin möchtest du fahren?', 'Das ist eine gute Idee', 'Ich bin damit einverstanden'],
  questions: ['Wohin sollen wir fahren?', 'Wie reisen wir?', 'Was sollen wir einpacken?', 'Wie viel Geld brauchen wir?'],
  rolePlayPartner: 'A friend with possibly different preferences',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Use "vorschlagen" (ich schlage vor)', 'Practice making suggestions and agreeing/disagreeing', 'Compromise and find middle ground'],
})

scenarios.push({
  title: 'Gemeinsam planen — Eine Party',
  level: 'B1',
  category: 'planning',
  scenario: 'Plan a party together — theme, food, music, guests.',
  role: 'Friend co-organizing a birthday party',
  situation: 'You and a friend are organizing a surprise birthday party for another friend.',
  prompt: 'Planen Sie gemeinsam eine Überraschungsparty. Wer wird eingeladen? Was gibt es zu essen? Welche Musik?',
  expectedTopics: ['Guest list', 'Food and drinks', 'Music', 'Location', 'Games/activities'],
  keyPhrases: ['Wir könnten ...', 'Ich denke, wir sollten ...', 'Bist du einverstanden?', 'Was meinst du?', 'Lass uns ...'],
  questions: ['Wen sollen wir einladen?', 'Was sollen wir kochen?', 'Welche Musik möchtest du?', 'Wo soll die Party stattfinden?'],
  rolePlayPartner: 'A friend helping to organize',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Use "wir könnten" and "lass uns"', 'Agree on decisions together', 'Practice polite disagreement'],
})

scenarios.push({
  title: 'Ein Problem beschreiben und lösen',
  level: 'B1',
  category: 'problem_solving',
  scenario: 'Describe a problem at work or in daily life and propose a solution.',
  role: 'Employee facing a work issue',
  situation: 'You have a conflict with a colleague about sharing office space. Describe the problem to your manager and suggest a solution.',
  prompt: 'Beschreiben Sie ein Problem am Arbeitsplatz. Erklären Sie, was passiert ist. Schlagen Sie eine Lösung vor.',
  expectedTopics: ['Problem description', 'Cause', 'Impact', 'Possible solutions', 'Preferred solution'],
  keyPhrases: ['Das Problem ist, dass ...', 'Ein Grund dafür ist ...', 'Ich schlage vor, dass ...', 'Eine Möglichkeit wäre ...', 'Am besten wäre es, wenn ...'],
  questions: ['Was genau ist das Problem?', 'Seit wann gibt es das Problem?', 'Welche Lösungen haben Sie schon überlegt?', 'Was wäre Ihrer Meinung nach die beste Lösung?'],
  rolePlayPartner: 'A manager or mediator',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Structure your argument clearly', 'Use "würde" for hypothetical solutions', 'Justify why your solution is best'],
})

scenarios.push({
  title: 'Über ein aktuelles Ereignis sprechen',
  level: 'B1',
  category: 'current_events',
  scenario: 'Talk about a recent news event and share your reaction.',
  role: 'Informed citizen discussing news',
  situation: 'During a language class conversation, you discuss a recent news story that interested you.',
  prompt: 'Berichten Sie über ein aktuelles Ereignis aus den Nachrichten. Was ist passiert? Wie finden Sie das?',
  expectedTopics: ['Event description', 'Location', 'People involved', 'Personal reaction', 'Impact'],
  keyPhrases: ['Haben Sie gehört, dass ...?', 'In den Nachrichten kam, dass ...', 'Ich finde es ...', 'Das hat mich überrascht, weil ...', 'Das könnte dazu führen, dass ...'],
  questions: ['Was ist passiert?', 'Wann ist das passiert?', 'Wie reagieren die Menschen darauf?', 'Was denken Sie, wird als Nächstes passieren?'],
  rolePlayPartner: 'A conversation partner discussing news',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Use Perfekt for past events', 'Express feelings about the news', 'Make predictions about future impact'],
})

scenarios.push({
  title: 'Vor- und Nachteile — Social Media',
  level: 'B1',
  category: 'pros_cons',
  scenario: 'Discuss pros and cons of a specific topic — social media.',
  role: 'Person with balanced perspective',
  situation: 'A discussion forum asks: Is social media good or bad for society?',
  prompt: 'Diskutieren Sie die Vor- und Nachteile von Social Media. Welche Argumente gibt es für und welche dagegen?',
  expectedTopics: ['Connection', 'Privacy', 'News', 'Mental health', 'Addiction'],
  keyPhrases: ['Ein Vorteil ist ...', 'Ein Nachteil ist ...', 'Auf der einen Seite ... auf der anderen Seite ...', 'Man darf nicht vergessen, dass ...', 'Alles in allem ...'],
  questions: ['Sind soziale Medien gut oder schlecht?', 'Wie viel Zeit verbringen Sie auf Social Media?', 'Sollte man Social Media einschränken?', 'Welche Plattform finden Sie am besten?'],
  rolePlayPartner: 'A discussion group member',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Balance your arguments', 'Use "auf der einen Seite... auf der anderen Seite"', 'Conclude with your overall opinion'],
})

scenarios.push({
  title: 'Vorstellungsgespräch',
  level: 'B1',
  category: 'job_interview',
  scenario: 'Role play a job interview for a position in a German company.',
  role: 'Job applicant',
  situation: 'You applied for a job at a German company and now have an interview with the HR manager.',
  prompt: 'Sie haben ein Vorstellungsgespräch. Stellen Sie sich vor. Erzählen Sie von Ihrer Erfahrung. Warum wollen Sie diesen Job?',
  expectedTopics: ['Professional background', 'Skills', 'Motivation', 'Strengths', 'Availability'],
  keyPhrases: ['Ich habe Erfahrung in ...', 'Meine Stärken sind ...', 'Ich interessiere mich für diese Stelle, weil ...', 'Ich bin teamfähig und ...', 'Ich kann ...'],
  questions: ['Warum möchten Sie bei uns arbeiten?', 'Was sind Ihre Stärken?', 'Wo sehen Sie sich in fünf Jahren?', 'Warum sollten wir Sie einstellen?'],
  rolePlayPartner: 'An HR manager or interviewer',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Research the company beforehand', 'Prepare answers for common questions', 'Practice professional vocabulary'],
})

scenarios.push({
  title: 'Hotel-Check-in mit Problemen',
  level: 'B1',
  category: 'hotel',
  scenario: 'Role play a hotel check-in where there are issues with the reservation.',
  role: 'Hotel guest with a problem',
  situation: 'You arrive at a hotel in Vienna but your booked room is not available. You need to negotiate a solution.',
  prompt: 'Sie kommen im Hotel an, aber Ihr Zimmer ist nicht bereit. Reklamieren Sie und suchen Sie nach einer Lösung.',
  expectedTopics: ['Reservation details', 'Problem explanation', 'Compensation', 'Alternatives', 'Customer service'],
  keyPhrases: ['Ich habe ein Zimmer reserviert', 'Leider stimmt etwas nicht', 'Das ist nicht akzeptabel', 'Was schlagen Sie als Lösung vor?', 'Ich möchte mit dem Manager sprechen'],
  questions: ['Was ist das Problem?', 'Was können Sie mir stattdessen anbieten?', 'Bekomme ich eine Entschädigung?', 'Gibt es ein anderes Hotel in der Nähe?'],
  rolePlayPartner: 'A hotel receptionist or manager',
  duration_minutes: 5,
  goetheStyle: true,
  difficulty: 3,
  tips: ['Stay polite but firm', 'Know what you want as compensation', 'Practice describing problems clearly'],
})

// ============================================================
// B2 — 8 scenarios (Goethe B2 Sprechen style)
// ============================================================

scenarios.push({
  title: 'Präsentation — Nachhaltigkeit im Alltag',
  level: 'B2',
  category: 'presentation',
  scenario: 'Give a 2-minute presentation on a topic followed by discussion.',
  role: 'Presenter at a seminar',
  situation: 'You are giving a short presentation at a community meeting about how people can live more sustainably.',
  prompt: 'Halten Sie eine kurze Präsentation zum Thema "Nachhaltigkeit im Alltag". Sprechen Sie 2 Minuten. Danach beantworten Sie Fragen.',
  expectedTopics: ['Definition', 'Examples', 'Personal contribution', 'Challenges', 'Call to action'],
  keyPhrases: ['Ich möchte über ... sprechen', 'Zunächst einmal ...', 'Ein wichtiger Punkt ist ...', 'Zusammenfassend lässt sich sagen ...', 'Was können wir tun?'],
  questions: ['Wie kann man im Alltag Müll vermeiden?', 'Ist Nachhaltigkeit teurer?', 'Welche Maßnahme ist am effektivsten?', 'Was tun Sie persönlich?'],
  rolePlayPartner: 'An audience member asking follow-up questions',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Structure: introduction, main part, conclusion', 'Use discourse markers (zunächst, außerdem, schließlich)', 'Prepare for follow-up questions'],
})

scenarios.push({
  title: 'Kontroverse Diskussion — Tierversuche',
  level: 'B2',
  category: 'debate',
  scenario: 'Structured debate on a controversial topic: animal testing.',
  role: 'Debate participant with a clear stance',
  situation: 'A university seminar debates whether animal testing should be completely banned.',
  prompt: 'Diskutieren Sie das Thema "Tierversuche". Argumentieren Sie für oder gegen Tierversuche. Reagieren Sie auf Gegenargumente.',
  expectedTopics: ['Medical research', 'Animal rights', 'Alternatives', 'Ethics', 'Regulation'],
  keyPhrases: ['Ich möchte ein Argument vorbringen', 'Das sehe ich anders', 'Dagegen spricht, dass ...', 'Ein häufig genanntes Argument ist ...', 'Darf ich kurz etwas dazu sagen?'],
  questions: ['Sind Tierversuche für die Medizin notwendig?', 'Gibt es Alternativen?', 'Wo ziehen Sie die Grenze?', 'Ist Tierversuche an Mäusen akzeptabel?'],
  rolePlayPartner: 'A debate opponent with different views',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Stay structured and respectful', 'Acknowledge the opponent\'s points before countering', 'Use "Das mag sein, aber..."'],
})

scenarios.push({
  title: 'Verhandlung am Arbeitsplatz',
  level: 'B2',
  category: 'negotiation',
  scenario: 'Role play negotiating at work — salary, deadlines, or resources.',
  role: 'Employee negotiating project resources',
  situation: 'Your manager wants you to finish a project in two weeks, but you need three weeks and additional team members.',
  prompt: 'Verhandeln Sie mit Ihrem Chef über den Projektzeitplan. Erklären Sie, warum Sie mehr Zeit und Ressourcen brauchen.',
  expectedTopics: ['Current situation', 'Resource needs', 'Timeline', 'Priorities', 'Compromise'],
  keyPhrases: ['Ich verstehe Ihre Position, aber ...', 'Um das zu schaffen, bräuchte ich ...', 'Ein Kompromiss wäre ...', 'Was halten Sie davon, wenn ...?', 'Mein Vorschlag ist ...'],
  questions: ['Warum brauchen Sie mehr Zeit?', 'Was genau fehlt?', 'Können Sie Prioritäten setzen?', 'Was wäre ein fairer Kompromiss?'],
  rolePlayPartner: 'A manager or team leader',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Use Konjunktiv II for polite requests (würde, könnte)', 'Prepare clear justification', 'Propose a concrete compromise'],
})

scenarios.push({
  title: 'Eine komplexe Situation zusammenfassen',
  level: 'B2',
  category: 'summarization',
  scenario: 'Summarize a complex situation (e.g., a news article or business case).',
  role: 'Person reporting on a situation',
  situation: 'Your team missed a deadline because of several interconnected issues. Summarize the situation for your manager.',
  prompt: 'Fassen Sie die Situation zusammen. Was ist passiert? Welche Faktoren haben dazu geführt? Was sind die Konsequenzen?',
  expectedTopics: ['Chain of events', 'Root causes', 'People involved', 'Consequences', 'Lessons learned'],
  keyPhrases: ['Die Situation ist folgendermaßen ...', 'Ausgelöst wurde das durch ...', 'In der Folge ...', 'Letztendlich hat sich gezeigt, dass ...', 'Was wir daraus lernen können, ist ...'],
  questions: ['Was war die Hauptursache?', 'Wer war beteiligt?', 'Hätte man das verhindern können?', 'Was sind die nächsten Schritte?'],
  rolePlayPartner: 'A manager or team lead asking for a summary',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Use clear chronological structure', 'Practice causal connectors (daher, folglich, deshalb)', 'End with conclusions and outlook'],
})

scenarios.push({
  title: 'Argumentation — Sollte Tempolimit eingeführt werden?',
  level: 'B2',
  category: 'argumentation',
  scenario: 'Argue for or against a specific policy — speed limit on highways.',
  role: 'Citizen with a strong opinion',
  situation: 'A political forum discusses introducing a general speed limit on German highways.',
  prompt: 'Argumentieren Sie für oder gegen ein Tempolimit auf Autobahnen. Nennen Sie Fakten und Beispiele.',
  expectedTopics: ['Traffic safety', 'Environment', 'Economic impact', 'Personal freedom', 'International comparison'],
  keyPhrases: ['Dafür spricht, dass ...', 'Ein häufiges Gegenargument ist ...', 'Fakt ist, dass ...', 'Im Vergleich zu anderen Ländern ...', 'Letztlich geht es um ...'],
  questions: ['Ist ein Tempolimit sinnvoll?', 'Wie wirkt es sich auf die Umwelt aus?', 'Was sagen Autofahrer dazu?', 'Welche Länder haben bereits ein Tempolimit?'],
  rolePlayPartner: 'A debate partner with the opposite view',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Support arguments with facts', 'Use "Fakt ist, dass" for emphasis', 'Address counterarguments proactively'],
})

scenarios.push({
  title: 'Diskussion — Integration und Gesellschaft',
  level: 'B2',
  category: 'social_issues',
  scenario: 'Discuss social issues like immigration, integration, or diversity.',
  role: 'Socially engaged citizen',
  situation: 'A community meeting discusses how to improve integration of immigrants in your city.',
  prompt: 'Diskutieren Sie das Thema Integration. Was ist wichtig für eine gelungene Integration? Welche Herausforderungen gibt es?',
  expectedTopics: ['Language learning', 'Work opportunities', 'Cultural exchange', 'Education', 'Social programs'],
  keyPhrases: ['Integration bedeutet für mich ...', 'Eine große Herausforderung ist ...', 'Wichtig ist, dass ...', 'Die Gesellschaft profitiert davon, dass ...', 'Wir müssen sicherstellen, dass ...'],
  questions: ['Was ist der Schlüssel zur Integration?', 'Welche Rolle spielt die Sprache?', 'Was kann die Stadt tun?', 'Wie können Vorurteile abgebaut werden?'],
  rolePlayPartner: 'A community organizer or fellow citizen',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Use differentiated language (eine der größten Herausforderungen)', 'Address multiple perspectives', 'Propose concrete measures'],
})

scenarios.push({
  title: 'Einen komplexen Prozess beschreiben',
  level: 'B2',
  category: 'process',
  scenario: 'Describe a complex process step by step (e.g., how to apply for a visa, how a German company works).',
  role: 'Expert explaining a procedure',
  situation: 'A foreign colleague asks you to explain the process of registering a residence in Germany.',
  prompt: 'Beschreiben Sie den Prozess der Wohnsitzanmeldung in Deutschland. Erklären Sie die einzelnen Schritte.',
  expectedTopics: ['Prerequisites', 'Documents', 'Steps', 'Offices involved', 'Timeline'],
  keyPhrases: ['Der erste Schritt ist ...', 'Danach müssen Sie ...', 'Dafür benötigen Sie ...', 'Achten Sie darauf, dass ...', 'Zum Schluss ...'],
  questions: ['Welche Dokumente brauche ich?', 'Wie lange dauert der Prozess?', 'Wo muss ich das machen?', 'Was passiert, wenn etwas fehlt?'],
  rolePlayPartner: 'A foreigner needing guidance',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Use sequencing words (zuerst, dann, danach, schließlich)', 'Use passive voice (wird benötigt, muss gemacht werden)', 'Highlight common mistakes'],
})

scenarios.push({
  title: 'Kundenreklamation lösen',
  level: 'B2',
  category: 'customer_service',
  scenario: 'Role play handling a customer complaint resolution.',
  role: 'Customer service representative',
  situation: 'A customer calls because a product they ordered online arrived damaged. Handle the complaint professionally.',
  prompt: 'Ein Kunde beschwert sich über ein beschädigtes Produkt. Reagieren Sie angemessen. Bieten Sie eine Lösung an. Verhandeln Sie.',
  expectedTopics: ['Problem confirmation', 'Apology', 'Compensation', 'Return process', 'Follow-up'],
  keyPhrases: ['Ich verstehe Ihren Ärger', 'Das tut mir leid zu hören', 'Wir bieten Ihnen an ...', 'Als Entschädigung ...', 'Ich kümmere mich persönlich darum'],
  questions: ['Können Sie das Problem genauer beschreiben?', 'Wann haben Sie das Produkt erhalten?', 'Möchten Sie eine Rückerstattung oder einen Austausch?', 'Können Sie ein Foto schicken?'],
  rolePlayPartner: 'An upset customer',
  duration_minutes: 6,
  goetheStyle: true,
  difficulty: 4,
  tips: ['Stay empathetic and professional', 'Use "wir" instead of "ich" for company authority', 'Offer clear steps for resolution'],
})

// ============================================================
// C1 — 8 scenarios (Goethe C1 Sprechen style)
// ============================================================

scenarios.push({
  title: 'Akademische Präsentation mit Fragerunde',
  level: 'C1',
  category: 'academic_presentation',
  scenario: 'Give an academic-style presentation on a complex topic with Q&A.',
  role: 'Academic presenter or researcher',
  situation: 'You are presenting a paper at a conference about the economic impact of artificial intelligence on the labor market.',
  prompt: 'Halten Sie eine akademische Präsentation zum Thema "KI und der Arbeitsmarkt". Präsentieren Sie Thesen, Daten und Ihre Schlussfolgerungen. Beantworten Sie anschließend Fragen.',
  expectedTopics: ['Research question', 'Data and methodology', 'Key findings', 'Implications', 'Limitations'],
  keyPhrases: ['Mein Vortrag beschäftigt sich mit ...', 'Die zentrale Fragestellung ist ...', 'Die Daten zeigen deutlich ...', 'Daraus lässt sich schließen, dass ...', 'Ich möchte auf Ihre Frage eingehen'],
  questions: ['Wie zuverlässig sind Ihre Daten?', 'Haben Sie alternative Erklärungen in Betracht gezogen?', 'Wie lassen sich Ihre Ergebnisse auf andere Länder übertragen?', 'Welche politischen Maßnahmen empfehlen Sie?'],
  rolePlayPartner: 'An academic audience with critical questions',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Structure: intro, main body, conclusion — all clearly marked', 'Use academic register (Fachvokabular)', 'Prepare for challenging questions'],
})

scenarios.push({
  title: 'Podiumsdiskussion — Aktuelle politische Themen',
  level: 'C1',
  category: 'panel_discussion',
  scenario: 'Participate in a panel discussion on current affairs.',
  role: 'Panelist at a discussion forum',
  situation: 'You are a panelist at a public forum discussing the future of renewable energy policy in Germany.',
  prompt: 'Nehmen Sie an einer Podiumsdiskussion teil. Äußern Sie sich zur Energiewende. Reagieren Sie auf die Aussagen der anderen Panelteilnehmer.',
  expectedTopics: ['Policy overview', 'Economic factors', 'Social acceptance', 'Technological challenges', 'International cooperation'],
  keyPhrases: ['Gestatten Sie mir eine Vorbemerkung', 'Ich möchte an das anknüpfen, was ... gesagt hat', 'Dazu möchte ich Folgendes anmerken', 'Ich sehe das differenzierter', 'Abschließend möchte ich betonen, dass ...'],
  questions: ['Ist die Energiewende realistisch?', 'Was kostet das den Bürger?', 'Wie schnell können wir umstellen?', 'Welche Rolle spielt Gas als Brückentechnologie?'],
  rolePlayPartner: 'Other panelists and a moderator',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Reference and respond to others\' points', 'Use nuanced language (allerdings, jedoch, in gewisser Hinsicht)', 'Maintain a confident but respectful tone'],
})

scenarios.push({
  title: 'Formelle Verhandlung — Geschäftsvertrag',
  level: 'C1',
  category: 'formal_negotiation',
  scenario: 'Conduct a formal negotiation in a business context.',
  role: 'Business negotiator',
  situation: 'Your company is negotiating a partnership agreement with a German firm. Key issues are budget, timelines, and intellectual property.',
  prompt: 'Verhandeln Sie über eine Geschäftspartnerschaft. Klären Sie Budget, Zeitplan und Rechte an geistigem Eigentum. Finden Sie eine Einigung.',
  expectedTopics: ['Budget', 'Timeline', 'Intellectual property', 'Responsibilities', 'Risk sharing'],
  keyPhrases: ['Wir kommen zusammen, um über ... zu verhandeln', 'Unser Standpunkt ist ...', 'Wir könnten uns vorstellen, dass ...', 'In diesem Punkt können wir Zugeständnisse machen', 'Können wir uns auf einen Kompromiss einigen?'],
  questions: ['Was ist Ihr Budgetrahmen?', 'Wie sehen die Zahlungsbedingungen aus?', 'Wer besitzt die Rechte an der Software?', 'Welche Kündigungsfrist schlagen Sie vor?'],
  rolePlayPartner: 'A representative from the partner company',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Use formal register and professional vocabulary', 'Be precise about terms and numbers', 'Know your walk-away point'],
})

scenarios.push({
  title: 'Nuancen und Abstraktion — Freiheit und Verantwortung',
  level: 'C1',
  category: 'abstract_topics',
  scenario: 'Express nuanced opinions on abstract topics such as freedom, responsibility, or justice.',
  role: 'Intellectual discussion participant',
  situation: 'A philosophy discussion group explores the relationship between personal freedom and social responsibility.',
  prompt: 'Diskutieren Sie das Spannungsfeld zwischen Freiheit und Verantwortung. Wo liegen die Grenzen der Freiheit?',
  expectedTopics: ['Definition of freedom', 'Social responsibility', 'Limits', 'Cultural differences', 'Personal examples'],
  keyPhrases: ['Freiheit bedeutet für mich ...', 'Die Frage ist komplex, weil ...', 'Man muss differenzieren zwischen ...', 'In diesem Zusammenhang ist zu bedenken, dass ...', 'Letztlich geht es um die Frage, ...'],
  questions: ['Wo endet die eigene Freiheit?', 'Sollte der Staat Freiheit einschränken dürfen?', 'Ist absolute Freiheit wünschenswert?', 'Wie viel Verantwortung kann man verlangen?'],
  rolePlayPartner: 'A discussion group member',
  duration_minutes: 7,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Use abstract vocabulary (Freiheit, Verantwortung, Gesellschaft)', 'Make distinctions and qualifications', 'Refer to philosophical concepts where appropriate'],
})

scenarios.push({
  title: 'Komplexe gesellschaftliche Debatte — Digitalisierung und Datenschutz',
  level: 'C1',
  category: 'societal_debate',
  scenario: 'Debate complex societal issues such as digitalization vs. data privacy.',
  role: 'Debater on a societal issue',
  situation: 'A high-level policy debate about whether the government should have access to encrypted communications for security purposes.',
  prompt: 'Debattieren Sie das Thema "Staatlicher Zugriff auf verschlüsselte Kommunikation". Wägen Sie Sicherheitsinteressen gegen Datenschutz ab.',
  expectedTopics: ['Security concerns', 'Privacy rights', 'Legal framework', 'Technical feasibility', 'International implications'],
  keyPhrases: ['Die Debatte wird kontrovers geführt, weil ...', 'Auf der einen Seite steht das Sicherheitsinteresse, auf der anderen ...', 'Man muss abwägen zwischen ...', 'Ein prinzipielles Problem ist ...', 'Die Rechtsprechung des Europäischen Gerichtshofs ...'],
  questions: ['Wiegt Sicherheit schwerer als Privatsphäre?', 'Ist eine komplette Überwachung effektiv?', 'Wer kontrolliert die Kontrolleure?', 'Welche technischen Lösungen gibt es?'],
  rolePlayPartner: 'A policy analyst or legal expert',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Reference legal frameworks (Grundgesetz, EU-DSGVO)', 'Show balanced understanding of both sides', 'Use conditional constructions for scenarios'],
})

scenarios.push({
  title: 'Grafik / Diagramm analysieren',
  level: 'C1',
  category: 'data_analysis',
  scenario: 'Analyze and discuss a chart or graph showing complex data.',
  role: 'Data analyst or researcher',
  situation: 'You are presenting a report to your team showing a chart about population growth and aging in Germany.',
  prompt: 'Analysieren Sie die Grafik zur Bevölkerungsentwicklung. Beschreiben Sie Trends, vergleichen Sie Daten und ziehen Sie Schlussfolgerungen.',
  expectedTopics: ['Trend description', 'Data comparison', 'Peaks and troughs', 'Causes', 'Projections'],
  keyPhrases: ['Die Grafik veranschaulicht ...', 'Auffällig ist, dass ...', 'Im Zeitraum von ... bis ... stieg der Anteil um ...', 'Ein signifikanter Anstieg ist zu verzeichnen', 'Prognosen zufolge wird sich dieser Trend fortsetzen'],
  questions: ['Was ist der Haupttrend?', 'Welche Faktoren erklären diese Entwicklung?', 'Wie wird sich die Entwicklung fortsetzen?', 'Welche politischen Konsequenzen ergeben sich?'],
  rolePlayPartner: 'A team member or supervisor during a presentation',
  duration_minutes: 7,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Learn graph vocabulary (Anstieg, Rückgang, Schwankung)', 'Use prepositions of change (um, auf, von...auf)', 'Connect data to real-world implications'],
})

scenarios.push({
  title: 'Professionelles Meeting — Strategieplanung',
  level: 'C1',
  category: 'professional_meeting',
  scenario: 'Simulate a professional meeting where strategic decisions are made.',
  role: 'Department head at a strategy meeting',
  situation: 'Your company needs to decide on market expansion strategy. You are presenting a proposal and discussing it with colleagues.',
  prompt: 'Sie leiten ein Meeting zur Marktexpansion. Präsentieren Sie Ihre Strategie. Diskutieren Sie Vor- und Nachteile mit Ihren Kollegen.',
  expectedTopics: ['Market analysis', 'Resource allocation', 'Risk assessment', 'Timeline', 'Success metrics'],
  keyPhrases: ['Ich habe die Zahlen analysiert und ...', 'Meine Empfehlung ist ...', 'Welche Einwände gibt es?', 'Lassen Sie uns die Risiken abwägen', 'Ich schlage vor, dass wir ... abstimmen'],
  questions: ['Welcher Markt ist am vielversprechendsten?', 'Wie hoch ist das Budget?', 'Was sind die größten Risiken?', 'Bis wann müssen wir eine Entscheidung treffen?'],
  rolePlayPartner: 'Colleagues in a strategy meeting',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Use business vocabulary (Rendite, Marktvolumen, Synergien)', 'Lead the meeting structure', 'Encourage and manage discussion'],
})

scenarios.push({
  title: 'Kulturphilosophische Diskussion',
  level: 'C1',
  category: 'cultural_philosophical',
  scenario: 'Engage in a cultural/philosophical discussion about identity, tradition, or globalization.',
  role: 'Culturally aware intellectual',
  situation: 'An international discussion group explores whether globalization is eroding cultural identity.',
  prompt: 'Diskutieren Sie die Auswirkungen der Globalisierung auf kulturelle Identität. Verliert die Welt ihre kulturelle Vielfalt?',
  expectedTopics: ['Cultural identity', 'Globalization impact', 'Tradition vs. modernity', 'Cultural exchange', 'Local vs. global'],
  keyPhrases: ['Kulturelle Identität ist ein vielschichtiges Konzept', 'Einerseits fördert Globalisierung Austausch, andererseits ...', 'Inwieweit bewahren Traditionen ihre Relevanz?', 'Hybride Kulturen entstehen, wenn ...', 'Ich bin der Überzeugung, dass ...'],
  questions: ['Verschwinden lokale Traditionen?', 'Ist kulturelle Vermischung positiv?', 'Kann man Identität bewahren und gleichzeitig global sein?', 'Welche Rolle spielt die Sprache dabei?'],
  rolePlayPartner: 'A participant from a different cultural background',
  duration_minutes: 8,
  goetheStyle: true,
  difficulty: 5,
  tips: ['Use sophisticated connectors (insofern, inwieweit, dahingehend)', 'Refer to cultural examples', 'Show open-mindedness and nuance'],
})

// ============================================================
// MAIN
// ============================================================

function main() {
  const outputDir = path.join(__dirname, 'seed-data')
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true })
  }

  const outputPath = path.join(outputDir, 'speaking.json')
  fs.writeFileSync(outputPath, JSON.stringify(scenarios, null, 2))

  const countByLevel: Record<string, number> = {}
  for (const s of scenarios) {
    countByLevel[s.level] = (countByLevel[s.level] || 0) + 1
  }

  console.log(`Generated ${scenarios.length} speaking scenarios`)
  for (const [level, count] of Object.entries(countByLevel)) {
    console.log(`  ${level}: ${count}`)
  }
  console.log(`\nOutput: ${outputPath}`)
}

main()
