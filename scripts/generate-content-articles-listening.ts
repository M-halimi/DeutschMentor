import * as fs from 'fs'
import * as path from 'path'

const SEED_DIR = path.join(__dirname, 'seed-data')

interface ArtQ { question: string; options: string[]; correct_answer: string; order_index: number }
interface ArtV { german_word: string; english_translation: string; context_sentence: string }
interface Article {
  title: string; content: string; summary: string; level: string; category: string
  word_count: number; is_published: boolean
  questions: ArtQ[]; vocabulary: ArtV[]
}
interface AudioEx { question: string; options: string[]; correct_answer: string; order_index: number }
interface AudioLesson {
  title: string; description: string; audio_url: string; transcript: string
  level: string; duration_seconds: number; category: string; is_published: boolean
  exercises: AudioEx[]
}
interface Dictation {
  title: string; audio_url: string; full_text: string; level: string
  duration_seconds: number; is_published: boolean
}

const af = (n: number) => `https://www.soundhelix.com/examples/mp3/SoundHelix-Song-${n}.mp3`

// ============================================
// ARTICLES DATA (embedded as raw objects)
// ============================================

const articles: Article[] = [
  {
    title: 'Mein Tag', level: 'A1', category: 'daily', word_count: 56, is_published: true,
    summary: 'Lena beschreibt ihren typischen Tagesablauf von morgens bis abends.',
    content: 'Ich heiße Lena und bin zwölf Jahre alt. Mein Tag beginnt um sieben Uhr. Ich stehe auf, putze mir die Zähne und ziehe mich an. Um acht Uhr frühstücke ich. Ich esse ein Brot mit Marmelade und trinke Milch. Dann gehe ich zur Schule. Der Unterricht beginnt um halb neun. Nach der Schule esse ich zu Mittag. Am Nachmittag mache ich Hausaufgaben. Danach spiele ich mit meinem Hund. Um sieben Uhr gibt es Abendessen. Um neun Uhr gehe ich ins Bett.',
    questions: [
      { question: 'Um wie viel Uhr beginnt Lenas Tag?', options: ['Um sechs Uhr', 'Um sieben Uhr', 'Um acht Uhr', 'Um halb neun'], correct_answer: 'Um sieben Uhr', order_index: 1 },
      { question: 'Was isst Lena zum Frühstück?', options: ['Ein Brot mit Marmelade', 'Ein Müsli', 'Ein Ei', 'Ein Brötchen mit Käse'], correct_answer: 'Ein Brot mit Marmelade', order_index: 2 },
      { question: 'Was macht Lena nach der Schule?', options: ['Sie spielt Fußball', 'Sie macht Hausaufgaben', 'Sie geht einkaufen', 'Sie besucht Freunde'], correct_answer: 'Sie macht Hausaufgaben', order_index: 3 },
      { question: 'Wann geht Lena ins Bett?', options: ['Um acht Uhr', 'Um halb neun', 'Um neun Uhr', 'Um zehn Uhr'], correct_answer: 'Um neun Uhr', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Tag', english_translation: 'the day', context_sentence: 'Mein Tag beginnt um sieben Uhr.' },
      { german_word: 'aufstehen', english_translation: 'to get up', context_sentence: 'Ich stehe um sieben Uhr auf.' },
      { german_word: 'frühstücken', english_translation: 'to have breakfast', context_sentence: 'Um acht Uhr frühstücke ich.' },
      { german_word: 'die Schule', english_translation: 'the school', context_sentence: 'Ich gehe zur Schule.' },
      { german_word: 'der Unterricht', english_translation: 'the lesson', context_sentence: 'Der Unterricht beginnt um halb neun.' },
      { german_word: 'die Hausaufgaben', english_translation: 'the homework', context_sentence: 'Ich mache Hausaufgaben.' },
      { german_word: 'das Abendessen', english_translation: 'the dinner', context_sentence: 'Um sieben Uhr gibt es Abendessen.' },
      { german_word: 'das Bett', english_translation: 'the bed', context_sentence: 'Um neun Uhr gehe ich ins Bett.' },
    ],
  },
  {
    title: 'Meine Familie', level: 'A1', category: 'daily', word_count: 62, is_published: true,
    summary: 'Tom stellt seine Familie vor: Eltern, Geschwister und Großeltern.',
    content: 'Hallo, ich bin Tom und ich bin zehn Jahre alt. Ich möchte euch meine Familie vorstellen. Wir sind fünf Personen. Mein Vater heißt Peter und er ist 42 Jahre alt. Er arbeitet als Ingenieur. Meine Mutter heißt Maria und sie ist 40 Jahre alt. Sie arbeitet als Lehrerin. Ich habe einen großen Bruder, er heißt Max und ist 15 Jahre alt. Meine kleine Schwester heißt Emma und ist vier Jahre alt. Wir haben auch einen Hund, er heißt Bello. Meine Großeltern wohnen in der Nähe. Wir besuchen sie oft am Sonntag.',
    questions: [
      { question: 'Wie viele Personen sind in Toms Familie?', options: ['Drei', 'Vier', 'Fünf', 'Sechs'], correct_answer: 'Fünf', order_index: 1 },
      { question: 'Was arbeitet Toms Mutter?', options: ['Ärztin', 'Lehrerin', 'Ingenieurin', 'Verkäuferin'], correct_answer: 'Lehrerin', order_index: 2 },
      { question: 'Wie alt ist Toms Bruder Max?', options: ['Zehn Jahre alt', 'Vier Jahre alt', 'Fünfzehn Jahre alt', 'Zwölf Jahre alt'], correct_answer: 'Fünfzehn Jahre alt', order_index: 3 },
      { question: 'Wann besuchen sie die Großeltern?', options: ['Am Samstag', 'Am Montag', 'Am Sonntag', 'Am Freitag'], correct_answer: 'Am Sonntag', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Familie', english_translation: 'the family', context_sentence: 'Ich möchte euch meine Familie vorstellen.' },
      { german_word: 'der Vater', english_translation: 'the father', context_sentence: 'Mein Vater heißt Peter.' },
      { german_word: 'die Mutter', english_translation: 'the mother', context_sentence: 'Meine Mutter heißt Maria.' },
      { german_word: 'der Bruder', english_translation: 'the brother', context_sentence: 'Ich habe einen großen Bruder.' },
      { german_word: 'die Schwester', english_translation: 'the sister', context_sentence: 'Meine kleine Schwester heißt Emma.' },
      { german_word: 'der Hund', english_translation: 'the dog', context_sentence: 'Wir haben auch einen Hund.' },
      { german_word: 'die Großeltern', english_translation: 'the grandparents', context_sentence: 'Meine Großeltern wohnen in der Nähe.' },
      { german_word: 'besuchen', english_translation: 'to visit', context_sentence: 'Wir besuchen sie oft am Sonntag.' },
    ],
  },
  {
    title: 'Mein Haustier', level: 'A1', category: 'daily', word_count: 58, is_published: true,
    summary: 'Lisa erzählt von ihrer Katze Mimi, die jeden Tag lustige Sachen macht.',
    content: 'Ich habe eine Katze. Sie heißt Mimi und ist drei Jahre alt. Mimi ist schwarz und weiß und hat grüne Augen. Sie ist sehr süß, aber auch ein bisschen faul. Mimi schläft gern auf dem Sofa. Jeden Morgen weckt sie mich. Dann will sie Milch oder Futter. Am Nachmittag spielt sie mit einem Ball. Manchmal jagt sie Vögel im Garten, aber sie fängt keine. Abends kommt sie zu mir aufs Bett und schnurrt. Ich liebe meine Katze sehr. Mimi ist mein bester Freund.',
    questions: [
      { question: 'Wie alt ist die Katze Mimi?', options: ['Ein Jahr', 'Zwei Jahre', 'Drei Jahre', 'Vier Jahre'], correct_answer: 'Drei Jahre', order_index: 1 },
      { question: 'Wo schläft Mimi gern?', options: ['Im Bett', 'Auf dem Sofa', 'Im Garten', 'Auf dem Tisch'], correct_answer: 'Auf dem Sofa', order_index: 2 },
      { question: 'Was macht Mimi am Nachmittag?', options: ['Sie schläft', 'Sie isst', 'Sie spielt mit einem Ball', 'Sie fängt Vögel'], correct_answer: 'Sie spielt mit einem Ball', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'das Haustier', english_translation: 'the pet', context_sentence: 'Ich habe ein Haustier.' },
      { german_word: 'die Katze', english_translation: 'the cat', context_sentence: 'Ich habe eine Katze.' },
      { german_word: 'süß', english_translation: 'cute', context_sentence: 'Sie ist sehr süß.' },
      { german_word: 'faul', english_translation: 'lazy', context_sentence: 'Sie ist ein bisschen faul.' },
      { german_word: 'wecken', english_translation: 'to wake up', context_sentence: 'Jeden Morgen weckt sie mich.' },
      { german_word: 'jagen', english_translation: 'to chase', context_sentence: 'Manchmal jagt sie Vögel.' },
      { german_word: 'schnurren', english_translation: 'to purr', context_sentence: 'Sie kommt zu mir und schnurrt.' },
    ],
  },
  {
    title: 'Das Wetter', level: 'A1', category: 'daily', word_count: 54, is_published: true,
    summary: 'Ein einfacher Text über die vier Jahreszeiten und das Wetter in Deutschland.',
    content: 'Das Wetter in Deutschland ist nicht immer gleich. Im Frühling wird es wärmer. Die Blumen blühen und die Vögel singen. Manchmal regnet es. Im Sommer ist es oft heiß und sonnig. Die Menschen gehen schwimmen und machen Picknicks. Im Herbst wird es kühler. Die Blätter fallen von den Bäumen. Es gibt oft Nebel. Im Winter ist es kalt und es schneit manchmal. Die Kinder bauen Schneemänner. Ich mag den Frühling am liebsten, weil alles grün wird.',
    questions: [
      { question: 'Was passiert im Frühling?', options: ['Es schneit', 'Die Blumen blühen', 'Die Blätter fallen', 'Es ist sehr heiß'], correct_answer: 'Die Blumen blühen', order_index: 1 },
      { question: 'Was machen die Menschen im Sommer?', options: ['Sie bauen Schneemänner', 'Sie gehen schwimmen', 'Sie sammeln Blätter', 'Sie bleiben zu Hause'], correct_answer: 'Sie gehen schwimmen', order_index: 2 },
      { question: 'Welche Jahreszeit mag der Autor am liebsten?', options: ['Den Sommer', 'Den Herbst', 'Den Winter', 'Den Frühling'], correct_answer: 'Den Frühling', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'das Wetter', english_translation: 'the weather', context_sentence: 'Das Wetter in Deutschland ist nicht immer gleich.' },
      { german_word: 'der Frühling', english_translation: 'the spring', context_sentence: 'Im Frühling wird es wärmer.' },
      { german_word: 'der Sommer', english_translation: 'the summer', context_sentence: 'Im Sommer ist es oft heiß und sonnig.' },
      { german_word: 'der Herbst', english_translation: 'the autumn', context_sentence: 'Im Herbst wird es kühler.' },
      { german_word: 'der Winter', english_translation: 'the winter', context_sentence: 'Im Winter ist es kalt.' },
      { german_word: 'regnen', english_translation: 'to rain', context_sentence: 'Manchmal regnet es.' },
      { german_word: 'schneien', english_translation: 'to snow', context_sentence: 'Es schneit manchmal.' },
      { german_word: 'die Blume', english_translation: 'the flower', context_sentence: 'Die Blumen blühen.' },
    ],
  },
  {
    title: 'In der Schule', level: 'A1', category: 'education', word_count: 60, is_published: true,
    summary: 'Ein Schultag aus der Perspektive eines Grundschülers.',
    content: 'Ich heiße Lukas und gehe in die dritte Klasse. Meine Schule ist nicht weit von meinem Zuhause. Ich laufe jeden Morgen zehn Minuten zur Schule. Der Unterricht beginnt um acht Uhr. Wir haben Mathe, Deutsch, Sachkunde und Sport. Meine Lieblingsfächer sind Sport und Kunst. In der Pause spiele ich mit meinen Freunden auf dem Spielplatz. Um zwölf Uhr ist die Schule aus. Dann gehe ich nach Hause. Am Nachmittag mache ich meine Hausaufgaben. Manchmal lese ich ein Buch oder male ein Bild.',
    questions: [
      { question: 'In welche Klasse geht Lukas?', options: ['In die erste Klasse', 'In die zweite Klasse', 'In die dritte Klasse', 'In die vierte Klasse'], correct_answer: 'In die dritte Klasse', order_index: 1 },
      { question: 'Wie lange läuft Lukas zur Schule?', options: ['Fünf Minuten', 'Zehn Minuten', 'Fünfzehn Minuten', 'Zwanzig Minuten'], correct_answer: 'Zehn Minuten', order_index: 2 },
      { question: 'Was sind Lukas Lieblingsfächer?', options: ['Mathe und Deutsch', 'Sport und Kunst', 'Sachkunde und Mathe', 'Deutsch und Sport'], correct_answer: 'Sport und Kunst', order_index: 3 },
      { question: 'Wann ist die Schule aus?', options: ['Um zehn Uhr', 'Um elf Uhr', 'Um zwölf Uhr', 'Um eins'], correct_answer: 'Um zwölf Uhr', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Klasse', english_translation: 'the class', context_sentence: 'Ich gehe in die dritte Klasse.' },
      { german_word: 'die Schule', english_translation: 'the school', context_sentence: 'Meine Schule ist nicht weit.' },
      { german_word: 'das Fach', english_translation: 'the subject', context_sentence: 'Meine Lieblingsfächer sind Sport und Kunst.' },
      { german_word: 'die Pause', english_translation: 'the break', context_sentence: 'In der Pause spiele ich.' },
      { german_word: 'der Spielplatz', english_translation: 'the playground', context_sentence: 'Ich spiele auf dem Spielplatz.' },
      { german_word: 'die Hausaufgabe', english_translation: 'the homework', context_sentence: 'Ich mache meine Hausaufgaben.' },
      { german_word: 'malen', english_translation: 'to paint', context_sentence: 'Manchmal male ich ein Bild.' },
    ],
  },
  {
    title: 'Beim Einkaufen', level: 'A1', category: 'daily', word_count: 55, is_published: true,
    summary: 'Eine Mutter und ihr Sohn gehen zusammen im Supermarkt einkaufen.',
    content: 'Heute gehe ich mit meiner Mama einkaufen. Wir gehen in den Supermarkt um die Ecke. Ich nehme einen Einkaufswagen. Zuerst kaufen wir Obst und Gemüse. Wir nehmen Äpfel, Bananen und Tomaten. Dann gehen wir zur Milchabteilung. Wir kaufen Milch, Joghurt und Käse. Danach brauchen wir Brot und Brötchen. An der Kasse wartet eine Schlange. Meine Mama bezahlt an der Kasse. Der Einkauf kostet 34 Euro. Ich helfe beim Einpacken. Dann gehen wir nach Hause.',
    questions: [
      { question: 'Wohin gehen die Mutter und der Sohn?', options: ['Zum Bäcker', 'In den Supermarkt', 'Auf den Markt', 'Ins Kaufhaus'], correct_answer: 'In den Supermarkt', order_index: 1 },
      { question: 'Was kaufen sie zuerst?', options: ['Brot und Brötchen', 'Milchprodukte', 'Obst und Gemüse', 'Fleisch'], correct_answer: 'Obst und Gemüse', order_index: 2 },
      { question: 'Wie viel kostet der Einkauf?', options: ['24 Euro', '34 Euro', '44 Euro', '54 Euro'], correct_answer: '34 Euro', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'einkaufen', english_translation: 'to shop', context_sentence: 'Ich gehe mit meiner Mama einkaufen.' },
      { german_word: 'der Supermarkt', english_translation: 'the supermarket', context_sentence: 'Wir gehen in den Supermarkt.' },
      { german_word: 'der Einkaufswagen', english_translation: 'the shopping cart', context_sentence: 'Ich nehme einen Einkaufswagen.' },
      { german_word: 'das Obst', english_translation: 'the fruit', context_sentence: 'Wir kaufen Obst und Gemüse.' },
      { german_word: 'die Milch', english_translation: 'the milk', context_sentence: 'Wir kaufen Milch, Joghurt und Käse.' },
      { german_word: 'die Kasse', english_translation: 'the checkout', context_sentence: 'Meine Mama bezahlt an der Kasse.' },
      { german_word: 'bezahlen', english_translation: 'to pay', context_sentence: 'Meine Mama bezahlt an der Kasse.' },
      { german_word: 'der Einkauf', english_translation: 'the purchase', context_sentence: 'Der Einkauf kostet 34 Euro.' },
    ],
  },
  {
    title: 'Mein Zuhause', level: 'A1', category: 'daily', word_count: 58, is_published: true,
    summary: 'Anna beschreibt ihre Wohnung und die verschiedenen Zimmer.',
    content: 'Ich wohne mit meiner Familie in einer Wohnung. Die Wohnung ist im zweiten Stock. Sie hat vier Zimmer: ein Wohnzimmer, ein Schlafzimmer für meine Eltern, ein Kinderzimmer für mich und meine Schwester und eine Küche. Das Wohnzimmer ist groß und gemütlich. Dort steht ein braunes Sofa und ein runder Tisch. Mein Zimmer ist nicht sehr groß, aber ich mag es. Ich habe ein Bett, einen Schreibtisch und einen Schrank. In der Küche kocht meine Mutter jeden Tag. Das Bad ist klein, aber sauber.',
    questions: [
      { question: 'In welchem Stock ist die Wohnung?', options: ['Im ersten Stock', 'Im zweiten Stock', 'Im dritten Stock', 'Im Erdgeschoss'], correct_answer: 'Im zweiten Stock', order_index: 1 },
      { question: 'Wie viele Zimmer hat die Wohnung?', options: ['Zwei', 'Drei', 'Vier', 'Fünf'], correct_answer: 'Vier', order_index: 2 },
      { question: 'Was steht im Wohnzimmer?', options: ['Ein Bett und ein Schrank', 'Ein braunes Sofa und ein runder Tisch', 'Ein Schreibtisch und ein Stuhl', 'Ein Fernseher und ein Regal'], correct_answer: 'Ein braunes Sofa und ein runder Tisch', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'die Wohnung', english_translation: 'the apartment', context_sentence: 'Ich wohne mit meiner Familie in einer Wohnung.' },
      { german_word: 'der Stock', english_translation: 'the floor', context_sentence: 'Die Wohnung ist im zweiten Stock.' },
      { german_word: 'das Wohnzimmer', english_translation: 'the living room', context_sentence: 'Das Wohnzimmer ist groß und gemütlich.' },
      { german_word: 'das Sofa', english_translation: 'the sofa', context_sentence: 'Dort steht ein braunes Sofa.' },
      { german_word: 'der Schreibtisch', english_translation: 'the desk', context_sentence: 'Ich habe einen Schreibtisch.' },
      { german_word: 'der Schrank', english_translation: 'the wardrobe', context_sentence: 'Ich habe einen Schrank.' },
      { german_word: 'die Küche', english_translation: 'the kitchen', context_sentence: 'In der Küche kocht meine Mutter.' },
      { german_word: 'gemütlich', english_translation: 'cozy', context_sentence: 'Das Wohnzimmer ist gemütlich.' },
    ],
  },
  {
    title: 'Meine Hobbys', level: 'A1', category: 'daily', word_count: 54, is_published: true,
    summary: 'Felix erzählt, was er in seiner Freizeit gerne macht.',
    content: 'Ich heiße Felix und habe viele Hobbys. Am liebsten spiele ich Fußball. Ich bin im Fußballverein und trainiere zweimal pro Woche. Am Samstag haben wir oft ein Spiel. Ich spiele auch gern Computerspiele. Das mache ich mit meinem Freund Max. Wir spielen zusammen online. Außerdem lese ich gern. Meine Lieblingsbücher sind Abenteuergeschichten. Wenn das Wetter gut ist, fahre ich Fahrrad. Am Sonntag gehe ich manchmal mit meinem Vater schwimmen. Das macht mir viel Spaß.',
    questions: [
      { question: 'Was macht Felix am liebsten?', options: ['Computerspiele spielen', 'Fußball spielen', 'Lesen', 'Fahrrad fahren'], correct_answer: 'Fußball spielen', order_index: 1 },
      { question: 'Wie oft trainiert Felix?', options: ['Einmal pro Woche', 'Zweimal pro Woche', 'Dreimal pro Woche', 'Jeden Tag'], correct_answer: 'Zweimal pro Woche', order_index: 2 },
      { question: 'Was liest Felix am liebsten?', options: ['Liebesgeschichten', 'Abenteuergeschichten', 'Krimis', 'Comics'], correct_answer: 'Abenteuergeschichten', order_index: 3 },
      { question: 'Was macht Felix am Sonntag mit seinem Vater?', options: ['Ins Kino gehen', 'Schwimmen gehen', 'Fußball spielen', 'Fahrrad fahren'], correct_answer: 'Schwimmen gehen', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'das Hobby', english_translation: 'the hobby', context_sentence: 'Ich habe viele Hobbys.' },
      { german_word: 'der Fußball', english_translation: 'the soccer', context_sentence: 'Am liebsten spiele ich Fußball.' },
      { german_word: 'der Verein', english_translation: 'the club', context_sentence: 'Ich bin im Fußballverein.' },
      { german_word: 'trainieren', english_translation: 'to train', context_sentence: 'Ich trainiere zweimal pro Woche.' },
      { german_word: 'das Computerspiel', english_translation: 'the computer game', context_sentence: 'Ich spiele gern Computerspiele.' },
      { german_word: 'das Fahrrad', english_translation: 'the bicycle', context_sentence: 'Ich fahre Fahrrad.' },
      { german_word: 'schwimmen', english_translation: 'to swim', context_sentence: 'Ich gehe manchmal schwimmen.' },
      { german_word: 'der Spaß', english_translation: 'the fun', context_sentence: 'Das macht mir viel Spaß.' },
    ],
  },
]

// ===== A2 (7 articles) =====
const a2Articles: Article[] = [
  {
    title: 'Ein Ausflug an den See', level: 'A2', category: 'travel', word_count: 112, is_published: true,
    summary: 'Eine Familie macht einen Tagesausflug an einen schönen See.',
    content: 'Letzten Samstag hat meine Familie einen Ausflug an den See gemacht. Wir sind um neun Uhr losgefahren. Das Wetter war wunderbar: die Sonne hat geschienen und es war warm. Mein Vater hat den Picknickkorb gepackt. Meine Mutter hat frische Brötchen, Käse und Obst gekauft. Ich habe meine Badesachen eingepackt. Nach einer Stunde Fahrt sind wir angekommen. Der See war sehr schön und das Wasser war klar. Ich bin sofort geschwommen. Mein kleiner Bruder hat im Sand gespielt. Meine Eltern haben auf einer Decke gesessen und gelesen. Mittags haben wir zusammen gegessen. Danach sind wir um den See spazieren gegangen. Am Abend sind wir müde, aber glücklich nach Hause gefahren. Es war ein toller Tag!',
    questions: [
      { question: 'Wann hat die Familie den Ausflug gemacht?', options: ['Letzten Sonntag', 'Letzten Samstag', 'Letzten Freitag', 'Letzten Montag'], correct_answer: 'Letzten Samstag', order_index: 1 },
      { question: 'Wer hat den Picknickkorb gepackt?', options: ['Die Mutter', 'Der Vater', 'Der Bruder', 'Die Tochter'], correct_answer: 'Der Vater', order_index: 2 },
      { question: 'Wie lange hat die Fahrt gedauert?', options: ['Eine halbe Stunde', 'Eine Stunde', 'Zwei Stunden', 'Drei Stunden'], correct_answer: 'Eine Stunde', order_index: 3 },
      { question: 'Was hat der kleine Bruder gemacht?', options: ['Geschwommen', 'Im Sand gespielt', 'Gelesen', 'Spazieren gegangen'], correct_answer: 'Im Sand gespielt', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Ausflug', english_translation: 'the trip', context_sentence: 'Wir haben einen Ausflug an den See gemacht.' },
      { german_word: 'losfahren', english_translation: 'to depart', context_sentence: 'Wir sind um neun Uhr losgefahren.' },
      { german_word: 'der Picknickkorb', english_translation: 'the picnic basket', context_sentence: 'Mein Vater hat den Picknickkorb gepackt.' },
      { german_word: 'die Badesachen', english_translation: 'the swimwear', context_sentence: 'Ich habe meine Badesachen eingepackt.' },
      { german_word: 'ankommen', english_translation: 'to arrive', context_sentence: 'Nach einer Stunde sind wir angekommen.' },
      { german_word: 'spazieren gehen', english_translation: 'to go for a walk', context_sentence: 'Wir sind um den See spazieren gegangen.' },
      { german_word: 'glücklich', english_translation: 'happy', context_sentence: 'Wir sind glücklich nach Hause gefahren.' },
      { german_word: 'klar', english_translation: 'clear', context_sentence: 'Das Wasser war klar.' },
    ],
  },
  {
    title: 'Im Restaurant', level: 'A2', category: 'daily', word_count: 118, is_published: true,
    summary: 'Ein Paar besucht ein deutsches Restaurant und bestellt typische Gerichte.',
    content: 'Gestern Abend sind meine Freundin und ich in ein Restaurant gegangen. Es war ein gemütliches deutsches Restaurant in der Altstadt. Der Kellner hat uns einen Tisch am Fenster gegeben. Wir haben die Speisekarte bekommen und uns die Gerichte angesehen. Meine Freundin hat Schnitzel mit Pommes bestellt. Ich habe mich für Bratwurst mit Kartoffelsalat entschieden. Dazu haben wir beide eine Cola getrunken. Das Essen hat sehr gut geschmeckt. Das Schnitzel war knusprig und die Bratwurst war würzig. Nach dem Hauptgericht haben wir Nachtisch bestellt. Ich habe einen Apfelstrudel mit Vanillesoße genommen. Meine Freundin hat ein Schokoladeneis gegessen. Der Kellner war sehr freundlich. Am Ende haben wir 48 Euro bezahlt und ein Trinkgeld gegeben.',
    questions: [
      { question: 'In was für einem Restaurant haben sie gegessen?', options: ['Italienisch', 'Deutsch', 'Chinesisch', 'Griechisch'], correct_answer: 'Deutsch', order_index: 1 },
      { question: 'Was hat die Freundin bestellt?', options: ['Bratwurst mit Kartoffelsalat', 'Schnitzel mit Pommes', 'Apfelstrudel', 'Schokoladeneis'], correct_answer: 'Schnitzel mit Pommes', order_index: 2 },
      { question: 'Was hat der Autor als Nachtisch gegessen?', options: ['Schokoladeneis', 'Apfelstrudel mit Vanillesoße', 'Käsekuchen', 'Pfannkuchen'], correct_answer: 'Apfelstrudel mit Vanillesoße', order_index: 3 },
      { question: 'Wie viel haben sie bezahlt?', options: ['38 Euro', '48 Euro', '58 Euro', '68 Euro'], correct_answer: '48 Euro', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'das Restaurant', english_translation: 'the restaurant', context_sentence: 'Wir sind in ein Restaurant gegangen.' },
      { german_word: 'die Speisekarte', english_translation: 'the menu', context_sentence: 'Wir haben die Speisekarte bekommen.' },
      { german_word: 'bestellen', english_translation: 'to order', context_sentence: 'Meine Freundin hat Schnitzel bestellt.' },
      { german_word: 'das Schnitzel', english_translation: 'the schnitzel', context_sentence: 'Das Schnitzel war knusprig.' },
      { german_word: 'die Bratwurst', english_translation: 'the bratwurst', context_sentence: 'Die Bratwurst war würzig.' },
      { german_word: 'der Nachtisch', english_translation: 'the dessert', context_sentence: 'Wir haben Nachtisch bestellt.' },
      { german_word: 'der Apfelstrudel', english_translation: 'the apple strudel', context_sentence: 'Ich habe Apfelstrudel genommen.' },
      { german_word: 'das Trinkgeld', english_translation: 'the tip', context_sentence: 'Wir haben Trinkgeld gegeben.' },
    ],
  },
  {
    title: 'Meine Stadt', level: 'A2', category: 'daily', word_count: 120, is_published: true,
    summary: 'Eine junge Frau beschreibt ihre Heimatstadt und die schönsten Orte.',
    content: 'Ich wohne in Heidelberg und finde meine Stadt wunderschön. Heidelberg liegt in Baden-Württemberg am Fluss Neckar. Die Altstadt ist sehr alt und hat viele enge Gassen. Das berühmte Schloss Heidelberg steht auf einem Berg und man kann die ganze Stadt von dort sehen. Viele Touristen kommen jedes Jahr nach Heidelberg. In der Altstadt gibt es viele Cafés, Restaurants und kleine Geschäfte. Ich gehe gern über die alte Brücke, die Alte Brücke heißt. Dort kann man den Fluss und die Berge sehen. Am Wochenende treffe ich mich mit Freunden auf dem Marktplatz. Wir sitzen dann in einem Café und trinken Kaffee. Im Sommer kann man im Neckar baden oder eine Bootstour machen. Ich liebe meine Stadt!',
    questions: [
      { question: 'In welchem Bundesland liegt Heidelberg?', options: ['Bayern', 'Hessen', 'Baden-Württemberg', 'Nordrhein-Westfalen'], correct_answer: 'Baden-Württemberg', order_index: 1 },
      { question: 'Was ist das berühmteste Gebäude?', options: ['Der Dom', 'Das Schloss', 'Der Bahnhof', 'Das Rathaus'], correct_answer: 'Das Schloss', order_index: 2 },
      { question: 'Wo trifft sie sich am Wochenende mit Freunden?', options: ['Im Park', 'Im Kino', 'Auf dem Marktplatz', 'Am Bahnhof'], correct_answer: 'Auf dem Marktplatz', order_index: 3 },
      { question: 'Was kann man im Sommer im Neckar machen?', options: ['Angeln', 'Baden oder Bootstour', 'Schlittschuhlaufen', 'Segeln'], correct_answer: 'Baden oder Bootstour', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Stadt', english_translation: 'the city', context_sentence: 'Ich wohne in Heidelberg.' },
      { german_word: 'die Altstadt', english_translation: 'the old town', context_sentence: 'Die Altstadt ist sehr alt.' },
      { german_word: 'das Schloss', english_translation: 'the castle', context_sentence: 'Das Schloss steht auf einem Berg.' },
      { german_word: 'die Brücke', english_translation: 'the bridge', context_sentence: 'Ich gehe gern über die Alte Brücke.' },
      { german_word: 'der Marktplatz', english_translation: 'the market square', context_sentence: 'Wir treffen uns auf dem Marktplatz.' },
      { german_word: 'die Bootstour', english_translation: 'the boat tour', context_sentence: 'Man kann eine Bootstour machen.' },
      { german_word: 'der Tourist', english_translation: 'the tourist', context_sentence: 'Viele Touristen kommen nach Heidelberg.' },
    ],
  },
  {
    title: 'Beim Arzt', level: 'A2', category: 'health', word_count: 125, is_published: true,
    summary: 'Ein Patient besucht wegen Halsschmerzen den Arzt und bekommt ein Rezept.',
    content: 'Gestern habe ich mich nicht wohlgefühlt. Ich hatte Halsschmerzen und Husten. Meine Mutter hat sofort einen Termin beim Arzt gemacht. Wir sind um zehn Uhr in die Praxis gekommen. Im Wartezimmer haben wir zehn Minuten gewartet. Dann hat die Arzthelferin mich aufgerufen. Der Arzt war sehr freundlich. Er hat zuerst meinen Hals angeschaut. Dann hat er meine Temperatur gemessen: 37,8 Grad. Ich hatte leichtes Fieber. Er hat meinen Brustkorb abgehört. Zum Glück war es keine ernste Krankheit. Der Arzt hat mir Hustensaft und Halstabletten verschrieben. In der Apotheke habe ich die Medikamente geholt. Ich soll viel trinken und mich ausruhen. Nach ein paar Tagen geht es mir wieder besser.',
    questions: [
      { question: 'Welche Symptome hatte der Patient?', options: ['Kopfschmerzen und Fieber', 'Halsschmerzen und Husten', 'Bauchschmerzen', 'Rückenschmerzen'], correct_answer: 'Halsschmerzen und Husten', order_index: 1 },
      { question: 'Wie lange musste er warten?', options: ['Fünf Minuten', 'Zehn Minuten', 'Fünfzehn Minuten', 'Gar nicht'], correct_answer: 'Zehn Minuten', order_index: 2 },
      { question: 'Welche Temperatur hatte der Patient?', options: ['37,2 Grad', '37,8 Grad', '38,5 Grad', '39 Grad'], correct_answer: '37,8 Grad', order_index: 3 },
      { question: 'Was hat der Arzt verschrieben?', options: ['Antibiotika', 'Hustensaft und Halstabletten', 'Schmerzmittel', 'Vitamine'], correct_answer: 'Hustensaft und Halstabletten', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Arzt', english_translation: 'the doctor', context_sentence: 'Wir haben einen Termin beim Arzt gemacht.' },
      { german_word: 'der Hals', english_translation: 'the throat', context_sentence: 'Ich hatte Halsschmerzen.' },
      { german_word: 'der Husten', english_translation: 'the cough', context_sentence: 'Ich hatte Husten.' },
      { german_word: 'das Wartezimmer', english_translation: 'the waiting room', context_sentence: 'Im Wartezimmer haben wir gewartet.' },
      { german_word: 'die Temperatur', english_translation: 'the temperature', context_sentence: 'Er hat meine Temperatur gemessen.' },
      { german_word: 'verschreiben', english_translation: 'to prescribe', context_sentence: 'Der Arzt hat mir Hustensaft verschrieben.' },
      { german_word: 'die Apotheke', english_translation: 'the pharmacy', context_sentence: 'In der Apotheke habe ich die Medikamente geholt.' },
      { german_word: 'sich ausruhen', english_translation: 'to rest', context_sentence: 'Ich soll mich ausruhen.' },
    ],
  },
  {
    title: 'Der Geburtstag', level: 'A2', category: 'daily', word_count: 110, is_published: true,
    summary: 'Eine Geburtstagsfeier mit Familie und Freunden, Geschenken und einer Torte.',
    content: 'Letzte Woche hatte meine Schwester Geburtstag. Sie ist zwölf Jahre alt geworden. Wir haben eine große Party für sie organisiert. Meine Mutter hat einen Schokoladenkuchen gebacken. Ich habe Luftballons und Girlanden aufgehängt. Mein Vater hat das Wohnzimmer dekoriert. Am Nachmittag sind die Gäste gekommen. Meine Schwester hat viele Geschenke bekommen: ein neues Buch, einen Malkasten, ein Spiel und eine neue Tasche. Wir haben gemeinsam gegessen und getrunken. Danach haben wir Spiele gespielt. Wir haben Topfschlagen und Reise nach Jerusalem gemacht. Dann haben wir Kerzen auf den Kuchen gesetzt und Geburtstagslieder gesungen. Meine Schwester hat sich sehr gefreut. Es war eine tolle Feier.',
    questions: [
      { question: 'Wie alt ist die Schwester geworden?', options: ['Zehn', 'Elf', 'Zwölf', 'Dreizehn'], correct_answer: 'Zwölf', order_index: 1 },
      { question: 'Was hat die Mutter gemacht?', options: ['Luftballons aufgehängt', 'Einen Kuchen gebacken', 'Das Wohnzimmer dekoriert', 'Spiele vorbereitet'], correct_answer: 'Einen Kuchen gebacken', order_index: 2 },
      { question: 'Was hat die Schwester nicht bekommen?', options: ['Ein Buch', 'Einen Malkasten', 'Ein Spiel', 'Ein Fahrrad'], correct_answer: 'Ein Fahrrad', order_index: 3 },
      { question: 'Welche Spiele haben sie gespielt?', options: ['Verstecken und Fangen', 'Topfschlagen und Reise nach Jerusalem', 'Karten und Würfeln', 'Fußball und Basketball'], correct_answer: 'Topfschlagen und Reise nach Jerusalem', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Geburtstag', english_translation: 'the birthday', context_sentence: 'Letzte Woche hatte meine Schwester Geburtstag.' },
      { german_word: 'der Kuchen', english_translation: 'the cake', context_sentence: 'Meine Mutter hat einen Kuchen gebacken.' },
      { german_word: 'der Luftballon', english_translation: 'the balloon', context_sentence: 'Ich habe Luftballons aufgehängt.' },
      { german_word: 'das Geschenk', english_translation: 'the gift', context_sentence: 'Sie hat viele Geschenke bekommen.' },
      { german_word: 'die Kerze', english_translation: 'the candle', context_sentence: 'Wir haben Kerzen auf den Kuchen gesetzt.' },
      { german_word: 'sich freuen', english_translation: 'to be happy', context_sentence: 'Sie hat sich sehr gefreut.' },
      { german_word: 'die Feier', english_translation: 'the celebration', context_sentence: 'Es war eine tolle Feier.' },
      { german_word: 'die Girlande', english_translation: 'the garland', context_sentence: 'Ich habe Girlanden aufgehängt.' },
    ],
  },
  {
    title: 'Im Urlaub', level: 'A2', category: 'travel', word_count: 132, is_published: true,
    summary: 'Ein Familienurlaub an der Nordsee mit Strand, Wattwanderung und Fischbrötchen.',
    content: 'Im letzten Sommer waren wir an der Nordsee im Urlaub. Wir haben eine Woche in einem Ferienhaus in der Nähe von Cuxhaven verbracht. Das Haus war nur fünfhundert Meter vom Strand entfernt. Jeden Morgen sind wir nach dem Frühstück zum Strand gegangen. Ich habe im Wasser gespielt und Muscheln gesammelt. Mein Bruder hat Sandburgen gebaut. An einem Tag haben wir eine Wattwanderung gemacht. Das war ein besonderes Erlebnis. Wir sind barfuß durch den Schlamm gelaufen und haben kleine Krebse und Würmer gesehen. Der Wattführer hat uns viel über das Wattenmeer erklärt. Mittags haben wir immer Fischbrötchen gegessen – die schmecken an der Nordsee am besten. Einmal sind wir mit dem Schiff nach Helgoland gefahren. Das war ein langer, aber schöner Ausflug. Am letzten Abend haben wir den Sonnenuntergang am Strand beobachtet.',
    questions: [
      { question: 'Wo war die Familie im Urlaub?', options: ['An der Ostsee', 'An der Nordsee', 'Im Allgäu', 'In den Alpen'], correct_answer: 'An der Nordsee', order_index: 1 },
      { question: 'Wie weit war das Ferienhaus vom Strand entfernt?', options: ['200 Meter', '500 Meter', '1 km', '2 km'], correct_answer: '500 Meter', order_index: 2 },
      { question: 'Was haben sie bei der Wattwanderung gesehen?', options: ['Fische', 'Kleine Krebse und Würmer', 'Seehunde', 'Muscheln'], correct_answer: 'Kleine Krebse und Würmer', order_index: 3 },
      { question: 'Wohin sind sie mit dem Schiff gefahren?', options: ['Nach Sylt', 'Nach Helgoland', 'Nach Rügen', 'Nach Norderney'], correct_answer: 'Nach Helgoland', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Urlaub', english_translation: 'the vacation', context_sentence: 'Wir waren an der Nordsee im Urlaub.' },
      { german_word: 'das Ferienhaus', english_translation: 'the holiday house', context_sentence: 'Wir haben in einem Ferienhaus gewohnt.' },
      { german_word: 'der Strand', english_translation: 'the beach', context_sentence: 'Wir sind zum Strand gegangen.' },
      { german_word: 'die Muschel', english_translation: 'the shell', context_sentence: 'Ich habe Muscheln gesammelt.' },
      { german_word: 'die Sandburg', english_translation: 'the sandcastle', context_sentence: 'Mein Bruder hat Sandburgen gebaut.' },
      { german_word: 'die Wattwanderung', english_translation: 'the mudflat hike', context_sentence: 'Wir haben eine Wattwanderung gemacht.' },
      { german_word: 'das Fischbrötchen', english_translation: 'the fish sandwich', context_sentence: 'Wir haben Fischbrötchen gegessen.' },
      { german_word: 'der Sonnenuntergang', english_translation: 'the sunset', context_sentence: 'Wir haben den Sonnenuntergang beobachtet.' },
    ],
  },
  {
    title: 'Mein Lieblingsessen', level: 'A2', category: 'daily', word_count: 108, is_published: true,
    summary: 'Ein Teenager erzählt von seinem Lieblingsgericht und wie man es zubereitet.',
    content: 'Ich esse sehr gern Pizza. Aber meine Lieblingsspeise ist selbst gemachte Pizza, nicht die aus dem Supermarkt. Meine Mutter macht die beste Pizza der Welt. Sie bereitet den Teig immer frisch zu. Dafür braucht man Mehl, Hefe, Wasser, Öl und Salz. Den Teig lässt sie eine Stunde ruhen. Dann belegt sie die Pizza mit Tomatensoße, Käse und verschiedenen Zutaten. Am liebsten mag ich Pizza mit Salami und Pilzen. Manchmal machen wir auch eine vegetarische Pizza mit Paprika, Zucchini und Oliven. Die Pizza kommt dann für fünfzehn Minuten in den Ofen. Wenn die Pizza fertig ist, riecht die ganze Küche danach. Dazu trinke ich am liebsten eine kalte Cola. Am Wochenende koche ich manchmal auch selbst mit meiner Mutter.',
    questions: [
      { question: 'Was ist das Lieblingsessen?', options: ['Spaghetti', 'Selbst gemachte Pizza', 'Döner', 'Salat'], correct_answer: 'Selbst gemachte Pizza', order_index: 1 },
      { question: 'Welche Zutaten braucht man für den Teig?', options: ['Mehl, Eier, Milch, Butter', 'Mehl, Hefe, Wasser, Öl, Salz', 'Mehl, Zucker, Öl, Salz', 'Mehl, Milch, Hefe, Öl'], correct_answer: 'Mehl, Hefe, Wasser, Öl, Salz', order_index: 2 },
      { question: 'Wie lange ruht der Teig?', options: ['30 Minuten', '1 Stunde', '2 Stunden', '10 Minuten'], correct_answer: '1 Stunde', order_index: 3 },
      { question: 'Welche vegetarischen Zutaten werden genannt?', options: ['Salami und Pilze', 'Paprika, Zucchini und Oliven', 'Schinken und Ananas', 'Käse und Tomaten'], correct_answer: 'Paprika, Zucchini und Oliven', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'das Lieblingsessen', english_translation: 'the favorite food', context_sentence: 'Mein Lieblingsessen ist Pizza.' },
      { german_word: 'der Teig', english_translation: 'the dough', context_sentence: 'Sie bereitet den Teig frisch zu.' },
      { german_word: 'die Hefe', english_translation: 'the yeast', context_sentence: 'Dafür braucht man Hefe.' },
      { german_word: 'belegen', english_translation: 'to top', context_sentence: 'Sie belegt die Pizza mit Zutaten.' },
      { german_word: 'die Zutat', english_translation: 'the ingredient', context_sentence: 'Verschiedene Zutaten kommen auf die Pizza.' },
      { german_word: 'der Ofen', english_translation: 'the oven', context_sentence: 'Die Pizza kommt in den Ofen.' },
      { german_word: 'der Pilz', english_translation: 'the mushroom', context_sentence: 'Ich mag Pizza mit Pilzen.' },
      { german_word: 'vegetarisch', english_translation: 'vegetarian', context_sentence: 'Wir machen auch eine vegetarische Pizza.' },
    ],
  },
]

// ===== B1 (6 articles) =====
const b1Articles: Article[] = [
  {
    title: 'Digitalisierung im Alltag', level: 'B1', category: 'technology', word_count: 198, is_published: true,
    summary: 'Wie die Digitalisierung unseren Alltag verändert hat.',
    content: 'Die Digitalisierung hat unseren Alltag in den letzten Jahren grundlegend verändert. Während früher viele Dinge nur persönlich oder telefonisch erledigt werden konnten, ist heute vieles online möglich. Ein gutes Beispiel ist das Online-Banking. Früher musste man während der Öffnungszeiten zur Bank gehen, um eine Überweisung zu tätigen. Heute kann man das bequem von zu Hause aus mit dem Smartphone erledigen, und zwar rund um die Uhr. Auch das Einkaufen hat sich verändert. Immer mehr Menschen bestellen ihre Lebensmittel und Kleidung im Internet. Große Online-Shops liefern die Ware direkt vor die Haustür. In vielen Haushalten gibt es inzwischen smarte Geräte. Der Kühlschrank kann eine Einkaufsliste erstellen, und die Heizung lässt sich per App steuern. Allerdings hat die Digitalisierung auch Nachteile. Viele Menschen fühlen sich von der ständigen Erreichbarkeit gestresst. Außerdem gibt es Bedenken beim Datenschutz. Trotzdem wird die Digitalisierung in Zukunft noch weiter zunehmen.',
    questions: [
      { question: 'Was musste man früher für eine Überweisung tun?', options: ['Einen Brief schicken', 'Zur Bank gehen', 'Online-Banking nutzen', 'Anrufen'], correct_answer: 'Zur Bank gehen', order_index: 1 },
      { question: 'Was können smarte Geräte im Haushalt?', options: ['Das Haus putzen', 'Eine Einkaufsliste erstellen', 'Das Essen kochen', 'Die Wäsche waschen'], correct_answer: 'Eine Einkaufsliste erstellen', order_index: 2 },
      { question: 'Welchen Nachteil nennt der Text?', options: ['Höhere Kosten', 'Weniger Freizeit', 'Stress durch Erreichbarkeit', 'Schlechtere Produkte'], correct_answer: 'Stress durch Erreichbarkeit', order_index: 3 },
      { question: 'Wie wird die Digitalisierung in Zukunft?', options: ['Sie wird weniger', 'Sie bleibt gleich', 'Sie wird zunehmen', 'Sie verschwindet'], correct_answer: 'Sie wird zunehmen', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Digitalisierung', english_translation: 'the digitalization', context_sentence: 'Die Digitalisierung hat unseren Alltag verändert.' },
      { german_word: 'erledigen', english_translation: 'to accomplish', context_sentence: 'Heute ist vieles online zu erledigen.' },
      { german_word: 'die Überweisung', english_translation: 'the bank transfer', context_sentence: 'Früher musste man eine Überweisung tätigen.' },
      { german_word: 'die Ware', english_translation: 'the goods', context_sentence: 'Die Ware wird direkt nach Hause geliefert.' },
      { german_word: 'das Gerät', english_translation: 'the device', context_sentence: 'In vielen Haushalten gibt es smarte Geräte.' },
      { german_word: 'steuern', english_translation: 'to control', context_sentence: 'Die Heizung lässt sich per App steuern.' },
      { german_word: 'die Erreichbarkeit', english_translation: 'the accessibility', context_sentence: 'Viele fühlen sich gestresst von der Erreichbarkeit.' },
      { german_word: 'der Datenschutz', english_translation: 'the data protection', context_sentence: 'Es gibt Bedenken beim Datenschutz.' },
    ],
  },
  {
    title: 'Gesunde Ernährung', level: 'B1', category: 'health', word_count: 220, is_published: true,
    summary: 'Eine Betrachtung über gesunde Ernährung, Nährstoffe und die Bedeutung von Wasser.',
    content: 'Eine gesunde Ernährung ist wichtig für das Wohlbefinden und die Gesundheit. Aber was bedeutet eigentlich gesunde Ernährung? Experten empfehlen, täglich fünf Portionen Obst und Gemüse zu essen. Diese liefern dem Körper wichtige Vitamine, Mineralstoffe und Ballaststoffe. Vollkornprodukte wie Vollkornbrot oder Haferflocken sind ebenfalls empfehlenswert, da sie lange satt machen und die Verdauung fördern. Auf Zucker und stark verarbeitete Lebensmittel sollte man hingegen möglichst verzichten. Sie enthalten viele leere Kalorien und können auf Dauer krank machen. Auch auf ausreichend Flüssigkeit sollte man achten. Mindestens zwei Liter Wasser pro Tag sind ideal. Besonders in Deutschland trinken viele Menschen gern Mineralwasser mit Kohlensäure. Wer sich gesund ernähren möchte, muss aber nicht auf alles verzichten. Ein Stück Schokolade oder ein Glas Wein sind in Maßen in Ordnung. Wichtig ist vor allem eine ausgewogene Ernährung mit abwechslungsreichen Lebensmitteln.',
    questions: [
      { question: 'Wie viele Portionen Obst und Gemüse pro Tag empfehlen Experten?', options: ['Drei', 'Vier', 'Fünf', 'Sechs'], correct_answer: 'Fünf', order_index: 1 },
      { question: 'Warum sind Vollkornprodukte empfehlenswert?', options: ['Wenig Kosten', 'Sie machen lange satt', 'Sie schmecken süß', 'Schnelle Zubereitung'], correct_answer: 'Sie machen lange satt', order_index: 2 },
      { question: 'Wie viel Wasser sollte man mindestens trinken?', options: ['1 Liter', '2 Liter', '3 Liter', '4 Liter'], correct_answer: '2 Liter', order_index: 3 },
      { question: 'Was bedeutet ausgewogene Ernährung?', options: ['Auf alles verzichten', 'Nur Obst essen', 'Abwechslungsreiche Lebensmittel', 'Nur Vollkornprodukte'], correct_answer: 'Abwechslungsreiche Lebensmittel', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Ernährung', english_translation: 'the nutrition', context_sentence: 'Eine gesunde Ernährung ist wichtig.' },
      { german_word: 'das Vitamin', english_translation: 'the vitamin', context_sentence: 'Obst liefert wichtige Vitamine.' },
      { german_word: 'der Ballaststoff', english_translation: 'the dietary fiber', context_sentence: 'Ballaststoffe fördern die Verdauung.' },
      { german_word: 'das Vollkornprodukt', english_translation: 'the whole grain product', context_sentence: 'Vollkornprodukte sind empfehlenswert.' },
      { german_word: 'verzichten', english_translation: 'to do without', context_sentence: 'Auf Zucker sollte man verzichten.' },
      { german_word: 'verarbeitet', english_translation: 'processed', context_sentence: 'Stark verarbeitete Lebensmittel sind ungesund.' },
      { german_word: 'die Flüssigkeit', english_translation: 'the liquid', context_sentence: 'Auf ausreichend Flüssigkeit sollte man achten.' },
      { german_word: 'ausgewogen', english_translation: 'balanced', context_sentence: 'Eine ausgewogene Ernährung ist wichtig.' },
    ],
  },
  {
    title: 'Umweltschutz im Alltag', level: 'B1', category: 'environment', word_count: 230, is_published: true,
    summary: 'Konkrete Tipps, wie jeder Einzelne im Alltag etwas für den Umweltschutz tun kann.',
    content: 'Der Klimawandel ist eines der größten Probleme unserer Zeit. Viele Menschen fragen sich, was sie persönlich zum Umweltschutz beitragen können. Dabei gibt es einige einfache Maßnahmen, die jeder in den Alltag integrieren kann. Ein wichtiger Bereich ist die Müllvermeidung. Statt Plastikflaschen sollte man eine wiederverwendbare Trinkflasche benutzen. Beim Einkaufen hilft ein Stoffbeutel, um Plastiktüten zu vermeiden. Auch die richtige Mülltrennung ist wichtig. Ein weiterer Punkt ist die Energieeinsparung. Indem man elektronische Geräte komplett ausschaltet statt sie im Standby-Modus zu lassen, kann man Strom sparen. Kurze Strecken kann man mit dem Fahrrad fahren. Beim Heizen hilft bereits das richtige Lüften: Stoßlüften spart Energie. Wer konsequent auf diese Tipps achtet, kann seinen ökologischen Fußabdruck deutlich verringern.',
    questions: [
      { question: 'Was kann man statt Plastikflaschen benutzen?', options: ['Glasflaschen', 'Wiederverwendbare Trinkflasche', 'Pappbecher', 'Dosen'], correct_answer: 'Wiederverwendbare Trinkflasche', order_index: 1 },
      { question: 'Was bedeutet Stoßlüften?', options: ['Fenster den ganzen Tag offen', 'Kurz und intensiv lüften', 'Heizung ausstellen', 'Tür offen lassen'], correct_answer: 'Kurz und intensiv lüften', order_index: 2 },
      { question: 'Was kann man tun, um Strom zu sparen?', options: ['Geräte im Standby lassen', 'Geräte komplett ausschalten', 'Mehr Geräte kaufen', 'Licht anlassen'], correct_answer: 'Geräte komplett ausschalten', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'der Umweltschutz', english_translation: 'the environmental protection', context_sentence: 'Jeder kann zum Umweltschutz beitragen.' },
      { german_word: 'die Müllvermeidung', english_translation: 'the waste prevention', context_sentence: 'Müllvermeidung ist ein wichtiger Bereich.' },
      { german_word: 'wiederverwendbar', english_translation: 'reusable', context_sentence: 'Eine wiederverwendbare Trinkflasche ist besser.' },
      { german_word: 'der Stoffbeutel', english_translation: 'the cloth bag', context_sentence: 'Ein Stoffbeutel hilft, Plastik zu vermeiden.' },
      { german_word: 'die Mülltrennung', english_translation: 'the waste separation', context_sentence: 'Die richtige Mülltrennung ist wichtig.' },
      { german_word: 'die Energieeinsparung', english_translation: 'the energy saving', context_sentence: 'Energieeinsparung ist ein wichtiger Punkt.' },
      { german_word: 'das Stoßlüften', english_translation: 'the airing by opening windows', context_sentence: 'Stoßlüften spart Energie.' },
      { german_word: 'der Fußabdruck', english_translation: 'the footprint', context_sentence: 'Den ökologischen Fußabdruck verringern.' },
    ],
  },
  {
    title: 'Nebenjob für Studenten', level: 'B1', category: 'work', word_count: 210, is_published: true,
    summary: 'Erfahrungen einer Studentin, die neben dem Studium als Kellnerin arbeitet.',
    content: 'Seit einem Jahr jobbe ich neben meinem Studium als Kellnerin in einem Café. Ich studiere Betriebswirtschaftslehre im dritten Semester, und das Geld, das ich durch den Nebenjob verdiene, hilft mir, meine Lebenshaltungskosten zu decken. Außerdem sammle ich wertvolle Berufserfahrung. Mein Job im Café ist anstrengend, aber ich arbeite gern dort. Ich bediene die Gäste, nehme Bestellungen auf und bereite auch Kaffeespezialitäten zu. Besonders in der Frühschicht ist viel los. Ich arbeite etwa zwölf Stunden pro Woche, meistens am Wochenende. Das ist manchmal stressig, weil ich auch für meine Prüfungen lernen muss. Aber ich habe gelernt, meine Zeit besser zu organisieren. Mein Chef ist sehr verständnisvoll und passt den Dienstplan an meinen Stundenplan an. Nach dem Studium möchte ich im Bereich Marketing arbeiten.',
    questions: [
      { question: 'Was studiert die Autorin?', options: ['Medizin', 'BWL', 'Germanistik', 'Informatik'], correct_answer: 'BWL', order_index: 1 },
      { question: 'Wie viele Stunden pro Woche arbeitet sie?', options: ['8', '10', '12', '15'], correct_answer: '12', order_index: 2 },
      { question: 'Wann arbeitet sie meistens?', options: ['Unter der Woche', 'Am Wochenende', 'In den Ferien', 'Abends'], correct_answer: 'Am Wochenende', order_index: 3 },
      { question: 'In welchem Bereich möchte sie später arbeiten?', options: ['Verkauf', 'Gastronomie', 'Marketing', 'Finanzen'], correct_answer: 'Marketing', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der Nebenjob', english_translation: 'the side job', context_sentence: 'Ich jobbe neben meinem Studium.' },
      { german_word: 'die Lebenshaltungskosten', english_translation: 'the living expenses', context_sentence: 'Das Geld deckt meine Lebenshaltungskosten.' },
      { german_word: 'die Berufserfahrung', english_translation: 'the professional experience', context_sentence: 'Ich sammle wertvolle Berufserfahrung.' },
      { german_word: 'anstrengend', english_translation: 'strenuous', context_sentence: 'Mein Job ist anstrengend, aber ich arbeite gern.' },
      { german_word: 'bedienen', english_translation: 'to serve', context_sentence: 'Ich bediene die Gäste.' },
      { german_word: 'verständnisvoll', english_translation: 'understanding', context_sentence: 'Mein Chef ist sehr verständnisvoll.' },
      { german_word: 'der Dienstplan', english_translation: 'the schedule', context_sentence: 'Er passt den Dienstplan an.' },
      { german_word: 'selbstbewusst', english_translation: 'self-confident', context_sentence: 'Ich werde selbstbewusster.' },
    ],
  },
  {
    title: 'Wohnungssuche in der Großstadt', level: 'B1', category: 'daily', word_count: 224, is_published: true,
    summary: 'Die Herausforderungen bei der Suche nach einer bezahlbaren Wohnung in München.',
    content: 'Eine Wohnung in einer deutschen Großstadt zu finden, ist heute eine echte Herausforderung. Besonders in Städten wie München, Frankfurt oder Hamburg sind die Mieten in den letzten Jahren stark gestiegen. Ich habe selbst drei Monate lang eine Wohnung in München gesucht und dabei viele Erfahrungen gesammelt. Zuerst habe ich mich auf verschiedenen Online-Portalen angemeldet. Dort musste ich schnell sein, denn viele Wohnungen waren innerhalb weniger Stunden nach der Anzeige schon wieder weg. Ich habe ungefähr vierzig Besichtigungstermine wahrgenommen und bei fünfzehn Wohnungen eine Bewerbungsmappe eingereicht. Die Bewerbungsmappe enthielt meine Schufa-Auskunft, eine Mietschuldenfreiheitsbescheinigung und meinen Einkommensnachweis. Am Ende hatte ich Glück und habe eine kleine Einzimmerwohnung im Stadtteil Schwabing bekommen. Die Wohnung hat 35 Quadratmeter und kostet 900 Euro warm.',
    questions: [
      { question: 'In welcher Stadt wurde gesucht?', options: ['Berlin', 'Hamburg', 'München', 'Frankfurt'], correct_answer: 'München', order_index: 1 },
      { question: 'Wie lange hat die Suche gedauert?', options: ['1 Monat', '2 Monate', '3 Monate', '4 Monate'], correct_answer: '3 Monate', order_index: 2 },
      { question: 'Wie viele Besichtigungen hatte er?', options: ['20', '30', '40', '50'], correct_answer: '40', order_index: 3 },
      { question: 'Wie groß ist die Wohnung?', options: ['25 qm', '35 qm', '45 qm', '55 qm'], correct_answer: '35 qm', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Wohnungssuche', english_translation: 'the apartment search', context_sentence: 'Die Wohnungssuche ist eine Herausforderung.' },
      { german_word: 'die Miete', english_translation: 'the rent', context_sentence: 'Die Mieten sind stark gestiegen.' },
      { german_word: 'die Besichtigung', english_translation: 'the viewing', context_sentence: 'Ich hatte vierzig Besichtigungstermine.' },
      { german_word: 'die Bewerbungsmappe', english_translation: 'the application folder', context_sentence: 'Ich habe eine Bewerbungsmappe eingereicht.' },
      { german_word: 'die Schufa-Auskunft', english_translation: 'the credit report', context_sentence: 'Die Mappe enthielt die Schufa-Auskunft.' },
      { german_word: 'der Einkommensnachweis', english_translation: 'the proof of income', context_sentence: 'Mein Einkommensnachweis war auch dabei.' },
      { german_word: 'die Einzimmerwohnung', english_translation: 'the one-room apartment', context_sentence: 'Ich habe eine Einzimmerwohnung bekommen.' },
      { german_word: 'günstig', english_translation: 'affordable', context_sentence: '900 Euro warm ist günstig für München.' },
    ],
  },
  {
    title: 'Reiseplanung mit der Bahn', level: 'B1', category: 'travel', word_count: 195, is_published: true,
    summary: 'Ein Erfahrungsbericht über eine Zugreise von Berlin nach Köln.',
    content: 'Letzten Monat habe ich eine Reise von Berlin nach Köln mit der Deutschen Bahn geplant. Ich wollte am Freitagnachmittag fahren, aber die Fahrkarten waren zu diesem Zeitpunkt sehr teuer. Deshalb habe ich mich für den Supersparpreis entschieden und ein Ticket für 17,99 Euro gebucht. Dafür war ich aber an einen bestimmten Zug gebunden. Die Reise sollte viereinhalb Stunden dauern. Leider hatte der Zug eine halbe Stunde Verspätung, weil auf der Strecke gebaut wurde. Unterwegs gab es eine Durchsage, dass wir einen anderen Weg nehmen mussten. Dadurch hat sich die Reisezeit um weitere 30 Minuten verlängert. Im Zug war es sehr voll, aber ich hatte zum Glück einen Sitzplatz reserviert. Ich habe die Zeit genutzt, um ein Buch zu lesen. Das Bordbistro war leider geschlossen, deshalb hatte ich nichts zu essen. Trotz der Verspätungen bin ich gut in Köln angekommen. Nächstes Mal werde ich vielleicht den Fernbus nehmen.',
    questions: [
      { question: 'Wie viel hat das Ticket gekostet?', options: ['27,99 Euro', '17,99 Euro', '37,99 Euro', '47,99 Euro'], correct_answer: '17,99 Euro', order_index: 1 },
      { question: 'Wie lange sollte die Reise dauern?', options: ['3 Stunden', '4,5 Stunden', '5 Stunden', '6 Stunden'], correct_answer: '4,5 Stunden', order_index: 2 },
      { question: 'Warum hatte der Zug Verspätung?', options: ['Wegen eines Streiks', 'Wegen Bauarbeiten', 'Wegen Schnee', 'Wegen einer Panne'], correct_answer: 'Wegen Bauarbeiten', order_index: 3 },
      { question: 'Was war im Zug geschlossen?', options: ['Die Toilette', 'Das Bordbistro', 'Das Abteil', 'Die Tür'], correct_answer: 'Das Bordbistro', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Reiseplanung', english_translation: 'the travel planning', context_sentence: 'Ich habe eine Reise geplant.' },
      { german_word: 'der Sparpreis', english_translation: 'the saver fare', context_sentence: 'Ich habe den Sparpreis gewählt.' },
      { german_word: 'die Fahrkarte', english_translation: 'the ticket', context_sentence: 'Die Fahrkarten waren teuer.' },
      { german_word: 'die Verspätung', english_translation: 'the delay', context_sentence: 'Der Zug hatte eine halbe Stunde Verspätung.' },
      { german_word: 'die Durchsage', english_translation: 'the announcement', context_sentence: 'Es gab eine Durchsage im Zug.' },
      { german_word: 'reservieren', english_translation: 'to reserve', context_sentence: 'Ich hatte einen Sitzplatz reserviert.' },
      { german_word: 'das Bordbistro', english_translation: 'the on-board bistro', context_sentence: 'Das Bordbistro war geschlossen.' },
      { german_word: 'der Fernbus', english_translation: 'the long-distance bus', context_sentence: 'Der Fernbus ist oft günstiger.' },
    ],
  },
]

// ===== B2 (5 articles) =====
const b2Articles: Article[] = [
  {
    title: 'Der Arbeitsmarkt in Deutschland', level: 'B2', category: 'work', word_count: 275, is_published: true,
    summary: 'Eine Analyse des deutschen Arbeitsmarktes mit Fokus auf Fachkräftemangel.',
    content: 'Der deutsche Arbeitsmarkt befindet sich im Wandel. Während die Arbeitslosigkeit in den letzten Jahren auf einem historischen Tiefstand liegt, kämpfen viele Unternehmen gleichzeitig mit einem eklatanten Fachkräftemangel. Besonders betroffen sind die Bereiche IT, Pflege und Handwerk. Schätzungen zufolge fehlen in Deutschland mehrere Hunderttausend Fachkräfte. Dieser Mangel hat verschiedene Ursachen. Zum einen geht die geburtenstarke Generation der Babyboomer in den kommenden Jahren in Rente. Zum anderen verändert die Digitalisierung die Anforderungen an die Arbeitnehmer. Die Politik versucht mit verschiedenen Maßnahmen gegenzusteuern. Dazu gehören die gezielte Einwanderung von Fachkräften aus dem Ausland, die Förderung der Weiterbildung und die Verbesserung der Vereinbarkeit von Familie und Beruf. Auch die zunehmende Flexibilisierung der Arbeit, etwa durch Homeoffice, trägt zur Veränderung bei. Experten sind sich einig, dass sich der Arbeitsmarkt in den nächsten Jahrzehnten grundlegend verändern wird.',
    questions: [
      { question: 'Mit welchem Problem kämpfen viele Unternehmen?', options: ['Hohe Arbeitslosigkeit', 'Fachkräftemangel', 'Niedrige Löhne', 'Zu viele Bewerber'], correct_answer: 'Fachkräftemangel', order_index: 1 },
      { question: 'Welche Bereiche sind besonders betroffen?', options: ['Landwirtschaft', 'IT, Pflege, Handwerk', 'Automobil', 'Banken'], correct_answer: 'IT, Pflege, Handwerk', order_index: 2 },
      { question: 'Welche Maßnahmen ergreift die Politik?', options: ['Höhere Steuern', 'Einwanderung und Weiterbildung', 'Mehr Urlaub', 'Kürzere Arbeitszeiten'], correct_answer: 'Einwanderung und Weiterbildung', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'der Arbeitsmarkt', english_translation: 'the labor market', context_sentence: 'Der Arbeitsmarkt befindet sich im Wandel.' },
      { german_word: 'der Fachkräftemangel', english_translation: 'the skilled worker shortage', context_sentence: 'Unternehmen kämpfen mit Fachkräftemangel.' },
      { german_word: 'der Babyboomer', english_translation: 'the baby boomer', context_sentence: 'Die Babyboomer gehen in Rente.' },
      { german_word: 'die Weiterbildung', english_translation: 'the further education', context_sentence: 'Die Weiterbildung wird gefördert.' },
      { german_word: 'die Vereinbarkeit', english_translation: 'the compatibility', context_sentence: 'Die Vereinbarkeit von Familie und Beruf.' },
      { german_word: 'die Flexibilisierung', english_translation: 'the flexibilization', context_sentence: 'Die Flexibilisierung der Arbeit nimmt zu.' },
      { german_word: 'das Homeoffice', english_translation: 'the home office', context_sentence: 'Homeoffice wird immer wichtiger.' },
    ],
  },
  {
    title: 'Kulturelle Vielfalt in Deutschland', level: 'B2', category: 'society', word_count: 290, is_published: true,
    summary: 'Ein Essay über Multikulturalität und die Bereicherung durch kulturelle Vielfalt.',
    content: 'Deutschland ist ein Einwanderungsland. Etwa ein Viertel der Bevölkerung hat einen Migrationshintergrund. Diese kulturelle Vielfalt prägt das gesellschaftliche Leben in vielen Bereichen. In den Großstädten ist die Multikulturalität längst Alltag. Internationale Restaurants, mehrsprachige Kindergärten und multikulturelle Stadtfeste sind nur einige Beispiele. Besonders die türkisch-deutsche Community hat die deutsche Kultur nachhaltig beeinflusst. Der Döner Kebab ist inzwischen ebenso deutsch wie die Currywurst. Auch die italienische, griechische und kroatische Küche gehören fest zur deutschen Esskultur. Die kulturelle Vielfalt bringt jedoch auch Herausforderungen mit sich. Die Integration von Zugewanderten gelingt nicht immer reibungslos. Sprachbarrieren, unterschiedliche kulturelle Normen und Vorurteile auf beiden Seiten können den Prozess erschweren. Erfolgreiche Integrationspolitik setzt auf frühe Sprachförderung, Arbeitsmarktintegration und interkulturellen Austausch. Studien zeigen, dass Vielfalt Unternehmen und Gesellschaft langfristig bereichert.',
    questions: [
      { question: 'Wie viel Prozent hat Migrationshintergrund?', options: ['10%', '20%', '25%', '33%'], correct_answer: '25%', order_index: 1 },
      { question: 'Welche Community hat die deutsche Kultur besonders beeinflusst?', options: ['Italienische', 'Türkisch-deutsche', 'Griechische', 'Polnische'], correct_answer: 'Türkisch-deutsche', order_index: 2 },
      { question: 'Welche Herausforderung wird genannt?', options: ['Zu viele Restaurants', 'Sprachbarrieren und Vorurteile', 'Zu viele Feiertage', 'Hohe Mieten'], correct_answer: 'Sprachbarrieren und Vorurteile', order_index: 3 },
    ],
    vocabulary: [
      { german_word: 'die Vielfalt', english_translation: 'the diversity', context_sentence: 'Kulturelle Vielfalt prägt das Leben.' },
      { german_word: 'der Migrationshintergrund', english_translation: 'the migration background', context_sentence: 'Ein Viertel hat Migrationshintergrund.' },
      { german_word: 'multikulturell', english_translation: 'multicultural', context_sentence: 'Multikulturelle Stadtfeste sind Beispiele.' },
      { german_word: 'die Integration', english_translation: 'the integration', context_sentence: 'Die Integration gelingt nicht immer reibungslos.' },
      { german_word: 'die Sprachbarriere', english_translation: 'the language barrier', context_sentence: 'Sprachbarrieren erschweren die Integration.' },
      { german_word: 'das Vorurteil', english_translation: 'the prejudice', context_sentence: 'Vorurteile auf beiden Seiten.' },
      { german_word: 'die Sprachförderung', english_translation: 'the language support', context_sentence: 'Sprachförderung ist wichtig.' },
      { german_word: 'der Austausch', english_translation: 'the exchange', context_sentence: 'Interkultureller Austausch ist wichtig.' },
    ],
  },
  {
    title: 'Klimapolitik in Deutschland', level: 'B2', category: 'environment', word_count: 310, is_published: true,
    summary: 'Eine kritische Betrachtung der deutschen Klimapolitik mit Erfolgen und Defiziten.',
    content: 'Die Klimapolitik ist eines der zentralen Themen in der deutschen Politik. Mit der Energiewende hat Deutschland frühzeitig den Ausstieg aus der Kernenergie beschlossen und den Ausbau erneuerbarer Energien vorangetrieben. Inzwischen stammt mehr als die Hälfte des in Deutschland erzeugten Stroms aus erneuerbaren Quellen wie Wind, Sonne und Biomasse. Allerdings gibt es auch erhebliche Defizite. Der Verkehrssektor und der Gebäudebereich haben ihre Klimaziele in den vergangenen Jahren deutlich verfehlt. Besonders problematisch ist der Ausstoß von Treibhausgasen im Straßenverkehr. Ein weiteres Problem ist der Kohleausstieg. Ursprünglich war das Jahr 2038 als Enddatum vorgesehen, doch viele Experten fordern einen früheren Ausstieg. Die Einführung eines nationalen Emissionshandelssystems für die Bereiche Verkehr und Wärme im Jahr 2021 war ein wichtiger Schritt. Ob die aktuellen Maßnahmen ausreichen, um die Pariser Klimaziele zu erreichen, bleibt fraglich.',
    questions: [
      { question: 'Woraus stammt mehr als die Hälfte des Stroms?', options: ['Kohle', 'Erneuerbare Energien', 'Kernenergie', 'Gas'], correct_answer: 'Erneuerbare Energien', order_index: 1 },
      { question: 'Welche Sektoren haben ihre Ziele verfehlt?', options: ['Landwirtschaft und Industrie', 'Verkehr und Gebäude', 'Energie und Handel', 'Tourismus'], correct_answer: 'Verkehr und Gebäude', order_index: 2 },
      { question: 'Bis wann war der Kohleausstieg geplant?', options: ['2030', '2035', '2038', '2045'], correct_answer: '2038', order_index: 3 },
      { question: 'Was wurde 2021 eingeführt?', options: ['Tempolimit', 'Emissionshandelssystem', 'Klimasteuer', 'Fahrverbot'], correct_answer: 'Emissionshandelssystem', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Klimapolitik', english_translation: 'the climate policy', context_sentence: 'Klimapolitik ist ein zentrales Thema.' },
      { german_word: 'die Energiewende', english_translation: 'the energy transition', context_sentence: 'Die Energiewende wurde früh beschlossen.' },
      { german_word: 'die Kernenergie', english_translation: 'the nuclear energy', context_sentence: 'Deutschland ist aus der Kernenergie ausgestiegen.' },
      { german_word: 'die erneuerbare Energie', english_translation: 'the renewable energy', context_sentence: 'Erneuerbare Energien wurden ausgebaut.' },
      { german_word: 'das Treibhausgas', english_translation: 'the greenhouse gas', context_sentence: 'Der Ausstoß von Treibhausgasen ist problematisch.' },
      { german_word: 'der Kohleausstieg', english_translation: 'the coal phase-out', context_sentence: 'Der Kohleausstieg ist für 2038 geplant.' },
      { german_word: 'der Emissionshandel', english_translation: 'the emissions trading', context_sentence: 'Ein Emissionshandelssystem wurde eingeführt.' },
    ],
  },
  {
    title: 'Das deutsche Bildungssystem', level: 'B2', category: 'education', word_count: 280, is_published: true,
    summary: 'Eine Übersicht über den Aufbau des deutschen Schulsystems und aktuelle Reformdebatten.',
    content: 'Das deutsche Bildungssystem ist föderal organisiert, das heißt, jedes Bundesland ist für seine Schulen selbst verantwortlich. Diese Struktur führt zu erheblichen Unterschieden zwischen den Ländern. Nach der Grundschule, die vier bis sechs Jahre dauert, werden die Schüler auf verschiedene Schulformen verteilt. Die wichtigsten sind die Hauptschule, die Realschule und das Gymnasium. Hinzu kommen Gesamtschulen, die alle Schulformen unter einem Dach vereinen. Die Entscheidung über den weiteren Bildungsweg wird meist am Ende der vierten Klasse getroffen. Dieser frühe Zeitpunkt wird seit Jahren kritisiert. Kritiker argumentieren, dass Kinder in diesem Alter noch nicht ausreichend beurteilt werden können. Eine weitere Debatte betrifft die Digitalisierung der Schulen. Während der Corona-Pandemie wurde deutlich, dass viele Schulen technisch schlecht ausgestattet sind. Der Digitalpakt der Bundesregierung stellt zwar Milliarden zur Verfügung, die Umsetzung kommt aber vielerorts nur langsam voran.',
    questions: [
      { question: 'Wie ist das Bildungssystem organisiert?', options: ['Zentral', 'Föderal', 'Privat', 'International'], correct_answer: 'Föderal', order_index: 1 },
      { question: 'Welche Schulform vereint alle Schulformen?', options: ['Gymnasium', 'Realschule', 'Gesamtschule', 'Hauptschule'], correct_answer: 'Gesamtschule', order_index: 2 },
      { question: 'Warum wird der frühe Entscheidungszeitpunkt kritisiert?', options: ['Schulen zu weit weg', 'Kinder zu jung', 'Eltern haben keine Wahl', 'Noten stimmen nicht'], correct_answer: 'Kinder zu jung', order_index: 3 },
      { question: 'Was zeigte die Corona-Pandemie?', options: ['Schulen zu voll', 'Digitalisierung mangelhaft', 'Lehrer zu streng', 'Zu viele Ferien'], correct_answer: 'Digitalisierung mangelhaft', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'das Bildungssystem', english_translation: 'the education system', context_sentence: 'Das Bildungssystem ist föderal organisiert.' },
      { german_word: 'föderal', english_translation: 'federal', context_sentence: 'Jedes Bundesland ist selbst verantwortlich.' },
      { german_word: 'die Grundschule', english_translation: 'the primary school', context_sentence: 'Nach der Grundschule werden Schüler verteilt.' },
      { german_word: 'das Gymnasium', english_translation: 'the grammar school', context_sentence: 'Das Gymnasium führt zum Abitur.' },
      { german_word: 'die Gesamtschule', english_translation: 'the comprehensive school', context_sentence: 'Gesamtschulen vereinen alle Schulformen.' },
      { german_word: 'die Pandemie', english_translation: 'the pandemic', context_sentence: 'Die Corona-Pandemie zeigte Defizite.' },
      { german_word: 'der Digitalpakt', english_translation: 'the digital pact', context_sentence: 'Der Digitalpakt stellt Milliarden bereit.' },
    ],
  },
  {
    title: 'Soziale Medien und ihre Auswirkungen', level: 'B2', category: 'technology', word_count: 305, is_published: true,
    summary: 'Eine differenzierte Analyse der Vor- und Nachteile von sozialen Medien.',
    content: 'Soziale Medien sind aus dem modernen Alltag nicht mehr wegzudenken. Plattformen wie Instagram, TikTok und YouTube haben die Art und Weise, wie wir kommunizieren, grundlegend verändert. Auf der positiven Seite ermöglichen soziale Netzwerke eine schnelle Verbreitung von Informationen und eine Vernetzung von Menschen über Ländergrenzen hinweg. Auch für Unternehmen sind sie unverzichtbar geworden: Marketing, Kundenbindung und Personalgewinnung laufen heute maßgeblich über soziale Kanäle. Allerdings zeigen Studien auch erhebliche negative Effekte. Die ständige Nutzung kann zu Suchtverhalten führen und das Selbstwertgefühl beeinträchtigen. Besonders bei Jugendlichen beobachten Psychologen eine Zunahme von Ängsten und Depressionen. Ein weiteres Problem ist die Verbreitung von Falschinformationen. Fake News verbreiten sich auf Plattformen oft schneller als seriöse Nachrichten. Die Filterblasen und Echokammern verstärken diesen Effekt. Die Politik steht vor der Herausforderung, Regulierungen zu schaffen, die diese Probleme angehen.',
    questions: [
      { question: 'Welche positiven Aspekte werden genannt?', options: ['Kostenlose Produkte', 'Schnelle Informationsverbreitung', 'Mehr Freizeit', 'Bessere Noten'], correct_answer: 'Schnelle Informationsverbreitung', order_index: 1 },
      { question: 'Welchen negativen Effekt haben soziale Medien?', options: ['Höhere Intelligenz', 'Suchtverhalten', 'Mehr Sport', 'Bessere Konzentration'], correct_answer: 'Suchtverhalten', order_index: 2 },
      { question: 'Was verbreitet sich besonders schnell?', options: ['Lehrbücher', 'Falschinformationen', 'Studien', 'Dokumente'], correct_answer: 'Falschinformationen', order_index: 3 },
      { question: 'Was ist eine Filterblase?', options: ['Eine App', 'Nur eigene Meinungen', 'Ein Tool', 'Eine Einstellung'], correct_answer: 'Nur eigene Meinungen', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die sozialen Medien', english_translation: 'the social media', context_sentence: 'Soziale Medien sind allgegenwärtig.' },
      { german_word: 'die Vernetzung', english_translation: 'the networking', context_sentence: 'Vernetzung über Ländergrenzen.' },
      { german_word: 'das Suchtverhalten', english_translation: 'the addictive behavior', context_sentence: 'Nutzung kann zu Suchtverhalten führen.' },
      { german_word: 'das Selbstwertgefühl', english_translation: 'the self-esteem', context_sentence: 'Soziale Medien beeinträchtigen das Selbstwertgefühl.' },
      { german_word: 'die Falschinformation', english_translation: 'the misinformation', context_sentence: 'Falschinformationen verbreiten sich schnell.' },
      { german_word: 'die Filterblase', english_translation: 'the filter bubble', context_sentence: 'Filterblasen verstärken den Effekt.' },
      { german_word: 'die Regulierung', english_translation: 'the regulation', context_sentence: 'Die Politik schafft Regulierungen.' },
    ],
  },
]

// ===== C1 (4 articles) =====
const c1Articles: Article[] = [
  {
    title: 'Energiewende kontrovers', level: 'C1', category: 'environment', word_count: 420, is_published: true,
    summary: 'Eine kontroverse Diskussion über die deutsche Energiewende zwischen Befürwortern und Kritikern.',
    content: 'Die deutsche Energiewende gilt international als ambitioniertes Vorzeigeprojekt, wird aber im Inland zunehmend kontrovers diskutiert. Während die Befürworter auf die erfolgreiche Reduktion der Treibhausgasemissionen und den rasanten Ausbau der erneuerbaren Energien verweisen, kritisieren Gegner vor allem die hohen Kosten und die mangelnde Versorgungssicherheit. Tatsächlich ist der Anteil erneuerbarer Energien am Bruttostromverbrauch von unter zehn Prozent im Jahr 2000 auf über fünfzig Prozent im Jahr 2023 gestiegen. Gleichzeitig haben sich die Stromkosten für Privathaushalte erheblich erhöht. Kritiker bemängeln zudem die unzureichende Netzinfrastruktur. Der Ausbau der Stromnetze, der für den Transport von Windenergie aus dem Norden in die Industriezentren im Süden notwendig wäre, kommt nur schleppend voran. Auch die Frage der Speichertechnologien ist noch nicht zufriedenstellend gelöst. Ein weiterer Streitpunkt betrifft die sozialen Auswirkungen. Während Gutverdiener sich Photovoltaikanlagen leisten können, sind einkommensschwächere Haushalte von den gestiegenen Energiekosten überproportional betroffen. Eine sozial gerechte Energiewende müsse die finanziellen Lasten fairer verteilen.',
    questions: [
      { question: 'Wie hoch war der Anteil erneuerbarer Energien 2023?', options: ['Unter 30%', 'Etwa 40%', 'Über 50%', 'Über 70%'], correct_answer: 'Über 50%', order_index: 1 },
      { question: 'Welches Problem gibt es bei der Netzinfrastruktur?', options: ['Zu teuer', 'Ausbau schleppend', 'Veraltet', 'Zu wenig genutzt'], correct_answer: 'Ausbau schleppend', order_index: 2 },
      { question: 'Welche technologische Herausforderung wird genannt?', options: ['Solarzellen', 'Speichertechnologien', 'Windräder', 'Wasserkraft'], correct_answer: 'Speichertechnologien', order_index: 3 },
      { question: 'Wer ist überproportional von Energiekosten betroffen?', options: ['Großunternehmen', 'Gutverdiener', 'Einkommensschwache', 'Industrie'], correct_answer: 'Einkommensschwache', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Energiewende', english_translation: 'the energy transition', context_sentence: 'Die Energiewende wird kontrovers diskutiert.' },
      { german_word: 'kontrovers', english_translation: 'controversial', context_sentence: 'Die Energiewende ist kontrovers.' },
      { german_word: 'ambitioniert', english_translation: 'ambitious', context_sentence: 'Es ist ein ambitioniertes Projekt.' },
      { german_word: 'die Versorgungssicherheit', english_translation: 'the supply security', context_sentence: 'Gegner kritisieren die Versorgungssicherheit.' },
      { german_word: 'die Netzinfrastruktur', english_translation: 'the grid infrastructure', context_sentence: 'Die Netzinfrastruktur ist unzureichend.' },
      { german_word: 'schleppend', english_translation: 'slowly', context_sentence: 'Der Ausbau kommt schleppend voran.' },
      { german_word: 'die Speichertechnologie', english_translation: 'the storage technology', context_sentence: 'Speichertechnologien sind unzureichend.' },
      { german_word: 'überproportional', english_translation: 'disproportionately', context_sentence: 'Einkommensschwache sind überproportional betroffen.' },
    ],
  },
  {
    title: 'Demografischer Wandel', level: 'C1', category: 'society', word_count: 450, is_published: true,
    summary: 'Eine tiefgehende Analyse des demografischen Wandels und seiner Konsequenzen.',
    content: 'Der demografische Wandel ist eine der größten gesellschaftlichen Herausforderungen Deutschlands im 21. Jahrhundert. Die Bevölkerung altert und schrumpft, während die Lebenserwartung steigt. Laut Statistischem Bundesamt wird der Anteil der über 67-Jährigen von derzeit etwa 19 Prozent bis zum Jahr 2040 auf rund 28 Prozent ansteigen. Im Gegensatz dazu sinkt der Anteil der jungen Menschen kontinuierlich. Diese Entwicklung hat weitreichende Konsequenzen. Besonders betroffen ist das Rentensystem. Das Umlageverfahren, bei dem die aktuell Beschäftigten die Renten der Rentner finanzieren, gerät zunehmend unter Druck. Immer weniger Erwerbstätige müssen für immer mehr Rentner aufkommen. Die Politik reagiert mit Maßnahmen wie der schrittweisen Anhebung des Renteneintrittsalters auf 67 Jahre. Auch der Arbeitsmarkt steht vor großen Veränderungen. Der Fachkräftemangel wird sich weiter verschärfen. Eine verstärkte Zuwanderung qualifizierter Fachkräfte wird als notwendige Lösung diskutiert. Darüber hinaus werden barrierefreie Wohnungen und eine alterungsgerechte Gesundheitsversorgung immer wichtiger.',
    questions: [
      { question: 'Wie hoch wird der Anteil der über 67-Jährigen bis 2040 sein?', options: ['19%', '24%', '28%', '32%'], correct_answer: '28%', order_index: 1 },
      { question: 'Welches System ist besonders betroffen?', options: ['Gesundheitssystem', 'Rentensystem', 'Bildungssystem', 'Rechtssystem'], correct_answer: 'Rentensystem', order_index: 2 },
      { question: 'Mit welcher Maßnahme reagiert die Politik?', options: ['Renten senken', 'Renteneintrittsalter anheben', 'Rente abschaffen', 'Geburtenrate erhöhen'], correct_answer: 'Renteneintrittsalter anheben', order_index: 3 },
      { question: 'Welche Infrastruktur wird immer wichtiger?', options: ['Autobahnen', 'Barrierefreie Wohnungen', 'Schulen', 'Sportstätten'], correct_answer: 'Barrierefreie Wohnungen', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'der demografische Wandel', english_translation: 'the demographic change', context_sentence: 'Der demografische Wandel ist eine Herausforderung.' },
      { german_word: 'die Lebenserwartung', english_translation: 'the life expectancy', context_sentence: 'Die Lebenserwartung steigt.' },
      { german_word: 'das Umlageverfahren', english_translation: 'the pay-as-you-go system', context_sentence: 'Das Rentensystem ist ein Umlageverfahren.' },
      { german_word: 'die Altersvorsorge', english_translation: 'the retirement provision', context_sentence: 'Private Altersvorsorge wird gefördert.' },
      { german_word: 'sich verschärfen', english_translation: 'to worsen', context_sentence: 'Der Fachkräftemangel verschärft sich.' },
      { german_word: 'die Zuwanderung', english_translation: 'the immigration', context_sentence: 'Zuwanderung von Fachkräften wird diskutiert.' },
      { german_word: 'barrierefrei', english_translation: 'barrier-free', context_sentence: 'Barrierefreie Wohnungen werden wichtiger.' },
    ],
  },
  {
    title: 'Integration und Migration', level: 'C1', category: 'society', word_count: 395, is_published: true,
    summary: 'Eine differenzierte Betrachtung der Integrationsdebatte in Deutschland.',
    content: 'Die Debatte über Integration und Migration prägt die deutsche Gesellschaft seit Jahrzehnten. Historisch betrachtet verlief die Entwicklung in mehreren Phasen. Nach dem Zweiten Weltkrieg kamen zunächst Vertriebene und Flüchtlinge, später in den 1950er und 1960er Jahren die sogenannten Gastarbeiter vorwiegend aus Italien, Spanien, Griechenland und der Türkei. Ursprünglich war ihr Aufenthalt als temporär geplant, doch viele blieben dauerhaft. Aus der Gastarbeiter-Migration entwickelte sich eine dauerhafte Einwanderungssituation. Erst mit dem Zuwanderungsgesetz von 2005 und dem Fachkräfteeinwanderungsgesetz von 2020 wurden strukturierte Rahmenbedingungen geschaffen. Die Integration verläuft in verschiedenen Bereichen unterschiedlich erfolgreich. Während die strukturelle Integration in den Arbeitsmarkt bei vielen Migrantengruppen gut gelingt, bleiben Defizite im Bildungsbereich bestehen. Sprachkenntnisse gelten als der zentrale Schlüssel für eine erfolgreiche Integration. Studien belegen, dass der Besuch eines Integrationskurses die Chancen auf dem Arbeitsmarkt signifikant verbessert.',
    questions: [
      { question: 'Aus welchen Ländern kamen die Gastarbeiter hauptsächlich?', options: ['Frankreich, Belgien', 'Italien, Spanien, Griechenland, Türkei', 'Polen, Tschechien', 'Portugal, Marokko'], correct_answer: 'Italien, Spanien, Griechenland, Türkei', order_index: 1 },
      { question: 'Wann wurde das Zuwanderungsgesetz verabschiedet?', options: ['1995', '2000', '2005', '2010'], correct_answer: '2005', order_index: 2 },
      { question: 'Welche Integration gelingt gut?', options: ['Kulturelle', 'In den Arbeitsmarkt', 'Bildung', 'Politische'], correct_answer: 'In den Arbeitsmarkt', order_index: 3 },
      { question: 'Was gilt als Schlüssel für Integration?', options: ['Pass', 'Sprachkenntnisse', 'Einkommen', 'Wohnung'], correct_answer: 'Sprachkenntnisse', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Integration', english_translation: 'the integration', context_sentence: 'Integration prägt die Gesellschaft.' },
      { german_word: 'die Migration', english_translation: 'the migration', context_sentence: 'Migration ist ein zentrales Thema.' },
      { german_word: 'der Gastarbeiter', english_translation: 'the guest worker', context_sentence: 'Gastarbeiter kamen aus der Türkei.' },
      { german_word: 'temporär', english_translation: 'temporary', context_sentence: 'Der Aufenthalt war temporär geplant.' },
      { german_word: 'das Zuwanderungsgesetz', english_translation: 'the immigration law', context_sentence: 'Das Zuwanderungsgesetz kam 2005.' },
      { german_word: 'das Fachkräfteeinwanderungsgesetz', english_translation: 'the Skilled Immigration Act', context_sentence: 'Das Gesetz kam 2020.' },
      { german_word: 'die Sprachförderung', english_translation: 'the language support', context_sentence: 'Sprachförderung ist zentral.' },
    ],
  },
  {
    title: 'Wirtschaft 4.0', level: 'C1', category: 'technology', word_count: 380, is_published: true,
    summary: 'Eine Analyse der vierten industriellen Revolution und ihrer Chancen und Risiken.',
    content: 'Der Begriff Industrie 4.0 bezeichnet die vierte industrielle Revolution, die durch die Vernetzung von Produktionsprozessen und den Einsatz intelligenter Technologien gekennzeichnet ist. Im Kern geht es um die Digitalisierung und Automatisierung der gesamten Wertschöpfungskette. Maschinen kommunizieren miteinander, Produktionsdaten werden in Echtzeit analysiert und Fertigungsprozesse selbstständig optimiert. Deutschland kommt bei diesem Wandel eine Schlüsselrolle zu. Die deutsche Industrie investiert massiv in die Entwicklung von Cyber-Physischen Systemen und dem Internet der Dinge. Ein zentrales Element ist die Smart Factory, in der Menschen, Maschinen und Systeme in Echtzeit zusammenarbeiten. Die Potenziale sind enorm: Effizienzsteigerungen und Ressourcenschonung. Gleichzeitig bringt Industrie 4.0 erhebliche Herausforderungen mit sich. Der Strukturwandel wird viele Arbeitsplätze kosten, besonders im Bereich der einfachen Fertigung. Gleichzeitig entstehen neue Berufsfelder in der Datenanalyse und IT-Sicherheit. Auch der Datenschutz und die Cybersicherheit gewinnen an Bedeutung. Kritiker warnen vor einer zunehmenden Überwachung der Arbeitnehmer.',
    questions: [
      { question: 'Was kennzeichnet die vierte industrielle Revolution?', options: ['Dampfmaschinen', 'Vernetzung und intelligente Technologien', 'Fließbandproduktion', 'Elektrizität'], correct_answer: 'Vernetzung und intelligente Technologien', order_index: 1 },
      { question: 'Welche deutschen Industriezweige investieren besonders?', options: ['Textil', 'Maschinenbau, Auto, Elektro', 'Tourismus', 'Landwirtschaft'], correct_answer: 'Maschinenbau, Auto, Elektro', order_index: 2 },
      { question: 'Welche neuen Berufsfelder entstehen?', options: ['Schlosser', 'Datenanalyse, IT-Sicherheit', 'Verkäufer', 'Bauarbeiter'], correct_answer: 'Datenanalyse, IT-Sicherheit', order_index: 3 },
      { question: 'Wovor warnen Kritiker?', options: ['Zu hohe Löhne', 'Überwachung und Entfremdung', 'Zu viel Freizeit', 'Konkurrenz'], correct_answer: 'Überwachung und Entfremdung', order_index: 4 },
    ],
    vocabulary: [
      { german_word: 'die Industrie 4.0', english_translation: 'the Industry 4.0', context_sentence: 'Industrie 4.0 ist die vierte Revolution.' },
      { german_word: 'die Vernetzung', english_translation: 'the networking', context_sentence: 'Vernetzung von Produktionsprozessen.' },
      { german_word: 'die Wertschöpfungskette', english_translation: 'the value chain', context_sentence: 'Die Wertschöpfungskette wird digitalisiert.' },
      { german_word: 'die Echtzeit', english_translation: 'the real time', context_sentence: 'Daten werden in Echtzeit analysiert.' },
      { german_word: 'die Smart Factory', english_translation: 'the smart factory', context_sentence: 'In der Smart Factory arbeiten Mensch und Maschine.' },
      { german_word: 'der Strukturwandel', english_translation: 'the structural change', context_sentence: 'Der Strukturwandel kostet Arbeitsplätze.' },
      { german_word: 'die Cybersicherheit', english_translation: 'the cybersecurity', context_sentence: 'Cybersicherheit gewinnt an Bedeutung.' },
      { german_word: 'die Entfremdung', english_translation: 'the alienation', context_sentence: 'Kritiker warnen vor Entfremdung.' },
    ],
  },
]

articles.push(...a2Articles, ...b1Articles, ...b2Articles, ...c1Articles)

// ============================================
// AUDIO LESSONS
// ============================================

const audioLessons: AudioLesson[] = [
  // A1 (6)
  { title: 'Begrüßungen und Vorstellung', level: 'A1', category: 'basics', duration_seconds: 90, is_published: true,
    audio_url: af(1), description: 'Lerne, wie man sich auf Deutsch begrüßt.', transcript: 'Hallo! Guten Morgen! Guten Tag! Guten Abend! Das sind die wichtigsten Begrüßungen. Wie heißt du? Ich heiße Anna. Freut mich! Woher kommst du? Ich komme aus Spanien. Wohnst du in Berlin? Ja, ich wohne in Berlin. Tschüss! Auf Wiedersehen!',
    exercises: [
      { question: 'Was sagt man am Morgen?', options: ['Guten Abend', 'Gute Nacht', 'Guten Morgen', 'Tschüss'], correct_answer: 'Guten Morgen', order_index: 1 },
      { question: 'Woher kommt Anna?', options: ['Italien', 'Spanien', 'Deutschland', 'Frankreich'], correct_answer: 'Spanien', order_index: 2 },
    ] },
  { title: 'Zahlen und Alphabet', level: 'A1', category: 'basics', duration_seconds: 100, is_published: true,
    audio_url: af(2), description: 'Übe die Zahlen von 1 bis 20 und das Alphabet.', transcript: 'Eins, zwei, drei, vier, fünf, sechs, sieben, acht, neun, zehn. Elf, zwölf, dreizehn, vierzehn, fünfzehn. Das Alphabet: A, B, C, D, E, F, G. Besondere Buchstaben: Ä, Ö, Ü und ß. Wie alt bist du? Ich bin zehn Jahre alt.',
    exercises: [
      { question: 'Wie sagt man 15?', options: ['Fünfzehn', 'Fünfzig', 'Fünfundzwanzig', 'Fünfzehnhundert'], correct_answer: 'Fünfzehn', order_index: 1 },
      { question: 'Welcher Buchstabe ist besonders?', options: ['C', 'Q', 'Ü', 'X'], correct_answer: 'Ü', order_index: 2 },
    ] },
  { title: 'Beim Einkaufen', level: 'A1', category: 'daily', duration_seconds: 110, is_published: true,
    audio_url: af(3), description: 'Typische Sätze für den Einkauf.', transcript: 'Guten Tag! Kann ich helfen? Ich suche frische Brötchen. Die Brötchen sind dort hinten. Was kostet der Käse? 3 Euro 50. Ich nehme zwei Stück. Zahlen Sie bar oder mit Karte? Mit Karte. Das macht 8 Euro 20. Vielen Dank!',
    exercises: [
      { question: 'Was sucht der Kunde zuerst?', options: ['Käse', 'Milch', 'Brötchen', 'Eier'], correct_answer: 'Brötchen', order_index: 1 },
      { question: 'Wie viel kostet der Käse?', options: ['2,50', '3,50', '4,00', '8,20'], correct_answer: '3,50', order_index: 2 },
      { question: 'Wie wird bezahlt?', options: ['Bar', 'Mit Karte', 'Mit Handy', 'Mit Schein'], correct_answer: 'Mit Karte', order_index: 3 },
    ] },
  { title: 'Meine Familie', level: 'A1', category: 'basics', duration_seconds: 95, is_published: true,
    audio_url: af(4), description: 'Ein Gespräch über die Familie.', transcript: 'Erzähl mir von deiner Familie! Meine Mutter heißt Claudia, mein Vater Thomas. Ich habe eine Schwester und einen Bruder. Meine Schwester studiert Medizin. Meine Großeltern wohnen in der Nähe. Meine Oma kocht sehr gut. Ich besuche sie jeden Sonntag.',
    exercises: [
      { question: 'Wie heißt die Mutter?', options: ['Claudia', 'Maria', 'Anna', 'Laura'], correct_answer: 'Claudia', order_index: 1 },
      { question: 'Was macht die Schwester?', options: ['Sie studiert Medizin', 'Sie geht zur Schule', 'Sie arbeitet', 'Sie macht eine Ausbildung'], correct_answer: 'Sie studiert Medizin', order_index: 2 },
    ] },
  { title: 'Essen und Trinken', level: 'A1', category: 'daily', duration_seconds: 105, is_published: true,
    audio_url: af(5), description: 'Wortschatz rund um Essen.', transcript: 'Was isst du gern? Ich esse gern Pizza. Mein Lieblingsgericht ist Schnitzel mit Pommes. Am Morgen frühstücke ich. Ich trinke Kaffee. Magst du Obst? Ja, Äpfel und Bananen. Trinkst du gern Wasser oder Saft? Ich trinke gern Wasser.',
    exercises: [
      { question: 'Was ist das Lieblingsgericht?', options: ['Pizza', 'Spaghetti', 'Schnitzel mit Pommes', 'Salat'], correct_answer: 'Schnitzel mit Pommes', order_index: 1 },
      { question: 'Was trinkt die Person am Morgen?', options: ['Tee', 'Milch', 'Kaffee', 'Saft'], correct_answer: 'Kaffee', order_index: 2 },
    ] },
  { title: 'Das Wetter', level: 'A1', category: 'basics', duration_seconds: 85, is_published: true,
    audio_url: af(6), description: 'Sätze über das Wetter.', transcript: 'Wie ist das Wetter heute? Die Sonne scheint, es ist warm. 25 Grad. Im Winter schneit es. Die Kinder bauen Schneemänner. Im Frühling blühen die Blumen. Im Herbst fallen die Blätter. Welche Jahreszeit magst du? Ich mag den Sommer.',
    exercises: [
      { question: 'Wie ist das Wetter?', options: ['Es regnet', 'Es schneit', 'Die Sonne scheint', 'Es ist kalt'], correct_answer: 'Die Sonne scheint', order_index: 1 },
      { question: 'Welche Temperatur?', options: ['20 Grad', '25 Grad', '30 Grad', '15 Grad'], correct_answer: '25 Grad', order_index: 2 },
    ] },
  // A2 (6)
  { title: 'Im Restaurant', level: 'A2', category: 'daily', duration_seconds: 130, is_published: true,
    audio_url: af(7), description: 'Bestellen und bezahlen im Restaurant.', transcript: 'Guten Abend! Haben Sie einen Tisch für zwei Personen? Ja, hier am Fenster. Ich hätte gern ein Glas Rotwein und eine Apfelschorle. Ich nehme das Schnitzel mit Pommes. Und ich die Bratwurst mit Kartoffelsalat. Hat es geschmeckt? Hervorragend! Zusammen oder getrennt? Zusammen, 42 Euro 50.',
    exercises: [
      { question: 'Was trinkt die erste Person?', options: ['Bier', 'Wein', 'Apfelschorle', 'Wasser'], correct_answer: 'Wein', order_index: 1 },
      { question: 'Was bestellt die zweite Person?', options: ['Schnitzel', 'Bratwurst mit Kartoffelsalat', 'Salat', 'Fisch'], correct_answer: 'Bratwurst mit Kartoffelsalat', order_index: 2 },
      { question: 'Wie viel wird bezahlt?', options: ['32,50', '42,50', '52,00', '38,00'], correct_answer: '42,50', order_index: 3 },
    ] },
  { title: 'Wegbeschreibung', level: 'A2', category: 'daily', duration_seconds: 140, is_published: true,
    audio_url: af(8), description: 'Nach dem Weg fragen und beschreiben.', transcript: 'Entschuldigung, wo ist der Bahnhof? Gehen Sie geradeaus bis zur Ampel, dann links. Nach 200 Metern sehen Sie den Bahnhof rechts. Und die nächste Apotheke? Die Apotheke ist in der Hauptstraße. Gehen Sie hier rechts um die Ecke, dann die zweite Straße links. Nur fünf Minuten zu Fuß.',
    exercises: [
      { question: 'Wohin möchte die Person zuerst?', options: ['Apotheke', 'Supermarkt', 'Bahnhof', 'Kirche'], correct_answer: 'Bahnhof', order_index: 1 },
      { question: 'Wie weit ist die Apotheke?', options: ['2 Minuten', '5 Minuten', '10 Minuten', '15 Minuten'], correct_answer: '5 Minuten', order_index: 2 },
    ] },
  { title: 'Eine neue Wohnung', level: 'A2', category: 'daily', duration_seconds: 125, is_published: true,
    audio_url: af(9), description: 'Wohnungsbesichtigung.', transcript: 'Willkommen zur Besichtigung! Die Wohnung hat 65 qm, zwei Zimmer, Küche und Bad. Dritter Stock mit Aufzug. Das Wohnzimmer hat große Fenster. Die Küche ist mit Herd und Kühlschrank ausgestattet. Kaltmiete 750 Euro, Nebenkosten 150 Euro. Kaution drei Kaltmieten. Einzug ab 1. nächsten Monats.',
    exercises: [
      { question: 'Wie viele qm hat die Wohnung?', options: ['45', '55', '65', '75'], correct_answer: '65', order_index: 1 },
      { question: 'Wie hoch ist die Kaution?', options: ['750', '1500', '2250', '2700'], correct_answer: '2250', order_index: 2 },
    ] },
  { title: 'Termin beim Arzt', level: 'A2', category: 'health', duration_seconds: 120, is_published: true,
    audio_url: af(10), description: 'Symptome beschreiben.', transcript: 'Guten Tag! Ich habe einen Termin um 10 Uhr. Herr Weber, kommen Sie herein! Was fehlt Ihnen? Ich habe seit drei Tagen Halsschmerzen und Husten. Haben Sie Fieber? 38,2 Grad. Machen Sie den Mund auf. Der Hals ist gerötet. Ich verschreibe Hustensaft und Halstabletten. Trinken Sie viel und ruhen Sie sich aus.',
    exercises: [
      { question: 'Seit wann hat der Patient Halsschmerzen?', options: ['1 Tag', '2 Tage', '3 Tage', '1 Woche'], correct_answer: '3 Tage', order_index: 1 },
      { question: 'Welche Temperatur hat er?', options: ['37,2', '38,2', '39,0', '36,8'], correct_answer: '38,2', order_index: 2 },
      { question: 'Was verschreibt der Arzt?', options: ['Antibiotika', 'Hustensaft und Halstabletten', 'Schmerztabletten', 'Vitamine'], correct_answer: 'Hustensaft und Halstabletten', order_index: 3 },
    ] },
  { title: 'Hobbys und Freizeit', level: 'A2', category: 'daily', duration_seconds: 115, is_published: true,
    audio_url: af(11), description: 'Über Freizeitaktivitäten.', transcript: 'Was machst du in deiner Freizeit? Ich spiele Gitarre und mache Sport. Tennis und Fitnessstudio, dreimal pro Woche. Ich fotografiere gern und lese Krimis. Der neue Film mit Tom Cruise soll gut sein. Sollen wir samstag ins Kino gehen? Ich hole dich um 18 Uhr ab!',
    exercises: [
      { question: 'Was ist das erste Hobby?', options: ['Fotografieren', 'Gitarre und Sport', 'Kino', 'Schwimmen'], correct_answer: 'Gitarre und Sport', order_index: 1 },
      { question: 'Wann gehen sie ins Kino?', options: ['Freitag', 'Samstag', 'Sonntag', 'Montag'], correct_answer: 'Samstag', order_index: 2 },
    ] },
  { title: 'Urlaubserinnerungen', level: 'A2', category: 'travel', duration_seconds: 135, is_published: true,
    audio_url: af(12), description: 'Zwei Freunde erzählen von ihren Urlauben.', transcript: 'Wo warst du im Urlaub? Ich war in Rom. Es war fantastisch! Kolosseum, Spanische Treppe, Vatikan. Das Wetter war perfekt. Und das Essen unglaublich! Ich war in den Bergen in Österreich. Gewandert, die Natur genossen. In einer Berghütte geschlafen. Nächstes Jahr möchte ich nach Spanien.',
    exercises: [
      { question: 'Wo war die erste Person?', options: ['Österreich', 'Spanien', 'Italien', 'Frankreich'], correct_answer: 'Italien', order_index: 1 },
      { question: 'Wo hat die zweite Person geschlafen?', options: ['Hotel', 'Jugendherberge', 'Berghütte', 'Zelt'], correct_answer: 'Berghütte', order_index: 2 },
    ] },
  // B1 (6)
  { title: 'Das Vorstellungsgespräch', level: 'B1', category: 'work', duration_seconds: 160, is_published: true,
    audio_url: af(13), description: 'Simulation eines Bewerbungsgesprächs.', transcript: 'Guten Tag, Frau Schmidt! Ich habe Ihren Lebenslauf gelesen. Drei Jahre bei der Müller GmbH. Warum möchten Sie wechseln? Ich suche eine neue Herausforderung. Welche Stärken haben Sie? Ich bin organisiert und teamfähig. Können Sie mit Stress umgehen? Ja, ich habe gelernt, Prioritäten zu setzen. Wir melden uns nächste Woche.',
    exercises: [
      { question: 'Wo hat Frau Schmidt gearbeitet?', options: ['Schmidt GmbH', 'Müller GmbH', 'Meier AG', 'Weber KG'], correct_answer: 'Müller GmbH', order_index: 1 },
      { question: 'Warum möchte sie wechseln?', options: ['Gehalt', 'Standort', 'Neue Herausforderung', 'Arbeitszeit'], correct_answer: 'Neue Herausforderung', order_index: 2 },
      { question: 'Welche Stärke nennt sie zuerst?', options: ['Flexibilität', 'Organisiert und teamfähig', 'Kreativität', 'Sprachen'], correct_answer: 'Organisiert und teamfähig', order_index: 3 },
    ] },
  { title: 'Nachrichten verstehen', level: 'B1', category: 'daily', duration_seconds: 150, is_published: true,
    audio_url: af(14), description: 'Kurze Nachrichtenmeldungen.', transcript: 'Hier sind die Nachrichten. Die Bundesregierung hat heute neue Klimaziele beschlossen. Bis 2045 soll Deutschland klimaneutral sein. Im Sport: Die deutsche Fußballnationalmannschaft hat gestern 3:1 gewonnen. Das Wetter: Morgen wird es regnerisch bei 18 Grad. Und nun die Verkehrsmeldungen: Auf der A3 gibt es Stau zwischen Frankfurt und Wiesbaden.',
    exercises: [
      { question: 'Bis wann soll Deutschland klimaneutral sein?', options: ['2035', '2040', '2045', '2050'], correct_answer: '2045', order_index: 1 },
      { question: 'Wie hat die Fußballmannschaft gespielt?', options: ['1:0', '2:0', '3:1', '4:2'], correct_answer: '3:1', order_index: 2 },
    ] },
  { title: 'Eine Diskussion', level: 'B1', category: 'daily', duration_seconds: 170, is_published: true,
    audio_url: af(15), description: 'Zwei Freunde diskutieren über Plastikmüll.', transcript: 'Ich finde, wir sollten weniger Plastik benutzen. Ja, aber Plastik ist praktisch und günstig. Das stimmt, aber es schadet der Umwelt. Die Meere sind voller Plastik. Was können wir tun? Wir könnten Stoffbeutel benutzen und Glasflaschen kaufen. Auch beim Verzicht auf Mikroplastik in Kosmetik kann man anfangen. Jeder kleine Schritt hilft.',
    exercises: [
      { question: 'Was ist das Problem mit Plastik?', options: ['Zu teuer', 'Schadet der Umwelt', 'Zu schwer', 'Schlecht für die Gesundheit'], correct_answer: 'Schadet der Umwelt', order_index: 1 },
      { question: 'Was wird als Lösung vorgeschlagen?', options: ['Mehr Plastik kaufen', 'Stoffbeutel und Glasflaschen', 'Nichts tun', 'Plastik verbrennen'], correct_answer: 'Stoffbeutel und Glasflaschen', order_index: 2 },
    ] },
  { title: 'Ein Telefonat', level: 'B1', category: 'work', duration_seconds: 140, is_published: true,
    audio_url: af(16), description: 'Ein berufliches Telefonat.', transcript: 'Guten Tag, Firma Meier, Schmidt am Apparat. Ich hätte gern Frau Dr. Weber gesprochen. Einen Moment bitte, ich verbinde. Frau Weber ist leider in einer Besprechung. Kann ich etwas ausrichten? Ja, mein Name ist Müller. Es geht um den Projekttermin nächste Woche. Können Sie mich zurückrufen? Ja, natürlich. Ihre Nummer, bitte? 0176 123456. Vielen Dank!',
    exercises: [
      { question: 'Mit wem möchte Herr Müller sprechen?', options: ['Herrn Schmidt', 'Frau Dr. Weber', 'Frau Meier', 'Herrn Müller'], correct_answer: 'Frau Dr. Weber', order_index: 1 },
      { question: 'Warum ist Frau Weber nicht erreichbar?', options: ['Im Urlaub', 'In einer Besprechung', 'Krank', 'Im Homeoffice'], correct_answer: 'In einer Besprechung', order_index: 2 },
    ] },
  { title: 'Eine Präsentation', level: 'B1', category: 'work', duration_seconds: 180, is_published: true,
    audio_url: af(1), description: 'Kurze Geschäftspräsentation.', transcript: 'Guten Morgen, meine Damen und Herren! Ich möchte Ihnen heute unsere neuen Produkte vorstellen. Wir haben in den letzten Monaten an einer innovativen Lösung gearbeitet. Unser neues Produkt ist effizienter und umweltfreundlicher. Die Produktionskosten sind um 15 Prozent gesunken. Ich zeige Ihnen nun die Grafik. Wie Sie sehen, sind die Verkaufszahlen gestiegen. Fragen?',
    exercises: [
      { question: 'Um wie viel Prozent sind die Kosten gesunken?', options: ['10%', '15%', '20%', '25%'], correct_answer: '15%', order_index: 1 },
      { question: 'Was zeigt die Grafik?', options: ['Aktienkurse', 'Verkaufszahlen', 'Mitarbeiterzahlen', 'Produktionskosten'], correct_answer: 'Verkaufszahlen', order_index: 2 },
    ] },
  { title: 'Studium und Uni', level: 'B1', category: 'education', duration_seconds: 155, is_published: true,
    audio_url: af(2), description: 'Ein Student erzählt vom Uni-Alltag.', transcript: 'Ich studiere im vierten Semester Informatik. Der Stundenplan ist voll, ich habe etwa 20 Stunden Vorlesungen pro Woche. Dazu kommen Übungen und Praktika. Die Bibliothek ist mein zweites Zuhause. Nächstes Semester schreibe ich meine Bachelorarbeit. Danach möchte ich ein Praktikum bei einer Softwarefirma machen. Der Berufseinstieg sieht gut aus, viele Firmen suchen Informatiker.',
    exercises: [
      { question: 'Was studiert der Student?', options: ['BWL', 'Informatik', 'Medizin', 'Germanistik'], correct_answer: 'Informatik', order_index: 1 },
      { question: 'Wie viele Stunden Vorlesung pro Woche?', options: ['15', '20', '25', '30'], correct_answer: '20', order_index: 2 },
    ] },
  // B2 (3)
  { title: 'Eine politische Debatte', level: 'B2', category: 'daily', duration_seconds: 200, is_published: true,
    audio_url: af(3), description: 'Ausschnitte aus einer politischen Debatte.', transcript: 'Meine Damen und Herren, die Bildungspolitik muss Priorität haben. Wir investieren zu wenig in unsere Schulen. Die Digitalisierung kommt viel zu langsam voran. Auf der anderen Seite müssen wir auch die Lehrer besser bezahlen. Ein guter Vorschlag ist die Einführung eines digitalen Bildungsrats. Wir brauchen eine gemeinsame Strategie für alle Bundesländer. Nur so können wir im internationalen Wettbewerb bestehen.',
    exercises: [
      { question: 'Welcher Bereich soll Priorität haben?', options: ['Gesundheit', 'Bildungspolitik', 'Verteidigung', 'Umwelt'], correct_answer: 'Bildungspolitik', order_index: 1 },
      { question: 'Wer soll besser bezahlt werden?', options: ['Polizisten', 'Lehrer', 'Ärzte', 'Beamte'], correct_answer: 'Lehrer', order_index: 2 },
    ] },
  { title: 'Vortrag: Erneuerbare Energien', level: 'B2', category: 'education', duration_seconds: 220, is_published: true,
    audio_url: af(4), description: 'Technischer Vortrag über Solarenergie.', transcript: 'Ich spreche heute über Photovoltaik. Solarzellen wandeln Sonnenlicht direkt in elektrische Energie um. Der Wirkungsgrad moderner Module liegt bei über 22 Prozent. Deutschland hat installierte Photovoltaik-Leistung von über 60 Gigawatt. Die Kosten sind in den letzten zehn Jahren um 90 Prozent gefallen. Ein durchschnittliches Einfamilienhaus kann mit einer Anlage seinen gesamten Strombedarf decken. Die Amortisationszeit beträgt etwa acht bis zwölf Jahre.',
    exercises: [
      { question: 'Wie hoch ist der Wirkungsgrad moderner Module?', options: ['15%', '22%', '30%', '50%'], correct_answer: '22%', order_index: 1 },
      { question: 'Wie lange dauert die Amortisation?', options: ['3-5 Jahre', '8-12 Jahre', '15-20 Jahre', '25 Jahre'], correct_answer: '8-12 Jahre', order_index: 2 },
    ] },
  { title: 'Interview mit einer Unternehmerin', level: 'B2', category: 'work', duration_seconds: 190, is_published: true,
    audio_url: af(5), description: 'Ein Interview über Gründung und Führung.', transcript: 'Frau Dr. Wagner, Sie haben Ihr Unternehmen vor fünf Jahren gegründet. Was war Ihre Motivation? Ich habe eine Marktlücke im Bereich nachhaltige Verpackungen gesehen. Wie viele Mitarbeiter haben Sie heute? Wir sind 45 Personen. Die größte Herausforderung war die Finanzierung. Ohne die Förderbank wäre es schwierig gewesen. Mein Tipp für Gründer: Netzwerken und dranbleiben. Rückschläge gehören dazu.',
    exercises: [
      { question: 'Vor wie vielen Jahren wurde gegründet?', options: ['3', '5', '7', '10'], correct_answer: '5', order_index: 1 },
      { question: 'Wie viele Mitarbeiter hat die Firma?', options: ['25', '35', '45', '55'], correct_answer: '45', order_index: 2 },
    ] },
  { title: 'Reportage: Kulturevent', level: 'B2', category: 'daily', duration_seconds: 210, is_published: true,
    audio_url: af(7), description: 'Radio-Reportage über ein Kulturfestival.', transcript: 'Willkommen zur Kulturreportage. Heute berichten wir vom diesjährigen Bachfest in Leipzig. Tausende Besucher strömen in die Kirchen und Konzertsäle. Das Festival dauert zehn Tage und bietet über 100 Veranstaltungen. Besonders beliebt sind die kostenlosen Konzerte auf dem Marktplatz. Ein Besucher sagt: Die Atmosphäre ist einzigartig. Musik verbindet Menschen aus aller Welt. Auch junge Künstler bekommen eine Bühne. Das Festival fördert den Nachwuchs und macht klassische Musik für alle zugänglich.',
    exercises: [
      { question: 'Über welches Festival wird berichtet?', options: ['Bayreuther Festspiele', 'Bachfest in Leipzig', 'Oktoberfest', 'Filmfest Berlin'], correct_answer: 'Bachfest in Leipzig', order_index: 1 },
      { question: 'Wie viele Veranstaltungen gibt es?', options: ['50', '80', '100', '150'], correct_answer: '100', order_index: 2 },
    ] },
  { title: 'Wirtschaftsnachrichten', level: 'B2', category: 'daily', duration_seconds: 200, is_published: true,
    audio_url: af(8), description: 'Aktuelle Wirtschaftsnachrichten.', transcript: 'Die Wirtschaftsnachrichten. Der DAX schloss gestern mit einem Plus von 1,2 Prozent bei 18.950 Punkten. Die Inflation ist im Vergleich zum Vormonat leicht gesunken auf 2,1 Prozent. Experten erwarten eine stabile Konjunktur für das zweite Halbjahr. Der ifo-Geschäftsklimaindex ist ebenfalls gestiegen. Besonders die Automobilindustrie meldet steigende Exportzahlen. Kritisch bleibt die Lage in der Bauwirtschaft. Hier fehlen weiterhin Fachkräfte und Material. Die Zentralbank hält den Leitzins vorerst stabil.',
    exercises: [
      { question: 'Wie ist der DAX gestanden?', options: ['Plus 1,2% bei 18.950', 'Minus 1,2% bei 18.500', 'Plus 2,1% bei 19.200', 'Minus 0,5% bei 18.000'], correct_answer: 'Plus 1,2% bei 18.950', order_index: 1 },
      { question: 'Wie hoch ist die Inflation?', options: ['1,5%', '2,1%', '2,5%', '3,0%'], correct_answer: '2,1%', order_index: 2 },
    ] },
  // C1 (1)
  { title: 'Politische Rede', level: 'C1', category: 'daily', duration_seconds: 240, is_published: true,
    audio_url: af(6), description: 'Auszug aus einer politischen Rede zur Europapolitik.', transcript: 'Meine sehr geehrten Damen und Herren, die Europäische Union steht vor einer Zerreißprobe. Die Herausforderungen sind gewaltig: Klimawandel, Migration, digitale Transformation. Doch gerade in Krisenzeiten zeigt sich der Wert der europäischen Einigung. Wir müssen gemeinsam handeln, nicht national isoliert. Ein geeintes Europa kann seine Interessen in der Welt besser vertreten. Deshalb appelliere ich an Sie: Stehen Sie für ein starkes, demokratisches und solidarisches Europa ein. Die nächsten Jahre werden entscheidend sein für die Zukunft unseres Kontinents.',
    exercises: [
      { question: 'Wovor steht die EU laut der Rede?', options: ['Vor einer Blütezeit', 'Vor einer Zerreißprobe', 'Vor einer Auflösung', 'Vor einer Expansion'], correct_answer: 'Vor einer Zerreißprobe', order_index: 1 },
      { question: 'Welche Herausforderungen werden genannt?', options: ['Kriege', 'Klimawandel, Migration, Digitalisierung', 'Handelskriege', 'Bevölkerungswachstum'], correct_answer: 'Klimawandel, Migration, Digitalisierung', order_index: 2 },
      { question: 'Wofür soll Europa einstehen?', options: ['Nationale Interessen', 'Stark, demokratisch, solidarisch', 'Wirtschaftliches Wachstum', 'Militärische Stärke'], correct_answer: 'Stark, demokratisch, solidarisch', order_index: 3 },
    ] },
]


// ============================================
// DICTATION EXERCISES
// ============================================

const dictationExercises: Dictation[] = [
  { title: 'Mein Tagesablauf', level: 'A1', audio_url: af(7), duration_seconds: 45, is_published: true,
    full_text: 'Ich stehe um sieben Uhr auf. Dann frühstücke ich. Um acht Uhr gehe ich zur Schule.' },
  { title: 'Die Familie', level: 'A1', audio_url: af(8), duration_seconds: 50, is_published: true,
    full_text: 'Meine Familie ist groß. Ich habe einen Bruder und eine Schwester. Meine Mutter ist Lehrerin.' },
  { title: 'Das Wetter', level: 'A1', audio_url: af(9), duration_seconds: 40, is_published: true,
    full_text: 'Die Sonne scheint. Der Himmel ist blau. Es ist warm. Ich spiele im Park.' },
  { title: 'Im Supermarkt', level: 'A2', audio_url: af(10), duration_seconds: 55, is_published: true,
    full_text: 'Wir gehen einkaufen. Meine Mutter kauft Obst und Gemüse. Ich nehme einen Einkaufswagen.' },
  { title: 'Der Geburtstag', level: 'A2', audio_url: af(11), duration_seconds: 60, is_published: true,
    full_text: 'Letzte Woche hatte meine Schwester Geburtstag. Wir haben eine Party gemacht. Es gab Kuchen und Geschenke.' },
  { title: 'Meine Wohnung', level: 'A2', audio_url: af(12), duration_seconds: 50, is_published: true,
    full_text: 'Ich wohne in einer Wohnung im zweiten Stock. Die Wohnung hat drei Zimmer und eine Küche.' },
  { title: 'Gesunde Ernährung', level: 'B1', audio_url: af(13), duration_seconds: 70, is_published: true,
    full_text: 'Eine gesunde Ernährung ist wichtig. Man sollte täglich Obst und Gemüse essen und ausreichend Wasser trinken.' },
  { title: 'Umweltschutz', level: 'B1', audio_url: af(14), duration_seconds: 75, is_published: true,
    full_text: 'Jeder kann etwas für den Umweltschutz tun. Wir sollten Plastik vermeiden und Müll richtig trennen.' },
  { title: 'Der Arbeitsmarkt', level: 'B1', audio_url: af(15), duration_seconds: 80, is_published: true,
    full_text: 'Der deutsche Arbeitsmarkt leidet unter Fachkräftemangel. Besonders betroffen sind die IT und das Handwerk.' },
  { title: 'Klimapolitik', level: 'B2', audio_url: af(16), duration_seconds: 90, is_published: true,
    full_text: 'Die Klimapolitik ist ein zentrales Thema. Deutschland hat den Ausbau erneuerbarer Energien vorangetrieben.' },
  { title: 'Soziale Medien', level: 'B2', audio_url: af(1), duration_seconds: 85, is_published: true,
    full_text: 'Soziale Medien haben die Kommunikation verändert. Sie ermöglichen schnelle Informationsverbreitung, aber auch Falschinformationen.' },
  { title: 'Integration', level: 'C1', audio_url: af(2), duration_seconds: 100, is_published: true,
    full_text: 'Die Integration von Migranten ist eine gesellschaftliche Daueraufgabe. Sprachkenntnisse gelten als der zentrale Schlüssel für eine erfolgreiche Integration in den Arbeitsmarkt und die Gesellschaft.' },
]


// ============================================
// OUTPUT
// ============================================

function main() {
  if (!fs.existsSync(SEED_DIR)) fs.mkdirSync(SEED_DIR, { recursive: true })

  // Transform articles to match DB schema
  const readingData = {
    articles: articles.map(a => ({
      title: a.title,
      content: a.content,
      summary: a.summary,
      level: a.level,
      category: a.category,
      word_count: a.word_count,
      is_published: a.is_published,
      questions: a.questions,
      vocabulary: a.vocabulary,
    })),
  }
  fs.writeFileSync(path.join(SEED_DIR, 'reading.json'), JSON.stringify(readingData, null, 2))
  console.log(`Written ${readingData.articles.length} articles to reading.json`)

  const qCount = readingData.articles.reduce((s, a) => s + a.questions.length, 0)
  const vCount = readingData.articles.reduce((s, a) => s + a.vocabulary.length, 0)
  console.log(`  - ${qCount} reading questions, ${vCount} vocabulary items`)

  const listeningData = {
    audioLessons: audioLessons.map(l => ({
      title: l.title,
      description: l.description,
      audio_url: l.audio_url,
      transcript: l.transcript,
      level: l.level,
      duration_seconds: l.duration_seconds,
      category: l.category,
      is_published: l.is_published,
      exercises: l.exercises,
    })),
    dictationExercises: dictationExercises.map(d => ({
      title: d.title,
      audio_url: d.audio_url,
      full_text: d.full_text,
      level: d.level,
      duration_seconds: d.duration_seconds,
      is_published: d.is_published,
    })),
  }
  fs.writeFileSync(path.join(SEED_DIR, 'listening.json'), JSON.stringify(listeningData, null, 2))
  console.log(`Written ${listeningData.audioLessons.length} audio lessons to listening.json`)
  console.log(`Written ${listeningData.dictationExercises.length} dictation exercises to listening.json`)

  const exCount = listeningData.audioLessons.reduce((s, l) => s + l.exercises.length, 0)
  console.log(`  - ${exCount} listening exercises`)

  console.log('\nDone!')
}

main()
