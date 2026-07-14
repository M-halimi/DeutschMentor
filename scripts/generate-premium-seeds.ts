import { createAdminClient } from '../src/lib/supabase/admin'
import * as fs from 'fs'

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const EXPRESSION_TEMPLATES: Record<string, Array<{ german: string; english: string; arabic: string; formality: string }>> = {
  greeting: [
    { german: 'Guten Morgen!', english: 'Good morning!', arabic: 'صباح الخير!', formality: 'formal' },
    { german: 'Guten Tag!', english: 'Good day!', arabic: 'يوم سعيد!', formality: 'formal' },
    { german: 'Hallo!', english: 'Hello!', arabic: 'مرحباً!', formality: 'informal' },
    { german: 'Tschüss!', english: 'Bye!', arabic: 'مع السلامة!', formality: 'informal' },
    { german: 'Auf Wiedersehen!', english: 'Goodbye!', arabic: 'إلى اللقاء!', formality: 'formal' },
    { german: 'Wie geht es Ihnen?', english: 'How are you? (formal)', arabic: 'كيف حالك؟ (رسمي)', formality: 'formal' },
    { german: 'Wie geht es dir?', english: 'How are you? (informal)', arabic: 'كيف حالك؟ (غير رسمي)', formality: 'informal' },
    { german: 'Mir geht es gut, danke.', english: "I'm fine, thanks.", arabic: 'أنا بخير، شكراً.', formality: 'neutral' },
    { german: 'Freut mich!', english: 'Nice to meet you!', arabic: 'يسعدني!', formality: 'neutral' },
    { german: 'Bis später!', english: 'See you later!', arabic: 'أراك لاحقاً!', formality: 'informal' },
    { german: 'Entschuldigung!', english: 'Excuse me!', arabic: 'عفواً!', formality: 'neutral' },
    { german: 'Kein Problem!', english: 'No problem!', arabic: 'لا مشكلة!', formality: 'informal' },
    { german: 'Vielen Dank!', english: 'Thank you very much!', arabic: 'شكراً جزيلاً!', formality: 'formal' },
    { german: 'Bitte sehr!', english: 'You\'re welcome!', arabic: 'عفواً!', formality: 'formal' },
    { german: 'Alles Gute!', english: 'All the best!', arabic: 'كل التوفيق!', formality: 'neutral' },
  ],
  family: [
    { german: 'Meine Familie ist groß.', english: 'My family is big.', arabic: 'عائلتي كبيرة.', formality: 'neutral' },
    { german: 'Ich habe einen Bruder.', english: 'I have a brother.', arabic: 'لدي أخ.', formality: 'neutral' },
    { german: 'Hast du Geschwister?', english: 'Do you have siblings?', arabic: 'هل لديك أخوة؟', formality: 'informal' },
    { german: 'Meine Mutter arbeitet als Ärztin.', english: 'My mother works as a doctor.', arabic: 'والدتي تعمل كطبيبة.', formality: 'neutral' },
    { german: 'Mein Vater ist Ingenieur.', english: 'My father is an engineer.', arabic: 'والدي مهندس.', formality: 'neutral' },
    { german: 'Wir wohnen zusammen.', english: 'We live together.', arabic: 'نسكن معاً.', formality: 'neutral' },
    { german: 'Ich liebe meine Familie.', english: 'I love my family.', arabic: 'أحب عائلتي.', formality: 'neutral' },
    { german: 'Wie viele Personen sind in deiner Familie?', english: 'How many people are in your family?', arabic: 'كم عدد أفراد عائلتك؟', formality: 'informal' },
  ],
  food: [
    { german: 'Was möchten Sie bestellen?', english: 'What would you like to order?', arabic: 'ماذا تريد أن تطلب؟', formality: 'formal' },
    { german: 'Ich hätte gern einen Kaffee.', english: "I'd like a coffee, please.", arabic: 'أريد قهوة من فضلك.', formality: 'formal' },
    { german: 'Die Rechnung, bitte!', english: 'The bill, please!', arabic: 'الفاتورة من فضلك!', formality: 'formal' },
    { german: 'Guten Appetit!', english: 'Enjoy your meal!', arabic: 'بالهناء والشفاء!', formality: 'neutral' },
    { german: 'Das schmeckt sehr gut.', english: 'This tastes very good.', arabic: 'هذا لذيذ جداً.', formality: 'neutral' },
    { german: 'Ich möchte bezahlen.', english: "I'd like to pay.", arabic: 'أريد أن أدفع.', formality: 'formal' },
    { german: 'Haben Sie vegetarische Gerichte?', english: 'Do you have vegetarian dishes?', arabic: 'هل لديكم أطباق نباتية؟', formality: 'formal' },
    { german: 'Zum Wohl!', english: 'Cheers!', arabic: 'في صحتك!', formality: 'neutral' },
  ],
  travel: [
    { german: 'Wo ist der Bahnhof?', english: "Where is the train station?", arabic: 'أين محطة القطار؟', formality: 'neutral' },
    { german: 'Eine Fahrkarte nach Berlin, bitte.', english: 'A ticket to Berlin, please.', arabic: 'تذكرة إلى برلين من فضلك.', formality: 'formal' },
    { german: 'Wann fährt der Zug ab?', english: 'When does the train leave?', arabic: 'متى يغادر القطار؟', formality: 'neutral' },
    { german: 'Ich möchte ein Zimmer reservieren.', english: "I'd like to reserve a room.", arabic: 'أريد حجز غرفة.', formality: 'formal' },
    { german: 'Wie viel kostet das Zimmer pro Nacht?', english: 'How much is the room per night?', arabic: 'كم سعر الغرفة لليلة؟', formality: 'formal' },
    { german: 'Gibt es einen Parkplatz?', english: 'Is there a parking lot?', arabic: 'هل هناك موقف سيارات؟', formality: 'formal' },
    { german: 'Wo ist der Ausgang?', english: "Where is the exit?", arabic: 'أين المخرج؟', formality: 'neutral' },
  ],
  work: [
    { german: 'Was sind Sie von Beruf?', english: 'What do you do for a living?', arabic: 'ما هي مهنتك؟', formality: 'formal' },
    { german: 'Ich arbeite als Ingenieur.', english: 'I work as an engineer.', arabic: 'أعمل كمهندس.', formality: 'neutral' },
    { german: 'Wo arbeiten Sie?', english: 'Where do you work?', arabic: 'أين تعمل؟', formality: 'formal' },
    { german: 'Ich bin selbstständig.', english: 'I am self-employed.', arabic: 'أنا مستقل.', formality: 'neutral' },
    { german: 'Ich bin Angestellte bei einer Firma.', english: 'I am an employee at a company.', arabic: 'أنا موظفة في شركة.', formality: 'neutral' },
    { german: 'Mein Büro ist im Zentrum.', english: 'My office is in the center.', arabic: 'مكتبي في المركز.', formality: 'neutral' },
    { german: 'Ich arbeite von 9 bis 17 Uhr.', english: 'I work from 9 to 5.', arabic: 'أعمل من 9 إلى 5.', formality: 'neutral' },
  ],
  shopping: [
    { german: 'Was kostet das?', english: 'How much does this cost?', arabic: 'كم سعر هذا؟', formality: 'neutral' },
    { german: 'Haben Sie das in einer anderen Größe?', english: 'Do you have this in another size?', arabic: 'هل لديك هذا بمقاس آخر؟', formality: 'formal' },
    { german: 'Ich möchte nur gucken.', english: "I'm just looking.", arabic: 'فقط أتفرج.', formality: 'neutral' },
    { german: 'Das ist zu teuer.', english: "That's too expensive.", arabic: 'هذا غالي جداً.', formality: 'neutral' },
    { german: 'Gibt es einen Rabatt?', english: 'Is there a discount?', arabic: 'هل هناك خصم؟', formality: 'formal' },
    { german: 'Ich nehme es!', english: "I'll take it!", arabic: 'سآخذه!', formality: 'neutral' },
    { german: 'Kann ich mit Karte zahlen?', english: 'Can I pay by card?', arabic: 'هل يمكنني الدفع بالبطاقة؟', formality: 'formal' },
  ],
  home: [
    { german: 'Ich wohne in einer Wohnung.', english: 'I live in an apartment.', arabic: 'أسكن في شقة.', formality: 'neutral' },
    { german: 'Meine Wohnung hat drei Zimmer.', english: 'My apartment has three rooms.', arabic: 'شقتي فيها ثلاث غرف.', formality: 'neutral' },
    { german: 'Die Miete ist 800 Euro warm.', english: 'The rent is 800 euros including utilities.', arabic: 'الإيجار 800 يورو شامل التدفئة.', formality: 'neutral' },
    { german: 'Das Wohnzimmer ist sehr gemütlich.', english: 'The living room is very cozy.', arabic: 'غرفة المعيشة مريحة جداً.', formality: 'neutral' },
    { german: 'Die Küche ist modern eingerichtet.', english: 'The kitchen is modernly furnished.', arabic: 'المطبخ مجهز بشكل حديث.', formality: 'neutral' },
    { german: 'Wir suchen eine neue Wohnung.', english: 'We are looking for a new apartment.', arabic: 'نبحث عن شقة جديدة.', formality: 'neutral' },
  ],
  hobby: [
    { german: 'Was machst du in deiner Freizeit?', english: 'What do you do in your free time?', arabic: 'ماذا تفعل في وقت فراغك؟', formality: 'informal' },
    { german: 'Ich spiele gerne Fußball.', english: 'I like playing football.', arabic: 'أحب لعب كرة القدم.', formality: 'neutral' },
    { german: 'Mein Hobby ist Lesen.', english: 'My hobby is reading.', arabic: 'هوايتي القراءة.', formality: 'neutral' },
    { german: 'Ich höre gerne Musik.', english: 'I like listening to music.', arabic: 'أحب الاستماع إلى الموسيقى.', formality: 'neutral' },
    { german: 'Wir gehen oft spazieren.', english: 'We often go for walks.', arabic: 'نذهب غالباً للتنزه.', formality: 'neutral' },
    { german: 'Sie reist sehr gern.', english: 'She likes traveling very much.', arabic: 'هي تحب السفر كثيراً.', formality: 'neutral' },
    { german: 'Hast du ein Hobby?', english: 'Do you have a hobby?', arabic: 'هل لديك هواية؟', formality: 'informal' },
  ],
  time: [
    { german: 'Wie spät ist es?', english: 'What time is it?', arabic: 'كم الساعة؟', formality: 'neutral' },
    { german: 'Es ist drei Uhr.', english: 'It is three o\'clock.', arabic: 'الساعة الثالثة.', formality: 'neutral' },
    { german: 'Um wie viel Uhr treffen wir uns?', english: 'What time are we meeting?', arabic: 'في أي ساعة نلتقي؟', formality: 'informal' },
    { german: 'Am Montag habe ich frei.', english: 'On Monday I am off.', arabic: 'يوم الإثنين أنا عاطل.', formality: 'neutral' },
    { german: 'Heute ist der erste Mai.', english: 'Today is the first of May.', arabic: 'اليوم هو الأول من مايو.', formality: 'neutral' },
    { german: 'Wir sehen uns morgen!', english: 'See you tomorrow!', arabic: 'نراكم غداً!', formality: 'informal' },
  ],
  weather: [
    { german: 'Das Wetter ist heute schön.', english: 'The weather is nice today.', arabic: 'الطقس جميل اليوم.', formality: 'neutral' },
    { german: 'Es regnet.', english: 'It is raining.', arabic: 'إنها تمطر.', formality: 'neutral' },
    { german: 'Die Sonne scheint.', english: 'The sun is shining.', arabic: 'الشمس مشرقة.', formality: 'neutral' },
    { german: 'Es ist kalt draußen.', english: 'It is cold outside.', arabic: 'الجو بارد في الخارج.', formality: 'neutral' },
    { german: 'Wie wird das Wetter morgen?', english: 'What will the weather be like tomorrow?', arabic: 'كيف سيكون الطقس غداً؟', formality: 'neutral' },
  ],
  numbers: [
    { german: 'Wie viel kostet das?', english: 'How much does that cost?', arabic: 'كم ثمن هذا؟', formality: 'neutral' },
    { german: 'Ich bin 25 Jahre alt.', english: 'I am 25 years old.', arabic: 'عمري 25 سنة.', formality: 'neutral' },
    { german: 'Meine Telefonnummer ist...', english: 'My phone number is...', arabic: 'رقم هاتفي هو...', formality: 'neutral' },
    { german: 'Wir treffen uns um halb acht.', english: 'We meet at half past seven.', arabic: 'نلتقي في السابعة والنصف.', formality: 'neutral' },
    { german: 'Das ist der dritte Stock.', english: 'That is the third floor.', arabic: 'هذا هو الطابق الثالث.', formality: 'neutral' },
  ],
  alphabet: [
    { german: 'Buchstabiere bitte deinen Namen.', english: 'Please spell your name.', arabic: 'تهجى اسمك من فضلك.', formality: 'formal' },
    { german: 'Das ABC ist einfach.', english: 'The ABC is easy.', arabic: 'الأبجدية سهلة.', formality: 'neutral' },
    { german: 'Ä, Ö, Ü sind Umlaute.', english: 'Ä, Ö, Ü are umlauts.', arabic: 'Ä, Ö, Ü هي حروف معدلة.', formality: 'neutral' },
    { german: 'Das ß heißt Eszett.', english: 'The ß is called Eszett.', arabic: 'الحرف ß يسمى Eszett.', formality: 'neutral' },
  ],
  grammar: [
    { german: 'Der Mann geht nach Hause.', english: 'The man goes home.', arabic: 'الرجل يذهب إلى المنزل.', formality: 'neutral' },
    { german: 'Die Frau kommt aus Berlin.', english: 'The woman comes from Berlin.', arabic: 'المرأة تأتي من برلين.', formality: 'neutral' },
    { german: 'Das Kind spielt im Garten.', english: 'The child plays in the garden.', arabic: 'الطفل يلعب في الحديقة.', formality: 'neutral' },
    { german: 'Ich habe einen Hund.', english: 'I have a dog.', arabic: 'لدي كلب.', formality: 'neutral' },
    { german: 'Kannst du mir helfen?', english: 'Can you help me?', arabic: 'هل يمكنك مساعدتي؟', formality: 'informal' },
    { german: 'Wir müssen jetzt gehen.', english: 'We must go now.', arabic: 'يجب أن نذهب الآن.', formality: 'neutral' },
    { german: 'Er ist gestern gekommen.', english: 'He came yesterday.', arabic: 'لقد أمس أتى.', formality: 'neutral' },
    { german: 'Sie hat ein Buch gelesen.', english: 'She read a book.', arabic: 'هي قرأت كتاباً.', formality: 'neutral' },
  ],
  review: [
    { german: 'Ich wiederhole die Vokabeln.', english: 'I review the vocabulary.', arabic: 'أراجع المفردات.', formality: 'neutral' },
    { german: 'Kannst du das bitte wiederholen?', english: 'Can you please repeat that?', arabic: 'هل يمكنك تكرار ذلك من فضلك؟', formality: 'formal' },
    { german: 'Ich habe alles verstanden.', english: 'I understood everything.', arabic: 'لقد فهمت كل شيء.', formality: 'neutral' },
    { german: 'Das ist eine gute Übung.', english: 'That is a good exercise.', arabic: 'هذا تمرين جيد.', formality: 'neutral' },
    { german: 'Noch einmal, bitte!', english: 'Once more, please!', arabic: 'مرة أخرى من فضلك!', formality: 'formal' },
  ],
}

