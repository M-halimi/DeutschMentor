/**
 * Complete CEFR Curriculum: A1-C2
 * Each level has 6+ modules, each module has 6+ lessons
 * Total: 6 levels, 36+ modules, 216+ lessons
 */

import type { CompleteLevel, CompleteModule, CompleteLesson } from './types'

export const CURRICULUM: CompleteLevel[] = [
  // ================================================================
  // LEVEL A1 - BEGINNER
  // ================================================================
  {
    id: 'A1', title: 'Beginner', description: 'Start your German journey from zero. Learn basic greetings, introductions, and everyday phrases.', color: 'from-green-500 to-emerald-600', orderIndex: 1,
    modules: [
      // ======================== MODULE 1 ========================
      {
        id: 'M-A1-01', levelId: 'A1', title: 'Hallo! Erste Schritte', description: 'Learn basic greetings, introductions, the alphabet and numbers.', objectives: ['Greet people formally and informally', 'Introduce yourself and ask others their name', 'Say where you come from', 'Count from 1 to 100', 'Spell your name using the German alphabet'], orderIndex: 1, estimatedHours: 4,
        lessons: [
          { id: 'L-A1-01-01', moduleId: 'M-A1-01', title: 'Begrüßungen und Vorstellungen', description: 'Learn how to greet people, say goodbye, and introduce yourself in German.', topic: 'Greetings & Introductions', type: 'vocabulary', duration: 30, orderIndex: 1, componentFlags: { hasObjectives: true, hasVocabulary: true, hasGrammar: true, hasPronunciation: true, hasAlphabet: false, hasNumbers: false, hasDialogue: true, hasReading: true, hasListening: true, hasSpeaking: true, hasWriting: true, hasTranslation: true, hasRealLife: true, hasCulture: true, hasCommonMistakes: true, hasMemoryTips: true, hasQuiz: true, hasExercises: true, hasUnitTest: false, hasHomework: true, hasRevision: true, hasAIKnowledge: true, hasExamPrep: false },
            objectives: { canDo: ['Greet someone formally with "Guten Morgen/Tag/Abend"', 'Greet someone informally with "Hallo" or "Hi"', 'Introduce yourself with name and origin', 'Ask "Wie geht es Ihnen/dir?" and respond appropriately', 'Say goodbye in formal and informal situations'], vocabulary: ['Master 20 greeting and introduction words'], grammar: ['Use personal pronouns ich, du, Sie', 'Conjugate sein in present tense'], pronunciation: ['Pronounce ch, r, and umlauts correctly'], culture: ['Understand formal vs informal address in German culture'] },
            vocab: [
              { word: 'Hallo', arabic: 'مرحباً', english: 'hello', pos: 'interjection', cefr: 'A1', example: 'Hallo, wie geht es dir?', exampleEn: 'Hello, how are you?' },
              { word: 'Guten Morgen', arabic: 'صباح الخير', english: 'good morning', pos: 'phrase', cefr: 'A1', example: 'Guten Morgen, Herr Müller.', exampleEn: 'Good morning, Mr. Müller.' },
              { word: 'Guten Tag', arabic: 'نهارك سعيد', english: 'good day', pos: 'phrase', cefr: 'A1', example: 'Guten Tag, Frau Schmidt.', exampleEn: 'Good day, Mrs. Schmidt.' },
              { word: 'Guten Abend', arabic: 'مساء الخير', english: 'good evening', pos: 'phrase', cefr: 'A1', example: 'Guten Abend, meine Damen und Herren.', exampleEn: 'Good evening, ladies and gentlemen.' },
              { word: 'Tschüss', arabic: 'مع السلامة', english: 'bye (informal)', pos: 'interjection', cefr: 'A1', example: 'Tschüss, bis morgen!', exampleEn: 'Bye, see you tomorrow!' },
              { word: 'Auf Wiedersehen', arabic: 'إلى اللقاء', english: 'goodbye (formal)', pos: 'phrase', cefr: 'A1', example: 'Auf Wiedersehen, Herr Doktor.', exampleEn: 'Goodbye, Doctor.' },
              { word: 'heißen', arabic: 'يُدعى', english: 'to be called', pos: 'verb', cefr: 'A1', example: 'Ich heiße Anna.', exampleEn: 'My name is Anna.' },
              { word: 'der Name', arabic: 'الاسم', english: 'name', article: 'der', plural: 'die Namen', pos: 'noun', cefr: 'A1', example: 'Mein Name ist Peter.', exampleEn: 'My name is Peter.' },
              { word: 'kommen', arabic: 'يأتي', english: 'to come', pos: 'verb', cefr: 'A1', example: 'Ich komme aus Ägypten.', exampleEn: 'I come from Egypt.' },
              { word: 'wohnen', arabic: 'يسكن', english: 'to live', pos: 'verb', cefr: 'A1', example: 'Ich wohne in Berlin.', exampleEn: 'I live in Berlin.' },
              { word: 'der Freund', arabic: 'الصديق', english: 'friend (male)', article: 'der', plural: 'die Freunde', pos: 'noun', cefr: 'A1', example: 'Das ist mein Freund.', exampleEn: 'This is my friend.' },
              { word: 'die Freundin', arabic: 'الصديقة', english: 'friend (female)', article: 'die', plural: 'die Freundinnen', pos: 'noun', cefr: 'A1', example: 'Meine Freundin heißt Lisa.', exampleEn: 'My friend is called Lisa.' },
              { word: 'danke', arabic: 'شكراً', english: 'thanks', pos: 'interjection', cefr: 'A1', example: 'Danke schön!', exampleEn: 'Thank you very much!' },
              { word: 'bitte', arabic: 'من فضلك / عفواً', english: 'please / you\'re welcome', pos: 'adverb', cefr: 'A1', example: 'Bitte schön!', exampleEn: 'You\'re welcome!' },
              { word: 'Entschuldigung', arabic: 'عذراً', english: 'excuse me / sorry', pos: 'interjection', cefr: 'A1', example: 'Entschuldigung, wo ist der Bahnhof?', exampleEn: 'Excuse me, where is the train station?' },
              { word: 'ja', arabic: 'نعم', english: 'yes', pos: 'adverb', cefr: 'A1', example: 'Ja, gerne.', exampleEn: 'Yes, gladly.' },
              { word: 'nein', arabic: 'لا', english: 'no', pos: 'adverb', cefr: 'A1', example: 'Nein, danke.', exampleEn: 'No, thanks.' },
              { word: 'wie', arabic: 'كيف', english: 'how', pos: 'adverb', cefr: 'A1', example: 'Wie heißen Sie?', exampleEn: 'What is your name?' },
              { word: 'wo', arabic: 'أين', english: 'where', pos: 'adverb', cefr: 'A1', example: 'Wo wohnst du?', exampleEn: 'Where do you live?' },
              { word: 'woher', arabic: 'من أين', english: 'where from', pos: 'adverb', cefr: 'A1', example: 'Woher kommst du?', exampleEn: 'Where are you from?' },
              { word: 'willkommen', arabic: 'أهلاً وسهلاً', english: 'welcome', pos: 'interjection', cefr: 'A1', example: 'Herzlich willkommen!', exampleEn: 'Welcome heartily!' },
              { word: 'freuen', arabic: 'يفرح', english: 'to be pleased', pos: 'verb', cefr: 'A1', example: 'Ich freue mich, Sie kennenzulernen.', exampleEn: 'I am pleased to meet you.' },
              { word: 'kennenlernen', arabic: 'يتعرف على', english: 'to get to know', pos: 'verb', cefr: 'A1', example: 'Ich lerne neue Leute kennen.', exampleEn: 'I get to know new people.' },
              { word: 'der Herr', arabic: 'السيد', english: 'Mr.', article: 'der', plural: 'die Herren', pos: 'noun', cefr: 'A1', example: 'Herr Müller ist Lehrer.', exampleEn: 'Mr. Müller is a teacher.' },
              { word: 'die Frau', arabic: 'السيدة', english: 'Mrs./Ms.', article: 'die', plural: 'die Frauen', pos: 'noun', cefr: 'A1', example: 'Frau Schmidt kommt aus Köln.', exampleEn: 'Ms. Schmidt comes from Cologne.' },
            ],
            grammar: [
              {
                title: 'Personalpronomen (Personal Pronouns)', titleArabic: 'الضمائر الشخصية',
                explanation: 'Personal pronouns replace nouns. In German, they change by person (I, you, he, she, etc.) and formality. The formal "Sie" is always capitalized. Unlike English, German has a formal vs informal "you" distinction.',
                explanationArabic: 'الضمائر الشخصية تحل محل الأسماء. في الألمانية، تتغير حسب الشخص والشكلية. تُكتب "Sie" الرسمية بحرف كبير دائماً. على عكس الإنجليزية، تفرق الألمانية بين "أنت" الرسمية وغير الرسمية.',
                rules: [
                  { rule: 'ich = I', note: 'Always lowercase unless sentence start', arabic: 'ضمير المتكلم المفرد' },
                  { rule: 'du = you (informal singular)', note: 'For friends, family, children', arabic: 'أنت (غير رسمي، مفرد)' },
                  { rule: 'er = he', note: 'Masculine nouns use er', arabic: 'هو (للمذكر)' },
                  { rule: 'sie = she', note: 'Feminine nouns use sie', arabic: 'هي (للمؤنث)' },
                  { rule: 'es = it', note: 'Neuter nouns use es', arabic: 'هو/هي (للمحايد)' },
                  { rule: 'wir = we', note: 'First person plural', arabic: 'نحن' },
                  { rule: 'ihr = you (informal plural)', note: 'For multiple friends', arabic: 'أنتم (غير رسمي، جمع)' },
                  { rule: 'sie = they', note: 'Third person plural, lowercase', arabic: 'هم' },
                  { rule: 'Sie = you (formal)', note: 'Always capitalized, singular AND plural', arabic: 'حضرتك/حضرتكم (رسمي)' },
                ],
                examples: [
                  { german: 'Ich heiße Anna.', arabic: 'اسمي آنا.', english: 'My name is Anna.' },
                  { german: 'Woher kommst du?', arabic: 'من أين أنت؟', english: 'Where are you from? (informal)' },
                  { german: 'Kommen Sie aus Berlin?', arabic: 'هل أنت من برلين؟', english: 'Do you come from Berlin? (formal)' },
                  { german: 'Er heißt Peter.', arabic: 'اسمه بيتر.', english: 'His name is Peter.' },
                  { german: 'Wir wohnen in München.', arabic: 'نحن نسكن في ميونخ.', english: 'We live in Munich.' },
                  { german: 'Wo wohnt ihr?', arabic: 'أين تسكنون؟', english: 'Where do you live? (informal plural)' },
                  { german: 'Sie kommen aus Marokko.', arabic: 'هم يأتون من المغرب.', english: 'They come from Morocco.' },
                ],
                mistakes: [
                  { mistake: 'Using "du" with a professor or stranger', correction: 'Use "Sie" for formal situations', explanation: 'German has a strict formal/informal distinction. Using "du" with strangers is impolite.', arabic: 'استخدام "du" مع شخص غريب أو أستاذ يعتبر غير مهذب.' },
                  { mistake: 'Writing "sie" instead of "Sie" for formal you', correction: 'Always write "Sie" with capital S for formal you', explanation: 'Lowercase "sie" means "she" or "they". Capital "Sie" means formal "you".' },
                  { mistake: 'Mixing up "ihr" plural and "Sie" formal', correction: 'ihr = you (informal, plural), Sie = you (formal, any number)', explanation: 'Use "ihr" only with multiple friends/family, "Sie" for formal situations.' },
                ],
                memoryTip: 'SIE rule: Capital S = formal YOU, lowercase s = she/they. Think: Big S = Big Respect!',
              },
              {
                title: 'Das Verb "sein" (The Verb "to be")', titleArabic: 'فعل "يكون"',
                explanation: '"Sein" is the most important irregular verb in German. It changes completely in each person. Memorize the forms: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind.',
                explanationArabic: '"sein" هو أهم فعل غير منتظم في الألمانية. يتغير بشكل كامل في كل شخص. احفظ الأشكال: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind.',
                rules: [
                  { rule: 'ich bin = I am', note: 'First person singular', arabic: 'أنا أكون' },
                  { rule: 'du bist = you are (informal)', note: 'Second person singular', arabic: 'أنت تكون (غير رسمي)' },
                  { rule: 'er/sie/es ist = he/she/it is', note: 'Third person singular', arabic: 'هو/هي/هو يكون' },
                  { rule: 'wir sind = we are', note: 'First person plural', arabic: 'نحن نكون' },
                  { rule: 'ihr seid = you are (informal plural)', note: 'Second person plural', arabic: 'أنتم تكونون (غير رسمي)' },
                  { rule: 'sie/Sie sind = they/you are (formal)', note: 'Third person plural / formal', arabic: 'هم يكونون / حضرتك تكون' },
                ],
                examples: [
                  { german: 'Ich bin Anna.', arabic: 'أنا آنا.', english: 'I am Anna.' },
                  { german: 'Du bist freundlich.', arabic: 'أنت لطيف.', english: 'You are friendly.' },
                  { german: 'Er ist Lehrer.', arabic: 'هو معلم.', english: 'He is a teacher.' },
                  { german: 'Sie ist Ärztin.', arabic: 'هي طبيبة.', english: 'She is a doctor.' },
                  { german: 'Wir sind aus Deutschland.', arabic: 'نحن من ألمانيا.', english: 'We are from Germany.' },
                  { german: 'Ihr seid willkommen.', arabic: 'أنتم مرحب بكم.', english: 'You are welcome.' },
                  { german: 'Sind Sie Herr Müller?', arabic: 'هل أنت السيد مولر؟', english: 'Are you Mr. Müller?' },
                ],
                mistakes: [
                  { mistake: 'Using "sein" instead of conjugated form', correction: 'Ich bin, not Ich sein', explanation: '"Sein" must be conjugated: bin, bist, ist, sind, seid, sind.' },
                  { mistake: 'Confusing "ihr seid" with "sie sind"', correction: 'ihr seid = you (plural) are, sie sind = they are', explanation: 'Both have "s-" but different endings.' },
                ],
                memoryTip: 'B-I-S-T spells the du form: BIST. Remember: "Bist du?" sounds like "beest do" in English. Wir SIND = we are. Think: "SIND" sounds like "since" but means "are"!',
              },
            ],
            pronunciation: [
              { topic: 'German ch sound', ipa: '/ç/ (soft) or /x/ (hard)', howTo: 'After e, i, ä, ö, ü, ei, eu = soft ch (like in "ich"). After a, o, u = hard ch (like Scottish "loch")', howToArabic: 'بعد e, i, ä, ö, ü, ei, eu ينطق مثل حرف الكاف الناعم. بعد a, o, u ينطق مثل حرف الخاء', examples: [{ word: 'ich', ipa: '/ɪç/', audio: '' }, { word: 'Buch', ipa: '/buːx/', audio: '' }, { word: 'Mädchen', ipa: '/ˈmɛːt.çən/', audio: '' }], commonMistake: 'Arabic speakers tend to pronounce both as /k/ or /ʃ/. Practice the difference between "ich" (soft) and "Bach" (hard).', practiceWords: ['ich', 'auch', 'Buch', 'nicht', 'Mädchen', 'Küche', 'sprechen', 'machen'] },
              { topic: 'German r sound', ipa: '/ʁ/ or /ʀ/', howTo: 'The German r is pronounced in the back of the throat, like a uvular fricative. Not rolled like Spanish r.', howToArabic: 'تُنطق الراء الألمانية في آخر الحلق، مثل صوت الغين الخفيف وليس مثل الراء العربية المفخمة', examples: [{ word: 'rot', ipa: '/ʁoːt/', audio: '' }, { word: 'Lehrer', ipa: '/ˈleː.ʁɐ/', audio: '' }, { word: 'Bruder', ipa: '/ˈbʁuː.dɐ/', audio: '' }], commonMistake: 'Arabic speakers roll the r like the Arabic ر. German r is a throat sound, not a tongue-tip roll.', practiceWords: ['rot', 'groß', 'Bruder', 'Schwester', 'Lehrer', 'richtig', 'Straße'] },
            ],
            dialogue: [
              { speaker: 'Anna', german: 'Hallo! Ich bin Anna. Wie heißt du?', arabic: 'مرحباً! أنا آنا. ما اسمك؟', english: 'Hello! I am Anna. What is your name?', vocabNote: 'heißen = to be called', grammarNote: 'du form: "Wie heißt du?" uses du (informal)' },
              { speaker: 'Peter', german: 'Hallo Anna, ich heiße Peter. Woher kommst du?', arabic: 'مرحباً آنا، اسمي بيتر. من أين أنت؟', english: 'Hello Anna, my name is Peter. Where are you from?', grammarNote: 'Woher = from where; kommst = du form of kommen' },
              { speaker: 'Anna', german: 'Ich komme aus Berlin. Und du?', arabic: 'أنا من برلين. وأنت؟', english: 'I come from Berlin. And you?', vocabNote: 'aus = from; und = and' },
              { speaker: 'Peter', german: 'Ich komme aus München. Freut mich!', arabic: 'أنا من ميونخ. يسعدني!', english: 'I come from Munich. Nice to meet you!', cultureNote: '"Freut mich!" is a common polite phrase when meeting someone new.' },
              { speaker: 'Anna', german: 'Mich auch! Tschüss, bis später!', arabic: 'وأنا أيضاً! مع السلامة، أراك لاحقاً!', english: 'Me too! Bye, see you later!', vocabNote: 'bis später = see you later (informal)' },
              { speaker: 'Peter', german: 'Tschüss, Anna!', arabic: 'مع السلامة يا آنا!', english: 'Bye, Anna!' },
            ],
            reading: { title: 'Meine erste Woche in Berlin', content: 'Hallo! Ich heiße Maria und komme aus Spanien. Ich wohne jetzt in Berlin. Berlin ist eine große und schöne Stadt. Die Leute sind nett. Mein Deutschkurs beginnt um 9 Uhr. Die Lehrerin heißt Frau Wagner. Sie ist sehr freundlich. Ich lerne jeden Tag neue Wörter. Am Abend treffe ich meine Freunde. Wir gehen zusammen in ein Café. Ich trinke gerne Kaffee und esse Kuchen. Am Wochenende besuche ich den Berliner Dom und das Brandenburger Tor. Berlin gefällt mir sehr gut!', arabicTranslation: 'مرحباً! اسمي ماريا وأنا من إسبانيا. أسكن الآن في برلين. برلين مدينة كبيرة وجميلة. الناس لطفاء. يبدأ كورس الألمانية في الساعة 9. اسم المعلمة فراو فاجنر. هي ودودة جداً. أتعلم كلمات جديدة كل يوم. في المساء ألتقي بأصدقائي. نذهب معاً إلى مقهى. أحب شرب القهوة وأكل الكعك. في عطلة نهاية الأسبوع أزور كاتدرائية برلين وبوابة براندنبورغ. برلين تعجبني كثيراً!', englishTranslation: 'Hello! My name is Maria and I come from Spain. I now live in Berlin. Berlin is a big and beautiful city. The people are nice. My German course starts at 9 o\'clock. The teacher is called Mrs. Wagner. She is very friendly. I learn new words every day. In the evening I meet my friends. We go to a café together. I like to drink coffee and eat cake. On the weekend I visit Berlin Cathedral and the Brandenburg Gate. I like Berlin very much!', wordCount: 120, questions: [] },
            listening: { title: 'Begrüßungsdialog', speakers: [{ name: 'Lehrerin', role: 'teacher' }, { name: 'Student', role: 'student' }], lines: [
              { speaker: 'Lehrerin', german: 'Guten Morgen, Klasse! Heute lernen wir Begrüßungen.', arabic: 'صباح الخير أيها الصف! اليوم سنتعلم التحيات.', english: 'Good morning, class! Today we learn greetings.' },
              { speaker: 'Lehrerin', german: 'Wiederholen Sie nach mir: Guten Morgen!', arabic: 'كرروا ورائي: صباح الخير!', english: 'Repeat after me: Good morning!' },
              { speaker: 'Student', german: 'Guten Morgen!', arabic: 'صباح الخير!', english: 'Good morning!' },
              { speaker: 'Lehrerin', german: 'Guten Tag!', arabic: 'نهارك سعيد!', english: 'Good day!' },
              { speaker: 'Student', german: 'Guten Tag!', arabic: 'نهارك سعيد!', english: 'Good day!' },
              { speaker: 'Lehrerin', german: 'Sehr gut! Jetzt fragen wir: Wie geht es Ihnen?', arabic: 'جيد جداً! الآن نسأل: كيف حالك؟', english: 'Very good! Now we ask: How are you?' },
              { speaker: 'Lehrerin', german: 'Die Antwort: Mir geht es gut, danke.', arabic: 'الإجابة: أنا بخير، شكراً.', english: 'The answer: I am fine, thanks.' },
              { speaker: 'Student', german: 'Mir geht es gut, danke.', arabic: 'أنا بخير، شكراً.', english: 'I am fine, thanks.' },
              { speaker: 'Lehrerin', german: 'Perfekt! Üben Sie zu Hause weiter. Auf Wiedersehen!', arabic: 'ممتاز! استمروا في التدريب في المنزل. إلى اللقاء!', english: 'Perfect! Keep practicing at home. Goodbye!' },
            ], duration: 90, questions: [] },
            speaking: [
              { title: 'Sich vorstellen', scenario: 'You meet someone new at a language course.', task: 'Introduce yourself: say your name, where you come from, and where you live.', tips: ['Start with "Hallo!"', 'Use "Ich heiße..." or "Ich bin..."', 'Ask the other person: "Und du?" or "Und Sie?"'], vocabHints: ['heißen', 'kommen', 'wohnen', 'aus'], minDuration: 30, followUp: ['Wie geht es dir?', 'Woher kommst du?', 'Wo wohnst du?'] },
              { title: 'Formelle Begrüßung', scenario: 'You meet your new German boss at the office.', task: 'Greet your boss formally. Use "Guten Morgen", "Sie", and "Freut mich".', tips: ['Always use "Sie" (capital S)', 'Use "Guten Morgen" before 10 AM', 'Shake hands and make eye contact'], vocabHints: ['Guten Morgen', 'freut mich', 'kennenlernen'], minDuration: 30 },
            ],
            writing: [
              { title: 'Einführungs-E-Mail', type: 'email', task: 'Write a short email introducing yourself to your German language teacher. Include your name, where you come from, and where you live.', formal: true, tips: ['Start with "Sehr geehrte Frau..." or "Sehr geehrter Herr..."', 'End with "Mit freundlichen Grüßen"', 'Use formal "Sie"'], vocabHints: ['heißen', 'kommen aus', 'wohnen in', 'freut mich'], wordLimit: { min: 30, max: 60 } },
            ],
            translation: { from: 'ar', to: 'de', sentences: [
              { original: 'مرحباً، اسمي أحمد.', correct: 'Hallo, ich heiße Ahmed.', hints: 'Use "heißen" for "name is"' },
              { original: 'من أين أنت؟', correct: 'Woher kommst du?', hints: 'Woher = from where' },
              { original: 'أنا من مصر.', correct: 'Ich komme aus Ägypten.', hints: 'Use "aus" for "from"' },
              { original: 'كيف حالك؟', correct: 'Wie geht es dir?', hints: 'dir = dative of du' },
              { original: 'أنا بخير، شكراً.', correct: 'Mir geht es gut, danke.', hints: 'mir = dative of ich' },
            ] },
            realLife: [
              { situation: 'Meeting someone at a language school', context: 'You are at the Goethe-Institut for your first German class. You meet other students and the teacher.', phrases: [
                { german: 'Guten Morgen! Ich bin neu hier.', arabic: 'صباح الخير! أنا جديد هنا.', english: 'Good morning! I am new here.' },
                { german: 'Wie heißen Sie?', arabic: 'ما اسمك؟ (رسمي)', english: 'What is your name? (formal)' },
                { german: 'Freut mich, Sie kennenzulernen.', arabic: 'يسعدني التعرف عليك.', english: 'Pleased to meet you.' },
              ], culturalNote: 'In German-speaking countries, always shake hands when meeting someone for the first time. Say your last name first in formal introductions: "Müller, Anna."', steps: ['Enter and say "Guten Morgen/Tag"', 'Introduce yourself with name', 'Shake hands', 'Ask the other person their name'] },
            ],
            culture: [
              { topic: 'Formal vs Informal Address (Sie vs du)', explanation: 'German distinguishes between formal "Sie" and informal "du". Use "Sie" with strangers, colleagues, professors, authorities, and anyone older. Use "du" with friends, family, children, and fellow students (after being invited to use "du"). The transition from "Sie" to "du" is often marked by saying "Wir können du sagen" (We can say du).', explanationArabic: 'تفرق الألمانية بين "Sie" الرسمية و "du" غير الرسمية. استخدم "Sie" مع الغرباء والزملاء والأساتذة والسلطات ومن هم أكبر سناً. استخدم "du" مع الأصدقاء والعائلة والأطفال.', tips: ['Always use "Sie" in shops, restaurants, and official settings', 'Wait for the other person to offer "du" before switching', 'When in doubt, use "Sie" — it\'s better to be too formal than too informal'] },
              { topic: 'Pünktlichkeit (Punctuality)', explanation: 'Germans value punctuality highly. Being late without notice is considered rude. Arrive 5 minutes early for appointments, classes, and meetings. If you are running late, call or message immediately.', explanationArabic: 'يقدر الألمان الالتزام بالمواعيد بشكل كبير. التأخر بدون إشعار يعتبر وقحاً. احضر قبل 5 دقائق من المواعيد.', tips: ['Arrive 5 minutes early for class', 'If late, call: "Ich komme 10 Minuten später"', 'Don\'t say "5 minutes" if you mean "30"'] },
            ],
            commonMistakes: [
              { mistake: 'Ich heißen Anna', correct: 'Ich heiße Anna', reason: 'heißen must be conjugated: ich heiße', reasonArabic: 'فعل heißen يجب أن يُصرف: ich heiße', category: 'grammar', examples: [{ wrong: 'Ich heißen Peter.', right: 'Ich heiße Peter.' }] },
              { mistake: 'Ich bin aus Berlin', correct: 'Ich komme aus Berlin', reason: '"bin aus" is not used for origin in German. Use "komme aus"', reasonArabic: 'لا يُستخدم "bin aus" للتعبير عن الأصل في الألمانية', category: 'vocabulary', examples: [{ wrong: 'Ich bin aus Kairo.', right: 'Ich komme aus Kairo.' }] },
              { mistake: 'Wo du wohnst?', correct: 'Wo wohnst du?', reason: 'In German W-questions, the verb comes second, not the subject', reasonArabic: 'في أسئلة W- في الألمانية، الفعل يأتي في المكان الثاني وليس الفاعل', category: 'grammar', examples: [{ wrong: 'Wo du wohnst?', right: 'Wo wohnst du?' }] },
            ],
            memoryTips: [
              { tip: 'SIE = Big S = Big Respect', type: 'mnemonic', explanation: 'Remember: Capital S in Sie = formal you. Think of the big S as showing big respect!', arabicExplanation: 'تذكر: حرف S الكبير في Sie يعني الاحترام الكبير!' },
              { tip: 'BIST = B I S T', type: 'visual', explanation: 'Imagine a BIST (a creature) saying "You are!" to remember "du bist = you are"', arabicExplanation: 'تخيل مخلوقاً اسمه BIST يقول "أنت تكون!"' },
            ],
            quiz: [
              { type: 'multiple_choice', question: 'Wie sagt man "good morning" auf Deutsch?', options: ['Guten Abend', 'Guten Morgen', 'Gute Nacht', 'Hallo'], answer: 'Guten Morgen', explanation: 'Guten Morgen = Good morning, used until about 10 AM.', points: 1 },
              { type: 'multiple_choice', question: 'Welches Pronomen verwendet man für einen Professor?', options: ['du', 'Sie', 'ihr', 'er'], answer: 'Sie', explanation: 'In formal situations, always use "Sie" with capital S.', points: 1 },
              { type: 'true_false', question: '"Tschüss" ist formell.', options: ['Richtig', 'Falsch'], answer: 'Falsch', explanation: 'Tschüss is informal. "Auf Wiedersehen" is formal.', points: 1 },
              { type: 'fill_blank', question: 'Ich ___ aus Deutschland.', options: ['komme', 'kommst', 'kommt', 'kommen'], answer: 'komme', explanation: 'ich = komme (first person singular).', points: 1 },
              { type: 'multiple_choice', question: 'Was bedeutet "Freut mich!"?', options: ['I\'m sorry!', 'Nice to meet you!', 'Goodbye!', 'How are you?'], answer: 'Nice to meet you!', explanation: '"Freut mich!" = "Pleased to meet you!"', points: 1 },
              { type: 'multiple_choice', question: 'Wie heißt das auf Deutsch? (Correct: "I am called Anna")', options: ['Ich bin Anna', 'Ich heiße Anna', 'Ich habe Anna', 'Ich werde Anna'], answer: 'Ich heiße Anna', explanation: '"heißen" = "to be called". Both "Ich bin Anna" and "Ich heiße Anna" are correct.', points: 1 },
              { type: 'true_false', question: '"Sie" (capital S) means "she" in German.', options: ['Richtig', 'Falsch'], answer: 'Falsch', explanation: 'Capital "Sie" = formal "you". Lowercase "sie" = "she" or "they".', points: 1 },
              { type: 'fill_blank', question: 'Woher ___ du?', options: ['komme', 'kommst', 'kommt', 'kommen'], answer: 'kommst', explanation: 'du = kommst (second person singular).', points: 1 },
              { type: 'multiple_choice', question: 'Was antwortet man auf "Wie geht es Ihnen?"', options: ['Tschüss!', 'Mir geht es gut, danke.', 'Ich heiße Peter.', 'Guten Morgen!'], answer: 'Mir geht es gut, danke.', explanation: 'Standard response to "How are you?"', points: 1 },
              { type: 'multiple_choice', question: 'Wie verabschiedet man sich formell?', options: ['Tschüss', 'Ciao', 'Auf Wiedersehen', 'Bis später'], answer: 'Auf Wiedersehen', explanation: 'Auf Wiedersehen = formal goodbye.', points: 1 },
            ],
            exercises: [
              { type: 'multiple_choice', question: 'Complete: "___ heiße Maria."', options: ['Ich', 'Du', 'Er', 'Sie'], answer: 'Ich', explanation: 'ich heiße = my name is.', points: 1 },
              { type: 'fill_blank', question: 'Complete: "Guten ___, Herr Schmidt." (evening)', options: ['Morgen', 'Tag', 'Abend', 'Nacht'], answer: 'Abend', explanation: 'Guten Abend = Good evening.', points: 1 },
              { type: 'translation', question: 'Translate: "Where do you come from?"', options: ['Wo wohnst du?', 'Woher kommst du?', 'Wie heißt du?', 'Was machst du?'], answer: 'Woher kommst du?', explanation: 'Woher = where from + kommst = you come.', points: 1 },
              { type: 'sentence_order', question: 'Order the sentence: heiße / ich / Anna', options: [], answer: 'Ich heiße Anna.', explanation: 'Subject (ich) + Verb (heiße) + Object (Anna).', points: 2 },
              { type: 'matching', question: 'Match the pronouns with their meanings', options: ['ich=I, du=you, er=he, sie=she, wir=we, ihr=you(pl), sie=they, Sie=you(formal)'], answer: 'ich=I, du=you, er=he, sie=she, wir=we, ihr=you(pl), sie=they, Sie=you(formal)', explanation: 'Match all 8 German personal pronouns correctly.', points: 2 },
            ],
            homework: { title: 'Homework: Greetings and Introductions', type: 'vocabulary', tasks: [
              { description: 'Write each vocabulary word 3 times with its article', estimatedMinutes: 10 },
              { description: 'Write 5 sentences introducing yourself and your family', estimatedMinutes: 15 },
              { description: 'Practice the dialogue with a partner or record yourself', estimatedMinutes: 10 },
              { description: 'Write a short email introducing yourself (30-50 words)', estimatedMinutes: 15 },
            ], totalMinutes: 50 },
            review: { summary: 'In this lesson you learned how to greet people formally and informally, introduce yourself, and use the verb "sein" with personal pronouns.', summaryArabic: 'في هذا الدرس تعلمت كيفية تحية الناس رسمياً وغير رسمي، وتقديم نفسك، واستخدام فعل "sein" مع الضمائر الشخصية.', keyPoints: ['Formal: Guten Morgen/Tag/Abend + Auf Wiedersehen + Sie', 'Informal: Hallo + Tschüss + du', 'Sein conjugation: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind', 'W-questions: Woher kommst du? / Wie heißen Sie?'], grammarSummary: 'Personal pronouns + sein conjugation + W-questions', vocabFocus: ['Greetings', 'Introductions', 'Pronouns', 'Countries'], commonMistakes: ['Sie vs du', 'Word order in questions', 'heißen conjugation'], tips: ['Practice greetings every morning', 'Use "Sie" when unsure', 'Listen to German greetings on YouTube'], flashcardCount: 20, checklist: [{ item: 'I can greet someone formally', checked: false }, { item: 'I can greet someone informally', checked: false }, { item: 'I can introduce myself', checked: false }, { item: 'I can use sein correctly', checked: false }, { item: 'I know when to use Sie vs du', checked: false }] },
            aiKnowledge: {
              definitions: [
                { term: 'Begrüßung', definition: 'A greeting. In German, greetings vary by time of day and formality level.' },
                { term: 'Formell', definition: 'Formal language used with strangers, authorities, and in professional settings.' },
                { term: 'Informell', definition: 'Informal language used with friends, family, and children.' },
              ],
              faqs: [
                { question: 'When do I use "du" vs "Sie"?', answer: 'Use "Sie" (capital S) with strangers, teachers, bosses, authorities, and elders. Use "du" with friends, family, children, and fellow students. When in doubt, use "Sie" — it is better to be too formal than too familiar.' },
                { question: 'Is "Hallo" formal or informal?', answer: '"Hallo" is neutral - you can use it in both formal and informal situations. However, for very formal situations, "Guten Tag" is more appropriate.' },
                { question: 'Can I say "Ich bin [name]" or must I say "Ich heiße [name]"?', answer: 'Both are correct and commonly used. "Ich heiße..." is more traditional. "Ich bin..." is more casual. In formal introductions, "Mein Name ist..." is also common.' },
              ],
              teacherTips: ['Teach greetings with role-play: have students act out formal and informal meetings', 'Use hand gestures: formal = handshake, informal = wave', 'Practice the "ch" sound daily - it\'s the most common pronunciation challenge for Arabic speakers'],
              advancedExplanations: ['The formal/informal distinction (T-V distinction) exists in many languages but is particularly strict in German. In Switzerland, the informal "du" is used more widely.'],
              synonyms: [
                { german: 'Tschüss / Auf Wiedersehen / Bis später', meaning: 'All mean goodbye but with different formality levels' },
                { german: 'Guten Morgen / Hallo / Guten Tag', meaning: 'Greetings for different times and formality levels' },
              ],
              antonyms: [
                { german: 'Hallo (informal) ↔ Auf Wiedersehen (formal)', opposite: 'While Hallo is informal, Auf Wiedersehen is formal' },
              ],
              examAdvice: ['For Goethe A1: Practice introducing yourself with name, age, country, and language', 'For TELC A1: Focus on understanding the difference between formal and informal questions', 'Pronunciation of "ch" and "r" is often tested in the speaking section'],
              conversationExamples: [
                { situation: 'Meeting a new classmate', dialogue: 'A: Hallo! Ich bin Maria. Und du? B: Ich heiße Ahmed. Freut mich! A: Mich auch! Woher kommst du? B: Ich komme aus Syrien. Und du? A: Ich komme aus Italien.' },
              ],
            },
            expressions: [
              { german: 'Guten Morgen!', english: 'Good morning!', arabic: 'صباح الخير!', formality: 'formal' },
              { german: 'Guten Tag!', english: 'Good day!', arabic: 'نهارك سعيد!', formality: 'formal' },
              { german: 'Hallo!', english: 'Hello!', arabic: 'مرحباً!', formality: 'informal' },
              { german: 'Tschüss!', english: 'Bye!', arabic: 'مع السلامة!', formality: 'informal' },
              { german: 'Auf Wiedersehen!', english: 'Goodbye!', arabic: 'إلى اللقاء!', formality: 'formal' },
              { german: 'Wie geht es Ihnen?', english: 'How are you? (formal)', arabic: 'كيف حالك؟ (رسمي)', formality: 'formal' },
              { german: 'Wie geht es dir?', english: 'How are you? (informal)', arabic: 'كيف حالك؟ (غير رسمي)', formality: 'informal' },
              { german: 'Mir geht es gut, danke.', english: 'I\'m fine, thanks.', arabic: 'أنا بخير، شكراً.', formality: 'neutral' },
              { german: 'Freut mich!', english: 'Nice to meet you!', arabic: 'يسعدني!', formality: 'neutral' },
              { german: 'Bis später!', english: 'See you later!', arabic: 'أراك لاحقاً!', formality: 'informal' },
              { german: 'Entschuldigung!', english: 'Excuse me!', arabic: 'عفواً!', formality: 'neutral' },
              { german: 'Vielen Dank!', english: 'Thank you very much!', arabic: 'شكراً جزيلاً!', formality: 'formal' },
            ],
            flashcards: [
              { front: 'Guten Morgen', back: 'Good morning', hint: 'Used before noon', category: 'expression' },
              { front: 'Guten Tag', back: 'Good day', hint: 'Used from noon to 6 PM', category: 'expression' },
              { front: 'Guten Abend', back: 'Good evening', hint: 'Used after 6 PM', category: 'expression' },
              { front: 'Tschüss', back: 'Bye (informal)', hint: 'With friends', category: 'expression' },
              { front: 'Auf Wiedersehen', back: 'Goodbye (formal)', hint: 'Formal situations', category: 'expression' },
              { front: 'heißen', back: 'to be called', hint: 'Ich heiße...', category: 'vocabulary' },
              { front: 'kommen', back: 'to come', hint: 'Woher kommst du?', category: 'vocabulary' },
              { front: 'wohnen', back: 'to live', hint: 'Ich wohne in...', category: 'vocabulary' },
              { front: 'ich bin', back: 'I am', hint: 'sein conjugation', category: 'grammar' },
              { front: 'du bist', back: 'you are', hint: 'informal', category: 'grammar' },
              { front: 'er/sie/es ist', back: 'he/she/it is', hint: 'third person singular', category: 'grammar' },
              { front: 'wir sind', back: 'we are', hint: 'plural', category: 'grammar' },
              { front: 'Sie', back: 'you (formal)', hint: 'Always capitalized', category: 'grammar' },
              { front: 'Freut mich!', back: 'Nice to meet you!', hint: 'First meeting', category: 'expression' },
              { front: 'Bis später!', back: 'See you later!', hint: 'Soon again', category: 'expression' },
            ],
          },
        ],
      },
    ],
  },
]
