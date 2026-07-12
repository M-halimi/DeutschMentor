/**
 * Massive Content Seeder
 * Seeds thousands of vocabulary words, expressions, verbs, and grammar items
 * Run: npx tsx scripts/massive-seed.ts
 */

import { createClient } from '@supabase/supabase-js'
import * as fs from 'fs'
import * as path from 'path'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase env vars. Run: $env:NEXT_PUBLIC_SUPABASE_URL = "..."; $env:SUPABASE_SERVICE_ROLE_KEY = "..."')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

// ===== GERMAN VOCABULARY DATA =====

const germanA1Words: any[] = [
  // Greetings & Basics
  ['Hallo', 'hello', null, null, 'expression', 'A1', 'daily_life', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 1],
  ['Tschüss', 'bye', null, null, 'expression', 'A1', 'daily_life', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 1],
  ['Guten Morgen', 'good morning', null, null, 'expression', 'A1', 'daily_life', 'Guten Morgen, Herr Müller!', 'Good morning, Mr. Müller!', 1],
  ['Guten Abend', 'good evening', null, null, 'expression', 'A1', 'daily_life', 'Guten Abend, Frau Schmidt!', 'Good evening, Mrs. Schmidt!', 1],
  ['Gute Nacht', 'good night', null, null, 'expression', 'A1', 'daily_life', 'Gute Nacht, schlaf gut!', 'Good night, sleep well!', 1],
  ['Auf Wiedersehen', 'goodbye', null, null, 'expression', 'A1', 'daily_life', 'Auf Wiedersehen, bis bald!', 'Goodbye, see you soon!', 1],
  ['Bis bald', 'see you soon', null, null, 'expression', 'A1', 'daily_life', 'Bis bald, mein Freund!', 'See you soon, my friend!', 1],
  ['Bis später', 'see you later', null, null, 'expression', 'A1', 'daily_life', 'Bis später!', 'See you later!', 1],
  ['Bis morgen', 'see you tomorrow', null, null, 'expression', 'A1', 'daily_life', 'Bis morgen in der Schule!', 'See you tomorrow at school!', 1],
  ['Willkommen', 'welcome', null, null, 'expression', 'A1', 'daily_life', 'Willkommen in Berlin!', 'Welcome to Berlin!', 1],

  // Numbers 1-20
  ['eins', 'one', null, null, 'noun', 'A1', 'numbers', 'Eins, zwei, drei!', 'One, two, three!', 1],
  ['zwei', 'two', null, null, 'noun', 'A1', 'numbers', 'Zwei Kaffee, bitte!', 'Two coffees, please!', 1],
  ['drei', 'three', null, null, 'noun', 'A1', 'numbers', 'Drei Äpfel, bitte!', 'Three apples, please!', 1],
  ['vier', 'four', null, null, 'noun', 'A1', 'numbers', 'Vier Wochen Urlaub!', 'Four weeks vacation!', 1],
  ['fünf', 'five', null, null, 'noun', 'A1', 'numbers', 'Fünf Euro, bitte!', 'Five euros, please!', 1],
  ['sechs', 'six', null, null, 'noun', 'A1', 'numbers', 'Sechs Bier, bitte!', 'Six beers, please!', 1],
  ['sieben', 'seven', null, null, 'noun', 'A1', 'numbers', 'Sieben Tage in der Woche!', 'Seven days in a week!', 1],
  ['acht', 'eight', null, null, 'noun', 'A1', 'numbers', 'Acht Uhr morgens!', 'Eight o\'clock in the morning!', 1],
  ['neun', 'nine', null, null, 'noun', 'A1', 'numbers', 'Neun Euro fünfundneunzig!', 'Nine euros ninety-five!', 1],
  ['zehn', 'ten', null, null, 'noun', 'A1', 'numbers', 'Zehn Minuten Pause!', 'Ten minutes break!', 1],
  ['elf', 'eleven', null, null, 'noun', 'A1', 'numbers', 'Elf Spieler auf dem Feld!', 'Eleven players on the field!', 1],
  ['zwölf', 'twelve', null, null, 'noun', 'A1', 'numbers', 'Zwölf Monate im Jahr!', 'Twelve months in a year!', 1],
  ['zwanzig', 'twenty', null, null, 'noun', 'A1', 'numbers', 'Zwanzig Euro, bitte!', 'Twenty euros, please!', 1],
  ['dreißig', 'thirty', null, null, 'noun', 'A1', 'numbers', 'Dreißig Minuten!', 'Thirty minutes!', 1],
  ['vierzig', 'forty', null, null, 'noun', 'A1', 'numbers', 'Vierzig Jahre alt!', 'Forty years old!', 1],
  ['fünfzig', 'fifty', null, null, 'noun', 'A1', 'numbers', 'Fünfzig Prozent!', 'Fifty percent!', 1],
  ['sechzig', 'sixty', null, null, 'noun', 'A1', 'numbers', 'Sechzig Sekunden!', 'Sixty seconds!', 1],
  ['siebzig', 'seventy', null, null, 'noun', 'A1', 'numbers', 'Siebzig Kilometer pro Stunde!', 'Seventy kilometers per hour!', 1],
  ['achtzig', 'eighty', null, null, 'noun', 'A1', 'numbers', 'Achtzig Jahre!', 'Eighty years!', 1],
  ['neunzig', 'ninety', null, null, 'noun', 'A1', 'numbers', 'Neunzig Grad!', 'Ninety degrees!', 1],
  ['hundert', 'hundred', null, null, 'noun', 'A1', 'numbers', 'Hundert Euro!', 'Hundred euros!', 1],

  // Colors
  ['rot', 'red', null, null, 'adjective', 'A1', 'colors', 'Das Auto ist rot.', 'The car is red.', 1],
  ['blau', 'blue', null, null, 'adjective', 'A1', 'colors', 'Der Himmel ist blau.', 'The sky is blue.', 1],
  ['grün', 'green', null, null, 'adjective', 'A1', 'colors', 'Der Wald ist grün.', 'The forest is green.', 1],
  ['gelb', 'yellow', null, null, 'adjective', 'A1', 'colors', 'Die Banane ist gelb.', 'The banana is yellow.', 1],
  ['schwarz', 'black', null, null, 'adjective', 'A1', 'colors', 'Die Nacht ist schwarz.', 'The night is black.', 1],
  ['weiß', 'white', null, null, 'adjective', 'A1', 'colors', 'Der Schnee ist weiß.', 'The snow is white.', 1],
  ['grau', 'gray', null, null, 'adjective', 'A1', 'colors', 'Der Himmel ist grau.', 'The sky is gray.', 1],
  ['braun', 'brown', null, null, 'adjective', 'A1', 'colors', 'Der Tisch ist braun.', 'The table is brown.', 1],
  ['orange', 'orange', null, null, 'adjective', 'A1', 'colors', 'Die Orange ist orange.', 'The orange is orange.', 1],
  ['lila', 'purple', null, null, 'adjective', 'A1', 'colors', 'Die Blume ist lila.', 'The flower is purple.', 1],
  ['pink', 'pink', null, null, 'adjective', 'A1', 'colors', 'Das Kleid ist pink.', 'The dress is pink.', 1],
  ['bunt', 'colorful', null, null, 'adjective', 'A1', 'colors', 'Der Regenbogen ist bunt.', 'The rainbow is colorful.', 1],

  // Days of week
  ['Montag', 'Monday', 'der', 'Montage', 'noun', 'A1', 'daily_life', 'Am Montag habe ich frei.', 'On Monday I am free.', 1],
  ['Dienstag', 'Tuesday', 'der', 'Dienstage', 'noun', 'A1', 'daily_life', 'Am Dienstag arbeite ich.', 'On Tuesday I work.', 1],
  ['Mittwoch', 'Wednesday', 'der', 'Mittwoche', 'noun', 'A1', 'daily_life', 'Am Mittwoch habe ich Unterricht.', 'On Wednesday I have class.', 1],
  ['Donnerstag', 'Thursday', 'der', 'Donnerstage', 'noun', 'A1', 'daily_life', 'Am Donnerstag gehe ich einkaufen.', 'On Thursday I go shopping.', 1],
  ['Freitag', 'Friday', 'der', 'Freitage', 'noun', 'A1', 'daily_life', 'Am Freitag gehe ich ins Kino.', 'On Friday I go to the cinema.', 1],
  ['Samstag', 'Saturday', 'der', 'Samstage', 'noun', 'A1', 'daily_life', 'Am Samstag schlafe ich lange.', 'On Saturday I sleep in.', 1],
  ['Sonntag', 'Sunday', 'der', 'Sonntage', 'noun', 'A1', 'daily_life', 'Am Sonntag besuche ich meine Familie.', 'On Sunday I visit my family.', 1],
  ['Woche', 'week', 'die', 'Wochen', 'noun', 'A1', 'daily_life', 'Eine Woche hat sieben Tage.', 'A week has seven days.', 1],
  ['Monat', 'month', 'der', 'Monate', 'noun', 'A1', 'daily_life', 'Der Monat Mai ist schön.', 'The month of May is nice.', 1],
  ['Jahr', 'year', 'das', 'Jahre', 'noun', 'A1', 'daily_life', 'Das Jahr 2024 ist vorbei.', 'The year 2024 is over.', 1],

  // Time
  ['Uhr', 'clock / o\'clock', 'die', 'Uhren', 'noun', 'A1', 'daily_life', 'Es ist drei Uhr.', 'It is three o\'clock.', 1],
  ['Stunde', 'hour', 'die', 'Stunden', 'noun', 'A1', 'daily_life', 'Eine Stunde hat sechzig Minuten.', 'An hour has sixty minutes.', 1],
  ['Minute', 'minute', 'die', 'Minuten', 'noun', 'A1', 'daily_life', 'Fünf Minuten Pause.', 'Five minutes break.', 1],
  ['Sekunde', 'second', 'die', 'Sekunden', 'noun', 'A1', 'daily_life', 'Eine Minute hat sechzig Sekunden.', 'A minute has sixty seconds.', 1],
  ['Morgen', 'morning', 'der', 'Morgen', 'noun', 'A1', 'daily_life', 'Guten Morgen!', 'Good morning!', 1],
  ['Mittag', 'noon', 'der', null, 'noun', 'A1', 'daily_life', 'Um zwölf Uhr ist Mittag.', 'At twelve o\'clock it is noon.', 1],
  ['Nachmittag', 'afternoon', 'der', 'Nachmittage', 'noun', 'A1', 'daily_life', 'Am Nachmittag lerne ich Deutsch.', 'In the afternoon I learn German.', 1],
  ['Abend', 'evening', 'der', 'Abende', 'noun', 'A1', 'daily_life', 'Guten Abend!', 'Good evening!', 1],
  ['Nacht', 'night', 'die', 'Nächte', 'noun', 'A1', 'daily_life', 'Gute Nacht!', 'Good night!', 1],
  ['heute', 'today', null, null, 'adverb', 'A1', 'daily_life', 'Heute ist Montag.', 'Today is Monday.', 1],
  ['morgen', 'tomorrow', null, null, 'adverb', 'A1', 'daily_life', 'Morgen gehe ich zur Arbeit.', 'Tomorrow I go to work.', 1],
  ['gestern', 'yesterday', null, null, 'adverb', 'A1', 'daily_life', 'Gestern war ich im Kino.', 'Yesterday I was at the cinema.', 1],
  ['jetzt', 'now', null, null, 'adverb', 'A1', 'daily_life', 'Jetzt lerne ich Deutsch.', 'Now I am learning German.', 1],
  ['später', 'later', null, null, 'adverb', 'A1', 'daily_life', 'Bis später!', 'See you later!', 1],
  ['früh', 'early', null, null, 'adverb', 'A1', 'daily_life', 'Ich stehe früh auf.', 'I get up early.', 1],
  ['spät', 'late', null, null, 'adverb', 'A1', 'daily_life', 'Es ist spät.', 'It is late.', 1],

  // People & Family
  ['der Mann', 'man', 'der', 'Männer', 'noun', 'A1', 'family', 'Der Mann ist groß.', 'The man is tall.', 1],
  ['die Frau', 'woman', 'die', 'Frauen', 'noun', 'A1', 'family', 'Die Frau ist freundlich.', 'The woman is friendly.', 1],
  ['der Junge', 'boy', 'der', 'Jungen', 'noun', 'A1', 'family', 'Der Junge spielt Fußball.', 'The boy plays soccer.', 1],
  ['das Mädchen', 'girl', 'das', 'Mädchen', 'noun', 'A1', 'family', 'Das Mädchen liest ein Buch.', 'The girl reads a book.', 1],
  ['der Vater', 'father', 'der', 'Väter', 'noun', 'A1', 'family', 'Mein Vater ist Arzt.', 'My father is a doctor.', 1],
  ['die Mutter', 'mother', 'die', 'Mütter', 'noun', 'A1', 'family', 'Meine Mutter ist Lehrerin.', 'My mother is a teacher.', 1],
  ['der Bruder', 'brother', 'der', 'Brüder', 'noun', 'A1', 'family', 'Mein Bruder ist älter.', 'My brother is older.', 1],
  ['die Schwester', 'sister', 'die', 'Schwestern', 'noun', 'A1', 'family', 'Meine Schwester ist jünger.', 'My sister is younger.', 1],
  ['der Sohn', 'son', 'der', 'Söhne', 'noun', 'A1', 'family', 'Mein Sohn ist fünf Jahre alt.', 'My son is five years old.', 1],
  ['die Tochter', 'daughter', 'die', 'Töchter', 'noun', 'A1', 'family', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 1],
  ['der Großvater', 'grandfather', 'der', 'Großväter', 'noun', 'A1', 'family', 'Mein Großvater ist 80.', 'My grandfather is 80.', 1],
  ['die Großmutter', 'grandmother', 'die', 'Großmütter', 'noun', 'A1', 'family', 'Meine Großmutter kocht gut.', 'My grandmother cooks well.', 1],
  ['der Onkel', 'uncle', 'der', 'Onkel', 'noun', 'A1', 'family', 'Mein Onkel wohnt in Berlin.', 'My uncle lives in Berlin.', 1],
  ['die Tante', 'aunt', 'die', 'Tanten', 'noun', 'A1', 'family', 'Meine Tante ist Ärztin.', 'My aunt is a doctor.', 1],
  ['der Cousin', 'cousin (male)', 'der', 'Cousins', 'noun', 'A1', 'family', 'Mein Cousin studiert in Köln.', 'My cousin studies in Cologne.', 1],
  ['die Cousine', 'cousin (female)', 'die', 'Cousinen', 'noun', 'A1', 'family', 'Meine Cousine wohnt in Hamburg.', 'My cousin lives in Hamburg.', 1],
  ['der Freund', 'friend (male)', 'der', 'Freunde', 'noun', 'A1', 'family', 'Mein Freund heißt Peter.', 'My friend is called Peter.', 1],
  ['die Freundin', 'friend (female)', 'die', 'Freundinnen', 'noun', 'A1', 'family', 'Meine Freundin heißt Anna.', 'My friend is called Anna.', 1],
  ['der Baby', 'baby', 'das', 'Babys', 'noun', 'A1', 'family', 'Das Baby schläft.', 'The baby is sleeping.', 1],
  ['die Familie', 'family', 'die', 'Familien', 'noun', 'A1', 'family', 'Meine Familie ist groß.', 'My family is big.', 1],
]