const FLASHCARD_TEMPLATES: Record<string, Array<{ front: string; back: string; hint: string; category: string }>> = {
  greeting: [
    { front: 'Guten Morgen', back: 'Good morning', hint: 'Used before noon', category: 'expression' },
    { front: 'Guten Abend', back: 'Good evening', hint: 'Used after 6 PM', category: 'expression' },
    { front: 'Tschüss', back: 'Bye (informal)', hint: 'With friends', category: 'expression' },
    { front: 'Auf Wiedersehen', back: 'Goodbye (formal)', hint: 'Formal situations', category: 'expression' },
    { front: 'Bis später', back: 'See you later', hint: 'Soon again', category: 'expression' },
    { front: 'Willkommen', back: 'Welcome', hint: 'First meeting', category: 'expression' },
    { front: 'Entschuldigung', back: 'Excuse me / Sorry', hint: 'Apology or attention', category: 'expression' },
    { front: 'Vielen Dank', back: 'Thank you very much', hint: 'Gratitude', category: 'expression' },
  ],
  numbers: [
    { front: 'eins', back: 'one', hint: '1', category: 'vocabulary' },
    { front: 'zehn', back: 'ten', hint: '10', category: 'vocabulary' },
    { front: 'zwanzig', back: 'twenty', hint: '20', category: 'vocabulary' },
    { front: 'hundert', back: 'hundred', hint: '100', category: 'vocabulary' },
    { front: 'tausend', back: 'thousand', hint: '1,000', category: 'vocabulary' },
    { front: 'die Nummer', back: 'the number', hint: 'Phone or house', category: 'vocabulary' },
    { front: 'der erste', back: 'the first', hint: 'Ordinal (1st)', category: 'vocabulary' },
    { front: 'die Hälfte', back: 'the half', hint: '50%', category: 'vocabulary' },
  ],
  family: [
    { front: 'der Vater', back: 'father', hint: 'Parent (male)', category: 'vocabulary' },
    { front: 'die Mutter', back: 'mother', hint: 'Parent (female)', category: 'vocabulary' },
    { front: 'der Bruder', back: 'brother', hint: 'Sibling (male)', category: 'vocabulary' },
    { front: 'die Schwester', back: 'sister', hint: 'Sibling (female)', category: 'vocabulary' },
    { front: 'der Sohn', back: 'son', hint: 'Child (male)', category: 'vocabulary' },
    { front: 'die Tochter', back: 'daughter', hint: 'Child (female)', category: 'vocabulary' },
    { front: 'der Opa', back: 'grandpa', hint: 'Grandfather', category: 'vocabulary' },
    { front: 'die Oma', back: 'grandma', hint: 'Grandmother', category: 'vocabulary' },
  ],
  food: [
    { front: 'das Brot', back: 'bread', hint: 'Basic food', category: 'vocabulary' },
    { front: 'die Milch', back: 'milk', hint: 'Dairy product', category: 'vocabulary' },
    { front: 'der Apfel', back: 'apple', hint: 'A fruit', category: 'vocabulary' },
    { front: 'das Wasser', back: 'water', hint: 'Drink', category: 'vocabulary' },
    { front: 'der Käse', back: 'cheese', hint: 'From milk', category: 'vocabulary' },
    { front: 'der Fisch', back: 'fish', hint: 'From the sea', category: 'vocabulary' },
    { front: 'das Fleisch', back: 'meat', hint: 'Not vegetarian', category: 'vocabulary' },
    { front: 'der Kuchen', back: 'cake', hint: 'Sweet dessert', category: 'vocabulary' },
  ],
  home: [
    { front: 'das Zimmer', back: 'room', hint: 'A room in a house', category: 'vocabulary' },
    { front: 'die Küche', back: 'kitchen', hint: 'Where you cook', category: 'vocabulary' },
    { front: 'das Bad', back: 'bathroom', hint: 'Short for Badezimmer', category: 'vocabulary' },
    { front: 'das Schlafzimmer', back: 'bedroom', hint: 'Where you sleep', category: 'vocabulary' },
    { front: 'der Tisch', back: 'table', hint: 'Furniture', category: 'vocabulary' },
    { front: 'der Stuhl', back: 'chair', hint: 'To sit on', category: 'vocabulary' },
    { front: 'das Bett', back: 'bed', hint: 'For sleeping', category: 'vocabulary' },
    { front: 'der Schrank', back: 'wardrobe', hint: 'For clothes', category: 'vocabulary' },
  ],
  verb: [
    { front: 'sein (ich bin)', back: 'to be (I am)', hint: 'Most common verb', category: 'grammar' },
    { front: 'haben (ich habe)', back: 'to have (I have)', hint: 'Second most common', category: 'grammar' },
    { front: 'werden (ich werde)', back: 'to become (I become)', hint: 'Also future helper', category: 'grammar' },
    { front: 'können (ich kann)', back: 'can (I can)', hint: 'Modal verb', category: 'grammar' },
    { front: 'müssen (ich muss)', back: 'must (I must)', hint: 'Modal verb', category: 'grammar' },
    { front: 'sollen (ich soll)', back: 'should (I should)', hint: 'Modal verb', category: 'grammar' },
    { front: 'wollen (ich will)', back: 'want (I want)', hint: 'Modal verb', category: 'grammar' },
    { front: 'dürfen (ich darf)', back: 'may (I may)', hint: 'Modal verb', category: 'grammar' },
  ],
  grammar: [
    { front: 'der', back: 'the (masculine)', hint: 'Article for male nouns', category: 'grammar' },
    { front: 'die', back: 'the (feminine/plural)', hint: 'Article for female/plural', category: 'grammar' },
    { front: 'das', back: 'the (neuter)', hint: 'Article for neutral nouns', category: 'grammar' },
    { front: 'ein', back: 'a (masculine/neuter)', hint: 'Indefinite article', category: 'grammar' },
    { front: 'eine', back: 'a (feminine)', hint: 'Indefinite article', category: 'grammar' },
    { front: 'ich', back: 'I', hint: 'First person singular', category: 'grammar' },
    { front: 'du', back: 'you (informal)', hint: 'Second person singular', category: 'grammar' },
    { front: 'Sie', back: 'you (formal)', hint: 'Capital S', category: 'grammar' },
  ],
  time: [
    { front: 'der Montag', back: 'Monday', hint: 'First work day', category: 'vocabulary' },
    { front: 'der Dienstag', back: 'Tuesday', hint: 'Second day', category: 'vocabulary' },
    { front: 'der Mittwoch', back: 'Wednesday', hint: 'Mid-week', category: 'vocabulary' },
    { front: 'der Donnerstag', back: 'Thursday', hint: 'Fourth day', category: 'vocabulary' },
    { front: 'der Freitag', back: 'Friday', hint: 'End of work week', category: 'vocabulary' },
    { front: 'der Samstag', back: 'Saturday', hint: 'Weekend', category: 'vocabulary' },
    { front: 'der Sonntag', back: 'Sunday', hint: 'Day of rest', category: 'vocabulary' },
    { front: 'der Januar', back: 'January', hint: 'First month', category: 'vocabulary' },
  ],
  travel: [
    { front: 'der Zug', back: 'train', hint: 'Public transport', category: 'vocabulary' },
    { front: 'der Bahnhof', back: 'train station', hint: 'Where trains stop', category: 'vocabulary' },
    { front: 'die Fahrkarte', back: 'ticket', hint: 'For travel', category: 'vocabulary' },
    { front: 'der Flughafen', back: 'airport', hint: 'For planes', category: 'vocabulary' },
    { front: 'das Hotel', back: 'hotel', hint: 'For sleeping away', category: 'vocabulary' },
    { front: 'der Pass', back: 'passport', hint: 'For travel ID', category: 'vocabulary' },
    { front: 'der Koffer', back: 'suitcase', hint: 'For packing', category: 'vocabulary' },
    { front: 'die Reise', back: 'trip / journey', hint: 'Travel', category: 'vocabulary' },
  ],
  work: [
    { front: 'der Beruf', back: 'profession', hint: 'Job title', category: 'vocabulary' },
    { front: 'die Arbeit', back: 'work', hint: 'What you do', category: 'vocabulary' },
    { front: 'das Büro', back: 'office', hint: 'Where you work', category: 'vocabulary' },
    { front: 'der Chef', back: 'boss', hint: 'Your supervisor', category: 'vocabulary' },
    { front: 'die Firma', back: 'company', hint: 'Business', category: 'vocabulary' },
    { front: 'der Kollege', back: 'colleague', hint: 'Work together', category: 'vocabulary' },
    { front: 'das Gehalt', back: 'salary', hint: 'Monthly payment', category: 'vocabulary' },
    { front: 'die Bewerbung', back: 'application', hint: 'For a job', category: 'vocabulary' },
  ],
  shopping: [
    { front: 'der Preis', back: 'price', hint: 'How much', category: 'vocabulary' },
    { front: 'das Geld', back: 'money', hint: 'For paying', category: 'vocabulary' },
    { front: 'der Euro', back: 'Euro', hint: 'Currency', category: 'vocabulary' },
    { front: 'der Cent', back: 'Cent', hint: 'Small currency', category: 'vocabulary' },
    { front: 'das Geschäft', back: 'shop / store', hint: 'Where you buy', category: 'vocabulary' },
    { front: 'der Markt', back: 'market', hint: 'Open market', category: 'vocabulary' },
    { front: 'die Kasse', back: 'cash register', hint: 'Pay here', category: 'vocabulary' },
    { front: 'die Quittung', back: 'receipt', hint: 'Proof of purchase', category: 'vocabulary' },
  ],
}

