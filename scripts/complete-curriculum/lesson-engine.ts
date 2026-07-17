/**
 * Content Generation Engine
 * Generates rich, authentic lesson content from compact curriculum definitions
 * Produces teacher-quality material for all 20+ components
 */

import type {
  CompleteLesson, VocabItem, GrammarTopic, PronunciationGuide,
  DialogueLine, ReadingText, ListeningScript, SpeakingPrompt,
  WritingTask, CultureNote, CommonMistake, MemoryTip,
  QuizQuestion, Homework, LessonReview, AIKnowledge
} from './types'

export interface LessonSpec {
  id: string
  moduleId: string
  title: string
  description: string
  topic: string
  type: string
  duration: number
  orderIndex: number
  domain: string
  grammarFocus: string
  cefr: string
}

// ==============================
// VOCABULARY DOMAINS — 60 domains across A1-C2
// ==============================

const VOCAB_DOMAINS: Record<string, VocabItem[]> = {
  greetings: [
    { word: 'Hallo', arabic: 'مرحباً', english: 'hello', french: 'bonjour', pos: 'interjection', cefr: 'A1', example: 'Hallo, wie geht es dir?', exampleEn: 'Hello, how are you?' },
    { word: 'Guten Morgen', arabic: 'صباح الخير', english: 'good morning', french: 'bonjour (le matin)', pos: 'phrase', cefr: 'A1', example: 'Guten Morgen, Herr Müller.', exampleEn: 'Good morning, Mr. Müller.' },
    { word: 'Guten Tag', arabic: 'نهارك سعيد', english: 'good day', french: 'bonjour (l\'après-midi)', pos: 'phrase', cefr: 'A1', example: 'Guten Tag, Frau Schmidt.', exampleEn: 'Good day, Mrs. Schmidt.' },
    { word: 'Tschüss', arabic: 'مع السلامة', english: 'bye', french: 'au revoir / salut', pos: 'interjection', cefr: 'A1', example: 'Tschüss, bis morgen!', exampleEn: 'Bye, see you tomorrow!' },
    { word: 'der Name', arabic: 'الاسم', english: 'name', french: 'le nom', article: 'der', plural: 'die Namen', pos: 'noun', cefr: 'A1', example: 'Mein Name ist Anna.', exampleEn: 'My name is Anna.' },
    { word: 'wie', arabic: 'كيف', english: 'how', french: 'comment', pos: 'adverb', cefr: 'A1', example: 'Wie heißt du?', exampleEn: 'What is your name?' },
    { word: 'freuen', arabic: 'يسر', english: 'to be pleased', french: 'se réjouir', pos: 'verb', cefr: 'A1', example: 'Ich freue mich, dich kennenzulernen.', exampleEn: 'I am pleased to meet you.' },
    { word: 'Willkommen', arabic: 'أهلاً وسهلاً', english: 'welcome', french: 'bienvenue', pos: 'interjection', cefr: 'A1', example: 'Willkommen in Deutschland!', exampleEn: 'Welcome to Germany!' },
  ],
  family: [
    { word: 'die Familie', arabic: 'العائلة', english: 'family', french: 'la famille', article: 'die', plural: 'die Familien', pos: 'noun', cefr: 'A1', example: 'Meine Familie ist groß.', exampleEn: 'My family is big.' },
    { word: 'der Vater', arabic: 'الأب', english: 'father', french: 'le père', article: 'der', plural: 'die Väter', pos: 'noun', cefr: 'A1', example: 'Mein Vater ist Ingenieur.', exampleEn: 'My father is an engineer.' },
    { word: 'die Mutter', arabic: 'الأم', english: 'mother', french: 'la mère', article: 'die', plural: 'die Mütter', pos: 'noun', cefr: 'A1', example: 'Meine Mutter kocht gut.', exampleEn: 'My mother cooks well.' },
    { word: 'der Bruder', arabic: 'الأخ', english: 'brother', french: 'le frère', article: 'der', plural: 'die Brüder', pos: 'noun', cefr: 'A1', example: 'Mein Bruder ist 15 Jahre alt.', exampleEn: 'My brother is 15 years old.' },
    { word: 'die Schwester', arabic: 'الأخت', english: 'sister', french: 'la sœur', article: 'die', plural: 'die Schwestern', pos: 'noun', cefr: 'A1', example: 'Meine Schwester studiert Medizin.', exampleEn: 'My sister studies medicine.' },
    { word: 'die Geschwister', arabic: 'الإخوة', english: 'siblings', french: 'les frères et sœurs', article: 'die', pos: 'noun', cefr: 'A1', example: 'Hast du Geschwister?', exampleEn: 'Do you have siblings?' },
    { word: 'der Sohn', arabic: 'الابن', english: 'son', french: 'le fils', article: 'der', plural: 'die Söhne', pos: 'noun', cefr: 'A1', example: 'Wir haben einen Sohn.', exampleEn: 'We have a son.' },
    { word: 'die Tochter', arabic: 'الابنة', english: 'daughter', french: 'la fille', article: 'die', plural: 'die Töchter', pos: 'noun', cefr: 'A1', example: 'Meine Tochter geht zur Schule.', exampleEn: 'My daughter goes to school.' },
    { word: 'die Großeltern', arabic: 'الأجداد', english: 'grandparents', french: 'les grands-parents', article: 'die', pos: 'noun', cefr: 'A1', example: 'Meine Großeltern wohnen auf dem Land.', exampleEn: 'My grandparents live in the countryside.' },
    { word: 'verheiratet', arabic: 'متزوج', english: 'married', french: 'marié(e)', pos: 'adjective', cefr: 'A1', example: 'Meine Eltern sind verheiratet.', exampleEn: 'My parents are married.' },
  ],
  food: [
    { word: 'das Brot', arabic: 'الخبز', english: 'bread', french: 'le pain', article: 'das', plural: 'die Brote', pos: 'noun', cefr: 'A1', example: 'Ich kaufe ein Brot.', exampleEn: 'I buy a loaf of bread.' },
    { word: 'die Milch', arabic: 'الحليب', english: 'milk', french: 'le lait', article: 'die', pos: 'noun', cefr: 'A1', example: 'Die Milch ist frisch.', exampleEn: 'The milk is fresh.' },
    { word: 'der Käse', arabic: 'الجبن', english: 'cheese', french: 'le fromage', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Käse schmeckt gut.', exampleEn: 'The cheese tastes good.' },
    { word: 'der Apfel', arabic: 'التفاح', english: 'apple', french: 'la pomme', article: 'der', plural: 'die Äpfel', pos: 'noun', cefr: 'A1', example: 'Der Apfel ist rot.', exampleEn: 'The apple is red.' },
    { word: 'das Ei', arabic: 'البيضة', english: 'egg', french: 'l\'œuf', article: 'das', plural: 'die Eier', pos: 'noun', cefr: 'A1', example: 'Ich esse ein Ei zum Frühstück.', exampleEn: 'I eat an egg for breakfast.' },
    { word: 'das Obst', arabic: 'الفاكهة', english: 'fruit', french: 'les fruits', article: 'das', pos: 'noun', cefr: 'A1', example: 'Obst ist gesund.', exampleEn: 'Fruit is healthy.' },
    { word: 'das Gemüse', arabic: 'الخضروات', english: 'vegetables', french: 'les légumes', article: 'das', pos: 'noun', cefr: 'A1', example: 'Ich kaufe Gemüse auf dem Markt.', exampleEn: 'I buy vegetables at the market.' },
    { word: 'kochen', arabic: 'يطبخ', english: 'to cook', french: 'cuisiner', pos: 'verb', cefr: 'A1', example: 'Meine Mutter kocht gut.', exampleEn: 'My mother cooks well.' },
    { word: 'der Fisch', arabic: 'السمك', english: 'fish', french: 'le poisson', article: 'der', plural: 'die Fische', pos: 'noun', cefr: 'A1', example: 'Der Fisch ist frisch.', exampleEn: 'The fish is fresh.' },
    { word: 'das Fleisch', arabic: 'اللحم', english: 'meat', french: 'la viande', article: 'das', pos: 'noun', cefr: 'A1', example: 'Ich esse nicht viel Fleisch.', exampleEn: 'I do not eat much meat.' },
  ],
  home: [
    { word: 'das Haus', arabic: 'البيت', english: 'house', french: 'la maison', article: 'das', plural: 'die Häuser', pos: 'noun', cefr: 'A1', example: 'Das Haus ist groß.', exampleEn: 'The house is big.' },
    { word: 'die Wohnung', arabic: 'الشقة', english: 'apartment', french: 'l\'appartement', article: 'die', plural: 'die Wohnungen', pos: 'noun', cefr: 'A1', example: 'Meine Wohnung hat drei Zimmer.', exampleEn: 'My apartment has three rooms.' },
    { word: 'das Zimmer', arabic: 'الغرفة', english: 'room', french: 'la chambre', article: 'das', plural: 'die Zimmer', pos: 'noun', cefr: 'A1', example: 'Das Zimmer ist hell.', exampleEn: 'The room is bright.' },
    { word: 'die Küche', arabic: 'المطبخ', english: 'kitchen', french: 'la cuisine', article: 'die', plural: 'die Küchen', pos: 'noun', cefr: 'A1', example: 'Die Küche ist modern.', exampleEn: 'The kitchen is modern.' },
    { word: 'das Schlafzimmer', arabic: 'غرفة النوم', english: 'bedroom', french: 'la chambre à coucher', article: 'das', pos: 'noun', cefr: 'A1', example: 'Mein Schlafzimmer ist gemütlich.', exampleEn: 'My bedroom is cozy.' },
    { word: 'das Bad', arabic: 'الحمام', english: 'bathroom', french: 'la salle de bains', article: 'das', plural: 'die Bäder', pos: 'noun', cefr: 'A1', example: 'Das Bad ist sauber.', exampleEn: 'The bathroom is clean.' },
    { word: 'der Tisch', arabic: 'الطاولة', english: 'table', french: 'la table', article: 'der', plural: 'die Tische', pos: 'noun', cefr: 'A1', example: 'Der Tisch ist aus Holz.', exampleEn: 'The table is made of wood.' },
    { word: 'der Stuhl', arabic: 'الكرسي', english: 'chair', french: 'la chaise', article: 'der', plural: 'die Stühle', pos: 'noun', cefr: 'A1', example: 'Der Stuhl ist bequem.', exampleEn: 'The chair is comfortable.' },
    { word: 'das Bett', arabic: 'السرير', english: 'bed', french: 'le lit', article: 'das', plural: 'die Betten', pos: 'noun', cefr: 'A1', example: 'Das Bett ist groß.', exampleEn: 'The bed is big.' },
    { word: 'wohnen', arabic: 'يسكن', english: 'to live', french: 'habiter', pos: 'verb', cefr: 'A1', example: 'Ich wohne in Berlin.', exampleEn: 'I live in Berlin.' },
  ],
  daily_routine: [
    { word: 'aufstehen', arabic: 'يستيقظ', english: 'to get up', french: 'se lever', pos: 'verb', cefr: 'A1', example: 'Ich stehe um 6 Uhr auf.', exampleEn: 'I get up at 6 o\'clock.' },
    { word: 'frühstücken', arabic: 'يتناول الفطور', english: 'to have breakfast', french: 'prendre le petit déjeuner', pos: 'verb', cefr: 'A1', example: 'Ich frühstücke um 7 Uhr.', exampleEn: 'I have breakfast at 7 o\'clock.' },
    { word: 'arbeiten', arabic: 'يعمل', english: 'to work', french: 'travailler', pos: 'verb', cefr: 'A1', example: 'Ich arbeite in einem Büro.', exampleEn: 'I work in an office.' },
    { word: 'der Morgen', arabic: 'الصباح', english: 'morning', french: 'le matin', article: 'der', pos: 'noun', cefr: 'A1', example: 'Am Morgen dusche ich.', exampleEn: 'In the morning I shower.' },
    { word: 'der Abend', arabic: 'المساء', english: 'evening', french: 'le soir', article: 'der', pos: 'noun', cefr: 'A1', example: 'Am Abend lese ich ein Buch.', exampleEn: 'In the evening I read a book.' },
    { word: 'schlafen', arabic: 'ينام', english: 'to sleep', french: 'dormir', pos: 'verb', cefr: 'A1', example: 'Ich schlafe um 22 Uhr.', exampleEn: 'I sleep at 10 PM.' },
    { word: 'die Arbeit', arabic: 'العمل', english: 'work', french: 'le travail', article: 'die', pos: 'noun', cefr: 'A1', example: 'Die Arbeit beginnt um 8 Uhr.', exampleEn: 'Work starts at 8 o\'clock.' },
    { word: 'gehen', arabic: 'يذهب', english: 'to go', french: 'aller', pos: 'verb', cefr: 'A1', example: 'Ich gehe zur Arbeit.', exampleEn: 'I go to work.' },
    { word: 'die Uhr', arabic: 'الساعة', english: 'clock', french: 'l\'horloge', article: 'die', plural: 'die Uhren', pos: 'noun', cefr: 'A1', example: 'Die Uhr zeigt 7 Uhr.', exampleEn: 'The clock shows 7 o\'clock.' },
    { word: 'die Zeit', arabic: 'الوقت', english: 'time', french: 'le temps', article: 'die', pos: 'noun', cefr: 'A1', example: 'Ich habe keine Zeit.', exampleEn: 'I have no time.' },
  ],
  numbers: [
    { word: 'eins', arabic: 'واحد', english: 'one', pos: 'numeral', cefr: 'A1', example: 'Ich habe einen Bruder.', exampleEn: 'I have one brother.' },
    { word: 'zwei', arabic: 'اثنان', english: 'two', pos: 'numeral', cefr: 'A1', example: 'Wir haben zwei Katzen.', exampleEn: 'We have two cats.' },
    { word: 'drei', arabic: 'ثلاثة', english: 'three', pos: 'numeral', cefr: 'A1', example: 'Die Wohnung hat drei Zimmer.', exampleEn: 'The apartment has three rooms.' },
    { word: 'die Zahl', arabic: 'الرقم', english: 'number', article: 'die', plural: 'die Zahlen', pos: 'noun', cefr: 'A1', example: 'Die Zahl 5 ist meine Glückszahl.', exampleEn: 'The number 5 is my lucky number.' },
    { word: 'zählen', arabic: 'يعد', english: 'to count', pos: 'verb', cefr: 'A1', example: 'Kannst du bis 100 zählen?', exampleEn: 'Can you count to 100?' },
  ],
  colors: [
    { word: 'rot', arabic: 'أحمر', english: 'red', pos: 'adjective', cefr: 'A1', example: 'Das Auto ist rot.', exampleEn: 'The car is red.' },
    { word: 'blau', arabic: 'أزرق', english: 'blue', pos: 'adjective', cefr: 'A1', example: 'Der Himmel ist blau.', exampleEn: 'The sky is blue.' },
    { word: 'grün', arabic: 'أخضر', english: 'green', pos: 'adjective', cefr: 'A1', example: 'Der Baum ist grün.', exampleEn: 'The tree is green.' },
    { word: 'gelb', arabic: 'أصفر', english: 'yellow', pos: 'adjective', cefr: 'A1', example: 'Die Banane ist gelb.', exampleEn: 'The banana is yellow.' },
    { word: 'schwarz', arabic: 'أسود', english: 'black', pos: 'adjective', cefr: 'A1', example: 'Mein Auto ist schwarz.', exampleEn: 'My car is black.' },
    { word: 'weiß', arabic: 'أبيض', english: 'white', pos: 'adjective', cefr: 'A1', example: 'Der Schnee ist weiß.', exampleEn: 'The snow is white.' },
    { word: 'die Farbe', arabic: 'اللون', english: 'color', article: 'die', plural: 'die Farben', pos: 'noun', cefr: 'A1', example: 'Welche Farbe magst du?', exampleEn: 'Which color do you like?' },
  ],
  body: [
    { word: 'der Kopf', arabic: 'الرأس', english: 'head', article: 'der', plural: 'die Köpfe', pos: 'noun', cefr: 'A1', example: 'Der Kopf tut mir weh.', exampleEn: 'My head hurts.' },
    { word: 'das Auge', arabic: 'العين', english: 'eye', article: 'das', plural: 'die Augen', pos: 'noun', cefr: 'A1', example: 'Er hat blaue Augen.', exampleEn: 'He has blue eyes.' },
    { word: 'die Hand', arabic: 'اليد', english: 'hand', article: 'die', plural: 'die Hände', pos: 'noun', cefr: 'A1', example: 'Die Hände sind kalt.', exampleEn: 'The hands are cold.' },
    { word: 'das Bein', arabic: 'الساق', english: 'leg', article: 'das', plural: 'die Beine', pos: 'noun', cefr: 'A1', example: 'Mein Bein tut weh.', exampleEn: 'My leg hurts.' },
    { word: 'das Herz', arabic: 'القلب', english: 'heart', article: 'das', plural: 'die Herzen', pos: 'noun', cefr: 'A1', example: 'Das Herz schlägt schnell.', exampleEn: 'The heart beats fast.' },
    { word: 'der Schmerz', arabic: 'الألم', english: 'pain', article: 'der', plural: 'die Schmerzen', pos: 'noun', cefr: 'A1', example: 'Ich habe Kopfschmerzen.', exampleEn: 'I have a headache.' },
  ],
  clothes: [
    { word: 'der Mantel', arabic: 'المعطف', english: 'coat', article: 'der', plural: 'die Mäntel', pos: 'noun', cefr: 'A1', example: 'Der Mantel ist warm.', exampleEn: 'The coat is warm.' },
    { word: 'das Hemd', arabic: 'القميص', english: 'shirt', article: 'das', plural: 'die Hemden', pos: 'noun', cefr: 'A1', example: 'Das Hemd ist blau.', exampleEn: 'The shirt is blue.' },
    { word: 'die Hose', arabic: 'البنطلون', english: 'pants', article: 'die', plural: 'die Hosen', pos: 'noun', cefr: 'A1', example: 'Die Hose passt gut.', exampleEn: 'The pants fit well.' },
    { word: 'die Jacke', arabic: 'الجاكيت', english: 'jacket', article: 'die', plural: 'die Jacken', pos: 'noun', cefr: 'A1', example: 'Zieh deine Jacke an!', exampleEn: 'Put on your jacket!' },
    { word: 'der Schuh', arabic: 'الحذاء', english: 'shoe', article: 'der', plural: 'die Schuhe', pos: 'noun', cefr: 'A1', example: 'Die Schuhe sind neu.', exampleEn: 'The shoes are new.' },
    { word: 'tragen', arabic: 'يرتدي', english: 'to wear', pos: 'verb', cefr: 'A1', example: 'Er trägt einen Anzug.', exampleEn: 'He wears a suit.' },
    { word: 'anziehen', arabic: 'يرتدي/يلبس', english: 'to put on', pos: 'verb', cefr: 'A1', example: 'Ich ziehe mich an.', exampleEn: 'I get dressed.' },
  ],
  weather: [
    { word: 'das Wetter', arabic: 'الطقس', english: 'weather', article: 'das', pos: 'noun', cefr: 'A1', example: 'Das Wetter ist schön.', exampleEn: 'The weather is nice.' },
    { word: 'die Sonne', arabic: 'الشمس', english: 'sun', article: 'die', pos: 'noun', cefr: 'A1', example: 'Die Sonne scheint.', exampleEn: 'The sun is shining.' },
    { word: 'der Regen', arabic: 'المطر', english: 'rain', article: 'der', pos: 'noun', cefr: 'A1', example: 'Es regnet.', exampleEn: 'It is raining.' },
    { word: 'der Schnee', arabic: 'الثلج', english: 'snow', article: 'der', pos: 'noun', cefr: 'A1', example: 'Es schneit.', exampleEn: 'It is snowing.' },
    { word: 'warm', arabic: 'دافئ', english: 'warm', pos: 'adjective', cefr: 'A1', example: 'Heute ist es warm.', exampleEn: 'Today it is warm.' },
    { word: 'kalt', arabic: 'بارد', english: 'cold', pos: 'adjective', cefr: 'A1', example: 'Im Winter ist es kalt.', exampleEn: 'In winter it is cold.' },
    { word: 'der Frühling', arabic: 'الربيع', english: 'spring', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Frühling blühen die Blumen.', exampleEn: 'In spring the flowers bloom.' },
    { word: 'der Winter', arabic: 'الشتاء', english: 'winter', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Winter schneit es.', exampleEn: 'In winter it snows.' },
  ],
  shopping: [
    { word: 'einkaufen', arabic: 'يتسوق', english: 'to shop', pos: 'verb', cefr: 'A1', example: 'Ich kaufe im Supermarkt ein.', exampleEn: 'I shop at the supermarket.' },
    { word: 'der Preis', arabic: 'السعر', english: 'price', article: 'der', plural: 'die Preise', pos: 'noun', cefr: 'A1', example: 'Der Preis ist günstig.', exampleEn: 'The price is reasonable.' },
    { word: 'bezahlen', arabic: 'يدفع', english: 'to pay', pos: 'verb', cefr: 'A1', example: 'Ich bezahle an der Kasse.', exampleEn: 'I pay at the checkout.' },
    { word: 'der Euro', arabic: 'اليورو', english: 'euro', article: 'der', plural: 'die Euro', pos: 'noun', cefr: 'A1', example: 'Das kostet 10 Euro.', exampleEn: 'That costs 10 euros.' },
    { word: 'das Geschäft', arabic: 'المتجر', english: 'store', article: 'das', plural: 'die Geschäfte', pos: 'noun', cefr: 'A1', example: 'Das Geschäft ist um 20 Uhr zu.', exampleEn: 'The store closes at 8 PM.' },
    { word: 'der Markt', arabic: 'السوق', english: 'market', article: 'der', plural: 'die Märkte', pos: 'noun', cefr: 'A1', example: 'Der Markt ist am Samstag.', exampleEn: 'The market is on Saturday.' },
    { word: 'die Tasche', arabic: 'الحقيبة', english: 'bag', article: 'die', plural: 'die Taschen', pos: 'noun', cefr: 'A1', example: 'Ich brauche eine Tasche.', exampleEn: 'I need a bag.' },
    { word: 'der Rabatt', arabic: 'الخصم', english: 'discount', article: 'der', plural: 'die Rabatte', pos: 'noun', cefr: 'A2', example: 'Gibt es Rabatt?', exampleEn: 'Is there a discount?' },
  ],
  travel: [
    { word: 'die Reise', arabic: 'الرحلة', english: 'trip', article: 'die', plural: 'die Reisen', pos: 'noun', cefr: 'A1', example: 'Die Reise nach München war schön.', exampleEn: 'The trip to Munich was nice.' },
    { word: 'der Zug', arabic: 'القطار', english: 'train', article: 'der', plural: 'die Züge', pos: 'noun', cefr: 'A1', example: 'Der Zug kommt um 10 Uhr an.', exampleEn: 'The train arrives at 10 o\'clock.' },
    { word: 'das Ticket', arabic: 'التذكرة', english: 'ticket', article: 'das', plural: 'die Tickets', pos: 'noun', cefr: 'A1', example: 'Ein Ticket nach Berlin, bitte.', exampleEn: 'A ticket to Berlin, please.' },
    { word: 'der Bahnhof', arabic: 'محطة القطار', english: 'train station', article: 'der', plural: 'die Bahnhöfe', pos: 'noun', cefr: 'A1', example: 'Der Bahnhof ist groß.', exampleEn: 'The train station is big.' },
    { word: 'der Flughafen', arabic: 'المطار', english: 'airport', article: 'der', plural: 'die Flughäfen', pos: 'noun', cefr: 'A1', example: 'Ich fahre zum Flughafen.', exampleEn: 'I drive to the airport.' },
    { word: 'das Hotel', arabic: 'الفندق', english: 'hotel', article: 'das', plural: 'die Hotels', pos: 'noun', cefr: 'A1', example: 'Das Hotel ist günstig.', exampleEn: 'The hotel is affordable.' },
    { word: 'der Pass', arabic: 'جواز السفر', english: 'passport', article: 'der', plural: 'die Pässe', pos: 'noun', cefr: 'A1', example: 'Ich brauche meinen Pass.', exampleEn: 'I need my passport.' },
    { word: 'der Koffer', arabic: 'الحقيبة', english: 'suitcase', article: 'der', plural: 'die Koffer', pos: 'noun', cefr: 'A1', example: 'Mein Koffer ist schwer.', exampleEn: 'My suitcase is heavy.' },
  ],
  restaurant: [
    { word: 'das Restaurant', arabic: 'المطعم', english: 'restaurant', article: 'das', plural: 'die Restaurants', pos: 'noun', cefr: 'A1', example: 'Das Restaurant ist gut.', exampleEn: 'The restaurant is good.' },
    { word: 'die Speisekarte', arabic: 'قائمة الطعام', english: 'menu', article: 'die', plural: 'die Speisekarten', pos: 'noun', cefr: 'A1', example: 'Die Speisekarte, bitte.', exampleEn: 'The menu, please.' },
    { word: 'bestellen', arabic: 'يطلب', english: 'to order', pos: 'verb', cefr: 'A1', example: 'Ich möchte bestellen.', exampleEn: 'I would like to order.' },
    { word: 'der Kellner', arabic: 'النادل', english: 'waiter', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Kellner bringt das Essen.', exampleEn: 'The waiter brings the food.' },
    { word: 'trinken', arabic: 'يشرب', english: 'to drink', pos: 'verb', cefr: 'A1', example: 'Ich trinke Wasser.', exampleEn: 'I drink water.' },
    { word: 'die Rechnung', arabic: 'الفاتورة', english: 'bill', article: 'die', plural: 'die Rechnungen', pos: 'noun', cefr: 'A1', example: 'Die Rechnung, bitte!', exampleEn: 'The bill, please!' },
    { word: 'lecker', arabic: 'لذيذ', english: 'delicious', pos: 'adjective', cefr: 'A1', example: 'Das Essen ist lecker.', exampleEn: 'The food is delicious.' },
  ],
  health: [
    { word: 'der Arzt', arabic: 'الطبيب', english: 'doctor', article: 'der', plural: 'die Ärzte', pos: 'noun', cefr: 'A1', example: 'Ich gehe zum Arzt.', exampleEn: 'I go to the doctor.' },
    { word: 'das Krankenhaus', arabic: 'المستشفى', english: 'hospital', article: 'das', plural: 'die Krankenhäuser', pos: 'noun', cefr: 'A1', example: 'Das Krankenhaus ist neu.', exampleEn: 'The hospital is new.' },
    { word: 'die Medizin', arabic: 'الدواء', english: 'medicine', article: 'die', pos: 'noun', cefr: 'A2', example: 'Die Medizin hilft gegen Schmerzen.', exampleEn: 'The medicine helps against pain.' },
    { word: 'gesund', arabic: 'صحي', english: 'healthy', pos: 'adjective', cefr: 'A1', example: 'Sport ist gesund.', exampleEn: 'Sports are healthy.' },
    { word: 'krank', arabic: 'مريض', english: 'sick', pos: 'adjective', cefr: 'A1', example: 'Ich bin krank.', exampleEn: 'I am sick.' },
    { word: 'die Apotheke', arabic: 'الصيدلية', english: 'pharmacy', article: 'die', plural: 'die Apotheken', pos: 'noun', cefr: 'A2', example: 'Die Apotheke hat geöffnet.', exampleEn: 'The pharmacy is open.' },
    { word: 'die Versicherung', arabic: 'التأمين', english: 'insurance', article: 'die', plural: 'die Versicherungen', pos: 'noun', cefr: 'B1', example: 'Ich habe eine Krankenversicherung.', exampleEn: 'I have health insurance.' },
  ],
  city: [
    { word: 'die Stadt', arabic: 'المدينة', english: 'city', article: 'die', plural: 'die Städte', pos: 'noun', cefr: 'A1', example: 'Berlin ist eine große Stadt.', exampleEn: 'Berlin is a big city.' },
    { word: 'die Straße', arabic: 'الشارع', english: 'street', article: 'die', plural: 'die Straßen', pos: 'noun', cefr: 'A1', example: 'Die Straße ist lang.', exampleEn: 'The street is long.' },
    { word: 'der Platz', arabic: 'الساحة', english: 'square', article: 'der', plural: 'die Plätze', pos: 'noun', cefr: 'A1', example: 'Der Platz ist schön.', exampleEn: 'The square is beautiful.' },
    { word: 'das Gebäude', arabic: 'المبنى', english: 'building', article: 'das', plural: 'die Gebäude', pos: 'noun', cefr: 'A1', example: 'Das Gebäude ist alt.', exampleEn: 'The building is old.' },
    { word: 'die Ampel', arabic: 'إشارة المرور', english: 'traffic light', article: 'die', plural: 'die Ampeln', pos: 'noun', cefr: 'A2', example: 'Die Ampel ist rot.', exampleEn: 'The traffic light is red.' },
    { word: 'die Kirche', arabic: 'الكنيسة', english: 'church', article: 'die', plural: 'die Kirchen', pos: 'noun', cefr: 'A1', example: 'Die Kirche ist alt.', exampleEn: 'The church is old.' },
    { word: 'der Park', arabic: 'الحديقة', english: 'park', article: 'der', plural: 'die Parks', pos: 'noun', cefr: 'A1', example: 'Der Park ist groß.', exampleEn: 'The park is big.' },
  ],
  days_months: [
    { word: 'der Montag', arabic: 'الاثنين', english: 'Monday', article: 'der', plural: 'die Montage', pos: 'noun', cefr: 'A1', example: 'Am Montag arbeite ich.', exampleEn: 'On Monday I work.' },
    { word: 'der Dienstag', arabic: 'الثلاثاء', english: 'Tuesday', article: 'der', plural: 'die Dienstage', pos: 'noun', cefr: 'A1', example: 'Dienstag habe ich Unterricht.', exampleEn: 'On Tuesday I have class.' },
    { word: 'der Mittwoch', arabic: 'الأربعاء', english: 'Wednesday', article: 'der', plural: 'die Mittwoche', pos: 'noun', cefr: 'A1', example: 'Am Mittwoch gehe ich einkaufen.', exampleEn: 'On Wednesday I go shopping.' },
    { word: 'der Donnerstag', arabic: 'الخميس', english: 'Thursday', article: 'der', plural: 'die Donnerstage', pos: 'noun', cefr: 'A1', example: 'Donnerstag ist der Markt.', exampleEn: 'On Thursday is the market.' },
    { word: 'der Freitag', arabic: 'الجمعة', english: 'Friday', article: 'der', plural: 'die Freitage', pos: 'noun', cefr: 'A1', example: 'Am Freitag feiern wir.', exampleEn: 'On Friday we celebrate.' },
    { word: 'der Samstag', arabic: 'السبت', english: 'Saturday', article: 'der', plural: 'die Samstage', pos: 'noun', cefr: 'A1', example: 'Samstag is the German word for Saturday.', exampleEn: 'Samstag is the German word for Saturday.' },
    { word: 'der Sonntag', arabic: 'الأحد', english: 'Sunday', article: 'der', plural: 'die Sonntage', pos: 'noun', cefr: 'A1', example: 'Am Sonntag ruhen wir uns aus.', exampleEn: 'On Sunday we rest.' },
    { word: 'der Januar', arabic: 'يناير', english: 'January', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Januar ist kalt.', exampleEn: 'January is cold.' },
    { word: 'der Februar', arabic: 'فبراير', english: 'February', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Februar hat es oft Schnee.', exampleEn: 'In February it often snows.' },
    { word: 'der März', arabic: 'مارس', english: 'March', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im März wird es wärmer.', exampleEn: 'In March it gets warmer.' },
    { word: 'der April', arabic: 'أبريل', english: 'April', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im April blühen die Blumen.', exampleEn: 'In April the flowers bloom.' },
    { word: 'der Mai', arabic: 'مايو', english: 'May', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Mai ist ein schöner Monat.', exampleEn: 'May is a nice month.' },
    { word: 'der Juni', arabic: 'يونيو', english: 'June', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Juni ist Sommer.', exampleEn: 'In June it is summer.' },
    { word: 'der Juli', arabic: 'يوليو', english: 'July', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Juli ist heiß.', exampleEn: 'July is hot.' },
    { word: 'der August', arabic: 'أغسطس', english: 'August', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im August mache ich Urlaub.', exampleEn: 'In August I go on vacation.' },
    { word: 'der September', arabic: 'سبتمبر', english: 'September', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im September beginnt die Schule.', exampleEn: 'In September school starts.' },
    { word: 'der Oktober', arabic: 'أكتوبر', english: 'October', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Oktober ist Oktoberfest.', exampleEn: 'In October is Oktoberfest.' },
    { word: 'der November', arabic: 'نوفمبر', english: 'November', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der November ist oft grau.', exampleEn: 'November is often gray.' },
    { word: 'der Dezember', arabic: 'ديسمبر', english: 'December', article: 'der', pos: 'noun', cefr: 'A1', example: 'Im Dezember feiern wir Weihnachten.', exampleEn: 'In December we celebrate Christmas.' },
    { word: 'heute', arabic: 'اليوم', english: 'today', pos: 'adverb', cefr: 'A1', example: 'Heute ist Montag.', exampleEn: 'Today is Monday.' },
    { word: 'morgen', arabic: 'غداً', english: 'tomorrow', pos: 'adverb', cefr: 'A1', example: 'Morgen habe ich einen Termin.', exampleEn: 'Tomorrow I have an appointment.' },
    { word: 'gestern', arabic: 'أمس', english: 'yesterday', pos: 'adverb', cefr: 'A1', example: 'Gestern war ich im Kino.', exampleEn: 'Yesterday I was at the cinema.' },
  ],
  classroom: [
    { word: 'der Tisch', arabic: 'الطاولة', english: 'table', article: 'der', plural: 'die Tische', pos: 'noun', cefr: 'A1', example: 'Der Tisch ist braun.', exampleEn: 'The table is brown.' },
    { word: 'der Stuhl', arabic: 'الكرسي', english: 'chair', article: 'der', plural: 'die Stühle', pos: 'noun', cefr: 'A1', example: 'Der Stuhl ist bequem.', exampleEn: 'The chair is comfortable.' },
    { word: 'das Buch', arabic: 'الكتاب', english: 'book', article: 'das', plural: 'die Bücher', pos: 'noun', cefr: 'A1', example: 'Das Buch ist dick.', exampleEn: 'The book is thick.' },
    { word: 'der Stift', arabic: 'القلم', english: 'pen', article: 'der', plural: 'die Stifte', pos: 'noun', cefr: 'A1', example: 'Der Stift schreibt blau.', exampleEn: 'The pen writes blue.' },
    { word: 'der Bleistift', arabic: 'قلم الرصاص', english: 'pencil', article: 'der', plural: 'die Bleistifte', pos: 'noun', cefr: 'A1', example: 'Der Bleistift ist spitz.', exampleEn: 'The pencil is sharp.' },
    { word: 'der Radiergummi', arabic: 'الممحاة', english: 'eraser', article: 'der', plural: 'die Radiergummis', pos: 'noun', cefr: 'A1', example: 'Mit dem Radiergummi kann ich radieren.', exampleEn: 'With the eraser I can erase.' },
    { word: 'das Heft', arabic: 'الدفتر', english: 'notebook', article: 'das', plural: 'die Hefte', pos: 'noun', cefr: 'A1', example: 'Das Heft hat 100 Seiten.', exampleEn: 'The notebook has 100 pages.' },
    { word: 'die Tafel', arabic: 'السبورة', english: 'blackboard', article: 'die', plural: 'die Tafeln', pos: 'noun', cefr: 'A1', example: 'Die Tafel ist grün.', exampleEn: 'The blackboard is green.' },
    { word: 'der Rucksack', arabic: 'حقيبة الظهر', english: 'backpack', article: 'der', plural: 'die Rucksäcke', pos: 'noun', cefr: 'A1', example: 'Mein Rucksack ist schwer.', exampleEn: 'My backpack is heavy.' },
    { word: 'der Unterricht', arabic: 'الدرس', english: 'lesson', article: 'der', pos: 'noun', cefr: 'A1', example: 'Der Unterricht beginnt um 9 Uhr.', exampleEn: 'The lesson starts at 9 o\'clock.' },
  ],
  basic_adjectives: [
    { word: 'groß', arabic: 'كبير', english: 'big', pos: 'adjective', cefr: 'A1', example: 'Das Haus ist groß.', exampleEn: 'The house is big.' },
    { word: 'klein', arabic: 'صغير', english: 'small', pos: 'adjective', cefr: 'A1', example: 'Die Wohnung ist klein.', exampleEn: 'The apartment is small.' },
    { word: 'gut', arabic: 'جيد', english: 'good', pos: 'adjective', cefr: 'A1', example: 'Das Essen ist gut.', exampleEn: 'The food is good.' },
    { word: 'schlecht', arabic: 'سيء', english: 'bad', pos: 'adjective', cefr: 'A1', example: 'Das Wetter ist schlecht.', exampleEn: 'The weather is bad.' },
    { word: 'schön', arabic: 'جميل', english: 'beautiful', pos: 'adjective', cefr: 'A1', example: 'Die Stadt ist schön.', exampleEn: 'The city is beautiful.' },
    { word: 'neu', arabic: 'جديد', english: 'new', pos: 'adjective', cefr: 'A1', example: 'Das Auto ist neu.', exampleEn: 'The car is new.' },
    { word: 'alt', arabic: 'قديم', english: 'old', pos: 'adjective', cefr: 'A1', example: 'Der Tisch ist alt.', exampleEn: 'The table is old.' },
    { word: 'jung', arabic: 'شاب', english: 'young', pos: 'adjective', cefr: 'A1', example: 'Mein Bruder ist jung.', exampleEn: 'My brother is young.' },
    { word: 'schnell', arabic: 'سريع', english: 'fast', pos: 'adjective', cefr: 'A1', example: 'Der Zug ist schnell.', exampleEn: 'The train is fast.' },
    { word: 'langsam', arabic: 'بطيء', english: 'slow', pos: 'adjective', cefr: 'A1', example: 'Die Schnecke ist langsam.', exampleEn: 'The snail is slow.' },
    { word: 'teuer', arabic: 'غالي', english: 'expensive', pos: 'adjective', cefr: 'A1', example: 'Das Hotel ist teuer.', exampleEn: 'The hotel is expensive.' },
    { word: 'billig', arabic: 'رخيص', english: 'cheap', pos: 'adjective', cefr: 'A1', example: 'Der Markt ist billig.', exampleEn: 'The market is cheap.' },
    { word: 'wichtig', arabic: 'مهم', english: 'important', pos: 'adjective', cefr: 'A1', example: 'Das ist wichtig.', exampleEn: 'That is important.' },
    { word: 'richtig', arabic: 'صحيح', english: 'correct', pos: 'adjective', cefr: 'A1', example: 'Die Antwort ist richtig.', exampleEn: 'The answer is correct.' },
    { word: 'falsch', arabic: 'خطأ', english: 'wrong', pos: 'adjective', cefr: 'A1', example: 'Das ist falsch.', exampleEn: 'That is wrong.' },
  ],
  digital_basics: [
    { word: 'der Computer', arabic: 'الحاسوب', english: 'computer', article: 'der', plural: 'die Computer', pos: 'noun', cefr: 'A1', example: 'Der Computer ist neu.', exampleEn: 'The computer is new.' },
    { word: 'das Handy', arabic: 'الهاتف المحمول', english: 'mobile phone', article: 'das', plural: 'die Handys', pos: 'noun', cefr: 'A1', example: 'Mein Handy klingelt.', exampleEn: 'My phone is ringing.' },
    { word: 'das Internet', arabic: 'الإنترنت', english: 'internet', article: 'das', pos: 'noun', cefr: 'A1', example: 'Das Internet ist schnell.', exampleEn: 'The internet is fast.' },
    { word: 'die E-Mail', arabic: 'البريد الإلكتروني', english: 'email', article: 'die', plural: 'die E-Mails', pos: 'noun', cefr: 'A1', example: 'Ich schreibe eine E-Mail.', exampleEn: 'I write an email.' },
    { word: 'die App', arabic: 'التطبيق', english: 'app', article: 'die', plural: 'die Apps', pos: 'noun', cefr: 'A1', example: 'Die App ist kostenlos.', exampleEn: 'The app is free.' },
    { word: 'die Website', arabic: 'الموقع الإلكتروني', english: 'website', article: 'die', plural: 'die Websites', pos: 'noun', cefr: 'A1', example: 'Die Website ist interessant.', exampleEn: 'The website is interesting.' },
    { word: 'surfen', arabic: 'يتصفح', english: 'to surf', pos: 'verb', cefr: 'A1', example: 'Ich surfe im Internet.', exampleEn: 'I surf the internet.' },
    { word: 'tippen', arabic: 'يكتب على لوحة المفاتيح', english: 'to type', pos: 'verb', cefr: 'A1', example: 'Ich tippe eine Nachricht.', exampleEn: 'I type a message.' },
  ],
  directions: [
    { word: 'links', arabic: 'يسار', english: 'left', pos: 'adverb', cefr: 'A1', example: 'Biegen Sie links ab.', exampleEn: 'Turn left.' },
    { word: 'rechts', arabic: 'يمين', english: 'right', pos: 'adverb', cefr: 'A1', example: 'Das Museum ist rechts.', exampleEn: 'The museum is on the right.' },
    { word: 'geradeaus', arabic: 'مباشرة', english: 'straight ahead', pos: 'adverb', cefr: 'A1', example: 'Gehen Sie geradeaus.', exampleEn: 'Go straight ahead.' },
    { word: 'die Kreuzung', arabic: 'التقاطع', english: 'intersection', article: 'die', plural: 'die Kreuzungen', pos: 'noun', cefr: 'A2', example: 'An der Kreuzung links.', exampleEn: 'At the intersection, turn left.' },
    { word: 'die Ecke', arabic: 'الزاوية', english: 'corner', article: 'die', plural: 'die Ecken', pos: 'noun', cefr: 'A2', example: 'Um die Ecke ist ein Café.', exampleEn: 'Around the corner is a café.' },
    { word: 'die Karte', arabic: 'الخريطة', english: 'map', article: 'die', plural: 'die Karten', pos: 'noun', cefr: 'A2', example: 'Haben Sie eine Karte?', exampleEn: 'Do you have a map?' },
    { word: 'weit', arabic: 'بعيد', english: 'far', pos: 'adjective', cefr: 'A2', example: 'Ist es weit von hier?', exampleEn: 'Is it far from here?' },
    { word: 'nah', arabic: 'قريب', english: 'near', pos: 'adjective', cefr: 'A2', example: 'Der Bahnhof ist nah.', exampleEn: 'The train station is near.' },
  ],
  hobbies: [
    { word: 'das Hobby', arabic: 'الهواية', english: 'hobby', article: 'das', plural: 'die Hobbys', pos: 'noun', cefr: 'A1', example: 'Mein Hobby ist Lesen.', exampleEn: 'My hobby is reading.' },
    { word: 'der Sport', arabic: 'الرياضة', english: 'sports', article: 'der', pos: 'noun', cefr: 'A1', example: 'Ich treibe gerne Sport.', exampleEn: 'I like to do sports.' },
    { word: 'lesen', arabic: 'يقرأ', english: 'to read', pos: 'verb', cefr: 'A1', example: 'Ich lese gerne Bücher.', exampleEn: 'I like to read books.' },
    { word: 'reisen', arabic: 'يسافر', english: 'to travel', pos: 'verb', cefr: 'A1', example: 'Ich reise gerne.', exampleEn: 'I like to travel.' },
    { word: 'schwimmen', arabic: 'يسبح', english: 'to swim', pos: 'verb', cefr: 'A1', example: 'Ich schwimme im See.', exampleEn: 'I swim in the lake.' },
    { word: 'der Fußball', arabic: 'كرة القدم', english: 'soccer', article: 'der', pos: 'noun', cefr: 'A1', example: 'Fußball ist beliebt in Deutschland.', exampleEn: 'Soccer is popular in Germany.' },
    { word: 'die Musik', arabic: 'الموسيقى', english: 'music', article: 'die', pos: 'noun', cefr: 'A1', example: 'Ich höre gerne Musik.', exampleEn: 'I like to listen to music.' },
  ],
  holidays: [
    { word: 'der Feiertag', arabic: 'العطلة الرسمية', english: 'public holiday', article: 'der', plural: 'die Feiertage', pos: 'noun', cefr: 'A2', example: 'Der 3. Oktober ist ein Feiertag.', exampleEn: 'October 3rd is a public holiday.' },
    { word: 'Weihnachten', arabic: 'عيد الميلاد', english: 'Christmas', pos: 'noun', cefr: 'A2', example: 'Weihnachten ist am 24. Dezember.', exampleEn: 'Christmas is on December 24th.' },
    { word: 'das Geschenk', arabic: 'الهدية', english: 'gift', article: 'das', plural: 'die Geschenke', pos: 'noun', cefr: 'A2', example: 'Ich kaufe ein Geschenk.', exampleEn: 'I buy a gift.' },
    { word: 'feiern', arabic: 'يحتفل', english: 'to celebrate', pos: 'verb', cefr: 'A2', example: 'Wir feiern meinen Geburtstag.', exampleEn: 'We celebrate my birthday.' },
    { word: 'der Geburtstag', arabic: 'عيد الميلاد', english: 'birthday', article: 'der', plural: 'die Geburtstage', pos: 'noun', cefr: 'A2', example: 'Alles Gute zum Geburtstag!', exampleEn: 'Happy birthday!' },
    { word: 'Ostern', arabic: 'عيد الفصح', english: 'Easter', pos: 'noun', cefr: 'A2', example: 'Ostern ist im Frühling.', exampleEn: 'Easter is in spring.' },
    { word: 'das Fest', arabic: 'المهرجان', english: 'festival', article: 'das', plural: 'die Feste', pos: 'noun', cefr: 'A2', example: 'Das Oktoberfest ist in München.', exampleEn: 'The Oktoberfest is in Munich.' },
    { word: 'der Brauch', arabic: 'العادة التقليدية', english: 'tradition', article: 'der', plural: 'die Bräuche', pos: 'noun', cefr: 'B1', example: 'Das ist ein deutscher Brauch.', exampleEn: 'That is a German tradition.' },
  ],
  nature: [
    { word: 'der Baum', arabic: 'الشجرة', english: 'tree', article: 'der', plural: 'die Bäume', pos: 'noun', cefr: 'A1', example: 'Der Baum ist hoch.', exampleEn: 'The tree is tall.' },
    { word: 'die Blume', arabic: 'الزهرة', english: 'flower', article: 'die', plural: 'die Blumen', pos: 'noun', cefr: 'A1', example: 'Die Blume ist schön.', exampleEn: 'The flower is beautiful.' },
    { word: 'der Fluss', arabic: 'النهر', english: 'river', article: 'der', plural: 'die Flüsse', pos: 'noun', cefr: 'A1', example: 'Der Fluss fließt durch die Stadt.', exampleEn: 'The river flows through the city.' },
    { word: 'der Berg', arabic: 'الجبل', english: 'mountain', article: 'der', plural: 'die Berge', pos: 'noun', cefr: 'A1', example: 'Die Berge sind schön.', exampleEn: 'The mountains are beautiful.' },
    { word: 'der Wald', arabic: 'الغابة', english: 'forest', article: 'der', plural: 'die Wälder', pos: 'noun', cefr: 'A1', example: 'Der Wald ist ruhig.', exampleEn: 'The forest is quiet.' },
    { word: 'das Meer', arabic: 'البحر', english: 'sea', article: 'das', plural: 'die Meere', pos: 'noun', cefr: 'A1', example: 'Das Meer ist blau.', exampleEn: 'The sea is blue.' },
  ],
  animals: [
    { word: 'der Hund', arabic: 'الكلب', english: 'dog', article: 'der', plural: 'die Hunde', pos: 'noun', cefr: 'A1', example: 'Der Hund ist treu.', exampleEn: 'The dog is loyal.' },
    { word: 'die Katze', arabic: 'القطة', english: 'cat', article: 'die', plural: 'die Katzen', pos: 'noun', cefr: 'A1', example: 'Die Katze ist süß.', exampleEn: 'The cat is cute.' },
    { word: 'das Pferd', arabic: 'الحصان', english: 'horse', article: 'das', plural: 'die Pferde', pos: 'noun', cefr: 'A1', example: 'Das Pferd läuft schnell.', exampleEn: 'The horse runs fast.' },
    { word: 'der Vogel', arabic: 'الطائر', english: 'bird', article: 'der', plural: 'die Vögel', pos: 'noun', cefr: 'A1', example: 'Der Vogel singt.', exampleEn: 'The bird sings.' },
    { word: 'der Fisch', arabic: 'السمكة', english: 'fish', article: 'der', plural: 'die Fische', pos: 'noun', cefr: 'A1', example: 'Die Fische schwimmen im Wasser.', exampleEn: 'The fish swim in the water.' },
    { word: 'das Tier', arabic: 'الحيوان', english: 'animal', article: 'das', plural: 'die Tiere', pos: 'noun', cefr: 'A1', example: 'Ich mag Tiere.', exampleEn: 'I like animals.' },
  ],
  work: [
    { word: 'der Beruf', arabic: 'المهنة', english: 'profession', article: 'der', plural: 'die Berufe', pos: 'noun', cefr: 'A1', example: 'Was ist dein Beruf?', exampleEn: 'What is your profession?' },
    { word: 'die Firma', arabic: 'الشركة', english: 'company', article: 'die', plural: 'die Firmen', pos: 'noun', cefr: 'A1', example: 'Die Firma ist in Berlin.', exampleEn: 'The company is in Berlin.' },
    { word: 'der Kollege', arabic: 'الزميل', english: 'colleague', article: 'der', plural: 'die Kollegen', pos: 'noun', cefr: 'A1', example: 'Mein Kollege hilft mir.', exampleEn: 'My colleague helps me.' },
    { word: 'das Büro', arabic: 'المكتب', english: 'office', article: 'das', plural: 'die Büros', pos: 'noun', cefr: 'A1', example: 'Das Büro ist im dritten Stock.', exampleEn: 'The office is on the third floor.' },
    { word: 'die Besprechung', arabic: 'الاجتماع', english: 'meeting', article: 'die', plural: 'die Besprechungen', pos: 'noun', cefr: 'B1', example: 'Wir haben eine Besprechung.', exampleEn: 'We have a meeting.' },
    { word: 'der Chef', arabic: 'المدير', english: 'boss', article: 'der', plural: 'die Chefs', pos: 'noun', cefr: 'A1', example: 'Mein Chef ist freundlich.', exampleEn: 'My boss is friendly.' },
    { word: 'das Gehalt', arabic: 'الراتب', english: 'salary', article: 'das', plural: 'die Gehälter', pos: 'noun', cefr: 'B1', example: 'Das Gehalt ist gut.', exampleEn: 'The salary is good.' },
    { word: 'die Stelle', arabic: 'الوظيفة', english: 'position', article: 'die', plural: 'die Stellen', pos: 'noun', cefr: 'B1', example: 'Ich suche eine neue Stelle.', exampleEn: 'I am looking for a new position.' },
  ],
  education: [
    { word: 'die Schule', arabic: 'المدرسة', english: 'school', article: 'die', plural: 'die Schulen', pos: 'noun', cefr: 'A1', example: 'Die Kinder gehen zur Schule.', exampleEn: 'The children go to school.' },
    { word: 'der Lehrer', arabic: 'المعلم', english: 'teacher', article: 'der', plural: 'die Lehrer', pos: 'noun', cefr: 'A1', example: 'Der Lehrer erklärt die Grammatik.', exampleEn: 'The teacher explains the grammar.' },
    { word: 'der Student', arabic: 'الطالب', english: 'student', article: 'der', plural: 'die Studenten', pos: 'noun', cefr: 'A1', example: 'Der Student lernt Deutsch.', exampleEn: 'The student learns German.' },
    { word: 'die Universität', arabic: 'الجامعة', english: 'university', article: 'die', plural: 'die Universitäten', pos: 'noun', cefr: 'B1', example: 'Die Universität ist alt.', exampleEn: 'The university is old.' },
    { word: 'der Kurs', arabic: 'الدورة', english: 'course', article: 'der', plural: 'die Kurse', pos: 'noun', cefr: 'A2', example: 'Der Kurs kostet 200 Euro.', exampleEn: 'The course costs 200 euros.' },
    { word: 'die Prüfung', arabic: 'الامتحان', english: 'exam', article: 'die', plural: 'die Prüfungen', pos: 'noun', cefr: 'B1', example: 'Die Prüfung ist schwer.', exampleEn: 'The exam is difficult.' },
    { word: 'das Studium', arabic: 'الدراسة الجامعية', english: 'studies', article: 'das', pos: 'noun', cefr: 'B1', example: 'Mein Studium dauert vier Jahre.', exampleEn: 'My studies take four years.' },
    { word: 'lernen', arabic: 'يتعلم', english: 'to learn', pos: 'verb', cefr: 'A1', example: 'Ich lerne Deutsch.', exampleEn: 'I learn German.' },
  ],
  media: [
    { word: 'die Zeitung', arabic: 'الجريدة', english: 'newspaper', article: 'die', plural: 'die Zeitungen', pos: 'noun', cefr: 'A2', example: 'Ich lese die Zeitung.', exampleEn: 'I read the newspaper.' },
    { word: 'das Internet', arabic: 'الإنترنت', english: 'internet', article: 'das', pos: 'noun', cefr: 'A2', example: 'Das Internet ist schnell.', exampleEn: 'The internet is fast.' },
    { word: 'der Artikel', arabic: 'المقال', english: 'article', article: 'der', plural: 'die Artikel', pos: 'noun', cefr: 'B1', example: 'Der Artikel ist interessant.', exampleEn: 'The article is interesting.' },
    { word: 'die Nachricht', arabic: 'الخبر', english: 'news', article: 'die', plural: 'die Nachrichten', pos: 'noun', cefr: 'A2', example: 'Ich sehe die Nachrichten.', exampleEn: 'I watch the news.' },
    { word: 'das Radio', arabic: 'الراديو', english: 'radio', article: 'das', plural: 'die Radios', pos: 'noun', cefr: 'A2', example: 'Ich höre Radio.', exampleEn: 'I listen to the radio.' },
    { word: 'das Fernsehen', arabic: 'التلفاز', english: 'television', article: 'das', pos: 'noun', cefr: 'A2', example: 'Das Fernsehen läuft.', exampleEn: 'The television is on.' },
    { word: 'die Zeitschrift', arabic: 'المجلة', english: 'magazine', article: 'die', plural: 'die Zeitschriften', pos: 'noun', cefr: 'B1', example: 'Die Zeitschrift erscheint monatlich.', exampleEn: 'The magazine is published monthly.' },
    { word: 'der Journalist', arabic: 'الصحفي', english: 'journalist', article: 'der', plural: 'die Journalisten', pos: 'noun', cefr: 'B1', example: 'Der Journalist schreibt einen Artikel.', exampleEn: 'The journalist writes an article.' },
  ],
  society: [
    { word: 'die Gesellschaft', arabic: 'المجتمع', english: 'society', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Gesellschaft verändert sich.', exampleEn: 'Society is changing.' },
    { word: 'die Politik', arabic: 'السياسة', english: 'politics', article: 'die', pos: 'noun', cefr: 'B1', example: 'Politik ist ein wichtiges Thema.', exampleEn: 'Politics is an important topic.' },
    { word: 'die Integration', arabic: 'الاندماج', english: 'integration', article: 'die', pos: 'noun', cefr: 'B1', example: 'Integration ist wichtig.', exampleEn: 'Integration is important.' },
    { word: 'die Kultur', arabic: 'الثقافة', english: 'culture', article: 'die', pos: 'noun', cefr: 'A2', example: 'Die deutsche Kultur ist vielfältig.', exampleEn: 'German culture is diverse.' },
    { word: 'der Bürger', arabic: 'المواطن', english: 'citizen', article: 'der', plural: 'die Bürger', pos: 'noun', cefr: 'B1', example: 'Die Bürger wählen.', exampleEn: 'The citizens vote.' },
    { word: 'die Freiheit', arabic: 'الحرية', english: 'freedom', article: 'die', pos: 'noun', cefr: 'B1', example: 'Freiheit ist ein Grundrecht.', exampleEn: 'Freedom is a basic right.' },
    { word: 'die Gleichberechtigung', arabic: 'المساواة', english: 'equality', article: 'die', pos: 'noun', cefr: 'B2', example: 'Gleichberechtigung für alle.', exampleEn: 'Equality for all.' },
    { word: 'die Verantwortung', arabic: 'المسؤولية', english: 'responsibility', article: 'die', pos: 'noun', cefr: 'B1', example: 'Das ist deine Verantwortung.', exampleEn: 'That is your responsibility.' },
  ],
  environment: [
    { word: 'die Umwelt', arabic: 'البيئة', english: 'environment', article: 'die', pos: 'noun', cefr: 'B1', example: 'Wir müssen die Umwelt schützen.', exampleEn: 'We must protect the environment.' },
    { word: 'der Klimawandel', arabic: 'تغير المناخ', english: 'climate change', article: 'der', pos: 'noun', cefr: 'B1', example: 'Der Klimawandel ist ein globales Problem.', exampleEn: 'Climate change is a global problem.' },
    { word: 'die Energie', arabic: 'الطاقة', english: 'energy', article: 'die', pos: 'noun', cefr: 'B1', example: 'Erneuerbare Energie ist wichtig.', exampleEn: 'Renewable energy is important.' },
    { word: 'der Müll', arabic: 'النفايات', english: 'waste', article: 'der', pos: 'noun', cefr: 'B1', example: 'In Deutschland trennt man den Müll.', exampleEn: 'In Germany, waste is separated.' },
    { word: 'recyceln', arabic: 'يعيد التدوير', english: 'to recycle', pos: 'verb', cefr: 'B1', example: 'Wir recyceln Papier und Plastik.', exampleEn: 'We recycle paper and plastic.' },
    { word: 'die Nachhaltigkeit', arabic: 'الاستدامة', english: 'sustainability', article: 'die', pos: 'noun', cefr: 'B1', example: 'Nachhaltigkeit ist ein Trend.', exampleEn: 'Sustainability is a trend.' },
    { word: 'die Luft', arabic: 'الهواء', english: 'air', article: 'die', pos: 'noun', cefr: 'A2', example: 'Die Luft ist frisch.', exampleEn: 'The air is fresh.' },
    { word: 'das Wasser', arabic: 'الماء', english: 'water', article: 'das', pos: 'noun', cefr: 'A1', example: 'Das Wasser ist sauber.', exampleEn: 'The water is clean.' },
  ],
  technology: [
    { word: 'der Computer', arabic: 'الحاسوب', english: 'computer', article: 'der', plural: 'die Computer', pos: 'noun', cefr: 'A2', example: 'Der Computer ist neu.', exampleEn: 'The computer is new.' },
    { word: 'das Handy', arabic: 'الهاتف المحمول', english: 'mobile phone', article: 'das', plural: 'die Handys', pos: 'noun', cefr: 'A2', example: 'Mein Handy klingelt.', exampleEn: 'My phone is ringing.' },
    { word: 'die Software', arabic: 'البرمجيات', english: 'software', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Software ist benutzerfreundlich.', exampleEn: 'The software is user-friendly.' },
    { word: 'die App', arabic: 'التطبيق', english: 'app', article: 'die', plural: 'die Apps', pos: 'noun', cefr: 'A2', example: 'Die App ist kostenlos.', exampleEn: 'The app is free.' },
    { word: 'digital', arabic: 'رقمي', english: 'digital', pos: 'adjective', cefr: 'B1', example: 'Die digitale Welt wächst.', exampleEn: 'The digital world is growing.' },
    { word: 'der Bildschirm', arabic: 'الشاشة', english: 'screen', article: 'der', plural: 'die Bildschirme', pos: 'noun', cefr: 'B1', example: 'Der Bildschirm ist groß.', exampleEn: 'The screen is big.' },
    { word: 'die Tastatur', arabic: 'لوحة المفاتيح', english: 'keyboard', article: 'die', plural: 'die Tastaturen', pos: 'noun', cefr: 'B1', example: 'Die Tastatur ist deutsch.', exampleEn: 'The keyboard is German.' },
    { word: 'die Datei', arabic: 'الملف', english: 'file', article: 'die', plural: 'die Dateien', pos: 'noun', cefr: 'B1', example: 'Die Datei ist zu groß.', exampleEn: 'The file is too big.' },
  ],
  culture: [
    { word: 'die Kunst', arabic: 'الفن', english: 'art', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Kunst ist vielfältig.', exampleEn: 'Art is diverse.' },
    { word: 'das Museum', arabic: 'المتحف', english: 'museum', article: 'das', plural: 'die Museen', pos: 'noun', cefr: 'A2', example: 'Das Museum ist am Sonntag geschlossen.', exampleEn: 'The museum is closed on Sunday.' },
    { word: 'das Theater', arabic: 'المسرح', english: 'theatre', article: 'das', plural: 'die Theater', pos: 'noun', cefr: 'B1', example: 'Das Theater spielt ein Drama.', exampleEn: 'The theatre performs a drama.' },
    { word: 'das Konzert', arabic: 'الحفلة الموسيقية', english: 'concert', article: 'das', plural: 'die Konzerte', pos: 'noun', cefr: 'A2', example: 'Das Konzert war fantastisch.', exampleEn: 'The concert was fantastic.' },
    { word: 'die Tradition', arabic: 'التقليد', english: 'tradition', article: 'die', plural: 'die Traditionen', pos: 'noun', cefr: 'B1', example: 'Deutsche Traditionen sind interessant.', exampleEn: 'German traditions are interesting.' },
    { word: 'die Ausstellung', arabic: 'المعرض', english: 'exhibition', article: 'die', plural: 'die Ausstellungen', pos: 'noun', cefr: 'B1', example: 'Die Ausstellung zeigt moderne Kunst.', exampleEn: 'The exhibition shows modern art.' },
  ],
  sports: [
    { word: 'der Sport', arabic: 'الرياضة', english: 'sports', article: 'der', pos: 'noun', cefr: 'A1', example: 'Sport ist wichtig für die Gesundheit.', exampleEn: 'Sports are important for health.' },
    { word: 'trainieren', arabic: 'يتدرب', english: 'to train', pos: 'verb', cefr: 'A2', example: 'Ich trainiere dreimal pro Woche.', exampleEn: 'I train three times a week.' },
    { word: 'der Wettkampf', arabic: 'المنافسة', english: 'competition', article: 'der', plural: 'die Wettkämpfe', pos: 'noun', cefr: 'B1', example: 'Der Wettkampf beginnt um 14 Uhr.', exampleEn: 'The competition starts at 2 PM.' },
    { word: 'die Mannschaft', arabic: 'الفريق', english: 'team', article: 'die', plural: 'die Mannschaften', pos: 'noun', cefr: 'B1', example: 'Die Mannschaft hat gewonnen.', exampleEn: 'The team has won.' },
    { word: 'das Stadion', arabic: 'الملعب', english: 'stadium', article: 'das', plural: 'die Stadien', pos: 'noun', cefr: 'B1', example: 'Das Stadion ist voll.', exampleEn: 'The stadium is full.' },
    { word: 'der Sieg', arabic: 'الفوز', english: 'victory', article: 'der', plural: 'die Siege', pos: 'noun', cefr: 'B1', example: 'Der Sieg war verdient.', exampleEn: 'The victory was deserved.' },
  ],
  relationships: [
    { word: 'die Freundschaft', arabic: 'الصداقة', english: 'friendship', article: 'die', plural: 'die Freundschaften', pos: 'noun', cefr: 'A2', example: 'Unsere Freundschaft ist stark.', exampleEn: 'Our friendship is strong.' },
    { word: 'der Freund', arabic: 'الصديق', english: 'friend', article: 'der', plural: 'die Freunde', pos: 'noun', cefr: 'A1', example: 'Mein Freund heißt Max.', exampleEn: 'My friend is called Max.' },
    { word: 'die Liebe', arabic: 'الحب', english: 'love', article: 'die', pos: 'noun', cefr: 'A2', example: 'Liebe ist ein starkes Gefühl.', exampleEn: 'Love is a strong feeling.' },
    { word: 'der Partner', arabic: 'الشريك', english: 'partner', article: 'der', plural: 'die Partner', pos: 'noun', cefr: 'B1', example: 'Mein Partner unterstützt mich.', exampleEn: 'My partner supports me.' },
    { word: 'sich streiten', arabic: 'يتشاجر', english: 'to argue', pos: 'verb', cefr: 'B1', example: 'Sie streiten sich oft.', exampleEn: 'They often argue.' },
    { word: 'sich vertragen', arabic: 'يتصالح', english: 'to reconcile', pos: 'verb', cefr: 'B1', example: 'Sie vertragen sich wieder.', exampleEn: 'They reconcile again.' },
    { word: 'vertrauen', arabic: 'يثق', english: 'to trust', pos: 'verb', cefr: 'B1', example: 'Ich vertraue dir.', exampleEn: 'I trust you.' },
  ],
  feelings: [
    { word: 'glücklich', arabic: 'سعيد', english: 'happy', pos: 'adjective', cefr: 'A1', example: 'Ich bin glücklich.', exampleEn: 'I am happy.' },
    { word: 'traurig', arabic: 'حزين', english: 'sad', pos: 'adjective', cefr: 'A1', example: 'Er ist traurig.', exampleEn: 'He is sad.' },
    { word: 'ängstlich', arabic: 'خائف', english: 'anxious', pos: 'adjective', cefr: 'B1', example: 'Sie ist ängstlich vor der Prüfung.', exampleEn: 'She is anxious about the exam.' },
    { word: 'aufgeregt', arabic: 'متحمس', english: 'excited', pos: 'adjective', cefr: 'A2', example: 'Ich bin aufgeregt wegen der Reise.', exampleEn: 'I am excited about the trip.' },
    { word: 'müde', arabic: 'متعب', english: 'tired', pos: 'adjective', cefr: 'A1', example: 'Ich bin müde.', exampleEn: 'I am tired.' },
    { word: 'die Angst', arabic: 'الخوف', english: 'fear', article: 'die', plural: 'die Ängste', pos: 'noun', cefr: 'B1', example: 'Ich habe Angst vor Spinnen.', exampleEn: 'I am afraid of spiders.' },
    { word: 'die Freude', arabic: 'الفرح', english: 'joy', article: 'die', pos: 'noun', cefr: 'A2', example: 'Die Freude ist groß.', exampleEn: 'The joy is great.' },
    { word: 'das Gefühl', arabic: 'الشعور', english: 'feeling', article: 'das', plural: 'die Gefühle', pos: 'noun', cefr: 'B1', example: 'Ich habe ein gutes Gefühl.', exampleEn: 'I have a good feeling.' },
  ],
  business: [
    { word: 'die Wirtschaft', arabic: 'الاقتصاد', english: 'economy', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die deutsche Wirtschaft ist stark.', exampleEn: 'The German economy is strong.' },
    { word: 'das Unternehmen', arabic: 'الشركة', english: 'enterprise', article: 'das', plural: 'die Unternehmen', pos: 'noun', cefr: 'B1', example: 'Das Unternehmen wächst schnell.', exampleEn: 'The enterprise is growing quickly.' },
    { word: 'die Aktie', arabic: 'السهم', english: 'share', article: 'die', plural: 'die Aktien', pos: 'noun', cefr: 'B2', example: 'Die Aktie steigt.', exampleEn: 'The share is rising.' },
    { word: 'der Umsatz', arabic: 'الإيرادات', english: 'revenue', article: 'der', plural: 'die Umsätze', pos: 'noun', cefr: 'B2', example: 'Der Umsatz ist gestiegen.', exampleEn: 'Revenue has increased.' },
    { word: 'die Bilanz', arabic: 'الميزانية العمومية', english: 'balance sheet', article: 'die', plural: 'die Bilanzen', pos: 'noun', cefr: 'B2', example: 'Die Bilanz ist positiv.', exampleEn: 'The balance sheet is positive.' },
    { word: 'investieren', arabic: 'يستثمر', english: 'to invest', pos: 'verb', cefr: 'B2', example: 'Wir investieren in neue Technologien.', exampleEn: 'We invest in new technologies.' },
    { word: 'der Markt', arabic: 'السوق', english: 'market', article: 'der', plural: 'die Märkte', pos: 'noun', cefr: 'A2', example: 'Der Markt wächst.', exampleEn: 'The market is growing.' },
    { word: 'die Messe', arabic: 'المعرض التجاري', english: 'trade fair', article: 'die', plural: 'die Messen', pos: 'noun', cefr: 'B2', example: 'Die Messe findet in Hannover statt.', exampleEn: 'The trade fair takes place in Hanover.' },
  ],
  politics: [
    { word: 'die Regierung', arabic: 'الحكومة', english: 'government', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Regierung beschließt neue Gesetze.', exampleEn: 'The government passes new laws.' },
    { word: 'der Bundestag', arabic: 'مجلس النواب الألماني', english: 'Federal Parliament', article: 'der', pos: 'noun', cefr: 'B2', example: 'Der Bundestag tagt in Berlin.', exampleEn: 'The Bundestag meets in Berlin.' },
    { word: 'die Wahl', arabic: 'الانتخاب', english: 'election', article: 'die', plural: 'die Wahlen', pos: 'noun', cefr: 'B1', example: 'Die Wahlen sind im September.', exampleEn: 'The elections are in September.' },
    { word: 'die Partei', arabic: 'الحزب', english: 'party', article: 'die', plural: 'die Parteien', pos: 'noun', cefr: 'B1', example: 'Welche Partei wählst du?', exampleEn: 'Which party do you vote for?' },
    { word: 'der Kanzler', arabic: 'المستشار', english: 'chancellor', article: 'der', pos: 'noun', cefr: 'B2', example: 'Der Bundeskanzler regiert das Land.', exampleEn: 'The Federal Chancellor governs the country.' },
    { word: 'die Demokratie', arabic: 'الديمقراطية', english: 'democracy', article: 'die', pos: 'noun', cefr: 'B1', example: 'Demokratie ist ein hohes Gut.', exampleEn: 'Democracy is a precious asset.' },
    { word: 'das Gesetz', arabic: 'القانون', english: 'law', article: 'das', plural: 'die Gesetze', pos: 'noun', cefr: 'B1', example: 'Das Gesetz tritt 2024 in Kraft.', exampleEn: 'The law takes effect in 2024.' },
  ],
  science: [
    { word: 'die Wissenschaft', arabic: 'العلم', english: 'science', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Wissenschaft macht Fortschritte.', exampleEn: 'Science is making progress.' },
    { word: 'die Forschung', arabic: 'البحث العلمي', english: 'research', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Forschung an Krebs läuft.', exampleEn: 'Cancer research is ongoing.' },
    { word: 'das Labor', arabic: 'المختبر', english: 'laboratory', article: 'das', plural: 'die Labore', pos: 'noun', cefr: 'B2', example: 'Das Labor ist modern ausgestattet.', exampleEn: 'The laboratory is modernly equipped.' },
    { word: 'das Experiment', arabic: 'التجربة', english: 'experiment', article: 'das', plural: 'die Experimente', pos: 'noun', cefr: 'B2', example: 'Das Experiment war erfolgreich.', exampleEn: 'The experiment was successful.' },
    { word: 'die Theorie', arabic: 'النظرية', english: 'theory', article: 'die', plural: 'die Theorien', pos: 'noun', cefr: 'B2', example: 'Die Theorie wurde bestätigt.', exampleEn: 'The theory was confirmed.' },
    { word: 'die Biologie', arabic: 'علم الأحياء', english: 'biology', article: 'die', pos: 'noun', cefr: 'B2', example: 'Biologie ist ein naturwissenschaftliches Fach.', exampleEn: 'Biology is a natural science subject.' },
    { word: 'die Chemie', arabic: 'الكيمياء', english: 'chemistry', article: 'die', pos: 'noun', cefr: 'B2', example: 'Chemie ist nicht mein Fach.', exampleEn: 'Chemistry is not my subject.' },
    { word: 'die Physik', arabic: 'الفيزياء', english: 'physics', article: 'die', pos: 'noun', cefr: 'B2', example: 'Physik erklärt die Naturgesetze.', exampleEn: 'Physics explains the laws of nature.' },
  ],
  economy: [
    { word: 'die Inflation', arabic: 'التضخم', english: 'inflation', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Inflation steigt.', exampleEn: 'Inflation is rising.' },
    { word: 'der Zins', arabic: 'الفائدة', english: 'interest', article: 'der', plural: 'die Zinsen', pos: 'noun', cefr: 'B2', example: 'Die Zinsen sind niedrig.', exampleEn: 'Interest rates are low.' },
    { word: 'das BIP', arabic: 'الناتج المحلي الإجمالي', english: 'GDP', article: 'das', pos: 'noun', cefr: 'B2', example: 'Das BIP wächst um 2 Prozent.', exampleEn: 'GDP is growing by 2 percent.' },
    { word: 'die Steuer', arabic: 'الضريبة', english: 'tax', article: 'die', plural: 'die Steuern', pos: 'noun', cefr: 'B1', example: 'Die Steuern sind hoch in Deutschland.', exampleEn: 'Taxes are high in Germany.' },
    { word: 'das Budget', arabic: 'الميزانية', english: 'budget', article: 'das', plural: 'die Budgets', pos: 'noun', cefr: 'B2', example: 'Das Budget ist begrenzt.', exampleEn: 'The budget is limited.' },
    { word: 'die Anlage', arabic: 'الاستثمار', english: 'investment', article: 'die', plural: 'die Anlagen', pos: 'noun', cefr: 'B2', example: 'Die Anlage ist rentabel.', exampleEn: 'The investment is profitable.' },
    { word: 'der Gewinn', arabic: 'الربح', english: 'profit', article: 'der', plural: 'die Gewinne', pos: 'noun', cefr: 'B2', example: 'Der Gewinn ist gestiegen.', exampleEn: 'The profit has increased.' },
    { word: 'die Schulden', arabic: 'الديون', english: 'debt', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Schulden des Landes wachsen.', exampleEn: 'The country\'s debt is growing.' },
  ],
  law: [
    { word: 'das Recht', arabic: 'القانون', english: 'law', article: 'das', pos: 'noun', cefr: 'B2', example: 'Das Recht auf Asyl ist geschützt.', exampleEn: 'The right to asylum is protected.' },
    { word: 'der Richter', arabic: 'القاضي', english: 'judge', article: 'der', plural: 'die Richter', pos: 'noun', cefr: 'B2', example: 'Der Richter spricht das Urteil.', exampleEn: 'The judge passes the sentence.' },
    { word: 'der Anwalt', arabic: 'المحامي', english: 'lawyer', article: 'der', plural: 'die Anwälte', pos: 'noun', cefr: 'B1', example: 'Der Anwalt vertritt den Klienten.', exampleEn: 'The lawyer represents the client.' },
    { word: 'das Gericht', arabic: 'المحكمة', english: 'court', article: 'das', plural: 'die Gerichte', pos: 'noun', cefr: 'B2', example: 'Das Gericht entscheidet morgen.', exampleEn: 'The court decides tomorrow.' },
    { word: 'das Urteil', arabic: 'الحكم', english: 'verdict', article: 'das', plural: 'die Urteile', pos: 'noun', cefr: 'B2', example: 'Das Urteil ist rechtskräftig.', exampleEn: 'The verdict is legally binding.' },
    { word: 'die Verfassung', arabic: 'الدستور', english: 'constitution', article: 'die', pos: 'noun', cefr: 'C1', example: 'Das Grundgesetz ist die deutsche Verfassung.', exampleEn: 'The Basic Law is the German constitution.' },
    { word: 'der Vertrag', arabic: 'العقد', english: 'contract', article: 'der', plural: 'die Verträge', pos: 'noun', cefr: 'B2', example: 'Der Vertrag wurde unterschrieben.', exampleEn: 'The contract was signed.' },
  ],
  finance: [
    { word: 'die Bank', arabic: 'البنك', english: 'bank', article: 'die', plural: 'die Banken', pos: 'noun', cefr: 'A2', example: 'Ich gehe zur Bank.', exampleEn: 'I go to the bank.' },
    { word: 'das Konto', arabic: 'الحساب', english: 'account', article: 'das', plural: 'die Konten', pos: 'noun', cefr: 'B1', example: 'Ich eröffne ein Konto.', exampleEn: 'I open an account.' },
    { word: 'die Kreditkarte', arabic: 'بطاقة الائتمان', english: 'credit card', article: 'die', plural: 'die Kreditkarten', pos: 'noun', cefr: 'B1', example: 'Ich bezahle mit Kreditkarte.', exampleEn: 'I pay with credit card.' },
    { word: 'der Kredit', arabic: 'القرض', english: 'loan', article: 'der', plural: 'die Kredite', pos: 'noun', cefr: 'B2', example: 'Der Kredit wird abbezahlt.', exampleEn: 'The loan is being repaid.' },
    { word: 'die Versicherung', arabic: 'التأمين', english: 'insurance', article: 'die', plural: 'die Versicherungen', pos: 'noun', cefr: 'B1', example: 'Die Versicherung zahlt den Schaden.', exampleEn: 'The insurance pays for the damage.' },
    { word: 'der Wechselkurs', arabic: 'سعر الصرف', english: 'exchange rate', article: 'der', plural: 'die Wechselkurse', pos: 'noun', cefr: 'B2', example: 'Der Wechselkurs ist günstig.', exampleEn: 'The exchange rate is favorable.' },
  ],
  art: [
    { word: 'das Gemälde', arabic: 'اللوحة', english: 'painting', article: 'das', plural: 'die Gemälde', pos: 'noun', cefr: 'B1', example: 'Das Gemälde hängt im Museum.', exampleEn: 'The painting hangs in the museum.' },
    { word: 'der Künstler', arabic: 'الفنان', english: 'artist', article: 'der', plural: 'die Künstler', pos: 'noun', cefr: 'B1', example: 'Der Künstler malt moderne Bilder.', exampleEn: 'The artist paints modern pictures.' },
    { word: 'die Skulptur', arabic: 'المنحوتة', english: 'sculpture', article: 'die', plural: 'die Skulpturen', pos: 'noun', cefr: 'B1', example: 'Die Skulptur ist aus Marmor.', exampleEn: 'The sculpture is made of marble.' },
    { word: 'die Galerie', arabic: 'المعرض الفني', english: 'gallery', article: 'die', plural: 'die Galerien', pos: 'noun', cefr: 'B1', example: 'Die Galerie zeigt zeitgenössische Kunst.', exampleEn: 'The gallery shows contemporary art.' },
    { word: 'die Ausstellung', arabic: 'المعرض', english: 'exhibition', article: 'die', plural: 'die Ausstellungen', pos: 'noun', cefr: 'B1', example: 'Die Ausstellung war sehr besucht.', exampleEn: 'The exhibition was very popular.' },
    { word: 'der Stil', arabic: 'الأسلوب', english: 'style', article: 'der', plural: 'die Stile', pos: 'noun', cefr: 'B2', example: 'Der Stil des Künstlers ist einzigartig.', exampleEn: 'The artist\'s style is unique.' },
    { word: 'die Malerei', arabic: 'الرسم', english: 'painting (art form)', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die abstrakte Malerei fasziniert mich.', exampleEn: 'Abstract painting fascinates me.' },
  ],
  literature: [
    { word: 'der Roman', arabic: 'الرواية', english: 'novel', article: 'der', plural: 'die Romane', pos: 'noun', cefr: 'B1', example: 'Der Roman ist ein Bestseller.', exampleEn: 'The novel is a bestseller.' },
    { word: 'der Dichter', arabic: 'الشاعر', english: 'poet', article: 'der', plural: 'die Dichter', pos: 'noun', cefr: 'B2', example: 'Goethe war ein großer Dichter.', exampleEn: 'Goethe was a great poet.' },
    { word: 'das Gedicht', arabic: 'القصيدة', english: 'poem', article: 'das', plural: 'die Gedichte', pos: 'noun', cefr: 'B1', example: 'Das Gedicht handelt von der Liebe.', exampleEn: 'The poem is about love.' },
    { word: 'der Autor', arabic: 'المؤلف', english: 'author', article: 'der', plural: 'die Autoren', pos: 'noun', cefr: 'B1', example: 'Der Autor schreibt einen neuen Roman.', exampleEn: 'The author is writing a new novel.' },
    { word: 'die Literaturgeschichte', arabic: 'تاريخ الأدب', english: 'literary history', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die deutsche Literaturgeschichte ist reich.', exampleEn: 'German literary history is rich.' },
    { word: 'das Drama', arabic: 'المسرحية', english: 'drama', article: 'das', plural: 'die Dramen', pos: 'noun', cefr: 'B2', example: 'Das Drama wurde 1920 geschrieben.', exampleEn: 'The drama was written in 1920.' },
    { word: 'die Erzählung', arabic: 'القصة القصيرة', english: 'short story', article: 'die', plural: 'die Erzählungen', pos: 'noun', cefr: 'B2', example: 'Die Erzählung ist bewegend.', exampleEn: 'The short story is moving.' },
  ],
  history: [
    { word: 'die Geschichte', arabic: 'التاريخ', english: 'history', article: 'die', pos: 'noun', cefr: 'A2', example: 'Geschichte ist ein wichtiges Fach.', exampleEn: 'History is an important subject.' },
    { word: 'der Krieg', arabic: 'الحرب', english: 'war', article: 'der', plural: 'die Kriege', pos: 'noun', cefr: 'B1', example: 'Der Krieg endete 1945.', exampleEn: 'The war ended in 1945.' },
    { word: 'das Reich', arabic: 'الإمبراطورية', english: 'empire', article: 'das', plural: 'die Reiche', pos: 'noun', cefr: 'B2', example: 'Das Deutsche Reich bestand bis 1918.', exampleEn: 'The German Empire existed until 1918.' },
    { word: 'die Mauer', arabic: 'الجدار', english: 'wall', article: 'die', plural: 'die Mauern', pos: 'noun', cefr: 'B1', example: 'Die Berliner Mauer fiel 1989.', exampleEn: 'The Berlin Wall fell in 1989.' },
    { word: 'die Wiedervereinigung', arabic: 'إعادة التوحيد', english: 'reunification', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Wiedervereinigung war 1990.', exampleEn: 'The reunification was in 1990.' },
    { word: 'das Mittelalter', arabic: 'العصور الوسطى', english: 'Middle Ages', article: 'das', pos: 'noun', cefr: 'B2', example: 'Das Mittelalter dauerte bis 1500.', exampleEn: 'The Middle Ages lasted until 1500.' },
    { word: 'der Kaiser', arabic: 'الإمبراطور', english: 'emperor', article: 'der', plural: 'die Kaiser', pos: 'noun', cefr: 'B2', example: 'Der Kaiser regierte das Reich.', exampleEn: 'The emperor ruled the empire.' },
  ],
  philosophy: [
    { word: 'die Philosophie', arabic: 'الفلسفة', english: 'philosophy', article: 'die', pos: 'noun', cefr: 'C1', example: 'Kant ist ein berühmter Philosoph.', exampleEn: 'Kant is a famous philosopher.' },
    { word: 'die Ethik', arabic: 'الأخلاق', english: 'ethics', article: 'die', pos: 'noun', cefr: 'C1', example: 'Ethik fragt nach dem guten Handeln.', exampleEn: 'Ethics asks about good action.' },
    { word: 'die Logik', arabic: 'المنطق', english: 'logic', article: 'die', pos: 'noun', cefr: 'C1', example: 'Logik ist die Lehre des Schlussfolgerns.', exampleEn: 'Logic is the study of reasoning.' },
    { word: 'die Erkenntnis', arabic: 'المعرفة', english: 'knowledge', article: 'die', plural: 'die Erkenntnisse', pos: 'noun', cefr: 'C1', example: 'Die Erkenntnis ist philosophisch relevant.', exampleEn: 'Knowledge is philosophically relevant.' },
    { word: 'die Metaphysik', arabic: 'الميتافيزيقا', english: 'metaphysics', article: 'die', pos: 'noun', cefr: 'C2', example: 'Metaphysik beschäftigt sich mit dem Sein.', exampleEn: 'Metaphysics deals with being.' },
    { word: 'die Vernunft', arabic: 'العقل', english: 'reason', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Vernunft leitet unser Handeln.', exampleEn: 'Reason guides our actions.' },
  ],
  academic: [
    { word: 'die Forschung', arabic: 'البحث', english: 'research', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Forschung ist interdisziplinär.', exampleEn: 'The research is interdisciplinary.' },
    { word: 'die Analyse', arabic: 'التحليل', english: 'analysis', article: 'die', plural: 'die Analysen', pos: 'noun', cefr: 'B2', example: 'Die Analyse der Daten dauert lange.', exampleEn: 'The analysis of the data takes long.' },
    { word: 'die Methode', arabic: 'الطريقة', english: 'method', article: 'die', plural: 'die Methoden', pos: 'noun', cefr: 'B2', example: 'Die Methode ist wissenschaftlich anerkannt.', exampleEn: 'The method is scientifically recognized.' },
    { word: 'die These', arabic: 'الأطروحة', english: 'thesis', article: 'die', plural: 'die Thesen', pos: 'noun', cefr: 'C1', example: 'Die These wird im Kapitel 3 diskutiert.', exampleEn: 'The thesis is discussed in chapter 3.' },
    { word: 'die Publikation', arabic: 'المنشور', english: 'publication', article: 'die', plural: 'die Publikationen', pos: 'noun', cefr: 'C1', example: 'Die Publikation erscheint im Springer Verlag.', exampleEn: 'The publication appears at Springer.' },
    { word: 'der Diskurs', arabic: 'الخطاب', english: 'discourse', article: 'der', plural: 'die Diskurse', pos: 'noun', cefr: 'C1', example: 'Der akademische Diskurs ist vielschichtig.', exampleEn: 'The academic discourse is multilayered.' },
    { word: 'die Hypothese', arabic: 'الفرضية', english: 'hypothesis', article: 'die', plural: 'die Hypothesen', pos: 'noun', cefr: 'C1', example: 'Die Hypothese wurde bestätigt.', exampleEn: 'The hypothesis was confirmed.' },
    { word: 'die Empirie', arabic: 'التجريبية', english: 'empirical research', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Empirie liefert Daten.', exampleEn: 'Empirical research provides data.' },
  ],
  research: [
    { word: 'die Studie', arabic: 'الدراسة', english: 'study', article: 'die', plural: 'die Studien', pos: 'noun', cefr: 'B2', example: 'Die Studie zeigt interessante Ergebnisse.', exampleEn: 'The study shows interesting results.' },
    { word: 'die Daten', arabic: 'البيانات', english: 'data', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Daten werden ausgewertet.', exampleEn: 'The data is being evaluated.' },
    { word: 'die Stichprobe', arabic: 'العينة', english: 'sample', article: 'die', plural: 'die Stichproben', pos: 'noun', cefr: 'C1', example: 'Die Stichprobe ist repräsentativ.', exampleEn: 'The sample is representative.' },
    { word: 'die Variable', arabic: 'المتغير', english: 'variable', article: 'die', plural: 'die Variablen', pos: 'noun', cefr: 'C1', example: 'Die Variable beeinflusst das Ergebnis.', exampleEn: 'The variable influences the result.' },
    { word: 'die Korrelation', arabic: 'الارتباط', english: 'correlation', article: 'die', plural: 'die Korrelationen', pos: 'noun', cefr: 'C1', example: 'Die Korrelation ist signifikant.', exampleEn: 'The correlation is significant.' },
    { word: 'die Publikation', arabic: 'النشر', english: 'publication', article: 'die', plural: 'die Publikationen', pos: 'noun', cefr: 'C1', example: 'Die Publikation wurde zitiert.', exampleEn: 'The publication was cited.' },
  ],
  linguistics: [
    { word: 'die Linguistik', arabic: 'علم اللغة', english: 'linguistics', article: 'die', pos: 'noun', cefr: 'C1', example: 'Linguistik untersucht die menschliche Sprache.', exampleEn: 'Linguistics studies human language.' },
    { word: 'die Syntax', arabic: 'النحو/تركيب الجملة', english: 'syntax', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Syntax beschreibt die Satzstruktur.', exampleEn: 'Syntax describes sentence structure.' },
    { word: 'die Semantik', arabic: 'علم الدلالة', english: 'semantics', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Semantik befasst sich mit Bedeutung.', exampleEn: 'Semantics deals with meaning.' },
    { word: 'die Morphologie', arabic: 'الصرف', english: 'morphology', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Morphologie untersucht Wortformen.', exampleEn: 'Morphology examines word forms.' },
    { word: 'die Phonetik', arabic: 'علم الأصوات', english: 'phonetics', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Phonetik untersucht Sprachlaute.', exampleEn: 'Phonetics studies speech sounds.' },
    { word: 'die Pragmatik', arabic: 'البراغماتية', english: 'pragmatics', article: 'die', pos: 'noun', cefr: 'C2', example: 'Pragmatik untersucht Sprachgebrauch.', exampleEn: 'Pragmatics studies language use.' },
    { word: 'die Sprachwissenschaft', arabic: 'علم اللغة', english: 'linguistics', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die germanistische Sprachwissenschaft ist vielfältig.', exampleEn: 'German linguistics is diverse.' },
  ],
  rhetoric: [
    { word: 'die Rhetorik', arabic: 'البلاغة', english: 'rhetoric', article: 'die', pos: 'noun', cefr: 'C1', example: 'Rhetorik ist die Kunst der Rede.', exampleEn: 'Rhetoric is the art of speech.' },
    { word: 'die Metapher', arabic: 'الاستعارة', english: 'metaphor', article: 'die', plural: 'die Metaphern', pos: 'noun', cefr: 'C1', example: 'Die Metapher ist ein Stilmittel.', exampleEn: 'The metaphor is a stylistic device.' },
    { word: 'das Argument', arabic: 'الحجة', english: 'argument', article: 'das', plural: 'die Argumente', pos: 'noun', cefr: 'B1', example: 'Das Argument ist überzeugend.', exampleEn: 'The argument is convincing.' },
    { word: 'die Überzeugung', arabic: 'الإقناع', english: 'persuasion', article: 'die', pos: 'noun', cefr: 'C1', example: 'Überzeugung ist das Ziel der Rhetorik.', exampleEn: 'Persuasion is the goal of rhetoric.' },
    { word: 'die Rede', arabic: 'الخطاب', english: 'speech', article: 'die', plural: 'die Reden', pos: 'noun', cefr: 'B2', example: 'Die Rede war bewegend.', exampleEn: 'The speech was moving.' },
    { word: 'das Pathos', arabic: 'العاطفة البلاغية', english: 'pathos', article: 'das', pos: 'noun', cefr: 'C2', example: 'Pathos appelliert an die Emotionen.', exampleEn: 'Pathos appeals to emotions.' },
    { word: 'die Ironie', arabic: 'السخرية', english: 'irony', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Ironie in seiner Aussage war deutlich.', exampleEn: 'The irony in his statement was clear.' },
  ],
  discourse: [
    { word: 'der Diskurs', arabic: 'الخطاب', english: 'discourse', article: 'der', plural: 'die Diskurse', pos: 'noun', cefr: 'C1', example: 'Der öffentliche Diskurs ist wichtig.', exampleEn: 'Public discourse is important.' },
    { word: 'die Argumentation', arabic: 'الجدال', english: 'argumentation', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Argumentation ist schlüssig.', exampleEn: 'The argumentation is coherent.' },
    { word: 'die Debatte', arabic: 'المناظرة', english: 'debate', article: 'die', plural: 'die Debatten', pos: 'noun', cefr: 'B2', example: 'Die Debatte war kontrovers.', exampleEn: 'The debate was controversial.' },
    { word: 'die Kontroverse', arabic: 'الجدل', english: 'controversy', article: 'die', plural: 'die Kontroversen', pos: 'noun', cefr: 'C1', example: 'Die Kontroverse dauert an.', exampleEn: 'The controversy continues.' },
    { word: 'die Perspektive', arabic: 'المنظور', english: 'perspective', article: 'die', plural: 'die Perspektiven', pos: 'noun', cefr: 'B2', example: 'Aus meiner Perspektive ist das falsch.', exampleEn: 'From my perspective, that is wrong.' },
    { word: 'der Standpunkt', arabic: 'وجهة النظر', english: 'point of view', article: 'der', plural: 'die Standpunkte', pos: 'noun', cefr: 'B2', example: 'Das ist ein anderer Standpunkt.', exampleEn: 'That is a different point of view.' },
  ],
  diplomacy: [
    { word: 'die Diplomatie', arabic: 'الدبلوماسية', english: 'diplomacy', article: 'die', pos: 'noun', cefr: 'C1', example: 'Diplomatie löst Konflikte ohne Gewalt.', exampleEn: 'Diplomacy resolves conflicts without violence.' },
    { word: 'der Botschafter', arabic: 'السفير', english: 'ambassador', article: 'der', plural: 'die Botschafter', pos: 'noun', cefr: 'C1', example: 'Der Botschafter vertritt sein Land.', exampleEn: 'The ambassador represents his country.' },
    { word: 'die Verhandlung', arabic: 'المفاوضات', english: 'negotiation', article: 'die', plural: 'die Verhandlungen', pos: 'noun', cefr: 'C1', example: 'Die Verhandlungen laufen gut.', exampleEn: 'The negotiations are going well.' },
    { word: 'der Kompromiss', arabic: 'الحل الوسط', english: 'compromise', article: 'der', plural: 'die Kompromisse', pos: 'noun', cefr: 'C1', example: 'Ein Kompromiss wurde gefunden.', exampleEn: 'A compromise was found.' },
    { word: 'die Vereinbarung', arabic: 'الاتفاق', english: 'agreement', article: 'die', plural: 'die Vereinbarungen', pos: 'noun', cefr: 'C1', example: 'Die Vereinbarung tritt sofort in Kraft.', exampleEn: 'The agreement takes effect immediately.' },
    { word: 'der Vertrag', arabic: 'المعاهدة', english: 'treaty', article: 'der', plural: 'die Verträge', pos: 'noun', cefr: 'C1', example: 'Der Vertrag wurde unterzeichnet.', exampleEn: 'The treaty was signed.' },
  ],
  journalism: [
    { word: 'der Journalist', arabic: 'الصحفي', english: 'journalist', article: 'der', plural: 'die Journalisten', pos: 'noun', cefr: 'B1', example: 'Der Journalist recherchiert den Fall.', exampleEn: 'The journalist researches the case.' },
    { word: 'die Recherche', arabic: 'التحقيق الصحفي', english: 'research/investigation', article: 'die', plural: 'die Recherchen', pos: 'noun', cefr: 'B2', example: 'Die Recherche dauert Wochen.', exampleEn: 'The investigation takes weeks.' },
    { word: 'die Quelle', arabic: 'المصدر', english: 'source', article: 'die', plural: 'die Quellen', pos: 'noun', cefr: 'B2', example: 'Die Quelle ist vertrauenswürdig.', exampleEn: 'The source is trustworthy.' },
    { word: 'die Pressefreiheit', arabic: 'حرية الصحافة', english: 'freedom of the press', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Pressefreiheit ist ein Grundrecht.', exampleEn: 'Freedom of the press is a fundamental right.' },
    { word: 'die Berichterstattung', arabic: 'التغطية الإخبارية', english: 'reporting', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Berichterstattung ist ausgewogen.', exampleEn: 'The reporting is balanced.' },
    { word: 'der Leitartikel', arabic: 'المقال الافتتاحي', english: 'editorial', article: 'der', plural: 'die Leitartikel', pos: 'noun', cefr: 'C1', example: 'Der Leitartikel kritisiert die Regierung.', exampleEn: 'The editorial criticizes the government.' },
    { word: 'die Nachrichtenagentur', arabic: 'وكالة الأنباء', english: 'news agency', article: 'die', plural: 'die Nachrichtenagenturen', pos: 'noun', cefr: 'C1', example: 'Die Nachrichtenagentur verbreitet die Meldung.', exampleEn: 'The news agency disseminates the report.' },
  ],
  psychology: [
    { word: 'die Psychologie', arabic: 'علم النفس', english: 'psychology', article: 'die', pos: 'noun', cefr: 'C1', example: 'Psychologie erklärt menschliches Verhalten.', exampleEn: 'Psychology explains human behavior.' },
    { word: 'die Wahrnehmung', arabic: 'الإدراك', english: 'perception', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Wahrnehmung ist subjektiv.', exampleEn: 'Perception is subjective.' },
    { word: 'die Kognition', arabic: 'الإدراك المعرفي', english: 'cognition', article: 'die', pos: 'noun', cefr: 'C1', example: 'Kognition umfasst Denken und Lernen.', exampleEn: 'Cognition includes thinking and learning.' },
    { word: 'die Emotion', arabic: 'العاطفة', english: 'emotion', article: 'die', plural: 'die Emotionen', pos: 'noun', cefr: 'B2', example: 'Emotionen beeinflussen unser Verhalten.', exampleEn: 'Emotions influence our behavior.' },
    { word: 'die Motivation', arabic: 'الدافع', english: 'motivation', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Motivation ist wichtig für den Lernerfolg.', exampleEn: 'Motivation is important for learning success.' },
    { word: 'die Persönlichkeit', arabic: 'الشخصية', english: 'personality', article: 'die', pos: 'noun', cefr: 'C1', example: 'Jeder Mensch hat eine einzigartige Persönlichkeit.', exampleEn: 'Every person has a unique personality.' },
    { word: 'die Entwicklungspsychologie', arabic: 'علم النفس النمائي', english: 'developmental psychology', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Entwicklungspsychologie untersucht das Wachstum.', exampleEn: 'Developmental psychology studies growth.' },
  ],
  sociology: [
    { word: 'die Soziologie', arabic: 'علم الاجتماع', english: 'sociology', article: 'die', pos: 'noun', cefr: 'C1', example: 'Soziologie untersucht die Gesellschaft.', exampleEn: 'Sociology studies society.' },
    { word: 'die Sozialisation', arabic: 'التنشئة الاجتماعية', english: 'socialization', article: 'die', pos: 'noun', cefr: 'C1', example: 'Sozialisation prägt den Menschen.', exampleEn: 'Socialization shapes the person.' },
    { word: 'die Schicht', arabic: 'الطبقة الاجتماعية', english: 'social class', article: 'die', plural: 'die Schichten', pos: 'noun', cefr: 'C1', example: 'Die soziale Schicht beeinflusst die Bildungschancen.', exampleEn: 'Social class influences educational opportunities.' },
    { word: 'die Migration', arabic: 'الهجرة', english: 'migration', article: 'die', pos: 'noun', cefr: 'B2', example: 'Migration ist ein globales Phänomen.', exampleEn: 'Migration is a global phenomenon.' },
    { word: 'die Integration', arabic: 'الاندماج', english: 'integration', article: 'die', pos: 'noun', cefr: 'B1', example: 'Integration gelingt durch Teilhabe.', exampleEn: 'Integration succeeds through participation.' },
    { word: 'die Norm', arabic: 'القاعدة الاجتماعية', english: 'social norm', article: 'die', plural: 'die Normen', pos: 'noun', cefr: 'C1', example: 'Soziale Normen variieren zwischen Kulturen.', exampleEn: 'Social norms vary between cultures.' },
  ],
  ethics: [
    { word: 'die Moral', arabic: 'الأخلاق', english: 'morality', article: 'die', pos: 'noun', cefr: 'C1', example: 'Moralische Fragen sind oft komplex.', exampleEn: 'Moral questions are often complex.' },
    { word: 'die Tugend', arabic: 'الفضيلة', english: 'virtue', article: 'die', plural: 'die Tugenden', pos: 'noun', cefr: 'C2', example: 'Gerechtigkeit ist eine Tugend.', exampleEn: 'Justice is a virtue.' },
    { word: 'das Gewissen', arabic: 'الضمير', english: 'conscience', article: 'das', pos: 'noun', cefr: 'C1', example: 'Das Gewissen sagt uns, was richtig ist.', exampleEn: 'Conscience tells us what is right.' },
    { word: 'die Verantwortungsethik', arabic: 'أخلاق المسؤولية', english: 'ethics of responsibility', article: 'die', pos: 'noun', cefr: 'C2', example: 'Verantwortungsethik fragt nach Konsequenzen.', exampleEn: 'Ethics of responsibility asks about consequences.' },
    { word: 'die Würde', arabic: 'الكرامة', english: 'dignity', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Menschenwürde ist unantastbar.', exampleEn: 'Human dignity is inviolable.' },
    { word: 'die Pflicht', arabic: 'الواجب', english: 'duty', article: 'die', plural: 'die Pflichten', pos: 'noun', cefr: 'B2', example: 'Es ist meine Pflicht zu helfen.', exampleEn: 'It is my duty to help.' },
  ],
  stylistics: [
    { word: 'der Stil', arabic: 'الأسلوب', english: 'style', article: 'der', plural: 'die Stile', pos: 'noun', cefr: 'B2', example: 'Der Stil des Textes ist formell.', exampleEn: 'The style of the text is formal.' },
    { word: 'das Register', arabic: 'المستوى اللغوي', english: 'register', article: 'das', plural: 'die Register', pos: 'noun', cefr: 'C1', example: 'Das Register passt zur Situation.', exampleEn: 'The register fits the situation.' },
    { word: 'das Stilmittel', arabic: 'الأداة الأسلوبية', english: 'stylistic device', article: 'das', plural: 'die Stilmittel', pos: 'noun', cefr: 'C1', example: 'Das Stilmittel unterstreicht die Aussage.', exampleEn: 'The stylistic device emphasizes the statement.' },
    { word: 'die Alliteration', arabic: 'الجناس', english: 'alliteration', article: 'die', plural: 'die Alliterationen', pos: 'noun', cefr: 'C2', example: 'Die Alliteration wiederholt den Anlaut.', exampleEn: 'Alliteration repeats the initial sound.' },
    { word: 'die Ellipse', arabic: 'الحذف', english: 'ellipsis', article: 'die', plural: 'die Ellipsen', pos: 'noun', cefr: 'C2', example: 'Die Ellipse spart Wörter aus.', exampleEn: 'The ellipsis omits words.' },
    { word: 'die Hyperbel', arabic: 'المبالغة', english: 'hyperbole', article: 'die', plural: 'die Hyperbeln', pos: 'noun', cefr: 'C2', example: 'Die Hyperbel übertreibt stark.', exampleEn: 'Hyperbole exaggerates strongly.' },
  ],
  poetics: [
    { word: 'die Poetik', arabic: 'الشعرية', english: 'poetics', article: 'die', pos: 'noun', cefr: 'C2', example: 'Poetik ist die Theorie der Dichtkunst.', exampleEn: 'Poetics is the theory of poetry.' },
    { word: 'der Vers', arabic: 'البيت الشعري', english: 'verse', article: 'der', plural: 'die Verse', pos: 'noun', cefr: 'C1', example: 'Der Vers hat fünf Hebungen.', exampleEn: 'The verse has five stresses.' },
    { word: 'der Reim', arabic: 'القافية', english: 'rhyme', article: 'der', plural: 'die Reime', pos: 'noun', cefr: 'C1', example: 'Der Reim verbindet die Zeilen.', exampleEn: 'Rhyme connects the lines.' },
    { word: 'das Metrum', arabic: 'الوزن', english: 'meter', article: 'das', plural: 'die Metren', pos: 'noun', cefr: 'C2', example: 'Das Metrum bestimmt den Rhythmus.', exampleEn: 'The meter determines the rhythm.' },
    { word: 'die Gattung', arabic: 'النوع الأدبي', english: 'genre', article: 'die', plural: 'die Gattungen', pos: 'noun', cefr: 'C1', example: 'Lyrik ist eine literarische Gattung.', exampleEn: 'Lyric poetry is a literary genre.' },
  ],
  pragmatics: [
    { word: 'die Pragmatik', arabic: 'البراغماتية', english: 'pragmatics', article: 'die', pos: 'noun', cefr: 'C2', example: 'Pragmatik untersucht Sprache im Kontext.', exampleEn: 'Pragmatics studies language in context.' },
    { word: 'der Sprechakt', arabic: 'فعل الكلام', english: 'speech act', article: 'der', plural: 'die Sprechakte', pos: 'noun', cefr: 'C2', example: 'Der Sprechakt ändert die Wirklichkeit.', exampleEn: 'The speech act changes reality.' },
    { word: 'die Implikatur', arabic: 'الاستلزام التخاطبي', english: 'implicature', article: 'die', plural: 'die Implikaturen', pos: 'noun', cefr: 'C2', example: 'Die Implikatur ist die indirekte Bedeutung.', exampleEn: 'Implicature is the indirect meaning.' },
    { word: 'der Kontext', arabic: 'السياق', english: 'context', article: 'der', plural: 'die Kontexte', pos: 'noun', cefr: 'B2', example: 'Der Kontext bestimmt die Bedeutung.', exampleEn: 'Context determines meaning.' },
    { word: 'die Höflichkeit', arabic: 'الأدب / اللباقة', english: 'politeness', article: 'die', pos: 'noun', cefr: 'B2', example: 'Höflichkeit ist in Japan sehr wichtig.', exampleEn: 'Politeness is very important in Japan.' },
    { word: 'die Konversationsanalyse', arabic: 'تحليل المحادثة', english: 'conversation analysis', article: 'die', pos: 'noun', cefr: 'C2', example: 'Die Konversationsanalyse untersucht Gespräche.', exampleEn: 'Conversation analysis examines conversations.' },
  ],
  semantics: [
    { word: 'die Bedeutung', arabic: 'المعنى', english: 'meaning', article: 'die', plural: 'die Bedeutungen', pos: 'noun', cefr: 'B2', example: 'Die Bedeutung des Wortes ist klar.', exampleEn: 'The meaning of the word is clear.' },
    { word: 'die Synonymie', arabic: 'الترادف', english: 'synonymy', article: 'die', pos: 'noun', cefr: 'C2', example: 'Synonymie bedeutet Bedeutungsgleichheit.', exampleEn: 'Synonymy means sameness of meaning.' },
    { word: 'die Antonymie', arabic: 'التضاد', english: 'antonymy', article: 'die', pos: 'noun', cefr: 'C2', example: 'Antonymie bezeichnet Gegensätze.', exampleEn: 'Antonymy denotes opposites.' },
    { word: 'die Polysemie', arabic: 'تعدد المعاني', english: 'polysemy', article: 'die', pos: 'noun', cefr: 'C2', example: 'Polysemie hat mehrere Bedeutungen.', exampleEn: 'Polysemy has multiple meanings.' },
    { word: 'die Kompositionalität', arabic: 'التركيبية', english: 'compositionality', article: 'die', pos: 'noun', cefr: 'C2', example: 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', exampleEn: 'Compositionality holds that meaning consists of parts.' },
  ],
  translation: [
    { word: 'die Übersetzung', arabic: 'الترجمة', english: 'translation', article: 'die', plural: 'die Übersetzungen', pos: 'noun', cefr: 'B2', example: 'Die Übersetzung ist gelungen.', exampleEn: 'The translation is successful.' },
    { word: 'übersetzen', arabic: 'يترجم', english: 'to translate', pos: 'verb', cefr: 'B1', example: 'Ich übersetze den Text ins Arabische.', exampleEn: 'I translate the text into Arabic.' },
    { word: 'der Dolmetscher', arabic: 'المترجم الفوري', english: 'interpreter', article: 'der', plural: 'die Dolmetscher', pos: 'noun', cefr: 'B2', example: 'Der Dolmetscher übersetzt mündlich.', exampleEn: 'The interpreter translates orally.' },
    { word: 'die Muttersprache', arabic: 'اللغة الأم', english: 'native language', article: 'die', plural: 'die Muttersprachen', pos: 'noun', cefr: 'B1', example: 'Meine Muttersprache ist Arabisch.', exampleEn: 'My native language is Arabic.' },
    { word: 'falscher Freund', arabic: 'الصديق المزيف', english: 'false friend', pos: 'noun', cefr: 'C1', example: 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', exampleEn: 'A false friend looks similar but means something different.' },
    { word: 'die Sprachmittlung', arabic: 'الوساطة اللغوية', english: 'language mediation', article: 'die', pos: 'noun', cefr: 'C2', example: 'Sprachmittlung vermittelt zwischen Kulturen.', exampleEn: 'Language mediation bridges between cultures.' },
    { word: 'die Äquivalenz', arabic: 'التكافؤ', english: 'equivalence', article: 'die', pos: 'noun', cefr: 'C2', example: 'Äquivalenz in der Übersetzung ist ein Ideal.', exampleEn: 'Equivalence in translation is an ideal.' },
  ],
  dialectology: [
    { word: 'der Dialekt', arabic: 'اللهجة', english: 'dialect', article: 'der', plural: 'die Dialekte', pos: 'noun', cefr: 'B2', example: 'Der bayerische Dialekt ist schwer zu verstehen.', exampleEn: 'The Bavarian dialect is hard to understand.' },
    { word: 'die Mundart', arabic: 'اللهجة المحلية', english: 'vernacular', article: 'die', plural: 'die Mundarten', pos: 'noun', cefr: 'C1', example: 'Die Mundart wird im Alltag gesprochen.', exampleEn: 'The vernacular is spoken in daily life.' },
    { word: 'die Sprachvarietät', arabic: 'التنوع اللغوي', english: 'language variety', article: 'die', plural: 'die Sprachvarietäten', pos: 'noun', cefr: 'C1', example: 'Eine Sprachvarietät ist eine regionale oder soziale Variante.', exampleEn: 'A language variety is a regional or social variant.' },
    { word: 'der Akzent', arabic: 'اللكنة', english: 'accent', article: 'der', plural: 'die Akzente', pos: 'noun', cefr: 'B2', example: 'Er spricht Deutsch mit schweizerischem Akzent.', exampleEn: 'He speaks German with a Swiss accent.' },
    { word: 'die Soziolinguistik', arabic: 'علم اللغة الاجتماعي', english: 'sociolinguistics', article: 'die', pos: 'noun', cefr: 'C2', example: 'Soziolinguistik untersucht Sprache und Gesellschaft.', exampleEn: 'Sociolinguistics studies language and society.' },
  ],
  media_theory: [
    { word: 'die Medien', arabic: 'وسائل الإعلام', english: 'media', article: 'die', pos: 'noun', cefr: 'B1', example: 'Die Medien berichten über das Ereignis.', exampleEn: 'The media report on the event.' },
    { word: 'die Massenmedien', arabic: 'وسائل الإعلام الجماهيري', english: 'mass media', article: 'die', pos: 'noun', cefr: 'B2', example: 'Massenmedien erreichen viele Menschen.', exampleEn: 'Mass media reach many people.' },
    { word: 'die Digitalisierung', arabic: 'الرقمنة', english: 'digitalization', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Digitalisierung verändert die Medienlandschaft.', exampleEn: 'Digitalization is changing the media landscape.' },
    { word: 'die Öffentlichkeit', arabic: 'الجمهور العام', english: 'public sphere', article: 'die', pos: 'noun', cefr: 'C1', example: 'Die Öffentlichkeit hat ein Recht auf Information.', exampleEn: 'The public has a right to information.' },
    { word: 'die Meinungsfreiheit', arabic: 'حرية الرأي', english: 'freedom of opinion', article: 'die', pos: 'noun', cefr: 'B2', example: 'Meinungsfreiheit ist ein demokratisches Grundrecht.', exampleEn: 'Freedom of opinion is a democratic fundamental right.' },
    { word: 'die Propaganda', arabic: 'الدعاية', english: 'propaganda', article: 'die', pos: 'noun', cefr: 'C1', example: 'Propaganda manipuliert die öffentliche Meinung.', exampleEn: 'Propaganda manipulates public opinion.' },
  ],
  intercultural: [
    { word: 'interkulturell', arabic: 'بين الثقافات', english: 'intercultural', pos: 'adjective', cefr: 'C1', example: 'Interkulturelle Kompetenz ist heute wichtig.', exampleEn: 'Intercultural competence is important today.' },
    { word: 'die Kommunikation', arabic: 'التواصل', english: 'communication', article: 'die', pos: 'noun', cefr: 'B1', example: 'Kommunikation ist der Schlüssel zum Verständnis.', exampleEn: 'Communication is the key to understanding.' },
    { word: 'das Missverständnis', arabic: 'سوء الفهم', english: 'misunderstanding', article: 'das', plural: 'die Missverständnisse', pos: 'noun', cefr: 'B1', example: 'Das Missverständnis wurde aufgeklärt.', exampleEn: 'The misunderstanding was cleared up.' },
    { word: 'die Toleranz', arabic: 'التسامح', english: 'tolerance', article: 'die', pos: 'noun', cefr: 'B2', example: 'Toleranz ist die Grundlage des Zusammenlebens.', exampleEn: 'Tolerance is the foundation of coexistence.' },
    { word: 'der Kulturunterschied', arabic: 'الاختلاف الثقافي', english: 'cultural difference', article: 'der', plural: 'die Kulturunterschiede', pos: 'noun', cefr: 'B2', example: 'Kulturunterschiede können zu Konflikten führen.', exampleEn: 'Cultural differences can lead to conflicts.' },
    { word: 'die Anpassung', arabic: 'التكيف', english: 'adaptation', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Anpassung an eine neue Kultur braucht Zeit.', exampleEn: 'Adaptation to a new culture takes time.' },
    { word: 'der Kulturschock', arabic: 'الصدمة الثقافية', english: 'culture shock', article: 'der', plural: 'die Kulturschocks', pos: 'noun', cefr: 'B2', example: 'Der Kulturschock ist eine normale Phase.', exampleEn: 'Culture shock is a normal phase.' },
  ],
  cognitive_science: [
    { word: 'die Kognitionswissenschaft', arabic: 'علم الإدراك', english: 'cognitive science', article: 'die', pos: 'noun', cefr: 'C2', example: 'Kognitionswissenschaft vereint mehrere Disziplinen.', exampleEn: 'Cognitive science combines multiple disciplines.' },
    { word: 'das Gehirn', arabic: 'الدماغ', english: 'brain', article: 'das', plural: 'die Gehirne', pos: 'noun', cefr: 'B2', example: 'Das Gehirn ist komplex.', exampleEn: 'The brain is complex.' },
    { word: 'das Gedächtnis', arabic: 'الذاكرة', english: 'memory', article: 'das', plural: 'die Gedächtnisse', pos: 'noun', cefr: 'B2', example: 'Das Gedächtnis speichert Erinnerungen.', exampleEn: 'Memory stores recollections.' },
    { word: 'die neuronale Plastizität', arabic: 'المرونة العصبية', english: 'neural plasticity', article: 'die', pos: 'noun', cefr: 'C2', example: 'Neuronale Plastizität ermöglicht Lernen.', exampleEn: 'Neural plasticity enables learning.' },
    { word: 'die Aufmerksamkeit', arabic: 'الانتباه', english: 'attention', article: 'die', pos: 'noun', cefr: 'C1', example: 'Aufmerksamkeit ist begrenzt.', exampleEn: 'Attention is limited.' },
    { word: 'der Lernprozess', arabic: 'عملية التعلم', english: 'learning process', article: 'der', plural: 'die Lernprozesse', pos: 'noun', cefr: 'C1', example: 'Der Lernprozess ist individuell verschieden.', exampleEn: 'The learning process varies individually.' },
  ],
  epistemology: [
    { word: 'die Erkenntnistheorie', arabic: 'نظرية المعرفة', english: 'epistemology', article: 'die', pos: 'noun', cefr: 'C2', example: 'Erkenntnistheorie fragt: Was können wir wissen?', exampleEn: 'Epistemology asks: What can we know?' },
    { word: 'das Wissen', arabic: 'المعرفة', english: 'knowledge', article: 'das', pos: 'noun', cefr: 'B1', example: 'Wissen ist Macht.', exampleEn: 'Knowledge is power.' },
    { word: 'die Wahrheit', arabic: 'الحقيقة', english: 'truth', article: 'die', pos: 'noun', cefr: 'B2', example: 'Die Wahrheit ist objektiv.', exampleEn: 'Truth is objective.' },
    { word: 'der Rationalismus', arabic: 'العقلانية', english: 'rationalism', article: 'der', pos: 'noun', cefr: 'C2', example: 'Rationalismus betont die Vernunft.', exampleEn: 'Rationalism emphasizes reason.' },
    { word: 'der Empirismus', arabic: 'التجريبية', english: 'empiricism', article: 'der', pos: 'noun', cefr: 'C2', example: 'Empirismus betont die Erfahrung.', exampleEn: 'Empiricism emphasizes experience.' },
    { word: 'die Skepsis', arabic: 'الشك', english: 'skepticism', article: 'die', pos: 'noun', cefr: 'C2', example: 'Skepsis hinterfragt Behauptungen.', exampleEn: 'Skepticism questions claims.' },
    { word: 'die Objektivität', arabic: 'الموضوعية', english: 'objectivity', article: 'die', pos: 'noun', cefr: 'C2', example: 'Objektivität ist ein wissenschaftliches Ideal.', exampleEn: 'Objectivity is a scientific ideal.' },
  ],
}

// ==============================
// GET VOCABULARY FOR A LEVEL
// ==============================

const LEVEL_DOMAIN_MAP: Record<string, string[]> = {
  A1: ['greetings', 'family', 'food', 'home', 'daily_routine', 'numbers', 'colors', 'body', 'clothes', 'weather', 'days_months', 'classroom', 'basic_adjectives', 'digital_basics', 'directions'],
  A2: ['shopping', 'travel', 'restaurant', 'health', 'city', 'directions', 'hobbies', 'holidays', 'nature', 'animals'],
  B1: ['work', 'education', 'media', 'society', 'environment', 'technology', 'culture', 'sports', 'relationships', 'feelings'],
  B2: ['business', 'politics', 'science', 'economy', 'law', 'finance', 'art', 'literature', 'history', 'philosophy'],
  C1: ['academic', 'research', 'linguistics', 'rhetoric', 'discourse', 'diplomacy', 'journalism', 'psychology', 'sociology', 'ethics'],
  C2: ['stylistics', 'poetics', 'pragmatics', 'semantics', 'translation', 'dialectology', 'media_theory', 'intercultural', 'cognitive_science', 'epistemology'],
}

export function getLevelVocab(levelId: string): VocabItem[] {
  const domains = LEVEL_DOMAIN_MAP[levelId] || ['greetings', 'family', 'food']
  const all: VocabItem[] = []
  const seen = new Set<string>()
  for (const domain of domains) {
    const items = VOCAB_DOMAINS[domain] || []
    for (const item of items) {
      if (!seen.has(item.word)) {
        seen.add(item.word)
        all.push(item)
      }
    }
  }
  return all
}

export function getDomainVocab(domain: string): VocabItem[] {
  return VOCAB_DOMAINS[domain] || []
}

const RANDOM_SEED = 42
function seededRandom(seed: number): number {
  const x = Math.sin(seed) * 10000
  return x - Math.floor(x)
}

function pick<T>(arr: T[], seed: number): T {
  return arr[Math.floor(seededRandom(seed) * arr.length)]
}

// ==============================
// READING TEXT GENERATOR
// ==============================

function generateReading(spec: LessonSpec, level: string): ReadingText {
  const A1Texts: Record<string, { content: string; en: string; ar: string }> = {
    greetings: {
      content: `Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.`, 
      en: `Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.`,
      ar: `مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.`
    },
    family: {
      content: `Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.`, 
      en: `Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.`,
      ar: `مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.`
    },
    daily_routine: {
      content: `Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.`, 
      en: `My daily routine starts at 6 o'clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o'clock I go to work. I work in an office. At 12 o'clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That's my day.`,
      ar: `روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.`
    },
    home: {
      content: `Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.`, 
      en: `I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.`,
      ar: `أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.`
    },
    food: {
      content: `Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.`, 
      en: `Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.`,
      ar: `اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.`
    },
    travel: {
      content: `Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.`, 
      en: `Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o'clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.`,
      ar: `الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.`
    },
  }

  const A2Texts: Record<string, { content: string; en: string; ar: string }> = {
    restaurant: {
      content: `Gestern war ich mit meiner Familie in einem italienischen Restaurant. Das Restaurant hieß "La Piazza" und war in der Stadtmitte. Der Kellner war sehr freundlich und hat uns die Speisekarte gebracht. Ich habe eine Pizza bestellt. Meine Mutter hat einen Salat gegessen und mein Vater hat Fisch bestellt. Das Essen war sehr lecker. Nach dem Essen haben wir Tiramisu als Dessert gegessen. Die Rechnung war 75 Euro. Wir haben Trinkgeld gegeben, weil der Service gut war.`,
      en: `Yesterday I was with my family at an Italian restaurant. The restaurant was called "La Piazza" and was in the city center. The waiter was very friendly and brought us the menu. I ordered a pizza. My mother ate a salad and my father ordered fish. The food was very delicious. After the meal we had tiramisu for dessert. The bill was 75 euros. We gave a tip because the service was good.`,
      ar: `بالأمس كنت مع عائلتي في مطعم إيطالي. المطعم اسمه "لا بيازا" وكان في وسط المدينة. كان النادل ودوداً جداً وأحضر لنا قائمة الطعام. طلبت بيتزا. أمي أكلت سلطة وأبي طلب سمكاً. كان الطعام لذيذاً جداً. بعد الأكل تناولنا تيراميسو كحلوى. كانت الفاتورة 75 يورو. أعطينا بقشيشاً لأن الخدمة كانت جيدة.`
    },
    city: {
      content: `Meine Stadt heißt Hamburg und liegt im Norden Deutschlands. Hamburg ist bekannt für seinen Hafen, die Elbphilharmonie und die vielen Brücken. Es gibt mehr als 2500 Brücken in Hamburg. Das ist mehr als in Venedig! Der Hafen ist einer der größten in Europa. Man kann eine Hafenrundfahrt machen und die großen Containerschiffe sehen. In der Speicherstadt gibt es viele historische Lagerhäuser. Am Abend kann man in der Reeperbahn ausgehen. Hamburg ist eine sehr lebendige Stadt.`,
      en: `My city is called Hamburg and is located in northern Germany. Hamburg is known for its port, the Elbphilharmonie and the many bridges. There are more than 2500 bridges in Hamburg. That's more than in Venice! The port is one of the largest in Europe. You can take a harbor tour and see the large container ships. In the Speicherstadt there are many historic warehouses. In the evening you can go out on the Reeperbahn. Hamburg is a very lively city.`,
      ar: `مدينتي اسمها هامبورغ وتقع في شمال ألمانيا. تشتهر هامبورغ بمينائها وإلبهارموني وجسورها العديدة. هناك أكثر من 2500 جسر في هامبورغ. هذا أكثر من فينيسيا! الميناء من أكبر الموانئ في أوروبا. يمكنك القيام بجولة في الميناء ورؤية سفن الحاويات الكبيرة. في شبايكرشتات هناك مخازن تاريخية كثيرة. في المساء يمكنك الخروج في ريبربان. هامبورغ مدينة مفعمة بالحياة.`
    },
    health: {
      content: `Letzte Woche war ich krank. Ich hatte Fieber und Kopfschmerzen. Ich bin zum Arzt gegangen. Der Arzt hat mich untersucht und mir Medizin verschrieben. Er hat gesagt, ich soll viel trinken und mich ausruhen. Ich war drei Tage zu Hause und habe Tee getrunken. Nach einer Woche ging es mir wieder besser. Zum Glück habe ich eine Krankenversicherung. In Deutschland muss jeder eine Krankenversicherung haben.`,
      en: `Last week I was sick. I had a fever and headache. I went to the doctor. The doctor examined me and prescribed me medicine. He said I should drink a lot and rest. I was at home for three days and drank tea. After a week I felt better again. Luckily I have health insurance. In Germany everyone must have health insurance.`,
      ar: `الأسبوع الماضي كنت مريضاً. كان لدي حمى وصداع. ذهبت إلى الطبيب. فحصني الطبيب ووصف لي دواء. قال لي يجب أن أشرب كثيراً وأستريح. كنت في المنزل لمدة ثلاثة أيام وشربت شاياً. بعد أسبوع تحسنت حالتي. لحسن الحظ لدي تأمين صحي. في ألمانيا يجب أن يكون لدى الجميع تأمين صحي.`
    },
    work: {
      content: `Ich arbeite seit drei Jahren bei der Firma Siemens in München. Mein Job ist interessant, aber manchmal stressig. Ich arbeite von 8 bis 17 Uhr. In der Mittagspause gehe ich mit meinen Kollegen in die Kantine. Wir haben jeden Montag eine Besprechung mit dem Chef. Mein Gehalt ist okay, aber ich möchte mehr verdienen. Nächstes Jahr mache ich eine Weiterbildung. Ich hoffe, dass ich dann befördert werde.`,
      en: `I have been working at Siemens in Munich for three years. My job is interesting but sometimes stressful. I work from 8 AM to 5 PM. During lunch break I go to the cafeteria with my colleagues. We have a meeting with the boss every Monday. My salary is okay but I would like to earn more. Next year I will do further training. I hope I will be promoted then.`,
      ar: `أعمل منذ ثلاث سنوات في شركة سيمنز في ميونخ. وظيفتي ممتعة لكنها مرهقة أحياناً. أعمل من 8 صباحاً إلى 5 مساءً. في استراحة الغداء أذهب مع زملائي إلى الكافتيريا. لدينا اجتماع مع المدير كل يوم إثنين. راتبي مقبول لكني أرغب في راتب أعلى. السنة القادمة سأحضر دورة تدريبية. آمل أن أحصل على ترقية.`
    },
    environment: {
      content: `In Deutschland wird viel Wert auf Umweltschutz gelegt. Die Deutschen trennen ihren Müll in verschiedene Kategorien: Papier, Plastik, Glas und Bioabfall. Es gibt Pfand auf Plastikflaschen und Dosen. Viele Menschen fahren Fahrrad oder benutzen öffentliche Verkehrsmittel. Deutschland hat ehrgeizige Ziele für erneuerbare Energie. Bis 2030 soll 80 Prozent des Stroms aus erneuerbaren Quellen kommen. Das finde ich sehr gut für die Umwelt.`,
      en: `In Germany great importance is placed on environmental protection. Germans separate their waste into different categories: paper, plastic, glass and organic waste. There is a deposit on plastic bottles and cans. Many people ride bicycles or use public transportation. Germany has ambitious goals for renewable energy. By 2030, 80 percent of electricity should come from renewable sources. I think that's very good for the environment.`,
      ar: `في ألمانيا يولون أهمية كبيرة لحماية البيئة. الألمان يفرزون نفاياتهم إلى فئات مختلفة: ورق وبلاستيك وزجاج ونفايات عضوية. هناك ضمان على الزجاجات البلاستيكية والعلب. كثير من الناس يركبون الدراجات أو يستخدمون وسائل النقل العامة. ألمانيا لديها أهداف طموحة للطاقة المتجددة. بحلول 2030 يجب أن يأتي 80 بالمئة من الكهرباء من مصادر متجددة. أعتقد أن هذا جيد جداً للبيئة.`
    },
    education: {
      content: `Das deutsche Schulsystem ist anders als in vielen anderen Ländern. Die Kinder gehen mit 6 Jahren in die Grundschule. Nach der 4. Klasse müssen sich die Schüler für eine weiterführende Schule entscheiden: Hauptschule, Realschule oder Gymnasium. Das Abitur macht man nach der 12. oder 13. Klasse. Dann kann man an der Universität studieren. Das Studium ist in Deutschland fast kostenlos. Man bezahlt nur einen Semesterbeitrag von etwa 300 Euro.`,
      en: `The German school system is different from many other countries. Children go to primary school at age 6. After 4th grade, students must decide on a secondary school: Hauptschule, Realschule or Gymnasium. You take the Abitur after 12th or 13th grade. Then you can study at university. Studying is almost free in Germany. You only pay a semester fee of about 300 euros.`,
      ar: `النظام المدرسي الألماني مختلف عن كثير من البلدان. يذهب الأطفال إلى المدرسة الابتدائية في سن 6. بعد الصف الرابع يجب على الطلاب اختيار مدرسة ثانوية: هاوبتشوله أو ريالشوله أو جيمنازيوم. يحصل الطلاب على شهادة الأبيتور بعد الصف 12 أو 13. ثم يمكنهم الدراسة في الجامعة. الدراسة في ألمانيا مجانية تقريباً. تدفع فقط رسوماً فصلية حوالي 300 يورو.`
    },
  }
  
  const B1Texts: Record<string, { content: string; en: string; ar: string }> = {
    work: {
      content: `In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.`,
      en: `In today's working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.`,
      ar: `في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.`
    },
    society: {
      content: `Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.`,
      en: `German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.`,
      ar: `المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.`
    },
    media: {
      content: `Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.`,
      en: `The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.`,
      ar: `المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.`
    },
  }

  const domain = spec.domain
  const a1Text = A1Texts[domain] || A1Texts.greetings
  const a2Text = A2Texts[domain] || null
  const b1Text = B1Texts[domain] || null
  
  let text: { content: string; en: string; ar: string }
  
  if (level === 'A1' || level.startsWith('A'))
    text = a1Text
  else if (level === 'B1' || (level.startsWith('B') && !a2Text))
    text = b1Text || a1Text
  else if (level.startsWith('B'))
    text = a2Text || a1Text
  else
    text = b1Text || a2Text || a1Text
  
  return {
    title: `${spec.title} — Leseübung`,
    content: text.content,
    arabicTranslation: text.ar,
    englishTranslation: text.en,
    wordCount: text.content.split(/\s+/).length,
    questions: [
      { type: 'true_false', question: `The text talks about ${spec.domain}.`, options: ['True', 'False'], answer: 'True', explanation: 'The text is about this topic.' },
      { type: 'multiple_choice', question: 'What is the main topic?', options: [spec.topic, 'Sports', 'Politics', 'Music'], answer: spec.topic, explanation: `The text focuses on ${spec.topic}.` },
    ]
  }
}

// ==============================
// LISTENING GENERATOR
// ==============================

function generateListening(spec: LessonSpec, level: string): ListeningScript {
  const dialogues: Record<string, { speakers: { name: string; role: string }[]; lines: DialogueLine[] }> = {
    greetings: {
      speakers: [{ name: 'Lehrerin', role: 'teacher' }, { name: 'Student', role: 'student' }],
      lines: [
        { speaker: 'Lehrerin', german: 'Guten Morgen! Heute lernen wir Begrüßungen.', arabic: 'صباح الخير! اليوم نتعلم التحيات.', english: 'Good morning! Today we learn greetings.' },
        { speaker: 'Lehrerin', german: 'Wiederholen Sie: Guten Morgen!', arabic: 'كرروا: صباح الخير!', english: 'Repeat: Good morning!' },
        { speaker: 'Student', german: 'Guten Morgen!', arabic: 'صباح الخير!', english: 'Good morning!' },
        { speaker: 'Lehrerin', german: 'Sehr gut! Und wie sagt man "Goodbye"?', arabic: 'جيد جداً! وكيف نقول "وداعاً"؟', english: 'Very good! And how do you say goodbye?' },
        { speaker: 'Student', german: 'Auf Wiedersehen!', arabic: 'إلى اللقاء!', english: 'Goodbye!' },
        { speaker: 'Lehrerin', german: 'Perfekt! Bis morgen!', arabic: 'ممتاز! إلى الغد!', english: 'Perfect! See you tomorrow!' },
      ]
    },
    family: {
      speakers: [{ name: 'Anna', role: 'student' }, { name: 'Ben', role: 'classmate' }],
      lines: [
        { speaker: 'Anna', german: 'Hallo Ben! Hast du Geschwister?', arabic: 'مرحباً بن! هل لديك أخوة؟', english: 'Hello Ben! Do you have siblings?' },
        { speaker: 'Ben', german: 'Ja, ich habe einen Bruder und eine Schwester.', arabic: 'نعم، لدي أخ وأخت.', english: 'Yes, I have a brother and a sister.' },
        { speaker: 'Anna', german: 'Wie alt sind deine Geschwister?', arabic: 'كم عمر أخوتك؟', english: 'How old are your siblings?' },
        { speaker: 'Ben', german: 'Mein Bruder ist 15 und meine Schwester ist 20.', arabic: 'أخي عمره 15 وأختي عمرها 20.', english: 'My brother is 15 and my sister is 20.' },
        { speaker: 'Anna', german: 'Und deine Eltern? Was machen sie?', arabic: 'ووالديك؟ ماذا يعملان؟', english: 'And your parents? What do they do?' },
        { speaker: 'Ben', german: 'Mein Vater ist Lehrer und meine Mutter ist Ärztin.', arabic: 'والدي معلم ووالدتي طبيبة.', english: 'My father is a teacher and my mother is a doctor.' },
      ]
    },
    food: {
      speakers: [{ name: 'Kellner', role: 'waiter' }, { name: 'Gast', role: 'customer' }],
      lines: [
        { speaker: 'Kellner', german: 'Guten Abend! Haben Sie schon gewählt?', arabic: 'مساء الخير! هل اخترتم؟', english: 'Good evening! Have you already chosen?' },
        { speaker: 'Gast', german: 'Ja, ich möchte die Pizza Margherita und ein Glas Wasser.', arabic: 'نعم، أريدبيتزا مارغريتا وكأس ماء.', english: 'Yes, I would like the Pizza Margherita and a glass of water.' },
        { speaker: 'Kellner', german: 'Sehr gut. Und als Vorspeise?', arabic: 'جيد جداً. وماذا عن المقبلات؟', english: 'Very good. And as a starter?' },
        { speaker: 'Gast', german: 'Einen gemischten Salat, bitte.', arabic: 'سلطة مشكلة من فضلك.', english: 'A mixed salad, please.' },
        { speaker: 'Kellner', german: 'Kommt sofort. Guten Appetit!', arabic: 'فوراً. شهية طيبة!', english: 'Coming right away. Enjoy your meal!' },
      ]
    },
    daily_routine: {
      speakers: [{ name: 'Marie', role: 'student' }, { name: 'Lukas', role: 'friend' }],
      lines: [
        { speaker: 'Lukas', german: 'Hey Marie, wann stehst du normalerweise auf?', arabic: 'مرحباً ماري، متى تستيقظين عادةً؟', english: 'Hey Marie, when do you usually get up?' },
        { speaker: 'Marie', german: 'Ich stehe um 6 Uhr auf. Ich dusche und frühstücke dann.', arabic: 'أستيقظ في الساعة 6. ثم أستحم وأتناول الفطور.', english: 'I get up at 6 o\'clock. I shower and then have breakfast.' },
        { speaker: 'Lukas', german: 'Und wann gehst du zur Arbeit?', arabic: 'ومتى تذهبين إلى العمل؟', english: 'And when do you go to work?' },
        { speaker: 'Marie', german: 'Um 7 Uhr gehe ich los. Die Arbeit beginnt um 8 Uhr.', arabic: 'أغادر في الساعة 7. العمل يبدأ في الساعة 8.', english: 'I leave at 7 o\'clock. Work starts at 8 o\'clock.' },
        { speaker: 'Lukas', german: 'Und was machst du am Abend?', arabic: 'وماذا تفعلين في المساء؟', english: 'And what do you do in the evening?' },
        { speaker: 'Marie', german: 'Ich treffe Freunde oder lese ein Buch. Um 22 Uhr gehe ich ins Bett.', arabic: 'ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', english: 'I meet friends or read a book. At 10 PM I go to bed.' },
      ]
    },
    travel: {
      speakers: [{ name: 'Kunde', role: 'customer' }, { name: 'Mitarbeiter', role: 'staff' }],
      lines: [
        { speaker: 'Kunde', german: 'Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.', arabic: 'نهارك سعيد! أريد شراء تذكرة إلى ميونخ.', english: 'Good day! I would like to buy a ticket to Munich.' },
        { speaker: 'Mitarbeiter', german: 'Einfach oder hin und zurück?', arabic: 'ذهاب أم ذهاب وعودة؟', english: 'One way or round trip?' },
        { speaker: 'Kunde', german: 'Hin und zurück, bitte. Zweite Klasse.', arabic: 'ذهاب وعودة من فضلك. الدرجة الثانية.', english: 'Round trip, please. Second class.' },
        { speaker: 'Mitarbeiter', german: 'Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.', arabic: 'المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.', english: 'That comes to 98 euros. With BahnCard 25 you get 25 percent discount.' },
        { speaker: 'Kunde', german: 'Ich habe eine BahnCard. Hier ist sie.', arabic: 'لدي بطاقة السكة الحديد. ها هي.', english: 'I have a BahnCard. Here it is.' },
        { speaker: 'Mitarbeiter', german: 'Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', arabic: 'إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', english: 'Then it costs 73.50 euros. The train departs at 10 o\'clock.' },
      ]
    },
    work: {
      speakers: [{ name: 'Chef', role: 'boss' }, { name: 'Angestellter', role: 'employee' }],
      lines: [
        { speaker: 'Chef', german: 'Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?', arabic: 'صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟', english: 'Good morning, Mr. Schmidt. Have you finished the presentation?' },
        { speaker: 'Angestellter', german: 'Ja, ich habe sie gestern Abend fertig gemacht.', arabic: 'نعم، أنهيته البارحة مساءً.', english: 'Yes, I finished it last evening.' },
        { speaker: 'Chef', german: 'Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.', arabic: 'ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.', english: 'Excellent. We will discuss the details at 10 o\'clock in the meeting room.' },
        { speaker: 'Angestellter', german: 'Ich bin vorbereitet. Soll ich den Beamer mitbringen?', arabic: 'أنا مستعد. هل أحضر جهاز العرض؟', english: 'I am prepared. Should I bring the projector?' },
        { speaker: 'Chef', german: 'Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', arabic: 'نعم، فكرة جيدة. ولا تنسوا المستندات.', english: 'Yes, good idea. And don\'t forget the documents.' },
      ]
    },
    health: {
      speakers: [{ name: 'Arzt', role: 'doctor' }, { name: 'Patient', role: 'patient' }],
      lines: [
        { speaker: 'Arzt', german: 'Guten Tag, Herr Ali. Was fehlt Ihnen?', arabic: 'نهارك سعيد سيد علي. ما الذي تشكو منه؟', english: 'Good day, Mr. Ali. What seems to be the problem?' },
        { speaker: 'Patient', german: 'Ich habe seit drei Tagen Kopfschmerzen und Fieber.', arabic: 'عندي صداع وحمى منذ ثلاثة أيام.', english: 'I have had a headache and fever for three days.' },
        { speaker: 'Arzt', german: 'Ich werde Sie untersuchen. Machen Sie bitte den Mund auf.', arabic: 'سأفحصكم. افتحوا فمكم من فضلكم.', english: 'I will examine you. Please open your mouth.' },
        { speaker: 'Patient', german: 'Aaaah. Ist es etwas Ernstes?', arabic: 'آآآه. هل هو شيء خطير؟', english: 'Aaaah. Is it something serious?' },
        { speaker: 'Arzt', german: 'Nein, es ist nur eine Erkältung. Ich verschreibe Ihnen Medikamente. Trinken Sie viel Tee und ruhen Sie sich aus.', arabic: 'لا، إنها مجرد زكام. سأصف لكم أدوية. اشربوا شاياً كثيراً واستريحوا.', english: 'No, it\'s just a cold. I\'ll prescribe you medication. Drink lots of tea and rest.' },
      ]
    },
  }
  
  const d = dialogues[spec.domain] || dialogues.greetings
  return {
    title: `${spec.title} — Hörverständnis`,
    speakers: d.speakers,
    lines: d.lines,
    duration: d.lines.length * 12,
    questions: [
      { type: 'multiple_choice', question: 'How many speakers are in the dialogue?', options: ['1', '2', '3', '4'], answer: '2', explanation: 'There are 2 speakers.' },
      { type: 'true_false', question: 'The dialogue is about ' + spec.domain, options: ['True', 'False'], answer: 'True', explanation: 'The dialogue relates to this topic.' },
    ]
  }
}



// ==============================
// DOMAIN-SPECIFIC EXPRESSIONS
// ==============================

function expressionForDomain(domain: string, _cefr: string): { german: string; english: string; arabic: string; formality: string }[] {
  const lib: Record<string, { german: string; english: string; arabic: string; formality: string }[]> = {
    greetings: [
      { german: 'Guten Morgen!', english: 'Good morning!', arabic: 'صباح الخير!', formality: 'formal' },
      { german: 'Guten Tag!', english: 'Good day!', arabic: 'نهارك سعيد!', formality: 'formal' },
      { german: 'Hallo, wie geht es Ihnen?', english: 'Hello, how are you?', arabic: 'مرحباً، كيف حالكم؟', formality: 'formal' },
      { german: 'Schön, Sie kennenzulernen!', english: 'Nice to meet you!', arabic: 'سعيد بلقائكم!', formality: 'formal' },
    ],
    family: [
      { german: 'Hast du Geschwister?', english: 'Do you have siblings?', arabic: 'هل لديك أخوة؟', formality: 'informal' },
      { german: 'Meine Familie kommt aus Syrien.', english: 'My family comes from Syria.', arabic: 'عائلتي من سوريا.', formality: 'neutral' },
      { german: 'Ich habe einen Bruder und zwei Schwestern.', english: 'I have one brother and two sisters.', arabic: 'لدي أخ واحد وأختان.', formality: 'neutral' },
      { german: 'Wir wohnen zusammen in Köln.', english: 'We live together in Cologne.', arabic: 'نعيش معاً في كولونيا.', formality: 'neutral' },
    ],
    food: [
      { german: 'Ich möchte bitte bestellen.', english: 'I would like to order, please.', arabic: 'أريد أن أطلب من فضلك.', formality: 'formal' },
      { german: 'Was empfehlen Sie?', english: 'What do you recommend?', arabic: 'ماذا تنصحون؟', formality: 'formal' },
      { german: 'Die Rechnung, bitte!', english: 'The bill, please!', arabic: 'الفاتورة من فضلك!', formality: 'formal' },
      { german: 'Es hat sehr gut geschmeckt!', english: 'It was delicious!', arabic: 'كان لذيذاً جداً!', formality: 'formal' },
    ],
    health: [
      { german: 'Mir geht es nicht gut.', english: 'I don\'t feel well.', arabic: 'لست على ما يرام.', formality: 'neutral' },
      { german: 'Ich habe Kopfschmerzen.', english: 'I have a headache.', arabic: 'عندي صداع.', formality: 'neutral' },
      { german: 'Wo ist die nächste Apotheke?', english: 'Where is the nearest pharmacy?', arabic: 'أين أقرب صيدلية؟', formality: 'formal' },
      { german: 'Ich brauche einen Termin beim Arzt.', english: 'I need a doctor\'s appointment.', arabic: 'أحتاج موعداً عند الطبيب.', formality: 'formal' },
    ],
    travel: [
      { german: 'Ich möchte ein Ticket nach Berlin.', english: 'I\'d like a ticket to Berlin.', arabic: 'أريد تذكرة إلى برلين.', formality: 'formal' },
      { german: 'Wann fährt der Zug ab?', english: 'When does the train depart?', arabic: 'متى يغادر القطار؟', formality: 'formal' },
      { german: 'Wo ist der Bahnsteig?', english: 'Where is the platform?', arabic: 'أين الرصيف؟', formality: 'formal' },
      { german: 'Ist dieser Platz frei?', english: 'Is this seat free?', arabic: 'هل هذا المقعد شاغر؟', formality: 'neutral' },
    ],
    work: [
      { german: 'Ich arbeite bei Siemens.', english: 'I work at Siemens.', arabic: 'أعمل في سيمنز.', formality: 'neutral' },
      { german: 'Können wir einen Termin vereinbaren?', english: 'Can we schedule a meeting?', arabic: 'هل يمكننا تحديد موعد؟', formality: 'formal' },
      { german: 'Ich schicke Ihnen die Unterlagen per E-Mail.', english: 'I\'ll send you the documents by email.', arabic: 'سأرسل لكم المستندات عبر البريد الإلكتروني.', formality: 'formal' },
      { german: 'Vielen Dank für Ihre Unterstützung!', english: 'Thank you very much for your support!', arabic: 'شكراً جزيلاً لدعمكم!', formality: 'formal' },
    ],
    education: [
      { german: 'Ich studiere an der Universität.', english: 'I study at the university.', arabic: 'أدرس في الجامعة.', formality: 'neutral' },
      { german: 'Können Sie das bitte erklären?', english: 'Can you please explain that?', arabic: 'هل يمكنكم شرح ذلك من فضلكم؟', formality: 'formal' },
      { german: 'Ich habe eine Frage.', english: 'I have a question.', arabic: 'لدي سؤال.', formality: 'neutral' },
      { german: 'Das verstehe ich nicht.', english: 'I don\'t understand that.', arabic: 'هذا لا أفهمه.', formality: 'neutral' },
    ],
    city: [
      { german: 'Entschuldigung, wo ist der Bahnhof?', english: 'Excuse me, where is the train station?', arabic: 'عذراً، أين محطة القطار؟', formality: 'formal' },
      { german: 'Wie komme ich zum Alexanderplatz?', english: 'How do I get to Alexanderplatz?', arabic: 'كيف أصل إلى ألكسندر بلاتس؟', formality: 'formal' },
      { german: 'Ist das weit von hier?', english: 'Is that far from here?', arabic: 'هل هذا بعيد من هنا؟', formality: 'neutral' },
      { german: 'Ich habe mich verlaufen.', english: 'I am lost.', arabic: 'لقد توهت.', formality: 'neutral' },
    ],
  }
  return lib[domain] || lib.greetings
}

// ==============================
// ARABIC-SPEAKER CONFUSABLE PAIRS
// ==============================

function confusableArabic(cefr: string, domain: string): { mistake: string; correct: string; reason: string; reasonArabic: string; wrong: string; right: string } {
  const pairs: Record<string, { mistake: string; correct: string; reason: string; reasonArabic: string; wrong: string; right: string }> = {
    greetings: {
      mistake: 'Saying "Guten Morgen" in the afternoon',
      correct: 'Use "Guten Tag" from 10am-6pm, "Guten Abend" after 6pm',
      reason: 'Arabic "Sabah el-kheir" works all day. German has strict time-based greetings.',
      reasonArabic: 'العربية تستخدم "صباح الخير" طوال اليوم. الألمانية لديها تحيات تعتمد على الوقت.',
      wrong: 'Guten Morgen! (at 3pm)', right: 'Guten Tag!'
    },
    family: {
      mistake: 'Confusing "mein" and "meine"',
      correct: 'mein for masculine/neuter, meine for feminine/plural',
      reason: 'Arabic has no grammatical gender in possessive particles.',
      reasonArabic: 'العربية ليس لديها جنس نحوي في أدوات الملكية.',
      wrong: 'Meine Vater (correct: mein Vater)', right: 'Mein Vater'
    },
    food: {
      mistake: 'Using "der" for all food nouns',
      correct: 'Learn article + noun as one unit for every food word',
      reason: 'Arabic food words don\'t have inherent gender.',
      reasonArabic: 'كلمات الطعام العربية ليس لها جنس inherent.',
      wrong: 'der Milch (correct: die Milch)', right: 'die Milch'
    },
    home: {
      mistake: 'Forgetting the difference between "wohnen" and "leben"',
      correct: 'wohnen = to live somewhere (address), leben = to be alive/exist',
      reason: 'Arabic uses one verb "sakana" for both concepts.',
      reasonArabic: 'العربية تستخدم فعلاً واحداً "سكن" لكلا المفهومين.',
      wrong: 'Ich lebe in Berlin. (correct for address)', right: 'Ich wohne in Berlin.'
    },
    daily_routine: {
      mistake: 'Using "machen" for every action',
      correct: 'Use specific verbs: frühstücken (eat breakfast), duschen (shower), anziehen (get dressed)',
      reason: 'Arabic uses "aamal" (do/make) + noun. German has specific verbs for daily actions.',
      reasonArabic: 'العربية تستخدم "أعمل" + اسم. الألمانية لديها أفعال محددة للأعمال اليومية.',
      wrong: 'Ich mache Frühstück. (correct: Ich frühstücke.)', right: 'Ich frühstücke.'
    },
    travel: {
      mistake: 'Using "reisen" instead of "fahren" for specific trips',
      correct: 'reisen = general travel, fahren = specific journey by vehicle',
      reason: 'Arabic "saafara" covers both. German distinguishes between abstract and concrete travel.',
      reasonArabic: 'العربية "سافر" تغطي كليهما. الألمانية تميز بين السفر المجرد والملموس.',
      wrong: 'Ich reise nach Berlin. (acceptable but less natural)', right: 'Ich fahre nach Berlin.'
    },
    work: {
      mistake: 'Addressing colleagues with "du" immediately',
      correct: 'Use "Sie" until explicitly invited to use "du"',
      reason: 'Arabic uses "anta/anti" universally. German has strict formal/informal distinction at work.',
      reasonArabic: 'العربية تستخدم "أنت/أنتي" عالمياً. الألمانية لديها تمييز صارم بين الرسمي وغير الرسمي في العمل.',
      wrong: 'Hallo, kannst du mir helfen? (first day at work)', right: 'Guten Tag, können Sie mir helfen?'
    },
    education: {
      mistake: 'Using "studieren" and "lernen" interchangeably',
      correct: 'studieren = study at university, lernen = learn/study in general',
      reason: 'Arabic "darasa" covers both. German distinguishes level of education.',
      reasonArabic: 'العربية "درس" تغطي كليهما. الألمانية تميز مستوى التعليم.',
      wrong: 'Ich lerne an der Universität. (correct: Ich studiere...)', right: 'Ich studiere an der Universität.'
    },
    health: {
      mistake: 'Saying "Ich habe Schmerzen" with wrong article',
      correct: 'Always use plural: "Ich habe Schmerzen" (I have pains)',
      reason: 'Arabic uses singular "alam" for pain. German typically uses plural.',
      reasonArabic: 'العربية تستخدم المفرد "ألم". الألمانية تستخدم الجمع.',
      wrong: 'Ich habe Schmerz. (correct: Ich habe Schmerzen)', right: 'Ich habe Schmerzen.'
    },
  }
  return pairs[domain] || {
    mistake: cefr.startsWith('A') ? `Using Arabic word order in German sentences` : `Incorrect preposition usage after verbs`,
    correct: cefr.startsWith('A') ? `Verb must be in position 2: Subject + Verb + Object` : `Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)`,
    reason: `Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2.`,
    reasonArabic: `العربية والألمانية لهما تراكيب جمل مختلفة. العربية VSO والألمانية SVO مع الفعل في الموضع 2.`,
    wrong: cefr.startsWith('A') ? `Lerne ich Deutsch. (should be: Ich lerne Deutsch.)` : `Ich freue mich für das Wochenende. (correct: Ich freue mich auf das Wochenende.)`,
    right: cefr.startsWith('A') ? 'Ich lerne Deutsch.' : 'Ich freue mich auf das Wochenende.'
  }
}

// ==============================
// LEVEL-AWARE GRAMMAR GENERATOR
// ==============================

const GRAMMAR_TOPICS_A1: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Präsens der regelmäßigen Verben (Present Tense)', titleArabic: 'المضارع للأفعال المنتظمة',
    explanation: 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.',
    explanationArabic: 'في الألمانية، تتبع الأفعال المنتظمة نمطاً ثابتاً. ينتهي المصدر بـ -en. احذف -en وأضف النهايات الشخصية. بالنسبة لمتحدثي العربية، هذا أسهل من تصريف الأفعال العربية لأن الألمانية لديها أشكال أقل.',
    rules: [
      { rule: 'ich: stem + e', note: 'Ich lerne, ich wohne, ich arbeite', arabic: 'أنا + جذر الفعل + e' },
      { rule: 'du: stem + st', note: 'Du lernst, du wohnst, du arbeitest', arabic: 'أنت + جذر الفعل + st' },
      { rule: 'er/sie/es: stem + t', note: 'Er lernt, sie wohnt, es arbeitet', arabic: 'هو/هي + جذر الفعل + t' },
      { rule: 'wir: stem + en', note: 'Wir lernen, wir wohnen, wir arbeiten', arabic: 'نحن + جذر الفعل + en' },
      { rule: 'ihr: stem + t', note: 'Ihr lernt, ihr wohnt, ihr arbeitet', arabic: 'أنتم + جذر الفعل + t' },
      { rule: 'sie/Sie: stem + en', note: 'Sie lernen, Sie wohnen', arabic: 'هم/حضرتك + جذر الفعل + en' },
    ],
    examples: [
      { german: 'Ich lerne Deutsch.', arabic: 'أنا أتعلم الألمانية.', english: 'I am learning German.' },
      { german: 'Du wohnst in Berlin.', arabic: 'أنت تسكن في برلين.', english: 'You live in Berlin.' },
      { german: 'Er arbeitet bei Siemens.', arabic: 'هو يعمل في سيمنز.', english: 'He works at Siemens.' },
    ],
    mistakes: [
      { mistake: 'Ich lernen Deutsch', correction: 'Ich lerne Deutsch', explanation: 'After "ich" we use the stem + e, not the infinitive.', arabic: 'بعد "ich" نستخدم جذر الفعل + e، وليس المصدر.' },
      { mistake: 'Er lerne Deutsch', correction: 'Er lernt Deutsch', explanation: 'After "er/sie/es" we add -t, not -e.', arabic: 'بعد "er/sie/es" نضيف -t، وليس -e.' },
    ],
    memoryTip: 'L-E-R-N-E spells the ich form! Add -E for I, -ST for you, -T for he/she/it.',
    teacherNotes: ['Teach this by contrasting with Arabic sentence structure', 'Use colour-coding for verb endings on the board', 'Practice with realia: describe actual people/objects in the room'],
    examNotes: ['Goethe A1: You must conjugate regular verbs correctly in writing tasks', 'TELC: Verb position after question words is tested in Leseverstehen'],
  }),
  (spec) => ({
    title: 'Nominativ und Akkusativ (Nominative and Accusative)', titleArabic: 'الرفع والنصب',
    explanation: 'German has four cases. The nominative is for the subject (who does the action). The accusative is for the direct object (who receives the action). The article changes: der → den (masculine), die stays die (feminine), das stays das (neuter), die stays die (plural).',
    explanationArabic: 'الألمانية لديها أربع حالات إعراب. الرفع للفاعل (من يفعل الفعل). النصب للمفعول به (من يتلقى الفعل). أداة التعريف تتغير: der → den (مذكر)، die تبقى die (مؤنث)، das تبقى das (محايد)، die تبقى die (جمع).',
    rules: [
      { rule: 'Nominativ: der/die/das/die (subject)', note: 'Der Mann kauft. (The man buys.)', arabic: 'الرفع: der/die/das/die (الفاعل)' },
      { rule: 'Akkusativ: den/die/das/die (direct object)', note: 'Ich sehe den Mann. (I see the man.)', arabic: 'النصب: den/die/das/die (المفعول به)' },
      { rule: 'Only masculine changes: der → den', note: 'Die Frau (Nom) → die Frau (Akk). No change!', arabic: 'فقط المذكر يتغير: der → den' },
    ],
    examples: [
      { german: 'Der Mann kauft den Tisch.', arabic: 'الرجل يشتري الطاولة.', english: 'The man buys the table.' },
      { german: 'Die Frau sieht den Hund.', arabic: 'المرأة ترى الكلب.', english: 'The woman sees the dog.' },
      { german: 'Das Kind isst das Brot.', arabic: 'الطفل يأكل الخبز.', english: 'The child eats the bread.' },
    ],
    mistakes: [
      { mistake: 'Ich sehe der Mann', correction: 'Ich sehe den Mann', explanation: 'After the verb "sehen", the object is in accusative. Der → den.', arabic: 'بعد فعل "sehen" المفعول به منصوب. der → den.' },
    ],
    memoryTip: 'Only masculine changes in accusative: DER → DEN. Think: "The Man turns into Den when he\'s the object."',
    teacherNotes: ['Many Arabic speakers struggle because Arabic has case endings on nouns, not articles', 'Practice with simple SVO sentences where the object is masculine', 'Drill: "Ich habe ___ (der/die/das)" for common objects'],
    examNotes: ['Goethe A1: Accusative after "haben", "brauchen", and "es gibt" is frequently tested', 'TELC A1: Accusative in "Ich möchte ___" phrases'],
  }),
  (spec) => ({
    title: 'Personalpronomen (Personal Pronouns)', titleArabic: 'الضمائر الشخصية',
    explanation: 'German personal pronouns change based on case. Nominative: ich, du, er, sie, es, wir, ihr, sie, Sie. Accusative: mich, dich, ihn, sie, es, uns, euch, sie, Sie. Learn them in pairs.',
    explanationArabic: 'الضمائر الشخصية الألمانية تتغير حسب الحالة الإعرابية. الرفع: ich, du, er, sie, es, wir, ihr, sie, Sie. النصب: mich, dich, ihn, sie, es, uns, euch, sie, Sie. تعلمها في أزواج.',
    rules: [
      { rule: 'ich → mich (me)', note: 'Ich sehe mich. (I see myself.)', arabic: 'أنا → إياي' },
      { rule: 'du → dich (you)', note: 'Ich sehe dich. (I see you.)', arabic: 'أنت → إياك' },
      { rule: 'er → ihn (him)', note: 'Ich sehe ihn. (I see him.)', arabic: 'هو → إياه' },
    ],
    examples: [
      { german: 'Ich liebe dich.', arabic: 'أنا أحبك.', english: 'I love you.' },
      { german: 'Kannst du mich hören?', arabic: 'هل تستطيع سماعي؟', english: 'Can you hear me?' },
      { german: 'Wir sehen ihn morgen.', arabic: 'سنراه غداً.', english: 'We will see him tomorrow.' },
    ],
    mistakes: [
      { mistake: 'Ich sehe du', correction: 'Ich sehe dich', explanation: 'After the verb, the pronoun needs the accusative form.', arabic: 'بعد الفعل، الضمير يحتاج شكل النصب.' },
    ],
    memoryTip: 'DICH = you (object), MICH = me (object). Think: "I MICH you DICH" — the -ch ending signals the object form.',
    teacherNotes: ['Arabic has direct object pronouns attached to verbs; German uses separate words', 'Drill accusative pronouns with "sehen", "hören", "lieben"', 'Question word "wen?" (whom) introduces accusative pronouns naturally'],
    examNotes: ['Goethe A1: Accusative pronouns in "Kannst du...?" questions', 'TELC A1: Personal pronouns in short dialogues'],
  }),
  (spec) => ({
    title: 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', titleArabic: 'أدوات الملكية',
    explanation: 'German possessive articles agree with the noun they modify (gender of the owned item), not the owner. mein (my), dein (your, informal), sein (his/its), ihr (her/their), unser (our), euer (your plural), Ihr (your formal). They follow the same endings as "ein" in nominative and accusative.',
    explanationArabic: 'أدوات الملكية في الألمانية تتفق مع الاسم الذي تعدله (جنس الشيء المملوك)، وليس المالك. mein (لي), dein (لك), sein (له), ihr (لها/لهم)',
    rules: [
      { rule: 'mein + masculine (Nom): mein Vater', note: 'Mein Vater ist Arzt.', arabic: 'mein + مذكر (رفع): mein Vater' },
      { rule: 'mein + feminine (Nom): meine Mutter', note: 'Meine Mutter ist Lehrerin.', arabic: 'mein + مؤنث (رفع): meine Mutter' },
      { rule: 'mein + neuter (Nom): mein Kind', note: 'Mein Kind ist klein.', arabic: 'mein + محايد (رفع): mein Kind' },
      { rule: 'Possessive follows "ein" pattern: no ending in Nom masc/neut, add -e in Nom fem/plural', note: 'mein (masc/neut), meine (fem/plural)', arabic: 'الملكية تتبع نمط "ein"' },
    ],
    examples: [
      { german: 'Mein Bruder heißt Max.', arabic: 'أخي اسمه ماكس.', english: 'My brother is called Max.' },
      { german: 'Meine Mutter kocht gut.', arabic: 'أمي تطبخ جيداً.', english: 'My mother cooks well.' },
      { german: 'Dein Hund ist süß.', arabic: 'كلبك لطيف.', english: 'Your dog is cute.' },
      { german: 'Ihre Schwester studiert in Berlin.', arabic: 'أختها (أختهم) تدرس في برلين.', english: 'Her/Their sister studies in Berlin.' },
    ],
    mistakes: [
      { mistake: 'Mein Mutter (using mein for feminine)', correction: 'Meine Mutter', explanation: 'With feminine nouns, possessive adds -e: meine.', arabic: 'مع الأسماء المؤنثة، تضيف الملكية -e: meine.' },
      { mistake: 'Mein Schwester (wrong ending)', correction: 'Meine Schwester', explanation: '"Schwester" is feminine → meine.', arabic: '"Schwester" مؤنث → meine.' },
    ],
    memoryTip: 'Think of possessive mein like ein. If you know "ein Haus" and "eine Frau", you know "mein Haus" and "meine Frau". Same pattern!',
    teacherNotes: ['Contrast with Arabic: Arabic possessives are suffixes (kitābī = mein Buch). German uses separate words.', 'Drill with family members: mein Vater, meine Mutter, mein Bruder, meine Schwester', 'Practice: exchange personal items and say "Das ist mein/dein..."'],
    examNotes: ['Goethe A1: Possessive articles in Leseverstehen — identify who owns what', 'TELC A1: Possessives in speaking — "Mein Bruder wohnt in Berlin"'],
  }),
  (spec) => ({
    title: 'sein und haben (To Be and To Have)', titleArabic: 'يكون ويملك',
    explanation: '"Sein" (to be) and "haben" (to have) are the two most important verbs in German. They are irregular and used as auxiliary verbs too. sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind. haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.',
    explanationArabic: 'sein (يكون) و haben (يملك) هما أهم فعلين في الألمانية. هما غير منتظمين ويستخدمان أيضاً كأفعال مساعدة.',
    rules: [
      { rule: 'sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind', note: 'Ich bin Ahmed. Du bist Student. Er ist Arzt.', arabic: 'تصريف sein' },
      { rule: 'haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben', note: 'Ich habe einen Bruder. Sie hat keine Zeit.', arabic: 'تصريف haben' },
      { rule: 'Use sein for: profession, nationality, location, description', note: 'Ich bin Lehrer. Wir sind in Berlin. Das ist wichtig.', arabic: 'استخدم sein لـ: المهنة، الجنسية، المكان، الوصف' },
      { rule: 'Use haben for: possession, age, feelings', note: 'Ich habe Hunger. Sie hat 20 Jahre.', arabic: 'استخدم haben لـ: الملكية، العمر، المشاعر' },
    ],
    examples: [
      { german: 'Ich bin Student und lerne Deutsch.', arabic: 'أنا طالب وأتعلم الألمانية.', english: 'I am a student and I learn German.' },
      { german: 'Du hast eine schöne Wohnung.', arabic: 'لديك شقة جميلة.', english: 'You have a nice apartment.' },
      { german: 'Er ist Arzt und hat viel Arbeit.', arabic: 'هو طبيب ولديه الكثير من العمل.', english: 'He is a doctor and has a lot of work.' },
      { german: 'Wir sind in Berlin und haben Zeit.', arabic: 'نحن في برلين ولدينا وقت.', english: 'We are in Berlin and have time.' },
    ],
    mistakes: [
      { mistake: 'Ich bin 20 Jahre (using sein for age)', correction: 'Ich habe 20 Jahre / Ich bin 20 Jahre alt', explanation: 'In German, "haben" is used for age: "Wie alt bist du?" uses "sein" for age too. Confusing but important.', arabic: 'في الألمانية، يمكن استخدام haben وsein للعمر.' },
      { mistake: 'Er hat krank (using haben for condition)', correction: 'Er ist krank', explanation: 'Health conditions use "sein", not "haben" in German.', arabic: 'الحالات الصحية تستخدم "sein" في الألمانية.' },
    ],
    memoryTip: 'S-E-I-N: "I am" = bin (B), "you are" = bist (B+S), "he is" = ist (I). H-A-B-E-N: ich habe (have), du hast (has+t), er hat (hat). The third person drops the -b-!',
    teacherNotes: ['These two verbs cover 30% of A1 spoken German', 'Drill conjugations as a chant: "ich bin, du bist, er ist, wir sind, ihr seid, sie sind"', 'Use "Wer bist du?" and "Was hast du?" for natural practice'],
    examNotes: ['Goethe A1: sein/haben in every section — they are unavoidable', 'TELC A1: Correct sein/haben conjugation is essential for passing'],
  }),
  (spec) => ({
    title: 'W-Fragen (Question Words)', titleArabic: 'أدوات الاستفهام',
    explanation: 'German question words (W-Wörter) all start with W. They ask for specific information. wer (who), was (what), wo (where), woher (where from), wohin (where to), wie (how), wann (when), warum (why), wie viel (how much). The verb stays in position 2, the question word is in position 1.',
    explanationArabic: 'أدوات الاستفهام في الألمانية تبدأ كلها بحرف W. الفعل يبقى في الموضع 2، وأداة الاستفهام في الموضع 1.',
    rules: [
      { rule: 'Question word + verb + subject + rest', note: 'Wo wohnst du? Was machst du? Wie heißt du?', arabic: 'أداة الاستفهام + فعل + فاعل + بقية الجملة' },
      { rule: 'wer (who) changes case: wer (Nom), wen (Akk), wem (Dat)', note: 'Wer ist das? Wen siehst du? Wem hilfst du?', arabic: 'wer تتغير حسب الحالة الإعرابية' },
      { rule: 'wie = how, wo = where, wann = when, warum = why', note: 'Wie geht es dir? Wo ist der Bahnhof? Wann kommst du?', arabic: 'معاني أدوات الاستفهام' },
    ],
    examples: [
      { german: 'Wie heißt du?', arabic: 'ما اسمك؟', english: 'What is your name?' },
      { german: 'Wo wohnst du?', arabic: 'أين تسكن؟', english: 'Where do you live?' },
      { german: 'Woher kommst du?', arabic: 'من أين أنت؟', english: 'Where do you come from?' },
      { german: 'Was machst du beruflich?', arabic: 'ماذا تعمل؟', english: 'What do you do for a living?' },
    ],
    mistakes: [
      { mistake: 'Du wohnst wo? (putting question word at the end)', correction: 'Wo wohnst du?', explanation: 'The question word ALWAYS comes first in German W-questions.', arabic: 'أداة الاستفهام دائماً تأتي أولاً في الأسئلة الألمانية.' },
      { mistake: 'Was ist dein Name? (too literal from English)', correction: 'Wie heißt du?', explanation: 'German uses "Wie heißt du?" (How are you called?) not "Was ist dein Name?"', arabic: 'الألمانية تستخدم "Wie heißt du؟" وليس "Was ist dein Name؟"' },
    ],
    memoryTip: 'All question words start with W: Wer, Was, Wo, Woher, Wohin, Wie, Wann, Warum. Think "W = Question" in German!',
    teacherNotes: ['Practice the 8 essential W-questions with students taking turns', 'Show the difference: Ja/Nein questions (verb first) vs W-questions (W-word first)', 'Roleplay: first day at school/work — use W-questions naturally'],
    examNotes: ['Goethe A1: W-questions in Leseverstehen — understand the question word to find the answer', 'TELC A1: W-questions in speaking — ask your partner questions'],
  }),
  (spec) => ({
    title: 'Negation: nicht und kein (Negation)', titleArabic: 'النفي: nicht و kein',
    explanation: 'German has two ways to negate: "nicht" (not) negates verbs, adjectives, and adverbs. "kein" (no/none) negates nouns — it replaces "ein/eine". kein follows the same endings as ein and mein. Position of nicht: at the end for simple sentences, before the word it negates.',
    explanationArabic: 'في الألمانية طريقتان للنفي: "nicht" (لا) ينفي الأفعال والصفات. "kein" (لا شيء) ينفي الأسماء - يحل محل "ein/eine".',
    rules: [
      { rule: 'nicht negates verbs, adjectives, adverbs, and proper nouns', note: 'Ich lerne nicht. Das Haus ist nicht groß. Das ist nicht Berlin.', arabic: 'nicht ينفي الأفعال والصفات' },
      { rule: 'kein negates nouns with articles ein/eine', note: 'Ich habe kein Auto. (instead of: ein Auto). Er ist kein Arzt.', arabic: 'kein ينفي الأسماء التي تأخذ ein/eine' },
      { rule: 'kein endings: kein (masc/neut Nom), keine (fem/plural Nom/Akk), keinen (masc Akk)', note: 'kein Hund (Nom), keine Katze, keinen Tisch (Akk)', arabic: 'تصريف kein حسب الجنس والحالة' },
      { rule: 'nicht comes at the end of simple sentences', note: 'Ich arbeite heute nicht. Er kommt morgen nicht.', arabic: 'nicht يأتي في نهاية الجمل البسيطة' },
    ],
    examples: [
      { german: 'Ich habe kein Auto, aber ein Fahrrad.', arabic: 'ليس لدي سيارة، لكن لدي دراجة.', english: 'I have no car, but a bicycle.' },
      { german: 'Das ist nicht mein Buch.', arabic: 'هذا ليس كتابي.', english: 'That is not my book.' },
      { german: 'Er ist nicht müde, er ist krank.', arabic: 'هو ليس متعباً، هو مريض.', english: 'He is not tired, he is sick.' },
      { german: 'Wir haben keine Zeit.', arabic: 'ليس لدينا وقت.', english: 'We have no time.' },
    ],
    mistakes: [
      { mistake: 'Ich habe nicht Auto (using nicht for nouns)', correction: 'Ich habe kein Auto', explanation: 'With nouns that have "ein", use "kein" instead of "nicht".', arabic: 'مع الأسماء التي تأخذ "ein"، استخدم "kein" بدلاً من "nicht".' },
      { mistake: 'Kein Problem! (using kein for abstract, okay here, but:) Kein Hunger?', correction: 'Ich habe keinen Hunger.', explanation: '"Kein" with masculine nouns in accusative becomes "keinen".', arabic: '"kein" مع الأسماء المذكرة في حالة النصب يصبح "keinen".' },
    ],
    memoryTip: 'KEIN = KEIN + EIN. It\'s the negative of "ein/eine". If you can say "ein Bier", the negative is "kein Bier". If you can\'t say "ein", use "nicht": "Ich bin nicht müde."',
    teacherNotes: ['Arabic has one negation word "لا" — German has two: nicht/kein', 'Practice: "Hast du ein Auto?" → "Nein, ich habe kein Auto."', 'Drill: "Bist du müde?" → "Nein, ich bin nicht müde."'],
    examNotes: ['Goethe A1: kein/nicht distinction tested in grammar section', 'TELC A1: Negation in writing — use "kein" for nouns correctly'],
  }),
  (spec) => ({
    title: 'möchten — Höfliche Bitten (Polite Requests)', titleArabic: 'möchten — الطلبات المهذبة',
    explanation: '"Möchten" is the subjunctive form of "mögen" and means "would like". It is the most important word for polite requests in German. Conjugation: ich möchte, du möchtest, er/sie/es möchte, wir möchten, ihr möchtet, sie/Sie möchten. It is always followed by an infinitive at the end, or a noun.',
    explanationArabic: '"Möchten" هي صيغة الشرط من "mögen" وتعني "أود". هي أهم كلمة للطلبات المهذبة في الألمانية.',
    rules: [
      { rule: 'möchten + noun: Ich möchte einen Kaffee.', note: 'Used like "I would like a..."', arabic: 'möchten + اسم' },
      { rule: 'möchten + infinitive (at end): Ich möchte zahlen.', note: 'Verb goes to the end', arabic: 'möchten + فعل مصدر (في النهاية)' },
      { rule: 'ich möchte, du möchtest, er/sie/es möchte, wir möchten', note: 'Similar to modal verb conjugation', arabic: 'تصريف möchten' },
    ],
    examples: [
      { german: 'Ich möchte einen Kaffee, bitte.', arabic: 'أود فنجان قهوة من فضلك.', english: 'I would like a coffee, please.' },
      { german: 'Wir möchten zahlen, bitte.', arabic: 'نود الدفع من فضلك.', english: 'We would like to pay, please.' },
      { german: 'Möchtest du etwas essen?', arabic: 'هل ترغب في أكل شيء؟', english: 'Would you like something to eat?' },
    ],
    mistakes: [
      { mistake: 'Ich will einen Kaffee (too direct)', correction: 'Ich möchte einen Kaffee.', explanation: '"Ich will" is too direct in restaurants. Use "möchten" for polite requests.', arabic: '"Ich will" مباشر جداً في المطاعم. استخدم "möchten" للطلبات المهذبة.' },
      { mistake: 'Ich möchte ein Wasser (wrong article in accusative)', correction: 'Ich möchte ein Wasser / Ich möchte einen Kaffee.', explanation: '"Kaffee" is masculine → "einen" (Akkusativ). "Wasser" is neuter → "ein".', arabic: '"Kaffee" مذكر → "einen". "Wasser" محايد → "ein".' },
    ],
    memoryTip: 'MÖCHTEN = polite "want". Think: "I would LIKE" (polite) vs "I WANT" (direct). In Germany, always use möchten in restaurants and shops.',
    teacherNotes: ['Roleplay ordering in a café: "Ich möchte..." is the most useful phrase', 'Show difference: "Ich will" (direct) vs "Ich möchte" (polite)', 'Practice with drinks and food items in accusative'],
    examNotes: ['Goethe A1: möchten in speaking and listening — used in every roleplay', 'TELC A1: "Ich möchte..." is expected in the speaking section'],
  }),
  (spec) => ({
    title: 'gern und mögen (Likes and Preferences)', titleArabic: 'gern و mögen (الإعجاب والتفضيل)',
    explanation: 'Use "gern" (or "gerne") after a verb to express liking an activity: Ich lerne gern Deutsch. Use "mögen" to express liking things/nouns: Ich mag Schokolade. For disliking: "nicht gern" or "nicht mögen".',
    explanationArabic: 'استخدم "gern" بعد الفعل للتعبير عن الإعجاب بنشاط. استخدم "mögen" للتعبير عن الإعجاب بأشياء.',
    rules: [
      { rule: 'verb + gern: Ich lerne gern. Ich reise gern.', note: '"gern" follows the verb', arabic: 'فعل + gern: تعبر عن الإعجاب بفعل شيء' },
      { rule: 'mögen + noun: Ich mag Fußball. Sie mag Tiere.', note: 'mögen conjugation: ich mag, du magst, er/sie/es mag', arabic: 'mögen + اسم: تعبر عن الإعجاب بشيء' },
      { rule: 'nicht gern = don\'t like to', note: 'Ich arbeite nicht gern am Sonntag.', arabic: 'nicht gern = لا أحب أن' },
    ],
    examples: [
      { german: 'Ich lerne gern Deutsch.', arabic: 'أحب تعلم الألمانية.', english: 'I like learning German.' },
      { german: 'Magst du Fußball?', arabic: 'هل تحب كرة القدم؟', english: 'Do you like soccer?' },
      { german: 'Wir reisen nicht gern im Winter.', arabic: 'لا نحب السفر في الشتاء.', english: 'We don\'t like traveling in winter.' },
    ],
    mistakes: [
      { mistake: 'Ich gern Deutsch lernen (placing gern at the beginning)', correction: 'Ich lerne gern Deutsch.', explanation: '"Gern" comes AFTER the conjugated verb, not before.', arabic: '"Gern" تأتي بعد الفعل المصرف.' },
      { mistake: 'Ich mag Fußball spielen (using mögen for activities)', correction: 'Ich spiele gern Fußball.', explanation: 'For activities, use "gern" with the activity verb, not "mögen".', arabic: 'للأنشطة، استخدم "gern" مع فعل النشاط.' },
    ],
    memoryTip: 'GERN = "gladly" — put it right after the verb. I ride (Fahrrad) gladly → Ich fahre gern Fahrrad. MÖGEN = "to like" — use it for things: Ich mag Pizza.',
    teacherNotes: ['Ask "Was machst du gern?" to practice', 'Use hobbies vocabulary: Sport, Lesen, Kochen, Reisen', 'Contrast with Arabic: "uhibbu" covers both uses'],
    examNotes: ['Goethe A1: "gern" in speaking — talk about hobbies', 'TELC A1: mögen in Leseverstehen — identify preferences'],
  }),
]

const GRAMMAR_TOPICS_A2: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Perfekt mit "haben" und "sein" (Perfect Tense)', titleArabic: 'الماضي التام مع haben و sein',
    explanation: 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".',
    explanationArabic: 'الماضي التام هو أكثر زمن ماضي استخداماً في الألمانية المنطوقة. يتكون من: المضارع من "haben" أو "sein" + التصريف الثالث للفعل في نهاية الجملة. استخدم "sein" لأفعال الحركة وتغير الحالة. الباقي يستخدم "haben".',
    rules: [
      { rule: 'haben + Partizip II (most verbs)', note: 'Ich habe gelernt. Ich habe gegessen.', arabic: 'haben + التصريف الثالث (معظم الأفعال)' },
      { rule: 'sein + Partizip II (movement/change)', note: 'Ich bin gegangen. Ich bin aufgewacht.', arabic: 'sein + التصريف الثالث (الحركة/التغير)' },
      { rule: 'Partizip II: ge- + stem + -t (regular)', note: 'lernen → gelernt, machen → gemacht', arabic: 'ge- + الجذر + -t (المنتظم)' },
      { rule: 'Past participle is LAST in the sentence', note: 'Ich habe gestern Deutsch gelernt.', arabic: 'التصريف الثالث يكون آخر الكلمة في الجملة' },
    ],
    examples: [
      { german: 'Ich habe gestern Deutsch gelernt.', arabic: 'تعلمت الألمانية أمس.', english: 'I learned German yesterday.' },
      { german: 'Er ist nach Berlin gefahren.', arabic: 'ذهب إلى برلين.', english: 'He went to Berlin.' },
      { german: 'Wir haben schon gegessen.', arabic: 'لقد أكلنا بالفعل.', english: 'We have already eaten.' },
    ],
    mistakes: [
      { mistake: 'Ich habe nach Berlin gefahren', correction: 'Ich bin nach Berlin gefahren', explanation: '"Fahren" is a movement verb → use "sein".', arabic: '"fahren" فعل حركة → استخدم "sein".' },
      { mistake: 'Ich habe gelernt Deutsch', correction: 'Ich habe Deutsch gelernt', explanation: 'The past participle goes to the END of the sentence.', arabic: 'التصريف الثالث يذهب إلى نهاية الجملة.' },
    ],
    memoryTip: 'SEIN + verbs of MOTION: "I SEIN going, I SEIN coming, I SEIN moving." HABEN + everything else.',
    teacherNotes: ['Arabic has no equivalent tense — students naturally use simple past', 'Contrast with Arabic: German Perfekt is for spoken past, not written narrative', 'Use real stories: "Was hast du gestern gemacht?" to drill naturally'],
    examNotes: ['Goethe A2: Perfekt in speaking part (Part 2) is always required', 'TELC A2: Perfekt in Schreiben with "gestern", "letzte Woche"'],
  }),
  (spec) => ({
    title: 'Modalverben (Modal Verbs)', titleArabic: 'الأفعال الناقصة',
    explanation: 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.',
    explanationArabic: 'الأفعال الناقصة تعدل معنى الفعل الرئيسي. werden (سوف), können (يستطيع), müssen (يجب), dürfen (يسمح), sollen (ينبغي), wollen (يريد), mögen (يحب). الفعل الرئيسي يذهب إلى نهاية الجملة في المصدر.',
    rules: [
      { rule: 'Modal verb in position 2, main verb at the END', note: 'Ich kann morgen kommen (I can come tomorrow).', arabic: 'الفعل الناقص في الموضع 2، الفعل الرئيسي في النهاية' },
      { rule: 'können: ich kann, du kannst, er kann, wir können', note: 'Stem change: ö → a in singular (except wir/sie)', arabic: 'تغير الجذر: ö → a في المفرد' },
      { rule: 'müssen: ich muss, du musst, er muss, wir müssen', note: 'Umlaut disappears in singular (ich muss, not ich müsse)', arabic: 'الUmlaut يختفي في المفرد' },
    ],
    examples: [
      { german: 'Ich kann Deutsch sprechen.', arabic: 'أستطيع التحدث بالألمانية.', english: 'I can speak German.' },
      { german: 'Du musst heute lernen.', arabic: 'يجب أن تتعلم اليوم.', english: 'You must study today.' },
      { german: 'Wir wollen nach Deutschland reisen.', arabic: 'نريد السفر إلى ألمانيا.', english: 'We want to travel to Germany.' },
    ],
    mistakes: [
      { mistake: 'Ich kann sprechen Deutsch', correction: 'Ich kann Deutsch sprechen', explanation: 'The main verb (sprechen) goes to the END of the sentence, not after the modal.', arabic: 'الفعل الرئيسي (sprechen) يذهب إلى نهاية الجملة.' },
      { mistake: 'Ich musse lernen', correction: 'Ich muss lernen', explanation: 'In ich form, müssen loses the Umlaut: ich muss (not ich musse).', arabic: 'في صيغة ich, müssen يفقد Umlaut: ich muss.' },
    ],
    memoryTip: 'Modal verb is like a taxi driver: the driver (modal) takes you to the destination, but the destination (main verb) is at the END of the trip.',
    teacherNotes: ['Contrast with Arabic: Arabic modal verbs are also followed by subjunctive', 'Use real-life situations: permission (dürfen), obligation (müssen), ability (können)', 'Drill with short answers: "Kannst du kommen?" — "Ja, ich kann."'],
    examNotes: ['Goethe A2: Modal verbs in Leseverstehen — identify speaker intention', 'TELC A2: Modal verbs in writing: "Ich möchte..." for polite requests'],
  }),
  (spec) => ({
    title: 'Präpositionen mit Dativ und Akkusativ (Prepositions)', titleArabic: 'حروف الجر مع الداتيف والأكوزاتيف',
    explanation: 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.',
    explanationArabic: 'حروف الجر الألمانية تفرض حالات إعرابية محددة. بعضها يأخذ دائماً داتيف (aus, bei, mit, nach, seit, von, zu). بعضها يأخذ دائماً أكوزاتيف (durch, für, gegen, ohne, um). بعضها يأخذ كليهما حسب المعنى.',
    rules: [
      { rule: 'Dative prepositions: aus, bei, mit, nach, seit, von, zu', note: 'mit dem Bus, bei der Arbeit, nach der Schule', arabic: 'حروف جر داتيف' },
      { rule: 'Accusative prepositions: durch, für, gegen, ohne, um', note: 'für den Freund, ohne den Schlüssel', arabic: 'حروف جر أكوزاتيف' },
      { rule: 'Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)', note: 'Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ).', arabic: 'أين؟ (داتيف) مقابل إلى أين؟ (أكوزاتيف)' },
    ],
    examples: [
      { german: 'Ich fahre mit dem Bus.', arabic: 'أسافر بالحافلة.', english: 'I travel by bus.' },
      { german: 'Das Geschenk ist für den Freund.', arabic: 'الهدية للصديق.', english: 'The gift is for the friend.' },
      { german: 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', arabic: 'الكتاب على الطاولة. (أين؟ داتيف)', english: 'The book is on the table.' },
      { german: 'Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)', arabic: 'أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)', english: 'I put the book on the table.' },
    ],
    mistakes: [
      { mistake: 'Ich fahre mit der Bus (accusative article)', correction: 'Ich fahre mit dem Bus (dative)', explanation: '"Mit" always takes dative: der → dem.', arabic: '"Mit" يأخذ دائماً داتيف: der → dem.' },
    ],
    memoryTip: 'A-D-M-N-S-V-Z spells the dative prepositions (aus, bei, mit, nach, seit, von, zu). For Wechselpräpos: "Accusative = action (movement), Dative = description (location)".',
    teacherNotes: ['Arabic prepositions do not affect case — this is a completely new concept', 'Use classroom objects: put items in different locations and ask "Wo?" vs "Wohin?"', 'The dative article changes are consistent: der→dem, die→der, das→dem, die→den (+n)'],
    examNotes: ['Goethe A2: Wechselpräpositionen in Leseverstehen — interpret location vs direction', 'TELC A2: Prepositions in Schreiben — correctly describe locations'],
  }),
]

const GRAMMAR_TOPICS_B1: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', titleArabic: 'الجمل الثانوية مع dass, weil, obwohl',
    explanation: 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.',
    explanationArabic: 'الجمل الثانوية تدفع الفعل المصرف إلى نهاية الجملة. أداة الربط تبدأ الجملة الثانوية. الجملة الثانوية يمكن أن تأتي قبل أو بعد الجملة الرئيسية.',
    rules: [
      { rule: 'Verb goes to END in subordinate clause', note: 'Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)', arabic: 'الفعل يذهب إلى النهاية في الجملة الثانوية' },
      { rule: 'Wenn clause first → verb starts main clause', note: 'Wenn ich Zeit habe, gehe ich ins Kino.', arabic: 'إذا جاءت الجملة الثانوية أولاً، الفعل يبدأ الجملة الرئيسية' },
      { rule: 'Weil answers "why" questions', note: 'Ich lerne Deutsch, weil ich in Berlin studieren will.', arabic: 'Weil تجيب على أسئلة "لماذا"' },
    ],
    examples: [
      { german: 'Ich denke, dass er recht hat.', arabic: 'أعتقد أنه على حق.', english: 'I think that he is right.' },
      { german: 'Er lernt Deutsch, weil er in Berlin studiert.', arabic: 'هو يتعلم الألمانية لأنه يدرس في برلين.', english: 'He learns German because he studies in Berlin.' },
      { german: 'Obwohl es regnet, gehe ich spazieren.', arabic: 'على الرغم من المطر، أذهب للتنزه.', english: 'Although it is raining, I go for a walk.' },
    ],
    mistakes: [
      { mistake: 'Ich weiß, dass er kommt morgen (verb stays in position 2)', correction: 'Ich weiß, dass er morgen kommt.', explanation: 'In "dass" clauses, the verb ALWAYS goes to the end.', arabic: 'في جمل "dass"، الفعل دائماً يذهب إلى النهاية.' },
      { mistake: 'Weil ich bin müde (verb stays after "weil")', correction: 'Weil ich müde bin.', explanation: 'Weil + subject + ... + verb (at the end).', arabic: 'Weil + الفاعل + ... + الفعل (في النهاية).' },
    ],
    memoryTip: 'Think of subordinating conjunctions as "verb magnets" — they pull the verb to the END of the clause. "dass", "weil", "obwohl" → verb goes FAR AWAY (to the end).',
    teacherNotes: ['Arabic has similar subordinate structures but less strict word order', 'Practice by splitting: "Ich lerne Deutsch. Ich will in Berlin studieren." → "Ich lerne Deutsch, weil ich in Berlin studieren will."', 'Common error: students put verb in position 2 after "weil". Drill corrections.'],
    examNotes: ['Goethe B1: Nebensätze in Schreiben — use "weil" and "dass" to show complex sentences', 'TELC B1: Leseverstehen — understanding the relationship between main and subordinate clauses'],
  }),
  (spec) => ({
    title: 'Adjektivdeklination (Adjective Declension)', titleArabic: 'تصريف الصفات',
    explanation: 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.',
    explanationArabic: 'عندما تأتي الصفة قبل الاسم، يجب أن تتفق معه في الجنس والعدد والحالة الإعرابية. هناك ثلاثة أنماط للتصريف حسب نوع أداة التعريف.',
    rules: [
      { rule: 'Weak (after der/die/das): -e or -en', note: 'der gute Mann, die gute Frau, das gute Kind, die guten Leute', arabic: 'التصريف الضعيف (بعد der/die/das): -e أو -en' },
      { rule: 'Mixed (after ein/mein/kein): article ending + adjective ending', note: 'ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute', arabic: 'التصريف المختلط (بعد ein/mein/kein)' },
    ],
    examples: [
      { german: 'Der große Hund gehört der alten Frau.', arabic: 'الكلب الكبير ملك للمرأة العجوز.', english: 'The big dog belongs to the old woman.' },
      { german: 'Ein interessantes Buch liegt auf dem Tisch.', arabic: 'كتاب مثير للاهتمام على الطاولة.', english: 'An interesting book is on the table.' },
    ],
    mistakes: [
      { mistake: 'Der groß Hund (no ending on adjective)', correction: 'Der große Hund', explanation: 'Adjectives before nouns MUST have an ending in German.', arabic: 'الصفات قبل الأسماء يجب أن تنتهي بنهاية في الألمانية.' },
    ],
    memoryTip: 'The article and the adjective SHARE the ending. If the article shows gender (der, die, das), the adjective takes -e or -en. If the article hides gender (ein, eine), the adjective must show it.',
    teacherNotes: ['This is one of the hardest topics for Arabic speakers because Arabic adjectives also agree but differently', 'Use colour-coded tables: blue for masculine, red for feminine, green for neuter', 'Practice with "Welcher?" questions to force declension choices'],
    examNotes: ['Goethe B1: Adjective endings in Leseverstehen — article clues help identify case', 'TELC B1: Fill-in-the-blank exercises with adjective endings'],
  }),
  (spec) => ({
    title: 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', titleArabic: 'صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية',
    explanation: 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).',
    explanationArabic: 'Konjunktiv II تستخدم للطلبات المهذبة (أود أن...)، والمواقف غير الواقعية (لو كان لدي وقت...)، والتمنيات (أتمنى لو كنت...).',
    rules: [
      { rule: 'würde + Infinitiv (most verbs)', note: 'Ich würde gern kommen. (I would like to come.)', arabic: 'würde + المصدر (معظم الأفعال)' },
      { rule: 'hätte (haben), wäre (sein), könnte (können)', note: 'Ich hätte gern einen Kaffee. (I would like a coffee.)', arabic: 'الأشكال الخاصة' },
      { rule: 'Wenn... dann... (if... then...)', note: 'Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)', arabic: 'لو... لـ... (الجمل الشرطية غير الواقعية)' },
    ],
    examples: [
      { german: 'Ich hätte gern einen Kaffee, bitte.', arabic: 'أود فنجان قهوة من فضلك.', english: 'I would like a coffee, please.' },
      { german: 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', arabic: 'لو كان لدي وقت أكثر، لتعلمت الألمانية.', english: 'If I had more time, I would learn German.' },
      { german: 'Könnten Sie mir bitte helfen?', arabic: 'هل يمكنكم مساعدتي من فضلكم؟', english: 'Could you please help me?' },
    ],
    mistakes: [
      { mistake: 'Ich will einen Kaffee (too direct in restaurant)', correction: 'Ich hätte gern einen Kaffee.', explanation: 'In German restaurants, use Konjunktiv II to be polite, not "ich will".', arabic: 'في المطاعم الألمانية، استخدم Konjunktiv II للتهذيب.' },
    ],
    memoryTip: 'HÄTTE = I would LIKE (hätte gern). WÄRE = I would BE (wäre gern). KÖNNTE = I COULD. These three cover 80% of Konjunktiv II use in daily life.',
    teacherNotes: ['Arabic has a similar subjunctive mood after "law" (لو)', 'Focus on the 3 most used forms: hätte, wäre, könnte', 'Roleplay restaurant ordering: student practises "Ich hätte gern..."', 'Contrast with imperative: "Geben Sie mir..." (command) vs "Könnten Sie mir geben..." (polite)'],
    examNotes: ['Goethe B1: Konjunktiv II in speaking part — polite requests score higher', 'TELC B1: "Ich würde sagen..." in discussions shows B1 competence'],
  }),
]

const GRAMMAR_TOPICS_B2: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Passiv (Passive Voice)', titleArabic: 'المبني للمجهول',
    explanation: 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".',
    explanationArabic: 'المبني للمجهول في الألمانية يحول التركيز من الفاعل إلى الحدث نفسه. يتكون من "werden" (مصرف) + التصريف الثالث.',
    rules: [
      { rule: 'Vorgangspassiv: werden + Partizip II', note: 'Das Haus wird gebaut. (The house is being built.)', arabic: 'مبني للمجهول العملية: werden + التصريف الثالث' },
      { rule: 'Agent with von (person) or durch (thing)', note: 'Das Haus wird vom Architekten gebaut. (by the architect)', arabic: 'الفاعل مع von (شخص) أو durch (شيء)' },
      { rule: 'Zustandspassiv: sein + Partizip II', note: 'Das Haus ist gebaut. (The house is built — state.)', arabic: 'مبني للمجهول الحالة: sein + التصريف الثالث' },
    ],
    examples: [
      { german: 'In Deutschland wird viel Deutsch gesprochen.', arabic: 'في ألمانيا، يتم التحدث بالألمانية كثيراً.', english: 'In Germany, a lot of German is spoken.' },
      { german: 'Der Brief wurde gestern geschrieben.', arabic: 'تم كتابة الرسالة أمس.', english: 'The letter was written yesterday.' },
      { german: 'Die Tür ist geöffnet. (Zustandspassiv)', arabic: 'الباب مفتوح. (حالة)', english: 'The door is open.' },
    ],
    mistakes: [
      { mistake: 'Das Haus wird gebaut von dem Architekt (wrong case)', correction: '...von dem Architekten (Dativ)', explanation: '"Von" always takes Dative. Der Architekt → dem Architekten.', arabic: '"Von" يأخذ دائماً Dativ.' },
    ],
    memoryTip: 'PASSIV = "werden" + past participle. Think: "What HAPPENS (werden) + what HAS BEEN DONE (Partizip II)". State passive uses "sein": if it IS done, use "sein".',
    teacherNotes: ['Arabic passive is formed by changing internal vowels — a very different system', 'Start with passive without agent ("Man baut das Haus" → "Das Haus wird gebaut")', 'Gradually introduce the agent with "von"'],
    examNotes: ['Goethe B2: Passive in Leseverstehen — scientific texts use passive extensively', 'TELC B2: Passive in Schreiben — formal letters use passive for objectivity'],
  }),
  (spec) => ({
    title: 'Relativsätze (Relative Clauses)', titleArabic: 'الجمل الموصولة',
    explanation: 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.',
    explanationArabic: 'الجمل الموصولة تعطي معلومات إضافية عن الاسم. ضمير الوصل يطابق الاسم في الجنس والعدد،但他的 حالته الإعرابية تعتمد على وظيفته في الجملة الموصولة.',
    rules: [
      { rule: 'Relative pronoun = gender + number of noun, case = function in the relative clause', note: 'Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat).', arabic: 'ضمير الوصل = جنس وعدد الاسم، حالته = وظيفته في الجملة الموصولة' },
      { rule: 'Verb goes to the END of the relative clause', note: 'Das ist der Mann, den ich gestern gesehen habe.', arabic: 'الفعل يذهب إلى نهاية الجملة الموصولة' },
    ],
    examples: [
      { german: 'Der Mann, der dort steht, ist mein Lehrer.', arabic: 'الرجل الذي يقف هناك هو أستاذي.', english: 'The man who is standing there is my teacher.' },
      { german: 'Das Buch, das ich lese, ist sehr interessant.', arabic: 'الكتاب الذي أقرؤه مثير جداً.', english: 'The book that I am reading is very interesting.' },
    ],
    mistakes: [
      { mistake: 'Der Mann, den dort steht (using Akkusativ for subject)', correction: 'Der Mann, der dort steht', explanation: 'The relative pronoun "der" is the subject of "steht" → Nominativ.', arabic: 'ضمير الوصل "der" هو فاعل "steht" → Nominativ.' },
    ],
    memoryTip: 'The relative pronoun is like a mirror: it reflects the noun\'s gender (mirror left) but takes its own case (mirror right). "der" (noun masc) → can become "den" or "dem" depending on its job.',
    teacherNotes: ['Relativsätze are similar to Arabic relative clauses (الاسم الموصول)', 'Practice by combining two sentences: "Ich kenne den Mann. Der Mann wohnt in Berlin." → "Ich kenne den Mann, der in Berlin wohnt."'],
    examNotes: ['Goethe B2: Relativsätze in writing — show complex sentence structure', 'TELC B2: Leseverstehen — understanding who is who in complex descriptions'],
  }),
]

const GRAMMAR_TOPICS_C1: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Nominalstil und Funktionsverbgefüge (Nominal Style & Function Verb Structures)', titleArabic: 'الأسلوب الاسمي وتراكيب الأفعال الوظيفية',
    explanation: 'German academic and formal writing prefers nouns over verbs. Instead of "etwas prüfen" (to check something), use "eine Prüfung durchführen" (to carry out a check). These structures are called Funktionsverbgefüge. They make the text more formal and abstract.',
    explanationArabic: 'الكتابة الأكاديمية والرسمية في الألمانية تفضل الأسماء على الأفعال. بدلاً من استخدام الفعل، تستخدم اسماً مع فعل وظيفي.',
    rules: [
      { rule: 'Verb → nominalization: prüfen → die Prüfung, entscheiden → die Entscheidung', note: 'Eine Prüfung durchführen (to conduct an examination)', arabic: 'الفعل → الاسم: prüfen → die Prüfung' },
      { rule: 'Common function verbs: kommen, bringen, setzen, stellen, nehmen', note: 'zum Ausdruck bringen (to express), in Gang setzen (to start)', arabic: 'الأفعال الوظيفية الشائعة' },
    ],
    examples: [
      { german: 'Die Regierung hat eine Untersuchung durchgeführt.', arabic: 'قامت الحكومة بإجراء تحقيق.', english: 'The government conducted an investigation.' },
      { german: 'Diese Entscheidung kommt einer Revolution gleich.', arabic: 'هذا القرار يعادل ثورة.', english: 'This decision is tantamount to a revolution.' },
    ],
    mistakes: [
      { mistake: 'Die Regierung hat untersucht (too verbal, too casual)', correction: 'Die Regierung hat eine Untersuchung durchgeführt.', explanation: 'Formal German prefers nominal style. Active verbs sound too casual in academic writing.', arabic: 'الألمانية الرسمية تفضل الأسلوب الاسمي.' },
    ],
    memoryTip: 'Think Z-Nominalisierung: Verb → -ung, -ion, -keit, -heit. The verb becomes a noun, and a "helper verb" carries the action.',
    teacherNotes: ['Highlight nominal style in news articles (FAZ, SZ)', 'Practice transforming verb-based sentences into nominal style', 'Show how this is similar to Arabic المصادر (masadir)'],
    examNotes: ['Goethe C1: Nominalstil in Leseverstehen — academic texts use this extensively', 'TELC C1: Nominalisation in Schreiben — expected in formal letters'],
  }),
  (spec) => ({
    title: 'Konjunktiv I: Indirekte Rede (Subjunctive I: Indirect Speech)', titleArabic: 'صيغة الشرط الأولى: الكلام غير المباشر',
    explanation: 'Konjunktiv I is used for reporting what someone said (indirect speech) without quoting them directly. The journalist uses Konjunktiv I to show distance from the reported statement. Form: ich habe → er habe, sie geht → sie gehe, er ist → er sei. In plural and Sie, it\'s often identical to Indikativ → use Konjunktiv II as substitute.',
    explanationArabic: 'Konjunktiv I تستخدم لنقل كلام شخص آخر بشكل غير مباشر. الصحفي يستخدمها لإظهار المسافة من الكلام المنقول.',
    rules: [
      { rule: 'Konjunktiv I: stem + subjunctive endings', note: 'haben → er habe, sein → er sei, gehen → er gehe', arabic: 'جذر الفعل + نهايات الشرط' },
      { rule: 'If Konjunktiv I = Indikativ, substitute with Konjunktiv II', note: 'sie haben (KI) → sie hätten (KII) to show indirect speech', arabic: 'إذا تطابق KI مع Indikativ، استخدم KII كبديل' },
    ],
    examples: [
      { german: 'Der Minister sagte, die Lage sei unter Kontrolle.', arabic: 'قال الوزير إن الوضع تحت السيطرة.', english: 'The minister said the situation is under control.' },
      { german: 'Sie behauptete, sie habe nichts gewusst.', arabic: 'ادعت أنها لم تعرف شيئاً.', english: 'She claimed she had not known anything.' },
    ],
    mistakes: [
      { mistake: 'Er sagte, er hat nichts gewusst (Indikativ — sounds like you agree)', correction: 'Er sagte, er habe nichts gewusst (Konjunktiv I — neutral report)', explanation: 'Use Konjunktiv I to show you are just reporting, not endorsing.', arabic: 'استخدم Konjunktiv I لإظهار أنك فقط تنقل الكلام.' },
    ],
    memoryTip: 'Konjunktiv I = "He SAID that..." (neutral report). Think of a journalist: "The minister SAID (er sagte) the situation SEI (is — in his words) under control."',
    teacherNotes: ['Focus on the 3 most used KI forms: sei, habe, werde', 'Use newspaper headlines as examples of indirect speech', 'Arabic has similar distinction between direct and indirect speech but uses different particles'],
    examNotes: ['Goethe C1: Konjunktiv I in Leseverstehen — interpreting news articles', 'TELC C1: Indirect speech in Schreiben — summarising a statement objectively'],
  }),
]

const GRAMMAR_TOPICS_C2: Array<(spec: LessonSpec) => GrammarTopic> = [
  (spec) => ({
    title: 'Erweiterte Partizipialattribute (Extended Participle Attributes)', titleArabic: 'الصفات المشتقة الموسعة',
    explanation: 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.',
    explanationArabic: 'الصفات المشتقة الموسعة سمة الألمانية المتقدمة. بدلاً من الجملة الموصولة، تضع الألمانية عبارة طويلة بين الأداة والاسم.',
    rules: [
      { rule: 'Article + (expanded phrase) + noun', note: 'der [von der Regierung vorgeschlagene] Plan', arabic: 'الأداة + (العبارة الموسعة) + الاسم' },
      { rule: 'Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)', note: 'der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)', arabic: 'Partizip I (نشط) أو Partizip II (مبني للمجهول)' },
    ],
    examples: [
      { german: 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', arabic: 'تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.', english: 'The bill proposed by the federal government was discussed.' },
      { german: 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', arabic: 'الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.', english: 'The rents that have risen sharply in recent years burden many families.' },
    ],
    mistakes: [
      { mistake: 'Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)', correction: 'Der von der Regierung vorgeschlagene Plan', explanation: 'At C2, extended attributes are preferred over relative clauses for conciseness.', arabic: 'في C2، يفضل استخدام الصفات الموسعة بدلاً من الجمل الموصولة للاختصار.' },
    ],
    memoryTip: 'Extended attribute = information front-loaded. Instead of saying "The plan that was proposed by the government..." German says "The by-the-government-proposed plan..." — all information BEFORE the noun.',
    teacherNotes: ['Translate extended attributes literally to show the structure: "Der von...e" = "The by... (ending)"', 'Practice converting relative clauses into extended attributes', 'Read FAZ/SZ headlines: they are full of extended attributes'],
    examNotes: ['Goethe C2: Extended attributes in Leseverstehen — essential for understanding academic texts', 'TELC C2: Using extended attributes in Schreiben shows C2 competence'],
  }),
  (spec) => ({
    title: 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', titleArabic: 'الجزيئات النمطية وترتيب الكلمات الدقيق',
    explanation: 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.',
    explanationArabic: 'الجزيئات النمطية (doch, ja, eben, halt, wohl, eigentlich, denn, mal) تضيف دقة عاطفية للجمل. من المستحيل تقريباً ترجمتها حرفياً ولكنها ضرورية للألمانية الطبيعية.',
    rules: [
      { rule: 'doch: contradiction or emphasis', note: 'Das ist doch nicht wahr! (That\'s just not true!)', arabic: 'doch: تأكيد أو تناقض' },
      { rule: 'ja: shared knowledge reminder', note: 'Das ist ja interessant! (That IS interesting! — as we both know)', arabic: 'ja: تذكير بمعلومة مشتركة' },
      { rule: 'denn: in W-questions (casual)', note: 'Was machst du denn da? (What are you doing there? — curious, not accusatory)', arabic: 'denn: في أسئلة W (غير رسمي)' },
    ],
    examples: [
      { german: 'Das ist doch eine gute Idee, oder?', arabic: 'هذه فكرة جيدة، أليس كذلك؟ (تأكيد)', english: 'That IS a good idea, isn\'t it?' },
      { german: 'Komm mal her, bitte.', arabic: 'تعال إلى هنا من فضلك. (طلاقة)', english: 'Come here, please. (softening)' },
      { german: 'Was hast du eigentlich studiert?', arabic: 'ماذا درست بالمناسبة؟', english: 'What did you study, by the way?' },
    ],
    mistakes: [
      { mistake: 'Speaking without modal particles (too textbook-like)', correction: 'Das ist doch klar! (not just "Das ist klar")', explanation: 'Without modal particles, German sounds robotic. At C2, particles show naturalness.', arabic: 'بدون الجزيئات النمطية، الألمانية تبدو آلية. في C2، استخدامها يظهر الطلاقة.' },
    ],
    memoryTip: 'The 7 essential modal particles in order of frequency: ja, doch, denn, mal, eigentlich, wohl, eben. Use at least 2-3 in any natural conversation to sound like a native.',
    teacherNotes: ['Modal particles don\'t exist in Arabic — explain their function as emotional colouring', 'Show pairs: "Was ist das?" vs "Was ist das denn?" — the second is more curious/friendly', 'Watch German TV and note every modal particle used'],
    examNotes: ['Goethe C2: Understanding modal particles in Hörverstehen is essential for full points', 'TELC C2: Using "doch" and "ja" appropriately shows mastery of spoken German'],
  }),
]

const A1_GRAMMAR_LOOKUP: Record<string, number> = {
  present_tense: 0,
  articles_nominative_akkusativ: 1,
  personal_pronouns: 2,
  possessive_articles: 3,
  sein_haben: 4,
  question_words: 5,
  negation: 6,
  mochten: 7,
  gern_mogen: 8,
}

function generateLevelGrammar(spec: LessonSpec, cefr: string, sampleVocab: VocabItem[]): GrammarTopic | null {
  const topicIndex = spec.id.split('-').pop() || '0'
  const idx = parseInt(topicIndex, 10) || 0

  if (cefr === 'A1') {
    const grammarIdx = A1_GRAMMAR_LOOKUP[spec.grammarFocus] ?? (idx % 3)
    const template = GRAMMAR_TOPICS_A1[grammarIdx]
    if (!template) return null
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  if (cefr === 'A2') {
    const template = GRAMMAR_TOPICS_A2[idx % GRAMMAR_TOPICS_A2.length]
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  if (cefr === 'B1') {
    const template = GRAMMAR_TOPICS_B1[idx % GRAMMAR_TOPICS_B1.length]
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  if (cefr === 'B2') {
    const template = GRAMMAR_TOPICS_B2[idx % GRAMMAR_TOPICS_B2.length]
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  if (cefr === 'C1') {
    const template = GRAMMAR_TOPICS_C1[idx % GRAMMAR_TOPICS_C1.length]
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  if (cefr === 'C2') {
    const template = GRAMMAR_TOPICS_C2[idx % GRAMMAR_TOPICS_C2.length]
    return { ...template(spec), teacherNotes: template(spec).teacherNotes || [], examNotes: template(spec).examNotes || [] }
  }
  return null
}

// ==============================
// MAIN COMPILER
// ==============================

const LESSON_TYPE_MAP: Record<string, string> = {
  conversation: 'speaking',
  culture: 'reading',
  dialogue: 'speaking',
  pronunciation: 'vocabulary',
}

function mapLessonType(t: string): string {
  return LESSON_TYPE_MAP[t] || t
}

export function compileLesson(spec: LessonSpec, levelVocab: VocabItem[]): CompleteLesson {
  const cefr = spec.cefr
  const isA1 = cefr === 'A1'
  const isIntermediate = cefr === 'B1' || cefr === 'B2'
  const isAdvanced = cefr === 'C1' || cefr === 'C2'
  
  const domainVocab = getDomainVocab(spec.domain)
  const combinedVocab = [...domainVocab, ...levelVocab]
  const seen = new Set<string>()
  const vocab: VocabItem[] = []
  for (const v of combinedVocab) {
    if (!seen.has(v.word)) {
      seen.add(v.word)
      vocab.push(v)
    }
  }
  let grammar: GrammarTopic[] = []
  const levelGrammar = generateLevelGrammar(spec, cefr, vocab.slice(0, 5))
  if (levelGrammar) grammar = [levelGrammar]
  const reading = generateReading(spec, cefr)
  const listening = generateListening(spec, cefr)
  
  return {
    id: spec.id,
    moduleId: spec.moduleId,
    title: spec.title,
    description: spec.description,
    topic: spec.topic,
    type: mapLessonType(spec.type),
    duration: spec.duration,
    orderIndex: spec.orderIndex,
    componentFlags: {
      hasObjectives: true, hasVocabulary: true, hasGrammar: grammar.length > 0,
      hasPronunciation: isA1, hasAlphabet: isA1, hasNumbers: isA1,
      hasDialogue: true, hasReading: true, hasListening: true,
      hasSpeaking: true, hasWriting: true, hasTranslation: true,
      hasRealLife: true, hasCulture: true, hasCommonMistakes: true,
      hasMemoryTips: true, hasQuiz: true, hasExercises: true,
      hasUnitTest: false, hasHomework: true, hasRevision: true,
      hasAIKnowledge: true, hasExamPrep: true,
    },
    objectives: {
      canDo: spec.type === 'vocabulary'
        ? [`Understand and use ${vocab.length} key vocabulary words about ${spec.topic}`, `Apply ${spec.grammarFocus} correctly in sentences`, `Read and comprehend a text about ${spec.topic}`, `Listen and understand a natural dialogue about ${spec.topic}`, `Speak about ${spec.topic} with confidence`, `Write a short text about ${spec.topic} using new vocabulary`]
        : [`Understand and apply ${spec.grammarFocus} rules correctly`, `Use ${spec.grammarFocus} in real conversations`, `Avoid common mistakes Arabic speakers make with ${spec.grammarFocus}`, `Read and understand ${spec.grammarFocus} in context`, `Listen and identify ${spec.grammarFocus} in speech`, `Write sentences using ${spec.grammarFocus} correctly`],
      vocabulary: [`Learn ${vocab.length} key words about ${spec.topic} with correct articles and plural forms`, `Use each word in a complete sentence`, `Understand word families and collocations`],
      grammar: [`Understand when and how Germans use ${spec.grammarFocus}`, `Form correct sentences without translating from Arabic/English`, `Recognise ${spec.grammarFocus} in natural speech and text`],
      pronunciation: isA1 ? [`Pronounce German sounds correctly (ch, r, ü, ö, ä)`, `Stress words on the correct syllable`, `Read German words phonetically`] : isIntermediate ? [`Improve intonation and sentence melody`, `Link words naturally in speech`, `Sound more natural, less like a textbook`] : [],
      culture: [`Understand cultural context: how Germans actually use ${spec.topic}`, `Learn formality rules for ${spec.topic} situations`, `Avoid cultural misunderstandings when discussing ${spec.topic}`],
    },
    vocab: vocab.slice(0, 30).map(v => ({
      ...v,
      collocations: v.collocations || [`${v.word} lernen`, `${v.word} benutzen`, `mit ${v.word}`],
      pronunciationNote: v.pronunciationNote || (cefr.startsWith('A') ? `Focus on the correct vowel sound in "${v.word}"` : undefined),
      memoryHint: v.memoryHint || undefined,
    })),
    grammar,
    pronunciation: isA1 ? [
      { topic: `German sounds for "${spec.domain}"`, ipa: '/.../', howTo: `In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it's soft (like English "huge" without the "u").`, howToArabic: `في الألمانية، حروف العلة نقية - على عكس الإنجليزية. صوت "ch" بعد a, o, u حلقي (مثل الخاء). بعد e, i, ä, ö, ü يكون ناعماً.`, examples: vocab.slice(0, 4).map(v => ({ word: v.word, ipa: v.ipa || '', audio: '' })), commonMistake: `Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).`, practiceWords: vocab.slice(0, 8).map(v => v.word) },
    ] : isIntermediate ? [
      { topic: 'Intonation and sentence melody', ipa: '/.../', howTo: 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.', howToArabic: 'الجمل الألمانية لها نغمة هابطة في نهاية الجمل الخبرية. الأسئلة التي تبدأ بفعل ترتفع في النهاية.', examples: [{ word: 'warum', ipa: '/vaˈrʊm/', audio: '' }, { word: 'deshalb', ipa: '/dɛsˈhalp/', audio: '' }], commonMistake: 'Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', practiceWords: ['deshalb', 'trotzdem', 'allerdings', 'nämlich'] },
    ] : undefined,
    dialogue: listening.lines.slice(0, 5).map(l => ({
      ...l,
      vocabNote: l.german.includes('?') ? 'Question with verb in position 2' : undefined,
    })),
    reading,
    listening,
    speaking: [
      { title: `🔊 Sprechen: ${spec.title}`, scenario: spec.topic, task: cefr.startsWith('A')
        ? `Roleplay: You are in ${['a German café', 'a Berlin bookstore', 'a Leipzig market', 'a Munich Biergarten', 'a Hamburg office', 'a Frankfurt train station'][vocab.length % 6]}. Introduce yourself and talk about ${spec.topic}. Your partner (AI) will respond naturally.`
        : cefr.startsWith('B')
        ? `Discussion: You attend a German Stammtisch (weekly meetup). Discuss ${spec.topic} with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.`
        : `Presentation: Prepare a 2-minute presentation on "${spec.topic} im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.`,
        tips: cefr.startsWith('A')
        ? ['Use complete sentences — not single words', 'Pause between phrases, not between words', 'Don\'t translate from Arabic word-for-word']
        : ['Use discourse markers (also, jedoch, außerdem)', 'React naturally: "Ach so!", "Echt?", "Das stimmt!"', 'Paraphrase when you don\'t know a word'],
        vocabHints: vocab.slice(0, 8).map(v => v.word), minDuration: cefr.startsWith('A') ? 30 : cefr.startsWith('B') ? 60 : 120,
        followUp: ['Können Sie das näher erklären?', 'Was denken andere dazu?', 'Haben Sie ein Beispiel?'] },
    ],
    writing: [
      { title: `✏️ Schreiben: ${spec.title}`, type: cefr.startsWith('A') ? 'email' : cefr.startsWith('B') ? 'letter' : 'essay',
        task: cefr.startsWith('A')
        ? `Write an email to a German friend about "${spec.topic}". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least ${vocab.length > 5 ? 8 : 5} vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").`
        : cefr.startsWith('B')
        ? `Write a formal letter (200-250 words) to your German teacher explaining what you learned about "${spec.topic}". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use ${spec.grammarFocus} correctly.`
        : `Write a discursive essay (300-350 words) analyzing "${spec.topic} in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.`,
        formal: !cefr.startsWith('A'),
        tips: cefr.startsWith('A')
        ? ['Start with "Hallo" or "Liebe/r"', 'Keep sentences short (Subject-Verb-Object)', 'End with a friendly farewell']
        : ['Use paragraph breaks for structure', 'Connect ideas with "außerdem", "deshalb", "jedoch"', 'Check your verb position in Nebensätze'],
        vocabHints: vocab.slice(0, 8).map(v => v.word),
        wordLimit: cefr.startsWith('A') ? { min: 50, max: 100 } : cefr.startsWith('B') ? { min: 150, max: 250 } : { min: 250, max: 350 },
        correctionExample: !cefr.startsWith('A') ? { wrong: `Ich habe gelernt über ${spec.topic}.`, correct: `Ich habe über ${spec.topic} gelernt.`, explanation: 'In German, "über etwas lernen" stays together. The prepositional phrase comes before the past participle.' } : undefined },
    ],
    translation: { from: 'ar', to: 'de', sentences: vocab.slice(0, 3).map((v, i) => ({
      original: `I use the word "${v.english}" in a sentence about ${spec.topic}.`,
      correct: v.example,
      hints: `Use ${v.article ? `${v.article} ` : ''} "${v.word}" with the correct ${spec.grammarFocus} form.`,
    }))},
    realLife: [{
      situation: `🇩🇪 Real life in Germany: ${spec.topic}`,
      context: spec.domain === 'greetings' ? 'You arrive at a German company for your first day of work. How do you greet everyone correctly?' :
        spec.domain === 'restaurant' ? 'You are at a German restaurant in Berlin. The waiter approaches your table.' :
        spec.domain === 'travel' ? 'You are at Berlin Hauptbahnhof trying to buy a ticket to Munich. The ticket machine is confusing.' :
        spec.domain === 'health' ? 'You wake up with a fever in your WG (shared flat) in Köln. You need to see a doctor but don\'t know how.' :
        spec.domain === 'city' ? 'You just moved to Hamburg and need to find your way from the Hauptbahnhof to your new apartment.' :
        spec.domain === 'work' || spec.domain === 'business' ? 'You have a job interview at a German company. Your interviewer is Herr Dr. Müller.' :
        spec.domain === 'education' ? 'You are registering for a German language course at the VHS (Volkshochschule).' :
        `You find yourself in a situation where you need to discuss ${spec.topic} in German.`,
      phrases: [
        { german: `Entschuldigung, können Sie mir bitte helfen?`, arabic: `عذراً، هل يمكنكم مساعدتي من فضلكم؟`, english: `Excuse me, can you help me please?` },
        { german: `Ich habe eine Frage zu ${spec.topic}.`, arabic: `لدي سؤال حول ${spec.topic}.`, english: `I have a question about ${spec.topic}.` },
        { german: `Könnten Sie das bitte wiederholen?`, arabic: `هل يمكنكم تكرار ذلك من فضلكم؟`, english: `Could you please repeat that?` },
        { german: `Vielen Dank für Ihre Hilfe!`, arabic: `شكراً جزيلاً لمساعدتكم!`, english: `Thank you very much for your help!` },
      ],
      culturalNote: `In Germany, always greet before asking. Use "Entschuldigung" to get someone's attention. Germans appreciate directness — don't over-apologise. A friendly "Hallo" works in most informal situations. In formal settings (office, doctor, Bürgeramt), use "Guten Tag" and "Sie".`,
      steps: ['Get attention politely: "Entschuldigung"', 'State your need clearly', 'Listen carefully to the response', 'Thank them: "Vielen Dank!"', 'Say goodbye: "Auf Wiedersehen" or "Tschüss"'],
    }],
    culture: [
      { topic: `🇩🇪 Deutsche Kultur: ${spec.topic}`,
        explanation: cefr.startsWith('A') ? `In Germany, ${spec.topic} is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing ${spec.topic}, expect honest feedback and straightforward questions. This is not rudeness — it's cultural. Arabic speakers often find this too direct at first, but you'll appreciate it once you get used to it.` :
          cefr.startsWith('B') ? `${spec.topic} in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with ${spec.topic} in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.` :
          `The German approach to ${spec.topic} reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about ${spec.topic} in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.`,
        explanationArabic: cefr.startsWith('A') ? `في ألمانيا، يتم التعامل مع ${spec.topic} بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.` : `لدى ${spec.topic} في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.`,
        tips: ['Always use "Sie" (formal) with strangers and colleagues', 'Germans appreciate punctuality — arrive 5 minutes early', 'Direct feedback is a sign of respect, not criticism', 'Prepare factual arguments, not emotional appeals'] },
    ],
    commonMistakes: [
      { mistake: confusableArabic(cefr, spec.domain).mistake, correct: confusableArabic(cefr, spec.domain).correct, reason: confusableArabic(cefr, spec.domain).reason, reasonArabic: confusableArabic(cefr, spec.domain).reasonArabic, category: 'grammar', examples: [{ wrong: confusableArabic(cefr, spec.domain).wrong, right: confusableArabic(cefr, spec.domain).right }] },
      { mistake: cefr.startsWith('A') ? 'Using the wrong article (der/die/das) for nouns' : cefr.startsWith('B') ? 'Putting the verb at the end in main clauses' : 'Incorrect use of Konjunktiv II in polite requests', correct: cefr.startsWith('A') ? 'Learn each noun with its article as one piece' : cefr.startsWith('B') ? 'Verb stays in position 2 in main clauses' : 'Ich hätte gern... (I would like...)', reason: cefr.startsWith('A') ? 'Arabic has no articles for nouns without gender connection' : cefr.startsWith('B') ? 'Subordinate clause word order interferes' : 'Konjunktiv II is often replaced with würde + infinitive in speech', reasonArabic: cefr.startsWith('A') ? 'العربية ليس فيها أدوات تعريف مرتبطة بجنس الاسم' : '', category: 'grammar', examples: [{ wrong: cefr.startsWith('A') ? 'der Auto (correct: das Auto)' : cefr.startsWith('B') ? 'Ich denke, das ist gut. (correct but context issue)' : 'Ich will gehen. (too direct)', right: cefr.startsWith('A') ? 'das Auto' : cefr.startsWith('B') ? 'Ich denke, dass das gut ist.' : 'Ich würde gern gehen.' }] },
    ],
    memoryTips: [
      { tip: cefr.startsWith('A')
        ? `🎯 Visualise: Imagine a room full of ${vocab.slice(0,3).map(v => v.word).join(', ')}. Picture yourself interacting with each one.`
        : cefr.startsWith('B')
        ? `🧠 Word family: When you learn "${vocab[0]?.word || 'der Tisch'}", also learn its verb, adjective, and noun forms.`
        : '🔗 Create a mind map: Write the main topic in the centre, add related vocabulary, grammar structures, and example sentences around it.',
        type: 'mnemonic', explanation: cefr.startsWith('A') ? `Link each new German word to a vivid image in your mind. The more absurd the image, the better you'll remember it.` : cefr.startsWith('B') ? `German has rich word families. Learning one root word gives you 5-10 related words for free.` : `C1/C2 learners benefit from semantic mapping — connect new vocabulary to existing knowledge networks in your brain.`, arabicExplanation: cefr.startsWith('A') ? `اربط كل كلمة ألمانية جديدة بصورة حية في ذهنك. كلما كانت الصورة أغرب، كلما تذكرتها أفضل.` : cefr.startsWith('B') ? `الألمانية لديها عائلات كلمات غنية. تعلم كلمة جذر واحدة يعطيك 5-10 كلمات ذات صلة مجاناً.` : undefined },
    ],
    quiz: [
      { type: 'multiple_choice', question: `What does "${vocab[0]?.word || 'das'}" mean in English?`, options: [vocab[0]?.english || 'the', 'to run', 'beautiful', 'yesterday'], answer: vocab[0]?.english || 'the', explanation: `"${vocab[0]?.word || 'das'}" means "${vocab[0]?.english || 'the'}" in English.`, points: 1 },
      { type: 'multiple_choice', question: `What is the correct article for "${vocab[1]?.word || 'Tisch'}"?`, options: ['der', 'die', 'das', 'den'], answer: vocab[1]?.article || 'der', explanation: `"${vocab[1]?.word || 'Tisch'}" takes "${vocab[1]?.article || 'der'}" as its article.`, points: 1 },
      { type: 'true_false', question: `The word "${vocab[2]?.word || 'Haus'}" is related to ${spec.topic}.`, options: ['True', 'False'], answer: 'True', explanation: `Yes, "${vocab[2]?.word || 'Haus'}" is vocabulary from this lesson.`, points: 1 },
      { type: 'multiple_choice', question: `Which sentence correctly uses ${spec.grammarFocus}?`, options: (grammar[0]?.examples?.map(e => e.german) || ['Option A', 'Option B', 'Option C']) as string[], answer: grammar[0]?.examples?.[0]?.german || 'Option A', explanation: `Correct usage of ${spec.grammarFocus} follows the Subject-Verb-Object pattern.`, points: 2 },
      { type: 'true_false', question: `German word order puts the verb in second position in main clauses.`, options: ['True', 'False'], answer: 'True', explanation: 'This is the fundamental rule of German sentence structure.', points: 1 },
      { type: 'fill_blank', question: `Complete: Ich ___ (${vocab[3]?.english || 'learn'}) Deutsch.`, options: [vocab[3]?.word || 'lerne', 'lernt', 'lernst', 'lernen'], answer: vocab[3]?.word?.toLowerCase().endsWith('en') ? vocab[3].word.toLowerCase().replace('en', 'e') : 'lerne', explanation: `Ich + verb stem + e = I + verb.`, points: 2 },
      { type: 'multiple_choice', question: `What is the German word for "${vocab[4]?.english || 'table'}"?`, options: (vocab.slice(4, 8).map(v => v.word).concat(vocab[0]?.word || 'der Tisch').slice(0, 4)) as string[], answer: vocab[4]?.word || 'der Tisch', explanation: `"${vocab[4]?.english || 'table'}" in German is "${vocab[4]?.word || 'der Tisch'}".`, points: 1 },
      { type: 'true_false', question: `In German, ALL nouns are always capitalised.`, options: ['True', 'False'], answer: 'True', explanation: 'This is a unique feature of German — every noun starts with a capital letter.', points: 1 },
      { type: 'multiple_choice', question: `How do you say "please" in a restaurant in Germany?`, options: ['Bitte', 'Danke', 'Tschüss', 'Hallo'], answer: 'Bitte', explanation: '"Bitte" is used for "please" when ordering, and also for "you\'re welcome".', points: 1 },
      { type: 'fill_blank', question: `Wo ___ (to live) du?`, options: ['wohnst', 'wohne', 'wohnt', 'wohnen'], answer: 'wohnst', explanation: 'du + verb stem + st = wohnen → wohnst (you live).', points: 2 },
    ],
    exercises: [
      ...vocab.slice(0, 5).map((v, i) => ({
        type: 'multiple_choice' as const,
        question: `Which German word matches "${v.english}"?`,
        options: [v.word, ...vocab.slice(0, 5).filter((_, j) => j !== i).map(w => w.word)].sort(() => Math.random() - 0.5).slice(0, 4),
        answer: v.word,
        explanation: `"${v.english}" = "${v.word}" in German. ${v.article ? `Article: ${v.article}` : ''} ${v.plural ? `Plural: ${v.plural}` : ''}`,
        points: 1,
      })),
      { type: 'fill_blank' as const, question: `Complete the sentence: Ich ___ gern ${spec.topic.toLowerCase().includes('en') ? '' : 'über '}${spec.topic}. (sprechen)`, options: ['spreche', 'sprichst', 'spricht', 'sprechen'], answer: 'spreche', explanation: 'ich spreche gern = I like to speak. Stem: sprech- + e.', points: 2 },
      { type: 'translation' as const, question: `Translate to German: "I am learning about ${spec.topic}."`, options: ['Ich lerne über ' + spec.topic + '.', 'Ich lerne ' + spec.topic + '.', 'Lerne ich ' + spec.topic + '.'], answer: 'Ich lerne über ' + spec.topic + '.', explanation: '"Ich lerne über..." = "I am learning about..."', points: 2 },
      { type: 'matching' as const, question: `Match: Which word pairs are correct?`, options: [`${vocab[0]?.word || 'Haus'} - ${vocab[0]?.english || 'house'}, ${vocab[1]?.word || 'Auto'} - ${vocab[1]?.english || 'car'}`], answer: 'Matched correctly', explanation: 'Each German word has a unique English equivalent.', points: 2 },
    ] as QuizQuestion[],
    homework: {
      title: `📚 Hausaufgabe: ${spec.title}`,
      type: 'mixed',
      tasks: [
        { description: `Create 10 flashcards from this lesson's vocabulary — write German on one side, Arabic on the other. Test yourself 3 times.`, estimatedMinutes: 10 },
        { description: `Write 6 sentences about ${spec.topic}: 2 statements, 2 questions, 2 negations — all using ${spec.grammarFocus}.`, estimatedMinutes: 15 },
        { description: `Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve.`, estimatedMinutes: 10 },
        { description: `Find 3 real German websites, videos, or articles about ${spec.topic}. Note 5 new words you discovered.`, estimatedMinutes: 15 },
      ],
      totalMinutes: 50,
    },
    review: {
      summary: cefr.startsWith('A')
        ? `🎯 Great work! In this lesson you learned ${vocab.length} new words about ${spec.topic}. You practiced ${spec.grammarFocus} — an important grammar topic for ${cefr} level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!`
        : `🎯 Excellent progress! This lesson covered ${spec.topic} (${vocab.length} vocabulary items) and ${spec.grammarFocus}. You developed reading, listening, speaking, and writing skills in the context of ${spec.domain}. Focus on your common mistakes area for maximum improvement.`,
      summaryArabic: `🎯 عمل رائع! في هذا الدرس تعلمت ${vocab.length} كلمة جديدة عن ${spec.topic}. تدربت على ${spec.grammarFocus}. استمر!`,
      keyPoints: [`${vocab.length} vocabulary items about ${spec.topic}`, `${spec.grammarFocus} — grammar explanation and practice`, `Reading comprehension: text about ${spec.topic}`, `Listening comprehension: dialogue about ${spec.topic}`, `Speaking practice: roleplay/discussion about ${spec.topic}`, `Writing task: text about ${spec.topic}`],
      grammarSummary: `${spec.grammarFocus} — the main grammar focus. ${cefr.startsWith('A') ? 'Focus on understanding when to use this structure and forming basic sentences.' : cefr.startsWith('B') ? 'Focus on using this structure naturally in conversations and writing.' : 'Focus on nuanced usage, exceptions, and stylistic variation.'}`,
      vocabFocus: vocab.slice(0, 5).map(v => `${v.word} (${v.english})`),
      commonMistakes: [`Don't translate from Arabic word-for-word — German has different sentence structure`, `Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"`, `${cefr.startsWith('A') ? 'Verb always in position 2 in main clauses' : cefr.startsWith('B') ? 'Watch out for verb position in Nebensätze' : 'Pay attention to Konjunktiv I/II distinction'}`],
      tips: [`Practice 15-20 minutes daily — consistency beats intensity`, `Speak out loud: German pronunciation needs muscle memory`, `Use the new vocabulary within 24 hours or you'll forget it`, `Watch German YouTube videos about ${spec.topic} for authentic input`],
      flashcardCount: Math.min(vocab.length, 20),
      checklist: [
        { item: `I can name ${Math.min(vocab.length, 5)} vocabulary items about ${spec.topic} from memory`, checked: false },
        { item: `I can explain ${spec.grammarFocus} in my own words`, checked: false },
        { item: 'I understood the main ideas of the reading text', checked: false },
        { item: 'I can introduce the topic in a short conversation', checked: false },
        { item: 'I completed the writing task with minimal errors', checked: false },
      ],
    },
    aiKnowledge: {
      definitions: [
        { term: spec.topic, definition: `${spec.topic} — a key theme in ${cefr} German. Involves vocabulary about ${spec.domain} and grammar structure ${spec.grammarFocus}.` },
        { term: spec.grammarFocus, definition: `A ${cefr}-level grammar structure. ${grammar[0]?.explanation?.slice(0, 100) || 'Practice with examples and exercises.'}` },
      ],
      faqs: [
        { question: `How do Germans actually talk about ${spec.topic} in daily life?`, answer: `Germans are direct. Use "${['Können Sie', 'Ich möchte', 'Hätten Sie', 'Entschuldigung'][vocab.length % 4]}..." to start. Avoid small talk — get to the point. But always greet first!` },
        { question: `What's the hardest part of ${spec.grammarFocus} for Arabic speakers?`, answer: `Arabic has no verb position rules — the verb can move freely. In German, verb position is strict. Practice by writing sentences and checking: "Is my verb in position 2?"` },
        { question: `How can I practice ${spec.topic} outside this lesson?`, answer: `Listen to German podcasts about ${spec.topic}. Read German news articles. Change your phone's language to German. Label objects in your home with German words from this lesson.` },
      ],
      teacherTips: [
        `Start every session by reviewing yesterday's vocabulary`,
        `Practice ${spec.grammarFocus} in context, not in isolation — write a real message to a friend`,
        `Use the Pomodoro technique: 25 min study, 5 min break`,
        `Record yourself speaking and compare with native speakers on YouTube`,
      ],
      advancedExplanations: [
        cefr.startsWith('A') ? `At A1, focus on understanding the basic structure. Don't worry about exceptions yet.` :
        cefr.startsWith('B') ? `At B1/B2, pay attention to register differences — when to use "du" vs "Sie", formal vs informal vocabulary choices.` :
        `At C1/C2, focus on stylistic variation: use synonyms, vary sentence structure, employ discourse markers effectively. Read quality German newspapers (FAZ, SZ, Die Zeit).`,
      ],
      synonyms: vocab.slice(0, 3).filter(v => v.synonyms?.length).map(v => ({ german: v.word, meaning: v.english })),
      antonyms: vocab.slice(0, 3).filter(v => v.antonyms?.length).map(v => ({ german: v.word, opposite: v.antonyms?.[0] || '' })),
      examAdvice: [
        `Goethe ${cefr}: ${spec.grammarFocus} will appear in the Leseverstehen and Schreiben sections`,
        `TELC ${cefr}: Expect ${spec.topic} vocabulary in the Wortschatz section`,
        `ÖSD ${cefr}: Practice writing about ${spec.topic} with time pressure — 30 minutes for 150 words`,
        `Common mistake: Not reading the question carefully. Underline key words in the task.`,
        `Time management: Spend max 2 minutes per question. If stuck, move on and return later.`,
      ],
      conversationExamples: [
        { situation: `Casual conversation about ${spec.topic}`, dialogue: `A: Hast du dich schon mit ${spec.topic} beschäftigt?\nB: Ja, total interessant! Besonders die Vokabeln.\nA: Welche Vokabeln fandest du am wichtigsten?\nB: Auf jeden Fall ${vocab[0]?.word || 'die'} und ${vocab[1]?.word || 'der'}.\nA: Stimmt! Und ${spec.grammarFocus}? Alles klar?\nB: Noch ein bisschen Übung, aber ich verstehe es langsam.` },
        { situation: `Formal discussion about ${spec.topic} (workplace/academic)`, dialogue: `A: Guten Tag, ich würde gern über ${spec.topic} sprechen.\nB: Gern, Herr/Frau ____. Was möchten Sie wissen?\nA: Mich interessiert besonders, wie ${spec.topic} in Deutschland gehandhabt wird.\nB: Eine gute Frage. Lassen Sie mich das erklären...` },
      ],
    },
    expressions: expressionForDomain(spec.domain, cefr),
    flashcards: [
      ...vocab.slice(0, Math.min(vocab.length, 15)).map(v => ({
        front: `${v.article ? v.article + ' ' : ''}${v.word}${v.plural ? ` (${v.plural})` : ''}`,
        back: `${v.english} — ${v.arabic}`,
        hint: v.pos,
        category: 'vocabulary',
      })),
      ...grammar.flatMap(g => g.examples.slice(0, 3).map((ex, i) => ({
        front: ex.german,
        back: ex.english,
        hint: g.title,
        category: 'grammar',
      }))),
    ],
  }
}