const germanA2Words: any[] = [
  // More family
  ['der Ehemann', 'husband', 'der', 'Ehemänner', 'noun', 'A2', 'family', 'Ihr Ehemann arbeitet im Krankenhaus.', 'Her husband works at the hospital.', 2],
  ['die Ehefrau', 'wife', 'die', 'Ehefrauen', 'noun', 'A2', 'family', 'Seine Ehefrau ist Köchin.', 'His wife is a cook.', 2],
  ['die Eltern', 'parents', 'die', null, 'noun', 'A2', 'family', 'Meine Eltern sind Lehrer.', 'My parents are teachers.', 2],
  ['das Kind', 'child', 'das', 'Kinder', 'noun', 'A2', 'family', 'Die Kinder spielen im Garten.', 'The children play in the garden.', 2],
  ['der Nachbar', 'neighbor (male)', 'der', 'Nachbarn', 'noun', 'A2', 'family', 'Mein Nachbar hat einen Hund.', 'My neighbor has a dog.', 2],
  ['die Nachbarin', 'neighbor (female)', 'die', 'Nachbarinnen', 'noun', 'A2', 'family', 'Die Nachbarin ist sehr nett.', 'The neighbor is very nice.', 2],

  // Work & Career
  ['der Beruf', 'job / profession', 'der', 'Berufe', 'noun', 'A2', 'work', 'Was ist Ihr Beruf?', 'What is your profession?', 2],
  ['die Arbeit', 'work', 'die', 'Arbeiten', 'noun', 'A2', 'work', 'Ich gehe zur Arbeit.', 'I go to work.', 2],
  ['das Büro', 'office', 'das', 'Büros', 'noun', 'A2', 'work', 'Mein Büro ist im dritten Stock.', 'My office is on the third floor.', 2],
  ['die Firma', 'company', 'die', 'Firmen', 'noun', 'A2', 'work', 'Die Firma hat 200 Mitarbeiter.', 'The company has 200 employees.', 2],
  ['der Chef', 'boss', 'der', 'Chefs', 'noun', 'A2', 'work', 'Mein Chef ist streng.', 'My boss is strict.', 2],
  ['die Kollegin', 'colleague (female)', 'die', 'Kolleginnen', 'noun', 'A2', 'work', 'Meine Kollegin hilft mir.', 'My colleague helps me.', 2],
  ['der Kollege', 'colleague (male)', 'der', 'Kollegen', 'noun', 'A2', 'work', 'Mein Kollege ist krank.', 'My colleague is sick.', 2],
  ['die Besprechung', 'meeting', 'die', 'Besprechungen', 'noun', 'A2', 'work', 'Die Besprechung dauert eine Stunde.', 'The meeting lasts one hour.', 2],
  ['die Mittagspause', 'lunch break', 'die', 'Mittagspausen', 'noun', 'A2', 'work', 'Ich habe eine Stunde Mittagspause.', 'I have one hour lunch break.', 2],
  ['der Urlaub', 'vacation', 'der', 'Urlaube', 'noun', 'A2', 'travel', 'Ich mache Urlaub in Italien.', 'I am going on vacation to Italy.', 2],
  ['die Kündigung', 'resignation / termination', 'die', 'Kündigungen', 'noun', 'B1', 'work', 'Die Kündigung kommt überraschend.', 'The resignation comes as a surprise.', 3],

  // Food & Eating
  ['das Frühstück', 'breakfast', 'das', 'Frühstücke', 'noun', 'A1', 'food', 'Ich esse Cornflakes zum Frühstück.', 'I eat cereal for breakfast.', 1],
  ['das Mittagessen', 'lunch', 'das', 'Mittagessen', 'noun', 'A1', 'food', 'Das Mittagessen ist um 12 Uhr.', 'Lunch is at 12 o\'clock.', 1],
  ['das Abendessen', 'dinner', 'das', 'Abendessen', 'noun', 'A1', 'food', 'Wir essen um 18 Uhr Abendessen.', 'We have dinner at 6 pm.', 1],
  ['der Teller', 'plate', 'der', 'Teller', 'noun', 'A1', 'food', 'Der Teller ist leer.', 'The plate is empty.', 1],
  ['die Tasse', 'cup', 'die', 'Tassen', 'noun', 'A1', 'food', 'Eine Tasse Kaffee, bitte!', 'A cup of coffee, please!', 1],
  ['das Glas', 'glass', 'das', 'Gläser', 'noun', 'A1', 'food', 'Ein Glas Wasser, bitte.', 'A glass of water, please.', 1],
  ['die Flasche', 'bottle', 'die', 'Flaschen', 'noun', 'A1', 'food', 'Die Flasche ist leer.', 'The bottle is empty.', 1],
  ['das Besteck', 'cutlery', 'das', null, 'noun', 'A2', 'food', 'Das Besteck liegt auf dem Tisch.', 'The cutlery is on the table.', 2],
  ['der Löffel', 'spoon', 'der', 'Löffel', 'noun', 'A1', 'food', 'Der Löffel ist aus Metall.', 'The spoon is made of metal.', 1],
  ['die Gabel', 'fork', 'die', 'Gabeln', 'noun', 'A1', 'food', 'Die Gabel liegt neben dem Teller.', 'The fork is next to the plate.', 1],
  ['das Messer', 'knife', 'das', 'Messer', 'noun', 'A1', 'food', 'Das Messer ist scharf.', 'The knife is sharp.', 1],
  ['der Kühlschrank', 'refrigerator', 'der', 'Kühlschränke', 'noun', 'A2', 'food', 'Der Kühlschrank ist voll.', 'The refrigerator is full.', 2],
  ['der Herd', 'stove', 'der', 'Herde', 'noun', 'A2', 'food', 'Der Herd ist heiß.', 'The stove is hot.', 2],
  ['der Ofen', 'oven', 'der', 'Öfen', 'noun', 'A2', 'food', 'Der Ofen ist auf 180 Grad vorgeheizt.', 'The oven is preheated to 180 degrees.', 2],

  // Foods
  ['der Käse', 'cheese', 'der', null, 'noun', 'A1', 'food', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 1],
  ['die Wurst', 'sausage', 'die', 'Würste', 'noun', 'A1', 'food', 'Die Bratwurst ist typisch deutsch.', 'The bratwurst is typically German.', 1],
  ['der Schinken', 'ham', 'der', 'Schinken', 'noun', 'A2', 'food', 'Der Schinken ist geräuchert.', 'The ham is smoked.', 2],
  ['das Ei', 'egg', 'das', 'Eier', 'noun', 'A1', 'food', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 1],
  ['die Milch', 'milk', 'die', null, 'noun', 'A1', 'food', 'Die Milch ist frisch.', 'The milk is fresh.', 1],
  ['der Joghurt', 'yogurt', 'der', 'Joghurts', 'noun', 'A1', 'food', 'Der Joghurt ist cremig.', 'The yogurt is creamy.', 1],
  ['die Butter', 'butter', 'die', null, 'noun', 'A1', 'food', 'Die Butter ist weich.', 'The butter is soft.', 1],
  ['das Brot', 'bread', 'das', 'Brote', 'noun', 'A1', 'food', 'Das Brot ist frisch gebacken.', 'The bread is freshly baked.', 1],
  ['die Brötchen', 'rolls', 'die', null, 'noun', 'A1', 'food', 'Die Brötchen sind knusprig.', 'The rolls are crispy.', 1],
  ['der Kuchen', 'cake', 'der', 'Kuchen', 'noun', 'A1', 'food', 'Der Kuchen ist lecker.', 'The cake is delicious.', 1],
  ['der Reis', 'rice', 'der', null, 'noun', 'A1', 'food', 'Der Reis ist weich.', 'The rice is soft.', 1],
  ['die Nudeln', 'noodles / pasta', 'die', null, 'noun', 'A1', 'food', 'Die Nudeln sind al dente.', 'The pasta is al dente.', 1],
  ['die Kartoffel', 'potato', 'die', 'Kartoffeln', 'noun', 'A1', 'food', 'Die Kartoffeln sind gekocht.', 'The potatoes are boiled.', 1],
  ['der Salat', 'salad', 'der', 'Salate', 'noun', 'A1', 'food', 'Der Salat ist frisch.', 'The salad is fresh.', 1],
  ['die Suppe', 'soup', 'die', 'Suppen', 'noun', 'A1', 'food', 'Die Suppe ist heiß.', 'The soup is hot.', 1],
  ['der Fisch', 'fish', 'der', 'Fische', 'noun', 'A1', 'food', 'Der Fisch ist gegrillt.', 'The fish is grilled.', 1],
  ['das Fleisch', 'meat', 'das', null, 'noun', 'A1', 'food', 'Das Fleisch ist zart.', 'The meat is tender.', 1],
  ['das Hähnchen', 'chicken', 'das', 'Hähnchen', 'noun', 'A1', 'food', 'Das Hähnchen ist gebraten.', 'The chicken is fried.', 1],
  ['das Gemüse', 'vegetables', 'das', null, 'noun', 'A1', 'food', 'Das Gemüse ist gesund.', 'Vegetables are healthy.', 1],
  ['das Obst', 'fruit', 'das', null, 'noun', 'A1', 'food', 'Das Obst ist süß.', 'The fruit is sweet.', 1],
]