const LESSON_TYPE_MAP: Record<string, string> = {
  vocabulary: 'vocabulary',
  grammar: 'grammar',
  reading: 'reading',
  listening: 'listening',
  speaking: 'speaking',
  writing: 'writing',
  review: 'review',
  test: 'test',
}

function getLessonCategory(title: string, topic: string | null, lessonType: string): string {
  const lower = (title + ' ' + (topic ?? '')).toLowerCase()
  if (lower.includes('begrüß') || lower.includes('vorstell') || lower.includes('hallo') || lower.includes('kontakt') || lower.includes('name') || lower.includes('bekannt')) return 'greeting'
  if (lower.includes('familie') || lower.includes('mutter') || lower.includes('vater') || lower.includes('geschwister') || lower.includes('eltern') || lower.includes('großeltern') || lower.includes('kind')) return 'family'
  if (lower.includes('essen') || lower.includes('trinken') || lower.includes('restaurant') || lower.includes('lebensmittel') || lower.includes('küche') || lower.includes('frühstück') || lower.includes('mittag') || lower.includes('abend') || lower.includes('getränk') || lower.includes('gericht') || lower.includes('bestell')) return 'food'
  if (lower.includes('reis') || lower.includes('urlaub') || lower.includes('hotel') || lower.includes('bahnhof') || lower.includes('zug') || lower.includes('flug') || lower.includes('fahrkarte') || lower.includes('tourist')) return 'travel'
  if (lower.includes('beruf') || lower.includes('arbeit') || lower.includes('büro') || lower.includes('job') || lower.includes('firma') || lower.includes('kollege') || lower.includes('bewerb') || lower.includes('angestell')) return 'work'
  if (lower.includes('kauf') || lower.includes('einkauf') || lower.includes('geschäft') || lower.includes('markt') || lower.includes('preis') || lower.includes('geld') || lower.includes('supermarkt')) return 'shopping'
  if (lower.includes('wohn') || lower.includes('haus') || lower.includes('zimmer') || lower.includes('möbel') || lower.includes('einrichtung') || lower.includes('miete') || lower.includes('wohnung')) return 'home'
  if (lower.includes('frei') || lower.includes('hobby') || lower.includes('sport') || lower.includes('fernseh') || lower.includes('musik') || lower.includes('lesen') || lower.includes('spiel') || lower.includes('aktivität')) return 'hobby'
  if (lower.includes('zeit') || lower.includes('stunde') || lower.includes('tag') || lower.includes('monat') || lower.includes('jahr') || lower.includes('datum') || lower.includes('uhr')) return 'time'
  if (lower.includes('wetter') || lower.includes('klima') || lower.includes('sonne') || lower.includes('regen')) return 'weather'
  if (lower.includes('zahl') || lower.includes('nummer') || lower.includes('zählen') || lower.includes('zahlen')) return 'numbers'
  if (lower.includes('alphabet') || lower.includes('buchstab')) return 'alphabet'
  if (lower.includes('grammatik') || lower.includes('verb') || lower.includes('satz') || lower.includes('artikel') || lower.includes('plural') || lower.includes('kasus') || lower.includes('konjunktion') || lower.includes('präposition') || lower.includes('adjektiv') || lower.includes('adverb') || lower.includes('konjugation') || lower.includes('trennbar') || lower.includes('reflexiv') || lower.includes('passiv') || lower.includes('konjunktiv') || lower.includes('relativ') || lower.includes('partizip') || lower.includes('infinitiv') || lower.includes('hauptsatz') || lower.includes('nebensatz') || lower.includes('wortstellung')) return 'grammar'
  if (lower.includes('wiederhol') || lower.includes('review') || lower.includes('wiederholung') || lower.includes('test')) return 'review'
  if (lower.includes('kultur') || lower.includes('land') || lower.includes('deutschland') || lower.includes('tradition') || lower.includes('feiertag') || lower.includes('essen') && lower.includes('trinkgeld') || lower.includes('etikette')) return 'culture'
  return lessonType === 'grammar' ? 'grammar' : 'greeting'
}