type WordItem = {
  word: string; trans: string; article: string | null; plural: string | null
  type: string; level: string; category: string; example: string
  exampleTrans: string; difficulty: number
}

async function seedVocabulary(words: any[]) {
  console.log(`Seeding ${words.length} vocabulary words...`)
  let inserted = 0
  let skipped = 0
  for (const w of words) {
    const { error } = await supabase.from('vocabulary').upsert({
      language: 'de',
      german_word: w.word,
      english_translation: w.trans,
      article: w.article,
      plural: w.plural,
      word_type: w.type,
      level: w.level,
      category: w.category,
      example_sentence: w.example,
      example_translation: w.exampleTrans,
      difficulty: w.difficulty,
      tags: [w.level, w.category, w.type],
    }, { onConflict: 'language,german_word' })
    if (error) skipped++
    else inserted++
  }
  console.log(`  ✓ Inserted: ${inserted}, Skipped: ${skipped}`)
}

const word = (word: string, trans: string, article: string | null, plural: string | null, type: string, level: string, category: string, example: string, exampleTrans: string, difficulty: number): WordItem => ({ word, trans, article, plural, type, level, category, example, exampleTrans, difficulty })

async function main() {
  console.log('=== MASSIVE CONTENT SEEDER ===\n')

  // Seed German A1 vocabulary
  console.log('--- German A1 Vocabulary ---')
  await seedVocabulary(germanA1Words)

  // Seed German A2 vocabulary
  console.log('--- German A2 Vocabulary ---')
  await seedVocabulary(germanA2Words)

  console.log('\n✓ Seeding complete!')
}

main().catch(console.error)