function escapeSql(s: string): string {
  if (!s) return ''
  return s.replace(/'/g, "''")
}

function escapeArrayElement(s: string): string {
  if (!s) return '""'
  const escaped = s.replace(/\\/g, '\\\\').replace(/"/g, '\\"')
  return `"${escaped}"`
}

function arrayLiteral(arr: string[]): string {
  if (arr.length === 0) return 'ARRAY[]::text[]'
  const elements = arr.map(e => `'${escapeSql(e)}'`).join(', ')
  return `ARRAY[${elements}]::text[]`
}

function generateBlock(
  tableName: string,
  columns: string[],
  lessonId: string,
  generator: (lessonId: string, index: number) => string[] | null
): string[] {
  const rows = generator(lessonId, 0)
  if (!rows || rows.length === 0) return []
  const lines: string[] = []
  lines.push(`\nINSERT INTO public.${tableName} (${columns.join(', ')}) VALUES`)
  rows.forEach((row, i) => {
    lines.push(i < rows.length - 1 ? row.slice(0, -1) + ',' : row)
  })
  lines[lines.length - 1] = lines[lines.length - 1].replace(/,$/, ';')
  return lines
}

async function generateLevelSeed(level: string): Promise<void> {
  const supabase = createAdminClient()

  const { data: modules } = await supabase
    .from('course_modules')
    .select('id, title, description, objectives, order_index')
    .eq('level_id', level)
    .eq('is_published', true)
    .order('order_index')

  if (!modules || modules.length === 0) {
    console.log(`No modules found for level ${level}`)
    return
  }

  const moduleIds = modules.map(m => m.id)
  const { data: lessons } = await supabase
    .from('course_lessons')
    .select('id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index')
    .in('module_id', moduleIds)
    .eq('is_published', true)
    .order('order_index')

  if (!lessons || lessons.length === 0) {
    console.log(`No lessons found for level ${level}`)
    return
  }

  const moduleMap = new Map(modules.map(m => [m.id, m]))
  const allLines: string[] = []

  allLines.push(`-- ============================================================`)
  allLines.push(`-- PREMIUM CONTENT SEED — Level ${level}`)
  allLines.push(`-- Generated for ${lessons.length} lessons across ${modules.length} modules`)
  allLines.push(`-- ============================================================`)
  allLines.push(``)

  let totalExpressions = 0
  let totalFlashcards = 0
  let totalHomework = 0
  let totalReviews = 0
  let totalSpeaking = 0
  let totalWriting = 0
  let totalConversations = 0
  let totalAiChallenges = 0
  let totalReading = 0
  let totalListening = 0

  for (const lesson of lessons) {
    const mod = moduleMap.get(lesson.module_id)
    if (!mod) continue
    const cat = getLessonCategory(lesson.title, lesson.topic, lesson.lesson_type)
    const isTest = lesson.lesson_type === 'test'
    const isReview = lesson.lesson_type === 'review'

    // --- EXPRESSIONS ---
    const templates = EXPRESSION_TEMPLATES[cat] ?? EXPRESSION_TEMPLATES.greeting
    const expCount = Math.min(10, templates.length)
    if (expCount > 0) {
      const block = generateBlock(
        'lesson_expressions',
        ['lesson_id', 'german', 'english_translation', 'arabic_translation', 'usage_context', 'formality', 'is_idiom', 'literal_translation', 'order_index'],
        lesson.id,
        (lid) => {
          const rows: string[] = []
          const used = new Set<string>()
          for (let i = 0; i < expCount; i++) {
            const t = templates[i]
            if (used.has(t.german)) continue
            used.add(t.german)
            const ctx = escapeSql(`Used in ${mod!.title}`)
            rows.push(`  ('${lid}', '${escapeSql(t.german)}', '${escapeSql(t.english)}', '${escapeSql(t.arabic)}', '${ctx}', '${t.formality}', false, NULL, ${i + 1}),`)
          }
          return rows.length > 0 ? rows : null
        }
      )
      allLines.push(...block)
      totalExpressions += expCount
    }

    // --- FLASHCARDS ---
    const fcTemplates = FLASHCARD_TEMPLATES[cat] ?? FLASHCARD_TEMPLATES.greeting
    const fcCount = Math.min(8, fcTemplates.length)
    if (fcCount > 0) {
      const block = generateBlock(
        'lesson_flashcards',
        ['lesson_id', 'front', 'back', 'hint', 'category', 'order_index'],
        lesson.id,
        (lid) => {
          const rows: string[] = []
          for (let i = 0; i < fcCount; i++) {
            const t = fcTemplates[i]
            rows.push(`  ('${lid}', '${escapeSql(t.front)}', '${escapeSql(t.back)}', '${escapeSql(t.hint)}', '${t.category}', ${i + 1}),`)
          }
          return rows
        }
      )
      allLines.push(...block)
      totalFlashcards += fcCount
    }

    // --- HOMEWORK ---
    const hwTypes = ['vocabulary', 'writing', 'speaking', 'reading', 'grammar', 'mixed']
    if (!isTest) {
      const hwType = hwTypes[totalHomework % hwTypes.length]
      const tasks = [
        { description: `Review all vocabulary from "${lesson.title}" — write each word with its article and plural form.` },
        { description: `Write 5 sentences using the key words from this lesson.` },
        { description: `Practice the dialogue aloud 3 times and record yourself.` },
      ]
      if (lesson.lesson_type === 'grammar') {
        tasks.push({ description: 'Explain the grammar rule in your own words and give 3 original examples.' })
        tasks.push({ description: 'Find 3 more examples of this grammar rule in German texts or online.' })
      }
      allLines.push(`\nINSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES`)
      allLines.push(`  ('${lesson.id}', 'Homework: ${escapeSql(lesson.title)}', 'Complete these tasks to reinforce "${escapeSql(lesson.title)}" (${escapeSql(mod!.title)}).', '${hwType}', '${escapeSql(JSON.stringify(tasks))}', ${15 + (totalHomework % 3) * 5}, 1);`)
      totalHomework++
    }

    // --- REVIEW ---
    if (!isTest) {
      const summary = escapeSql(`In this lesson on "${lesson.title}" (${mod!.title}), you learned key ${lesson.lesson_type} concepts at ${level} level. Regular practice will help reinforce your understanding and build fluency.`)
      const keyPoints = JSON.stringify([
        `Mastered the core vocabulary and expressions of "${lesson.title}"`,
        `Understood and practiced the grammar structures taught`,
        `Developed ${lesson.lesson_type} skills through targeted exercises`,
        `Built confidence in using German in practical situations`,
        `Identified areas for further practice and improvement`,
        `Connected new knowledge with previously learned material`,
      ])
      const grammarSummary = JSON.stringify([{ title: 'Key Grammar Points', summary: `Review the grammar rules and structures from this lesson on "${lesson.title}"` }])
      const vocabFocus = arrayLiteral([`"${escapeSql(lesson.title)}" core vocabulary`, `${escapeSql(mod!.title)} key terms`])
      const mistakes = arrayLiteral(['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized'])
      const tips = arrayLiteral(['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material'])
      allLines.push(`\nINSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES`)
      allLines.push(`  ('${lesson.id}', '${summary}', '${escapeSql(keyPoints)}', '${escapeSql(grammarSummary)}', ${vocabFocus}, ${mistakes}, ${tips});`)
      totalReviews++
    }

    // --- SPEAKING PROMPTS ---
    if (!isTest) {
      const scenarios = [
        `Practice the key vocabulary and phrases from "${lesson.title}" aloud. Focus on correct pronunciation.`,
        `Role-play: Imagine you are in a situation related to ${escapeSql(mod!.title)}. Have a dialogue with a partner.`,
        `Give a 1-minute oral summary of what you learned in "${lesson.title}". Use at least 5 new words.`,
      ]
      const tipsArr = ['Speak slowly and clearly', 'Use full sentences', "Don't worry about mistakes", 'Practice 3 times']
      const vocabArr = ["Use this lesson's vocabulary", 'Apply correct grammar']
      for (let si = 0; si < 2; si++) {
        const s = scenarios[si % scenarios.length]
        allLines.push(`\nINSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES`)
        allLines.push(`  ('${lesson.id}', '${escapeSql(lesson.title)} — Speaking ${si + 1}', '${s}', 'Speaking practice for ${escapeSql(mod!.title)}', ${arrayLiteral(tipsArr)}, ${arrayLiteral(vocabArr)}, ${30 + si * 30}, ${si + 1});`)
        totalSpeaking++
      }
    }

    // --- WRITING PROMPTS ---
    if (!isTest && !isReview) {
      const writingTasks = [
        `Write a short text (50-100 words) about ${escapeSql(lesson.title.toLowerCase())}. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.`,
        `Write 5 questions about ${escapeSql(lesson.title.toLowerCase())} and answer them in complete German sentences.`,
      ]
      const wtCount = lesson.lesson_type === 'writing' ? 2 : 1
      for (let wi = 0; wi < wtCount; wi++) {
        const task = writingTasks[wi % writingTasks.length]
        const tipsArr2 = ['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']
        const vocabArr2 = ['Apply new vocabulary', 'Use correct articles']
        const grammarArr = ['Sentence structure', 'Verb conjugation', 'Article-noun agreement']
        allLines.push(`\nINSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES`)
        allLines.push(`  ('${lesson.id}', '${escapeSql(lesson.title)} — Writing Task ${wi + 1}', '${escapeSql(task)}', ${arrayLiteral(tipsArr2)}, ${arrayLiteral(vocabArr2)}, ${arrayLiteral(grammarArr)}, ${wi === 0 ? 50 : 80}, ${wi === 0 ? 150 : 200}, ${wi + 1});`)
        totalWriting++
      }
    }

    // --- CONVERSATIONS ---
    if (!isTest) {
      const convScenario = escapeSql(`Practice a realistic conversation about ${lesson.title.toLowerCase()} in the context of ${mod!.title}.`)
      const convContext = escapeSql(`You are a student at ${level} level. Practice having a natural German conversation about this lesson's topic.`)
      const convOpening = escapeSql(`Hallo! Lass uns über "${lesson.title}" sprechen. Bist du bereit?`)
      const convDiff = level === 'A1' || level === 'A2' ? 'beginner' : level === 'B1' || level === 'B2' ? 'intermediate' : 'advanced'
      const convCount = lesson.lesson_type === 'speaking' || lesson.lesson_type === 'vocabulary' || lesson.lesson_type === 'reading' ? 2 : 1
      for (let ci = 0; ci < convCount; ci++) {
        const roles = [
          { user: 'Student', ai: 'Teacher' },
          { user: 'Customer', ai: 'Assistant' },
        ]
        const role = roles[ci % roles.length]
        allLines.push(`\nINSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES`)
        allLines.push(`  ('${lesson.id}', '${escapeSql(lesson.title)} — Conversation ${ci + 1}', '${convScenario}', '${role.user}', '${role.ai}', '${convContext}', '${convOpening}', ${arrayLiteral([])}, '${convDiff}', ${ci + 1});`)
        totalConversations++
      }
    }

    // --- AI CHALLENGES ---
    if (!isTest) {
      const challenges = [
        {
          title: `${escapeSql(lesson.title)} — Creative Application`,
          question: `Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "${escapeSql(lesson.title)}". The dialogue should be realistic and related to ${escapeSql(mod!.title)}.`,
          elements: ['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content'],
          diff: 'easy',
        },
        {
          title: `${escapeSql(lesson.title)} — Deep Understanding`,
          question: `Explain the most important concepts from "${escapeSql(lesson.title)}" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?`,
          elements: ['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified'],
          diff: 'medium',
        },
      ]
      const acCount = lesson.lesson_type === 'vocabulary' || lesson.lesson_type === 'grammar' ? 2 : 1
      for (let ai = 0; ai < acCount; ai++) {
        const c = challenges[ai % challenges.length]
        allLines.push(`\nINSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES`)
        allLines.push(`  ('${lesson.id}', '${c.title}', '${escapeSql(c.question)}', 'Creative practice for ${escapeSql(lesson.title)}', ${arrayLiteral(c.elements)}, ${arrayLiteral(['Review the lesson material first', 'Take your time to think', 'Be creative and original'])}, '${c.diff}', ${ai + 1});`)
        totalAiChallenges++
      }
    }

    // --- READING CONTENT ---
    if (!isTest) {
      const readingTitle = `${escapeSql(lesson.title)} — Reading Practice`
      const readingContent = escapeSql(
        `This is a ${level}-level reading passage about ${lesson.title.toLowerCase()} in the context of ${mod!.title}.\n\n` +
        `${lesson.title} is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.\n\n` +
        `The module "${mod!.title}" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.\n\n` +
        `Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.`
      )
      allLines.push(`\nINSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES`)
      allLines.push(`  ('${lesson.id}', '${readingTitle}', '${readingContent}', NULL, NULL, ${readingContent.split(' ').length}, 1, NULL, 'DeutschMentor Curriculum');`)
      totalReading++
    }

    // --- LISTENING CONTENT ---
    if (!isTest) {
      const listeningTitle = `${escapeSql(lesson.title)} — Listening Exercise`
      const transcript = escapeSql(
        `[Teacher]: Hallo! Willkommen zur Lektion "${lesson.title}" aus dem Modul "${mod!.title}".\n\n` +
        `[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.\n\n` +
        `[Student]: Ich bin bereit! Was lernen wir zuerst?\n\n` +
        `[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.\n\n` +
        `[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?\n\n` +
        `[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.\n\n` +
        `[Student]: Perfekt! Vielen Dank für die Hilfe.\n\n` +
        `[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!`
      )
      allLines.push(`\nINSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES`)
      allLines.push(`  ('${lesson.id}', '${listeningTitle}', '${transcript}', NULL, NULL, NULL, 120, 2, '${escapeSql(mod!.title)}');`)
      totalListening++
    }
  }

  const outputPath = `D:\\germalernen\\deutschmentor\\supabase\\seeds\\seed_${level.toLowerCase()}_premium.sql`
  fs.writeFileSync(outputPath, allLines.join('\n'), 'utf8')

  const totalContent = totalExpressions + totalFlashcards + totalHomework + totalReviews + totalSpeaking + totalWriting + totalConversations + totalAiChallenges + totalReading + totalListening
  console.log(`\n=== Level ${level} Premium Seed Generated ===`)
  console.log(`Lessons seeded: ${lessons.length}`)
  console.log(`Modules: ${modules.length}`)
  console.log(`Expressions: ${totalExpressions}`)
  console.log(`Flashcards: ${totalFlashcards}`)
  console.log(`Homework: ${totalHomework}`)
  console.log(`Reviews: ${totalReviews}`)
  console.log(`Speaking Prompts: ${totalSpeaking}`)
  console.log(`Writing Prompts: ${totalWriting}`)
  console.log(`Conversations: ${totalConversations}`)
  console.log(`AI Challenges: ${totalAiChallenges}`)
  console.log(`Reading Passages: ${totalReading}`)
  console.log(`Listening Scripts: ${totalListening}`)
  console.log(`Total content items: ${totalContent}`)
  console.log(`Output: seed_${level.toLowerCase()}_premium.sql`)
}

async function main() {
  const level = process.argv[2]?.toUpperCase()
  if (level && LEVELS.includes(level)) {
    await generateLevelSeed(level)
  } else {
    for (const l of LEVELS) {
      await generateLevelSeed(l)
    }
  }
}

main().catch(console.error)
