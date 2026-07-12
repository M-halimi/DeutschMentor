-- DeutschMentor AI - A1 Core Vocabulary Seed (200 words)
-- Organized by theme for beginner-level German learners
-- Each word includes translations (EN/FR/AR), IPA, examples, and metadata

-- ============================================================
-- THEME 1: Basics & Greetings (30 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('Hallo', 'hello', null, null, 'Hallo, wie geht es dir? - Hello, how are you?', 'A1', 'greetings', 'Basics & Greetings', 'bonjour', 'مرحبا', null, null, '/haˈloː/', '{}', '{"Tschüss", "Auf Wiedersehen"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "essential"}'),

('Tschüss', 'bye', null, null, 'Tschüss, bis morgen! - Bye, see you tomorrow!', 'A1', 'greetings', 'Basics & Greetings', 'au revoir', 'وداعاً', null, null, '/t͡ʃʏs/', '{}', '{"Hallo", "Guten Tag"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "essential"}'),

('Auf Wiedersehen', 'goodbye', null, null, 'Auf Wiedersehen, Herr Müller! - Goodbye, Mr. Müller!', 'A1', 'greetings', 'Basics & Greetings', 'au revoir', 'إلى اللقاء', null, null, '/aʊ̯f ˈviːdɐzeːən/', '{}', '{"Hallo"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "formal"}'),

('Guten Morgen', 'good morning', null, null, 'Guten Morgen, Kinder! - Good morning, children!', 'A1', 'greetings', 'Basics & Greetings', 'bonjour', 'صباح الخير', null, null, '/ˈɡuːtən ˈmɔʁɡən/', '{}', '{"Gute Nacht"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "essential"}'),

('Guten Tag', 'good day', null, null, 'Guten Tag, kann ich Ihnen helfen? - Good day, can I help you?', 'A1', 'greetings', 'Basics & Greetings', 'bonjour', 'نهارك سعيد', null, null, '/ˈɡuːtən taːk/', '{}', '{"Gute Nacht"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "formal"}'),

('Guten Abend', 'good evening', null, null, 'Guten Abend, willkommen im Restaurant. - Good evening, welcome to the restaurant.', 'A1', 'greetings', 'Basics & Greetings', 'bonsoir', 'مساء الخير', null, null, '/ˈɡuːtən ˈaːbənt/', '{}', '{"Guten Morgen"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "formal"}'),

('Gute Nacht', 'good night', null, null, 'Gute Nacht, schlaf gut! - Good night, sleep well!', 'A1', 'greetings', 'Basics & Greetings', 'bonne nuit', 'تصبح على خير', null, null, '/ˈɡuːtə naxt/', '{}', '{"Guten Morgen"}', '{}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1", "essential"}'),

('danke', 'thank you', null, null, 'Danke für Ihre Hilfe! - Thank you for your help!', 'A1', 'greetings', 'Basics & Greetings', 'merci', 'شكراً', null, null, '/ˈdaŋkə/', '{"vielen Dank"}', '{"bitte"}', '{"danken", "der Dank"}', '{}', 'very_common', 1, 'expression', '{"polite", "a1", "essential"}'),

('bitte', 'please / you are welcome', null, null, 'Bitte schön! - You are welcome!', 'A1', 'greetings', 'Basics & Greetings', 's''il vous plaît / de rien', 'من فضلك / عفواً', null, null, '/ˈbɪtə/', '{"gern geschehen"}', '{"danke"}', '{"bitten"}', '{}', 'very_common', 1, 'expression', '{"polite", "a1", "essential"}'),

('ja', 'yes', null, null, 'Ja, ich komme morgen. - Yes, I will come tomorrow.', 'A1', 'greetings', 'Basics & Greetings', 'oui', 'نعم', null, null, '/jaː/', '{}', '{"nein"}', '{}', '{}', 'very_common', 1, 'adverb', '{"essential", "a1"}'),

('nein', 'no', null, null, 'Nein, das ist nicht richtig. - No, that is not correct.', 'A1', 'greetings', 'Basics & Greetings', 'non', 'لا', null, null, '/naɪn/', '{}', '{"ja"}', '{}', '{}', 'very_common', 1, 'adverb', '{"essential", "a1"}'),

('vielen Dank', 'many thanks', null, null, 'Vielen Dank für das Geschenk! - Many thanks for the gift!', 'A1', 'greetings', 'Basics & Greetings', 'merci beaucoup', 'شكراً جزيلاً', null, null, '/ˈfiːlən daŋk/', '{"danke"}', '{"bitte"}', '{"der Dank", "danken"}', '{}', 'very_common', 1, 'expression', '{"polite", "a1", "essential"}'),

('entschuldigung', 'excuse me / sorry', null, null, 'Entschuldigung, wo ist der Bahnhof? - Excuse me, where is the train station?', 'A1', 'greetings', 'Basics & Greetings', 'excusez-moi / pardon', 'عذراً', null, null, '/ɛntˈʃʊldɪɡʊŋ/', '{"Verzeihung"}', '{}', '{"entschuldigen", "die Schuld"}', '{}', 'very_common', 1, 'expression', '{"polite", "a1", "essential"}'),

('wie', 'how', null, null, 'Wie heißen Sie? - What is your name?', 'A1', 'greetings', 'Basics & Greetings', 'comment', 'كيف', null, null, '/viː/', '{}', '{}', '{}', '{}', 'very_common', 1, 'adverb', '{"question", "a1", "essential"}'),

('ich', 'I', null, null, 'Ich bin Anna. - I am Anna.', 'A1', 'greetings', 'Basics & Greetings', 'je', 'أنا', null, null, '/ɪç/', '{}', '{"du"}', '{"mein", "mir", "mich"}', '{}', 'very_common', 1, 'adverb', '{"pronoun", "a1", "essential"}'),

('du', 'you (informal)', null, null, 'Du bist mein Freund. - You are my friend.', 'A1', 'greetings', 'Basics & Greetings', 'tu', 'أنت', null, null, '/duː/', '{"Sie"}', '{"ich"}', '{"dein", "dir", "dich"}', '{}', 'very_common', 1, 'adverb', '{"pronoun", "a1", "informal"}'),

('Sie', 'you (formal)', null, null, 'Sie sind sehr freundlich. - You are very kind.', 'A1', 'greetings', 'Basics & Greetings', 'vous', 'أنتم', null, null, '/ziː/', '{"du"}', '{}', '{"Ihr", "Ihnen"}', '{}', 'very_common', 1, 'adverb', '{"pronoun", "a1", "formal"}'),

('heißen', 'to be called', null, null, 'Wie heißt du? - What is your name?', 'A1', 'greetings', 'Basics & Greetings', 's''appeler', 'يدعى / يتسمى', null, null, '/ˈhaɪ̯sən/', '{}', '{}', '{"der Name", "namens"}', '{"base": "heißen", "präsens": {"ich": "heiße", "du": "heißt", "er/sie/es": "heißt", "wir": "heißen", "ihr": "heißt", "sie/Sie": "heißen"}, "präteritum": {"ich": "hieß", "er/sie/es": "hieß"}, "perfekt": "geheißen"}', 'very_common', 1, 'verb', '{"verb", "a1", "essential"}'),

('kommen', 'to come', null, null, 'Kommst du aus Deutschland? - Do you come from Germany?', 'A1', 'greetings', 'Basics & Greetings', 'venir', 'يأتي', null, null, '/ˈkɔmən/', '{"anreisen"}', '{"gehen"}', '{"die Ankunft", "der Kommen"}', '{"base": "kommen", "präsens": {"ich": "komme", "du": "kommst", "er/sie/es": "kommt", "wir": "kommen", "ihr": "kommt", "sie/Sie": "kommen"}, "präteritum": {"ich": "kam", "er/sie/es": "kam"}, "perfekt": "gekommen"}', 'very_common', 1, 'verb', '{"verb", "a1", "movement"}'),

('sein', 'to be', null, null, 'Das ist ein Buch. - That is a book.', 'A1', 'greetings', 'Basics & Greetings', 'être', 'يكون', null, null, '/zaɪn/', '{"existieren"}', '{"nicht sein"}', '{"das Sein", "wesentlich"}', '{"base": "sein", "präsens": {"ich": "bin", "du": "bist", "er/sie/es": "ist", "wir": "sind", "ihr": "seid", "sie/Sie": "sind"}, "präteritum": {"ich": "war", "er/sie/es": "war"}, "perfekt": "gewesen"}', 'very_common', 1, 'verb', '{"verb", "a1", "auxiliary"}'),

('haben', 'to have', null, null, 'Ich habe einen Bruder. - I have a brother.', 'A1', 'greetings', 'Basics & Greetings', 'avoir', 'يملك', null, null, '/ˈhaːbən/', '{"besitzen"}', '{}', '{"der Haben"}', '{"base": "haben", "präsens": {"ich": "habe", "du": "hast", "er/sie/es": "hat", "wir": "haben", "ihr": "habt", "sie/Sie": "haben"}, "präteritum": {"ich": "hatte", "er/sie/es": "hatte"}, "perfekt": "gehabt"}', 'very_common', 1, 'verb', '{"verb", "a1", "auxiliary"}'),

('sagen', 'to say', null, null, 'Was sagst du? - What do you say?', 'A1', 'greetings', 'Basics & Greetings', 'dire', 'يقول', null, null, '/ˈzaːɡən/', '{"sprechen", "äußern"}', '{"schweigen"}', '{"die Sage", "die Ansage"}', '{"base": "sagen", "präsens": {"ich": "sage", "du": "sagst", "er/sie/es": "sagt", "wir": "sagen", "ihr": "sagt", "sie/Sie": "sagen"}, "präteritum": {"ich": "sagte", "er/sie/es": "sagte"}, "perfekt": "gesagt"}', 'very_common', 1, 'verb', '{"verb", "a1", "communication"}'),

('machen', 'to make / to do', null, null, 'Was machst du heute? - What are you doing today?', 'A1', 'greetings', 'Basics & Greetings', 'faire', 'يفعل / يصنع', null, null, '/ˈmaxən/', '{"tun", "erledigen"}', '{"lassen"}', '{"die Machart", "der Macher"}', '{"base": "machen", "präsens": {"ich": "mache", "du": "machst", "er/sie/es": "macht", "wir": "machen", "ihr": "macht", "sie/Sie": "machen"}, "präteritum": {"ich": "machte", "er/sie/es": "machte"}, "perfekt": "gemacht"}', 'very_common', 1, 'verb', '{"verb", "a1", "action"}'),

('gehen', 'to go', null, null, 'Wir gehen nach Hause. - We are going home.', 'A1', 'greetings', 'Basics & Greetings', 'aller', 'يذهب', null, null, '/ˈɡeːən/', '{"laufen", "fahren"}', '{"kommen", "bleiben"}', '{"der Gang", "der Gehweg"}', '{"base": "gehen", "präsens": {"ich": "gehe", "du": "gehst", "er/sie/es": "geht", "wir": "gehen", "ihr": "geht", "sie/Sie": "gehen"}, "präteritum": {"ich": "ging", "er/sie/es": "ging"}, "perfekt": "gegangen"}', 'very_common', 1, 'verb', '{"verb", "a1", "movement"}'),

('willkommen', 'welcome', null, null, 'Willkommen in Berlin! - Welcome to Berlin!', 'A1', 'greetings', 'Basics & Greetings', 'bienvenue', 'أهلاً وسهلاً', null, null, '/vɪlˈkɔmən/', '{}', '{}', '{"willkommen heißen"}', '{}', 'very_common', 1, 'expression', '{"greeting", "a1"}'),

('servus', 'hi / bye (regional)', null, null, 'Servus, wie gehts? - Hi, how are you?', 'A1', 'greetings', 'Basics & Greetings', 'salut', 'مرحباً', null, null, '/ˈzɛɐ̯vʊs/', '{"Hallo", "Tschüss"}', '{}', '{}', '{}', 'common', 1, 'expression', '{"greeting", "a1", "regional", "informal"}'),

('morgen', 'tomorrow', null, null, 'Morgen habe ich frei. - Tomorrow I am free.', 'A1', 'time', 'Basics & Greetings', 'demain', 'غداً', null, null, '/ˈmɔʁɡən/', '{"am nächsten Tag"}', '{"heute", "gestern"}', '{"der Morgen", "morgig"}', '{}', 'very_common', 1, 'adverb', '{"time", "a1"}'),

('heute', 'today', null, null, 'Heute ist Montag. - Today is Monday.', 'A1', 'time', 'Basics & Greetings', 'aujourd''hui', 'اليوم', null, null, '/ˈhɔʏtə/', '{}', '{"morgen", "gestern"}', '{"heutig"}', '{}', 'very_common', 1, 'adverb', '{"time", "a1", "essential"}'),

('ja bitte', 'yes please', null, null, 'Möchtest du Kaffee? Ja, bitte! - Would you like coffee? Yes, please!', 'A1', 'greetings', 'Basics & Greetings', 'oui merci', 'نعم من فضلك', null, null, '/jaː ˈbɪtə/', '{}', '{"nein danke"}', '{}', '{}', 'very_common', 1, 'expression', '{"polite", "a1"}'),

('nein danke', 'no thanks', null, null, 'Noch ein Stück? Nein, danke! - Another piece? No, thanks!', 'A1', 'greetings', 'Basics & Greetings', 'non merci', 'لا شكراً', null, null, '/naɪn ˈdaŋkə/', '{}', '{"ja bitte"}', '{}', '{}', 'very_common', 1, 'expression', '{"polite", "a1"}');

-- ============================================================
-- THEME 2: Numbers & Time (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('eins', 'one', null, null, 'Ich habe eins, zwei, drei Bücher. - I have one, two, three books.', 'A1', 'numbers', 'Numbers & Time', 'un', 'واحد', null, null, '/aɪns/', '{}', '{}', '{"die Eins", "der Erste"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('zwei', 'two', null, null, 'Wir sind zwei Kinder. - We are two children.', 'A1', 'numbers', 'Numbers & Time', 'deux', 'اثنان', null, null, '/t͡svaɪ/', '{}', '{}', '{"die Zwei", "der Zweite"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('drei', 'three', null, null, 'Drei Äpfel sind auf dem Tisch. - Three apples are on the table.', 'A1', 'numbers', 'Numbers & Time', 'trois', 'ثلاثة', null, null, '/dʁaɪ/', '{}', '{}', '{"die Drei", "der Dritte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('vier', 'four', null, null, 'Vier Jahreszeiten gibt es. - There are four seasons.', 'A1', 'numbers', 'Numbers & Time', 'quatre', 'أربعة', null, null, '/fiːɐ̯/', '{}', '{}', '{"die Vier", "der Vierte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('fünf', 'five', null, null, 'Fünf Minuten Pause. - Five minutes break.', 'A1', 'numbers', 'Numbers & Time', 'cinq', 'خمسة', null, null, '/fʏnf/', '{}', '{}', '{"die Fünf", "der Fünfte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('sechs', 'six', null, null, 'Sechs Euro kostet das. - That costs six euros.', 'A1', 'numbers', 'Numbers & Time', 'six', 'ستة', null, null, '/zɛks/', '{}', '{}', '{"die Sechs", "der Sechste"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('sieben', 'seven', null, null, 'Sieben Tage hat die Woche. - The week has seven days.', 'A1', 'numbers', 'Numbers & Time', 'sept', 'سبعة', null, null, '/ˈziːbən/', '{}', '{}', '{"die Sieben", "der Siebte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('acht', 'eight', null, null, 'Um acht Uhr beginnt die Schule. - School starts at eight o''clock.', 'A1', 'numbers', 'Numbers & Time', 'huit', 'ثمانية', null, null, '/axt/', '{}', '{}', '{"die Acht", "der Achte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('neun', 'nine', null, null, 'Neun Äpfel im Korb. - Nine apples in the basket.', 'A1', 'numbers', 'Numbers & Time', 'neuf', 'تسعة', null, null, '/nɔʏn/', '{}', '{}', '{"die Neun", "der Neunte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('zehn', 'ten', null, null, 'Zehn Euro, bitte. - Ten euros, please.', 'A1', 'numbers', 'Numbers & Time', 'dix', 'عشرة', null, null, '/t͡seːn/', '{}', '{}', '{"die Zehn", "der Zehnte"}', '{}', 'very_common', 1, 'adjective', '{"number", "a1", "essential"}'),

('die Uhr', 'clock / watch', 'die', 'Uhren', 'Die Uhr zeigt 12 Uhr. - The clock shows 12 o''clock.', 'A1', 'time', 'Numbers & Time', 'l''horloge / la montre', 'الساعة', null, null, '/uːɐ̯/', '{"die Armbanduhr", "die Zeit"}', '{}', '{"die Uhrzeit", "stündlich"}', '{}', 'very_common', 1, 'noun', '{"time", "a1", "object"}'),

('die Zeit', 'time', 'die', 'Zeiten', 'Die Zeit vergeht schnell. - Time passes quickly.', 'A1', 'time', 'Numbers & Time', 'le temps', 'الوقت', null, null, '/t͡saɪt/', '{"die Uhrzeit", "der Moment"}', '{"die Ewigkeit"}', '{"zeitlich", "die Zeitspanne"}', '{}', 'very_common', 1, 'noun', '{"time", "a1", "abstract"}'),

('jetzt', 'now', null, null, 'Jetzt gehe ich nach Hause. - Now I am going home.', 'A1', 'time', 'Numbers & Time', 'maintenant', 'الآن', null, null, '/jɛt͡st/', '{"sofort", "gerade"}', '{"später"}', '{"jetzig", "der Jetztzeit"}', '{}', 'very_common', 1, 'adverb', '{"time", "a1"}'),

('später', 'later', null, null, 'Wir sehen uns später. - We will see each other later.', 'A1', 'time', 'Numbers & Time', 'plus tard', 'لاحقاً', null, null, '/ˈʃpɛːtɐ/', '{"danach"}', '{"früher", "jetzt"}', '{"spät", "die Späte"}', '{}', 'very_common', 1, 'adverb', '{"time", "a1"}'),

('der Tag', 'day', 'der', 'Tage', 'Der Tag ist schön. - The day is beautiful.', 'A1', 'time', 'Numbers & Time', 'le jour', 'اليوم', null, null, '/taːk/', '{}', '{"die Nacht"}', '{"täglich", "der Tagesablauf"}', '{}', 'very_common', 1, 'noun', '{"time", "a1", "essential"}'),

('die Woche', 'week', 'die', 'Wochen', 'Die Woche hat sieben Tage. - The week has seven days.', 'A1', 'time', 'Numbers & Time', 'la semaine', 'الأسبوع', null, null, '/ˈvɔxə/', '{}', '{}', '{"wöchentlich", "das Wochenende"}', '{}', 'very_common', 1, 'noun', '{"time", "a1"}'),

('das Jahr', 'year', 'das', 'Jahre', 'Das Jahr hat zwölf Monate. - The year has twelve months.', 'A1', 'time', 'Numbers & Time', 'l''année', 'السنة', null, null, '/jaːɐ̯/', '{}', '{}', '{"jährlich", "das Jahrhundert"}', '{}', 'very_common', 1, 'noun', '{"time", "a1"}'),

('der Monat', 'month', 'der', 'Monate', 'Der Monat Januar ist kalt. - January is cold.', 'A1', 'time', 'Numbers & Time', 'le mois', 'الشهر', null, null, '/ˈmoːnat/', '{}', '{}', '{"monatlich", "der Monatsanfang"}', '{}', 'very_common', 1, 'noun', '{"time", "a1"}'),

('die Minute', 'minute', 'die', 'Minuten', 'Eine Minute hat sechzig Sekunden. - A minute has sixty seconds.', 'A1', 'time', 'Numbers & Time', 'la minute', 'الدقيقة', null, null, '/miˈnuːtə/', '{}', '{}', '{"minütlich", "die Minutenzahl"}', '{}', 'very_common', 1, 'noun', '{"time", "a1"}'),

('die Stunde', 'hour', 'die', 'Stunden', 'Eine Stunde hat sechzig Minuten. - An hour has sixty minutes.', 'A1', 'time', 'Numbers & Time', 'l''heure', 'الساعة', null, null, '/ˈʃtʊndə/', '{}', '{}', '{"stündlich", "die Unterrichtsstunde"}', '{}', 'very_common', 1, 'noun', '{"time", "a1"}');

-- ============================================================
-- THEME 3: Colors & Shapes (15 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('rot', 'red', null, null, 'Die Rose ist rot. - The rose is red.', 'A1', 'colors', 'Colors & Shapes', 'rouge', 'أحمر', null, null, '/ʁoːt/', '{}', '{}', '{"die Röte", "rötlich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('blau', 'blue', null, null, 'Der Himmel ist blau. - The sky is blue.', 'A1', 'colors', 'Colors & Shapes', 'bleu', 'أزرق', null, null, '/blaʊ̯/', '{}', '{}', '{"die Bläue", "bläulich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('grün', 'green', null, null, 'Das Gras ist grün. - The grass is green.', 'A1', 'colors', 'Colors & Shapes', 'vert', 'أخضر', null, null, '/ɡʁyːn/', '{}', '{}', '{"das Grün", "grünlich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('gelb', 'yellow', null, null, 'Die Sonne ist gelb. - The sun is yellow.', 'A1', 'colors', 'Colors & Shapes', 'jaune', 'أصفر', null, null, '/ɡɛlp/', '{}', '{}', '{"das Gelb", "gelblich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('schwarz', 'black', null, null, 'Die Nacht ist schwarz. - The night is black.', 'A1', 'colors', 'Colors & Shapes', 'noir', 'أسود', null, null, '/ʃvaʁt͡s/', '{"dunkel"}', '{"weiß"}', '{"die Schwärze", "schwärzlich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('weiß', 'white', null, null, 'Der Schnee ist weiß. - The snow is white.', 'A1', 'colors', 'Colors & Shapes', 'blanc', 'أبيض', null, null, '/vaɪs/', '{}', '{"schwarz"}', '{"das Weiß", "weißlich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('braun', 'brown', null, null, 'Der Tisch ist braun. - The table is brown.', 'A1', 'colors', 'Colors & Shapes', 'marron', 'بني', null, null, '/bʁaʊ̯n/', '{}', '{}', '{"das Braun", "bräunlich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('grau', 'gray', null, null, 'Der Himmel ist grau. - The sky is gray.', 'A1', 'colors', 'Colors & Shapes', 'gris', 'رمادي', null, null, '/ɡʁaʊ̯/', '{}', '{}', '{"das Grau", "gräulich"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('orange', 'orange', null, null, 'Die Karotte ist orange. - The carrot is orange.', 'A1', 'colors', 'Colors & Shapes', 'orange', 'برتقالي', null, null, '/oˈʁɑ̃ːʒə/', '{}', '{}', '{"das Orange"}', '{}', 'very_common', 1, 'adjective', '{"color", "a1"}'),

('pink', 'pink', null, null, 'Die Blume ist pink. - The flower is pink.', 'A1', 'colors', 'Colors & Shapes', 'rose', 'وردي', null, null, '/pɪŋk/', '{"rosa"}', '{}', '{"das Pink"}', '{}', 'common', 1, 'adjective', '{"color", "a1"}'),

('lila', 'purple', null, null, 'Der Pullover ist lila. - The sweater is purple.', 'A1', 'colors', 'Colors & Shapes', 'violet', 'أرجواني', null, null, '/ˈliːla/', '{"violett"}', '{}', '{"das Lila"}', '{}', 'common', 1, 'adjective', '{"color", "a1"}'),

('der Kreis', 'circle', 'der', 'Kreise', 'Der Kreis ist rund. - The circle is round.', 'A1', 'shapes', 'Colors & Shapes', 'le cercle', 'دائرة', null, null, '/kʁaɪs/', '{"der Ring"}', '{"das Quadrat"}', '{"kreisförmig", "kreisen"}', '{}', 'common', 1, 'noun', '{"shape", "a1"}'),

('das Quadrat', 'square', 'das', 'Quadrate', 'Das Quadrat hat vier Ecken. - The square has four corners.', 'A1', 'shapes', 'Colors & Shapes', 'le carré', 'مربع', null, null, '/kvaˈdʁaːt/', '{}', '{"der Kreis"}', '{"quadratisch"}', '{}', 'common', 1, 'noun', '{"shape", "a1"}'),

('das Dreieck', 'triangle', 'das', 'Dreiecke', 'Das Dreieck hat drei Seiten. - The triangle has three sides.', 'A1', 'shapes', 'Colors & Shapes', 'le triangle', 'مثلث', null, null, '/ˈdʁaɪ̯ʔɛk/', '{}', '{}', '{"dreieckig"}', '{}', 'common', 1, 'noun', '{"shape", "a1"}'),

('bunt', 'colorful', null, null, 'Das Bild ist bunt. - The picture is colorful.', 'A1', 'colors', 'Colors & Shapes', 'coloré', 'ملون', null, null, '/bʊnt/', '{"farbig"}', '{"einfarbig"}', '{"die Buntheit", "buntgemischt"}', '{}', 'common', 1, 'adjective', '{"color", "a1"}');

-- ============================================================
-- THEME 4: Family & People (25 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('die Mutter', 'mother', 'die', 'Mütter', 'Meine Mutter kocht gut. - My mother cooks well.', 'A1', 'family', 'Family & People', 'la mère', 'الأم', null, null, '/ˈmʊtɐ/', '{"die Mama"}', '{"der Vater"}', '{"mütterlich", "die Mutterschaft"}', '{}', 'very_common', 1, 'noun', '{"family", "a1", "essential"}'),

('der Vater', 'father', 'der', 'Väter', 'Mein Vater arbeitet viel. - My father works a lot.', 'A1', 'family', 'Family & People', 'le père', 'الأب', null, null, '/ˈfaːtɐ/', '{"der Papa"}', '{"die Mutter"}', '{"väterlich", "die Vaterschaft"}', '{}', 'very_common', 1, 'noun', '{"family", "a1", "essential"}'),

('der Bruder', 'brother', 'der', 'Brüder', 'Mein Bruder ist älter. - My brother is older.', 'A1', 'family', 'Family & People', 'le frère', 'الأخ', null, null, '/ˈbʁuːdɐ/', '{}', '{"die Schwester"}', '{"brüderlich", "die Bruderschaft"}', '{}', 'very_common', 1, 'noun', '{"family", "a1", "essential"}'),

('die Schwester', 'sister', 'die', 'Schwestern', 'Meine Schwester lernt Deutsch. - My sister is learning German.', 'A1', 'family', 'Family & People', 'la sœur', 'الأخت', null, null, '/ˈʃvɛstɐ/', '{}', '{"der Bruder"}', '{"schwesterlich", "die Geschwister"}', '{}', 'very_common', 1, 'noun', '{"family", "a1", "essential"}'),

('der Sohn', 'son', 'der', 'Söhne', 'Ihr Sohn geht zur Schule. - Her son goes to school.', 'A1', 'family', 'Family & People', 'le fils', 'الابن', null, null, '/zoːn/', '{}', '{"die Tochter"}', '{"der Enkelsohn"}', '{}', 'very_common', 1, 'noun', '{"family", "a1"}'),

('die Tochter', 'daughter', 'die', 'Töchter', 'Meine Tochter spielt Klavier. - My daughter plays piano.', 'A1', 'family', 'Family & People', 'la fille', 'الابنة', null, null, '/ˈtɔxtɐ/', '{}', '{"der Sohn"}', '{"die Enkeltochter"}', '{}', 'very_common', 1, 'noun', '{"family", "a1"}'),

('die Familie', 'family', 'die', 'Familien', 'Die Familie isst zusammen. - The family eats together.', 'A1', 'family', 'Family & People', 'la famille', 'العائلة', null, null, '/faˈmiːli̯ə/', '{"die Verwandtschaft"}', '{}', '{"familiär", "der Familienname"}', '{}', 'very_common', 1, 'noun', '{"family", "a1", "essential"}'),

('der Opa', 'grandpa', 'der', 'Opas', 'Mein Opa erzählt Geschichten. - My grandpa tells stories.', 'A1', 'family', 'Family & People', 'le grand-père', 'الجد', null, null, '/ˈoːpa/', '{"der Großvater"}', '{"die Oma"}', '{"die Opazeit"}', '{}', 'common', 1, 'noun', '{"family", "a1", "informal"}'),

('die Oma', 'grandma', 'die', 'Omas', 'Meine Oma backt Kuchen. - My grandma bakes cake.', 'A1', 'family', 'Family & People', 'la grand-mère', 'الجدة', null, null, '/ˈoːma/', '{"die Großmutter"}', '{"der Opa"}', '{"die Oma-Zeit"}', '{}', 'common', 1, 'noun', '{"family", "a1", "informal"}'),

('der Onkel', 'uncle', 'der', 'Onkel', 'Mein Onkel wohnt in Berlin. - My uncle lives in Berlin.', 'A1', 'family', 'Family & People', 'l''oncle', 'العم / الخال', null, null, '/ˈɔŋkəl/', '{}', '{"die Tante"}', '{"der Großonkel"}', '{}', 'very_common', 1, 'noun', '{"family", "a1"}'),

('die Tante', 'aunt', 'die', 'Tanten', 'Meine Tante kommt zu Besuch. - My aunt is visiting.', 'A1', 'family', 'Family & People', 'la tante', 'العمة / الخالة', null, null, '/ˈtantə/', '{}', '{"der Onkel"}', '{"die Großtante"}', '{}', 'very_common', 1, 'noun', '{"family", "a1"}'),

('der Cousin', 'cousin (male)', 'der', 'Cousins', 'Mein Cousin studiert Medizin. - My cousin studies medicine.', 'A1', 'family', 'Family & People', 'le cousin', 'ابن العم / ابن الخال', null, null, '/kuˈzɛ̃ː/', '{}', '{"die Cousine"}', '{}', '{}', 'common', 1, 'noun', '{"family", "a1"}'),

('die Cousine', 'cousin (female)', 'die', 'Cousinen', 'Meine Cousine wohnt in München. - My cousin lives in Munich.', 'A1', 'family', 'Family & People', 'la cousine', 'بنت العم / بنت الخال', null, null, '/kuˈziːnə/', '{}', '{"der Cousin"}', '{}', '{}', 'common', 1, 'noun', '{"family", "a1"}'),

('das Baby', 'baby', 'das', 'Babys', 'Das Baby schläft. - The baby is sleeping.', 'A1', 'family', 'Family & People', 'le bébé', 'الطفل الرضيع', null, null, '/ˈbeːbi/', '{"das Kleinkind"}', '{}', '{"die Babyzeit"}', '{}', 'common', 1, 'noun', '{"family", "a1"}'),

('der Freund', 'friend (male)', 'der', 'Freunde', 'Mein Freund heißt Tom. - My friend is called Tom.', 'A1', 'people', 'Family & People', 'l''ami', 'الصديق', null, null, '/fʁɔʏnt/', '{"der Kumpel"}', '{"der Feind"}', '{"freundlich", "die Freundschaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "essential"}'),

('die Freundin', 'friend (female)', 'die', 'Freundinnen', 'Meine Freundin kommt aus Berlin. - My friend comes from Berlin.', 'A1', 'people', 'Family & People', 'l''amie', 'الصديقة', null, null, '/ˈfʁɔʏndɪn/', '{}', '{"die Feindin"}', '{"freundlich", "die Freundschaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "essential"}'),

('der Mann', 'man / husband', 'der', 'Männer', 'Der Mann liest eine Zeitung. - The man is reading a newspaper.', 'A1', 'people', 'Family & People', 'l''homme / le mari', 'الرجل', null, null, '/man/', '{"der Herr"}', '{"die Frau"}', '{"männlich", "der Mannschaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "essential"}'),

('die Frau', 'woman / wife', 'die', 'Frauen', 'Die Frau kauft ein. - The woman is shopping.', 'A1', 'people', 'Family & People', 'la femme', 'المرأة', null, null, '/fʁaʊ̯/', '{"die Dame"}', '{"der Mann"}', '{"weiblich", "die Frauenärztin"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "essential"}'),

('das Kind', 'child', 'das', 'Kinder', 'Das Kind spielt im Garten. - The child is playing in the garden.', 'A1', 'people', 'Family & People', 'l''enfant', 'الطفل', null, null, '/kɪnt/', '{}', '{"der Erwachsene"}', '{"kindisch", "die Kindheit"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "essential"}'),

('der Junge', 'boy', 'der', 'Jungen', 'Der Junge läuft schnell. - The boy runs fast.', 'A1', 'people', 'Family & People', 'le garçon', 'الولد', null, null, '/ˈjʊŋə/', '{"der Knabe"}', '{"das Mädchen"}', '{"jung", "jünger"}', '{}', 'very_common', 1, 'noun', '{"people", "a1"}'),

('das Mädchen', 'girl', 'das', 'Mädchen', 'Das Mädchen singt ein Lied. - The girl sings a song.', 'A1', 'people', 'Family & People', 'la fille', 'الفتاة', null, null, '/ˈmɛːtçən/', '{}', '{"der Junge"}', '{"mädchenhaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1"}'),

('der Herr', 'gentleman / Mr.', 'der', 'Herren', 'Guten Tag, Herr Müller! - Good day, Mr. Müller!', 'A1', 'people', 'Family & People', 'monsieur', 'السيد', null, null, '/hɛʁ/', '{"der Mann"}', '{"die Dame"}', '{"herrisch", "die Herrschaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "formal"}'),

('die Dame', 'lady / Ms.', 'die', 'Damen', 'Guten Abend, die Damen! - Good evening, ladies!', 'A1', 'people', 'Family & People', 'madame', 'السيدة', null, null, '/ˈdaːmə/', '{"die Frau"}', '{"der Herr"}', '{"damenhaft"}', '{}', 'very_common', 1, 'noun', '{"people", "a1", "formal"}'),

('der Nachbar', 'neighbor (male)', 'der', 'Nachbarn', 'Unser Nachbar hat einen Hund. - Our neighbor has a dog.', 'A1', 'people', 'Family & People', 'le voisin', 'الجار', null, null, '/ˈnaxbaːɐ̯/', '{}', '{}', '{"die Nachbarschaft", "nachbarlich"}', '{}', 'common', 1, 'noun', '{"people", "a1"}'),

('die Nachbarin', 'neighbor (female)', 'die', 'Nachbarinnen', 'Die Nachbarin hilft uns. - The neighbor helps us.', 'A1', 'people', 'Family & People', 'la voisine', 'الجارة', null, null, '/ˈnaxbaːʁɪn/', '{}', '{}', '{"die Nachbarschaft"}', '{}', 'common', 1, 'noun', '{"people", "a1"}');

-- ============================================================
-- THEME 5: Food & Drink (30 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('das Wasser', 'water', 'das', null, 'Ich trinke Wasser. - I drink water.', 'A1', 'food', 'Food & Drink', 'l''eau', 'ماء', null, null, '/ˈvasɐ/', '{}', '{}', '{"wässrig", "das Mineralwasser"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1", "essential"}'),

('das Brot', 'bread', 'das', 'Brote', 'Das Brot ist frisch. - The bread is fresh.', 'A1', 'food', 'Food & Drink', 'le pain', 'خبز', null, null, '/bʁoːt/', '{"der Laib"}', '{}', '{"das Brötchen", "der Brotkorb"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "essential"}'),

('die Milch', 'milk', 'die', null, 'Die Milch ist kalt. - The milk is cold.', 'A1', 'food', 'Food & Drink', 'le lait', 'حليب', null, null, '/mɪlç/', '{}', '{}', '{"die Milchstraße", "milchig"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1", "essential"}'),

('der Kaffee', 'coffee', 'der', null, 'Der Kaffee ist heiß. - The coffee is hot.', 'A1', 'food', 'Food & Drink', 'le café', 'قهوة', null, null, '/ˈkafeː/', '{}', '{"der Tee"}', '{"die Kaffeepause", "der Kaffeelöffel"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1", "essential"}'),

('der Tee', 'tea', 'der', null, 'Trinkst du Tee? - Do you drink tea?', 'A1', 'food', 'Food & Drink', 'le thé', 'شاي', null, null, '/teː/', '{}', '{"der Kaffee"}', '{"der Teebeutel", "die Teekanne"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1"}'),

('der Saft', 'juice', 'der', 'Säfte', 'Der Apfelsaft schmeckt gut. - The apple juice tastes good.', 'A1', 'food', 'Food & Drink', 'le jus', 'عصير', null, null, '/zaft/', '{}', '{}', '{"der Fruchtsaft", "saftig"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1"}'),

('das Bier', 'beer', 'das', 'Biere', 'Ein Bier, bitte! - One beer, please!', 'A1', 'food', 'Food & Drink', 'la bière', 'بيرة', null, null, '/biːɐ̯/', '{}', '{}', '{"die Bierflasche", "das Bierglas"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1"}'),

('der Wein', 'wine', 'der', 'Weine', 'Der Wein ist rot. - The wine is red.', 'A1', 'food', 'Food & Drink', 'le vin', 'نبيذ', null, null, '/vaɪn/', '{}', '{}', '{"die Weinflasche", "das Weinglas"}', '{}', 'very_common', 1, 'noun', '{"food", "drink", "a1"}'),

('der Apfel', 'apple', 'der', 'Äpfel', 'Der Apfel ist rot und süß. - The apple is red and sweet.', 'A1', 'food', 'Food & Drink', 'la pomme', 'تفاح', null, null, '/ˈapfəl/', '{}', '{}', '{"der Apfelkuchen", "der Apfelsaft"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "fruit"}'),

('die Banane', 'banana', 'die', 'Bananen', 'Die Banane ist gelb. - The banana is yellow.', 'A1', 'food', 'Food & Drink', 'la banane', 'موز', null, null, '/baˈnaːnə/', '{}', '{}', '{"der Bananensaft"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "fruit"}'),

('die Orange', 'orange (fruit)', 'die', 'Orangen', 'Die Orange ist saftig. - The orange is juicy.', 'A1', 'food', 'Food & Drink', 'l''orange', 'برتقالة', null, null, '/oˈʁɑ̃ːʒə/', '{"die Apfelsine"}', '{}', '{"der Orangensaft"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "fruit"}'),

('der Käse', 'cheese', 'der', null, 'Der Käse schmeckt gut. - The cheese tastes good.', 'A1', 'food', 'Food & Drink', 'le fromage', 'جبن', null, null, '/ˈkɛːzə/', '{}', '{}', '{"der Käsekuchen", "das Käsebrot"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('die Butter', 'butter', 'die', null, 'Die Butter ist auf dem Tisch. - The butter is on the table.', 'A1', 'food', 'Food & Drink', 'le beurre', 'زبدة', null, null, '/ˈbʊtɐ/', '{}', '{}', '{"das Butterbrot", "die Buttermilch"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('das Ei', 'egg', 'das', 'Eier', 'Das Ei ist hart gekocht. - The egg is hard-boiled.', 'A1', 'food', 'Food & Drink', 'l''œuf', 'بيضة', null, null, '/aɪ/', '{}', '{}', '{"das Frühstücksei", "der Eierkuchen"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('der Fisch', 'fish', 'der', 'Fische', 'Der Fisch schmeckt lecker. - The fish tastes delicious.', 'A1', 'food', 'Food & Drink', 'le poisson', 'سمك', null, null, '/fɪʃ/', '{}', '{"das Fleisch"}', '{"der Fischmarkt", "fischen"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('das Fleisch', 'meat', 'das', null, 'Das Fleisch ist gut gebraten. - The meat is well-cooked.', 'A1', 'food', 'Food & Drink', 'la viande', 'لحم', null, null, '/flaɪʃ/', '{}', '{"der Fisch"}', '{"das Rindfleisch", "das Hähnchenfleisch"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('der Reis', 'rice', 'der', null, 'Der Reis ist weich. - The rice is soft.', 'A1', 'food', 'Food & Drink', 'le riz', 'أرز', null, null, '/ʁaɪs/', '{}', '{}', '{"der Milchreis"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('die Nudeln', 'noodles / pasta', 'die', 'Nudeln', 'Die Nudeln sind al dente. - The pasta is al dente.', 'A1', 'food', 'Food & Drink', 'les pâtes', 'معكرونة', null, null, '/ˈnuːdəln/', '{"die Pasta"}', '{}', '{"der Nudeltopf", "der Nudelsalat"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('der Zucker', 'sugar', 'der', null, 'Der Zucker ist im Schrank. - The sugar is in the cupboard.', 'A1', 'food', 'Food & Drink', 'le sucre', 'سكر', null, null, '/ˈt͡sʊkɐ/', '{}', '{"das Salz"}', '{"der Zuckerlöffel", "zuckerhaltig"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('das Salz', 'salt', 'das', null, 'Das Salz ist im Streuer. - The salt is in the shaker.', 'A1', 'food', 'Food & Drink', 'le sel', 'ملح', null, null, '/zalt͡s/', '{}', '{"der Zucker"}', '{"salzig", "das Salzfass"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('die Suppe', 'soup', 'die', 'Suppen', 'Die Suppe ist heiß. - The soup is hot.', 'A1', 'food', 'Food & Drink', 'la soupe', 'شوربة', null, null, '/ˈzʊpə/', '{"die Brühe"}', '{}', '{"der Suppenteller", "die Suppenkelle"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('der Salat', 'salad', 'der', 'Salate', 'Der Salat ist frisch. - The salad is fresh.', 'A1', 'food', 'Food & Drink', 'la salade', 'سلطة', null, null, '/zaˈlaːt/', '{}', '{}', '{"der Gurkensalat", "der Obstsalat"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('der Kuchen', 'cake', 'der', 'Kuchen', 'Der Kuchen ist lecker. - The cake is delicious.', 'A1', 'food', 'Food & Drink', 'le gâteau', 'كعكة', null, null, '/ˈkuːxən/', '{"die Torte"}', '{}', '{"der Käsekuchen", "der Geburtstagskuchen"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "dessert"}'),

('die Schokolade', 'chocolate', 'die', 'Schokoladen', 'Die Schokolade ist süß. - The chocolate is sweet.', 'A1', 'food', 'Food & Drink', 'le chocolat', 'شوكولاتة', null, null, '/ʃokoˈlaːdə/', '{}', '{}', '{"der Schokoladenkuchen", "die Schokoladenseite"}', '{}', 'very_common', 1, 'noun', '{"food", "a1", "dessert"}'),

('das Obst', 'fruit', 'das', null, 'Obst ist gesund. - Fruit is healthy.', 'A1', 'food', 'Food & Drink', 'les fruits', 'فاكهة', null, null, '/oːpst/', '{"die Früchte"}', '{"das Gemüse"}', '{"der Obstsalat", "der Obstbaum"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('das Gemüse', 'vegetables', 'das', null, 'Gemüse ist wichtig. - Vegetables are important.', 'A1', 'food', 'Food & Drink', 'les légumes', 'خضار', null, null, '/ɡəˈmyːzə/', '{}', '{"das Obst"}', '{"der Gemüsegarten", "die Gemüsesuppe"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}'),

('essen', 'to eat', null, null, 'Ich esse einen Apfel. - I am eating an apple.', 'A1', 'food', 'Food & Drink', 'manger', 'يأكل', null, null, '/ˈɛsən/', '{"verzehren"}', '{"trinken"}', '{"das Essen", "die Essenszeit"}', '{"base": "essen", "präsens": {"ich": "esse", "du": "isst", "er/sie/es": "isst", "wir": "essen", "ihr": "esst", "sie/Sie": "essen"}, "präteritum": {"ich": "aß", "er/sie/es": "aß"}, "perfekt": "gegessen"}', 'very_common', 1, 'verb', '{"verb", "food", "a1", "essential"}'),

('trinken', 'to drink', null, null, 'Wir trinken Wasser. - We drink water.', 'A1', 'food', 'Food & Drink', 'boire', 'يشرب', null, null, '/ˈtʁɪŋkən/', '{"schlürfen"}', '{"essen"}', '{"das Trinken", "das Getränk"}', '{"base": "trinken", "präsens": {"ich": "trinke", "du": "trinkst", "er/sie/es": "trinkt", "wir": "trinken", "ihr": "trinkt", "sie/Sie": "trinken"}, "präteritum": {"ich": "trank", "er/sie/es": "trank"}, "perfekt": "getrunken"}', 'very_common', 1, 'verb', '{"verb", "food", "a1", "essential"}'),

('kochen', 'to cook', null, null, 'Meine Mutter kocht gut. - My mother cooks well.', 'A1', 'food', 'Food & Drink', 'cuisiner', 'يطبخ', null, null, '/ˈkɔxən/', '{"zubereiten"}', '{}', '{"der Koch", "die Küche"}', '{"base": "kochen", "präsens": {"ich": "koche", "du": "kochst", "er/sie/es": "kocht", "wir": "kochen", "ihr": "kocht", "sie/Sie": "kochen"}, "präteritum": {"ich": "kochte", "er/sie/es": "kochte"}, "perfekt": "gekocht"}', 'very_common', 1, 'verb', '{"verb", "food", "a1"}'),

('die Kartoffel', 'potato', 'die', 'Kartoffeln', 'Die Kartoffeln sind im Ofen. - The potatoes are in the oven.', 'A1', 'food', 'Food & Drink', 'la pomme de terre', 'بطاطس', null, null, '/kaʁˈtɔfəl/', '{"die Erdapfel"}', '{}', '{"der Kartoffelsalat", "die Kartoffelsuppe"}', '{}', 'very_common', 1, 'noun', '{"food", "a1"}');

-- ============================================================
-- THEME 6: Home & Furniture (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Tisch', 'table', 'der', 'Tische', 'Der Tisch ist aus Holz. - The table is made of wood.', 'A1', 'home', 'Home & Furniture', 'la table', 'طاولة', null, null, '/tɪʃ/', '{}', '{"der Stuhl"}', '{"der Tischtennis", "tischen"}', '{}', 'very_common', 1, 'noun', '{"home", "furniture", "a1", "essential"}'),

('der Stuhl', 'chair', 'der', 'Stühle', 'Der Stuhl ist bequem. - The chair is comfortable.', 'A1', 'home', 'Home & Furniture', 'la chaise', 'كرسي', null, null, '/ʃtuːl/', '{"der Sessel"}', '{}', '{"der Hochstuhl", "die Stuhllehne"}', '{}', 'very_common', 1, 'noun', '{"home", "furniture", "a1", "essential"}'),

('das Bett', 'bed', 'das', 'Betten', 'Das Bett ist weich. - The bed is soft.', 'A1', 'home', 'Home & Furniture', 'le lit', 'سرير', null, null, '/bɛt/', '{}', '{}', '{"die Bettdecke", "das Bettlaken"}', '{}', 'very_common', 1, 'noun', '{"home", "furniture", "a1", "essential"}'),

('die Tür', 'door', 'die', 'Türen', 'Die Tür ist offen. - The door is open.', 'A1', 'home', 'Home & Furniture', 'la porte', 'باب', null, null, '/tyːɐ̯/', '{}', '{"das Fenster"}', '{"der Türgriff", "türlos"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "essential"}'),

('das Fenster', 'window', 'das', 'Fenster', 'Das Fenster ist geschlossen. - The window is closed.', 'A1', 'home', 'Home & Furniture', 'la fenêtre', 'نافذة', null, null, '/ˈfɛnstɐ/', '{}', '{"die Tür"}', '{"die Fensterbank", "das Fensterbrett"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "essential"}'),

('der Schrank', 'cupboard / closet', 'der', 'Schränke', 'Der Schrank ist voll. - The cupboard is full.', 'A1', 'home', 'Home & Furniture', 'l''armoire', 'خزانة', null, null, '/ʃʁaŋk/', '{"der Kleiderschrank"}', '{}', '{"der Kühlschrank", "schrankweise"}', '{}', 'very_common', 1, 'noun', '{"home", "furniture", "a1"}'),

('das Sofa', 'sofa', 'das', 'Sofas', 'Das Sofa ist gemütlich. - The sofa is cozy.', 'A1', 'home', 'Home & Furniture', 'le canapé', 'أريكة', null, null, '/ˈzoːfa/', '{"die Couch"}', '{}', '{"die Sofaecke"}', '{}', 'very_common', 1, 'noun', '{"home", "furniture", "a1"}'),

('die Küche', 'kitchen', 'die', 'Küchen', 'Die Küche ist sauber. - The kitchen is clean.', 'A1', 'home', 'Home & Furniture', 'la cuisine', 'مطبخ', null, null, '/ˈkʏçə/', '{}', '{}', '{"die Küchenzeile", "der Küchenherd"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "room"}'),

('das Zimmer', 'room', 'das', 'Zimmer', 'Mein Zimmer ist klein. - My room is small.', 'A1', 'home', 'Home & Furniture', 'la chambre / la pièce', 'غرفة', null, null, '/ˈt͡sɪmɐ/', '{"der Raum"}', '{}', '{"das Schlafzimmer", "der Zimmerschlüssel"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "essential"}'),

('das Haus', 'house', 'das', 'Häuser', 'Das Haus ist groß. - The house is big.', 'A1', 'home', 'Home & Furniture', 'la maison', 'منزل', null, null, '/haʊs/', '{"das Gebäude"}', '{"die Wohnung"}', '{"häuslich", "der Haushalt"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "essential"}'),

('die Wohnung', 'apartment', 'die', 'Wohnungen', 'Die Wohnung hat drei Zimmer. - The apartment has three rooms.', 'A1', 'home', 'Home & Furniture', 'l''appartement', 'شقة', null, null, '/ˈvoːnʊŋ/', '{"die Wohnung"}', '{"das Haus"}', '{"wohnen", "der Wohnzimmer"}', '{}', 'very_common', 1, 'noun', '{"home", "a1"}'),

('daheim', 'at home', null, null, 'Ich bin daheim. - I am at home.', 'A1', 'home', 'Home & Furniture', 'à la maison', 'في المنزل', null, null, '/daˈhaɪm/', '{"zu Hause"}', '{"unterwegs"}', '{"das Heim"}', '{}', 'common', 1, 'adverb', '{"home", "a1"}'),

('das Licht', 'light', 'das', 'Lichter', 'Das Licht ist an. - The light is on.', 'A1', 'home', 'Home & Furniture', 'la lumière', 'ضوء', null, null, '/lɪçt/', '{"die Lampe"}', '{"die Dunkelheit"}', '{"licht", "die Leuchte"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "object"}'),

('der Schlüssel', 'key', 'der', 'Schlüssel', 'Der Schlüssel ist im Schloss. - The key is in the lock.', 'A1', 'home', 'Home & Furniture', 'la clé', 'مفتاح', null, null, '/ˈʃlʏsəl/', '{}', '{}', '{"der Hausschlüssel", "schlüssellos"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "object"}'),

('das Bad', 'bathroom', 'das', 'Bäder', 'Das Bad ist sauber. - The bathroom is clean.', 'A1', 'home', 'Home & Furniture', 'la salle de bain', 'حمام', null, null, '/baːt/', '{"das Badezimmer"}', '{}', '{"baden", "die Badewanne"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "room"}'),

('der Spiegel', 'mirror', 'der', 'Spiegel', 'Der Spiegel hängt an der Wand. - The mirror hangs on the wall.', 'A1', 'home', 'Home & Furniture', 'le miroir', 'مرآة', null, null, '/ˈʃpiːɡl̩/', '{}', '{}', '{"spiegeln", "die Spiegelung"}', '{}', 'common', 1, 'noun', '{"home", "a1", "object"}'),

('die Treppe', 'stairs', 'die', 'Treppen', 'Die Treppe ist steil. - The stairs are steep.', 'A1', 'home', 'Home & Furniture', 'l''escalier', 'درج', null, null, '/ˈtʁɛpə/', '{"die Stiege"}', '{}', '{"treppauf", "der Treppenabsatz"}', '{}', 'common', 1, 'noun', '{"home", "a1"}'),

('der Boden', 'floor / ground', 'der', 'Böden', 'Der Boden ist sauber. - The floor is clean.', 'A1', 'home', 'Home & Furniture', 'le sol', 'أرضية', null, null, '/ˈboːdən/', '{"der Fußboden"}', '{"die Decke"}', '{"bodenlos", "der Erdboden"}', '{}', 'very_common', 1, 'noun', '{"home", "a1"}'),

('die Decke', 'ceiling / blanket', 'die', 'Decken', 'Die Decke ist weiß. - The ceiling is white.', 'A1', 'home', 'Home & Furniture', 'le plafond / la couverture', 'سقف / بطانية', null, null, '/ˈdɛkə/', '{}', '{"der Boden"}', '{"decken", "die Bettdecke"}', '{}', 'very_common', 1, 'noun', '{"home", "a1"}'),

('die Lampe', 'lamp', 'die', 'Lampen', 'Die Lampe leuchtet hell. - The lamp shines brightly.', 'A1', 'home', 'Home & Furniture', 'la lampe', 'مصباح', null, null, '/ˈlampə/', '{"das Licht"}', '{}', '{"der Lampenschirm"}', '{}', 'very_common', 1, 'noun', '{"home", "a1", "object"}');

-- ============================================================
-- THEME 7: Body & Health (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Kopf', 'head', 'der', 'Köpfe', 'Der Kopf tut mir weh. - My head hurts.', 'A1', 'body', 'Body & Health', 'la tête', 'رأس', null, null, '/kɔpf/', '{}', '{}', '{"köpfig", "der Kopfschmerz"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('die Hand', 'hand', 'die', 'Hände', 'Meine Hand ist kalt. - My hand is cold.', 'A1', 'body', 'Body & Health', 'la main', 'يد', null, null, '/hant/', '{}', '{"der Fuß"}', '{"handlich", "der Handschuh"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('das Auge', 'eye', 'das', 'Augen', 'Meine Augen sind blau. - My eyes are blue.', 'A1', 'body', 'Body & Health', 'l''œil', 'عين', null, null, '/ˈaʊ̯ɡə/', '{}', '{}', '{"die Augenbraue", "der Augenblick"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('das Ohr', 'ear', 'das', 'Ohren', 'Ich höre mit den Ohren. - I hear with my ears.', 'A1', 'body', 'Body & Health', 'l''oreille', 'أذن', null, null, '/oːɐ̯/', '{}', '{}', '{"der Ohrring", "ohrenbetäubend"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('die Nase', 'nose', 'die', 'Nasen', 'Die Nase riecht die Blume. - The nose smells the flower.', 'A1', 'body', 'Body & Health', 'le nez', 'أنف', null, null, '/ˈnaːzə/', '{}', '{}', '{"das Nasenloch", "nasal"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('der Mund', 'mouth', 'der', 'Münder', 'Der Mund isst und spricht. - The mouth eats and speaks.', 'A1', 'body', 'Body & Health', 'la bouche', 'فم', null, null, '/mʊnt/', '{}', '{}', '{"mündlich", "die Mundart"}', '{}', 'very_common', 1, 'noun', '{"body", "a1", "essential"}'),

('der Arm', 'arm', 'der', 'Arme', 'Mein Arm ist stark. - My arm is strong.', 'A1', 'body', 'Body & Health', 'le bras', 'ذراع', null, null, '/aʁm/', '{}', '{"das Bein"}', '{"armlang", "der Armreif"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('das Bein', 'leg', 'das', 'Beine', 'Mein Bein tut weh. - My leg hurts.', 'A1', 'body', 'Body & Health', 'la jambe', 'ساق', null, null, '/baɪn/', '{}', '{"der Arm"}', '{"beinig", "das Beinwell"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('der Fuß', 'foot', 'der', 'Füße', 'Mein Fuß ist groß. - My foot is big.', 'A1', 'body', 'Body & Health', 'le pied', 'قدم', null, null, '/fuːs/', '{}', '{"die Hand"}', '{"der Fußball", "der Fußgänger"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('der Finger', 'finger', 'der', 'Finger', 'Ich habe fünf Finger. - I have five fingers.', 'A1', 'body', 'Body & Health', 'le doigt', 'إصبع', null, null, '/ˈfɪŋɐ/', '{}', '{}', '{"der Handschuhfinger", "fingerfertig"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('der Rücken', 'back', 'der', 'Rücken', 'Der Rücken schmerzt. - The back hurts.', 'A1', 'body', 'Body & Health', 'le dos', 'ظهر', null, null, '/ˈʁʏkən/', '{}', '{"der Bauch"}', '{"rückwärts", "der Rucksack"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('der Bauch', 'stomach / belly', 'der', 'Bäuche', 'Der Bauch ist voll. - The belly is full.', 'A1', 'body', 'Body & Health', 'le ventre', 'بطن', null, null, '/baʊ̯x/', '{"der Magen"}', '{"der Rücken"}', '{"bauchig", "der Bauchschmerz"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('das Herz', 'heart', 'das', 'Herzen', 'Das Herz schlägt schnell. - The heart beats fast.', 'A1', 'body', 'Body & Health', 'le cœur', 'قلب', null, null, '/hɛʁt͡s/', '{}', '{}', '{"herzlich", "der Herzschlag"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('die Haut', 'skin', 'die', 'Häute', 'Die Haut ist weich. - The skin is soft.', 'A1', 'body', 'Body & Health', 'la peau', 'جلد', null, null, '/haʊt/', '{}', '{}', '{"die Hautcreme", "enthäuten"}', '{}', 'common', 1, 'noun', '{"body", "a1"}'),

('das Haar', 'hair', 'das', 'Haare', 'Meine Haare sind lang. - My hair is long.', 'A1', 'body', 'Body & Health', 'les cheveux', 'شعر', null, null, '/haːɐ̯/', '{}', '{}', '{"der Haarschnitt", "die Haarbürste"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('der Zahn', 'tooth', 'der', 'Zähne', 'Ich putze mir die Zähne. - I brush my teeth.', 'A1', 'body', 'Body & Health', 'la dent', 'سن', null, null, '/t͡saːn/', '{}', '{}', '{"die Zahnbürste", "die Zahnpasta"}', '{}', 'very_common', 1, 'noun', '{"body", "a1"}'),

('die Zunge', 'tongue', 'die', 'Zungen', 'Die Zunge schmeckt. - The tongue tastes.', 'A1', 'body', 'Body & Health', 'la langue', 'لسان', null, null, '/ˈt͡sʊŋə/', '{}', '{}', '{"der Zungenbrecher"}', '{}', 'common', 1, 'noun', '{"body", "a1"}'),

('der Arzt', 'doctor (male)', 'der', 'Ärzte', 'Der Arzt hilft kranken Menschen. - The doctor helps sick people.', 'A1', 'health', 'Body & Health', 'le médecin', 'طبيب', null, null, '/aːɐ̯t͡st/', '{"der Mediziner"}', '{"der Patient"}', '{"die Ärztin", "ärztlich"}', '{}', 'very_common', 1, 'noun', '{"health", "a1", "profession"}'),

('krank', 'sick', null, null, 'Ich bin krank. - I am sick.', 'A1', 'health', 'Body & Health', 'malade', 'مريض', null, null, '/kʁaŋk/', '{"erkrankt"}', '{"gesund"}', '{"die Krankheit", "kränklich"}', '{}', 'very_common', 1, 'adjective', '{"health", "a1"}'),

('gesund', 'healthy', null, null, 'Sport ist gesund. - Sports are healthy.', 'A1', 'health', 'Body & Health', 'en bonne santé', 'صحي', null, null, '/ɡəˈzʊnt/', '{"fit"}', '{"krank"}', '{"die Gesundheit", "gesundheitlich"}', '{}', 'very_common', 1, 'adjective', '{"health", "a1"}');

-- ============================================================
-- THEME 8: Weather & Nature (15 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('die Sonne', 'sun', 'die', null, 'Die Sonne scheint. - The sun is shining.', 'A1', 'weather', 'Weather & Nature', 'le soleil', 'شمس', null, null, '/ˈzɔnə/', '{}', '{"der Mond"}', '{"sonnig", "der Sonnenschein"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "a1", "essential"}'),

('der Regen', 'rain', 'der', null, 'Der Regen fällt vom Himmel. - The rain falls from the sky.', 'A1', 'weather', 'Weather & Nature', 'la pluie', 'مطر', null, null, '/ˈʁeːɡən/', '{"der Niederschlag"}', '{"die Sonne", "der Schnee"}', '{"regnerisch", "regnen"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "a1"}'),

('der Wind', 'wind', 'der', null, 'Der Wind weht stark. - The wind blows strongly.', 'A1', 'weather', 'Weather & Nature', 'le vent', 'ريح', null, null, '/vɪnt/', '{"der Sturm"}', '{"die Windstille"}', '{"windig", "der Windhauch"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "a1"}'),

('der Schnee', 'snow', 'der', null, 'Der Schnee ist weiß. - The snow is white.', 'A1', 'weather', 'Weather & Nature', 'la neige', 'ثلج', null, null, '/ʃneː/', '{}', '{"der Regen"}', '{"schneien", "schneeweiß"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "a1"}'),

('die Wolke', 'cloud', 'die', 'Wolken', 'Die Wolke ist grau. - The cloud is gray.', 'A1', 'weather', 'Weather & Nature', 'le nuage', 'سحابة', null, null, '/ˈvɔlkə/', '{}', '{}', '{"wolkig", "der Wolkenbruch"}', '{}', 'common', 1, 'noun', '{"weather", "nature", "a1"}'),

('der Himmel', 'sky', 'der', null, 'Der Himmel ist blau. - The sky is blue.', 'A1', 'weather', 'Weather & Nature', 'le ciel', 'سماء', null, null, '/ˈhɪməl/', '{}', '{"die Erde"}', '{"himmlisch", "der Himmelskörper"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "a1"}'),

('die Erde', 'earth / ground', 'die', null, 'Die Erde ist rund. - The earth is round.', 'A1', 'nature', 'Weather & Nature', 'la terre', 'أرض', null, null, '/ˈeːɐ̯də/', '{"der Boden", "die Welt"}', '{"der Himmel"}', '{"irdisch", "der Erdboden"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}'),

('der Baum', 'tree', 'der', 'Bäume', 'Der Baum ist hoch. - The tree is tall.', 'A1', 'nature', 'Weather & Nature', 'l''arbre', 'شجرة', null, null, '/baʊ̯m/', '{}', '{}', '{"der Baumstamm", "die Baumkrone"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}'),

('die Blume', 'flower', 'die', 'Blumen', 'Die Blume ist schön. - The flower is beautiful.', 'A1', 'nature', 'Weather & Nature', 'la fleur', 'زهرة', null, null, '/ˈbluːmə/', '{}', '{}', '{"der Blumenstrauß", "blumig"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}'),

('der Wald', 'forest', 'der', 'Wälder', 'Der Wald ist ruhig. - The forest is quiet.', 'A1', 'nature', 'Weather & Nature', 'la forêt', 'غابة', null, null, '/valt/', '{"der Forst"}', '{"die Stadt"}', '{"waldig", "der Waldweg"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}'),

('das Wetter', 'weather', 'das', null, 'Das Wetter ist schön. - The weather is nice.', 'A1', 'weather', 'Weather & Nature', 'le temps', 'الطقس', null, null, '/ˈvɛtɐ/', '{"die Witterung"}', '{}', '{"die Wettervorhersage", "wetterfest"}', '{}', 'very_common', 1, 'noun', '{"weather", "a1", "essential"}'),

('warm', 'warm', null, null, 'Es ist warm heute. - It is warm today.', 'A1', 'weather', 'Weather & Nature', 'chaud', 'دافئ', null, null, '/vaʁm/', '{"heiß"}', '{"kalt"}', '{"die Wärme", "wärmen"}', '{}', 'very_common', 1, 'adjective', '{"weather", "a1", "essential"}'),

('kalt', 'cold', null, null, 'Es ist kalt im Winter. - It is cold in winter.', 'A1', 'weather', 'Weather & Nature', 'froid', 'بارد', null, null, '/kalt/', '{"kühl"}', '{"warm", "heiß"}', '{"die Kälte", "kühl"}', '{}', 'very_common', 1, 'adjective', '{"weather", "a1", "essential"}'),

('der See', 'lake', 'der', 'Seen', 'Der See ist tief. - The lake is deep.', 'A1', 'nature', 'Weather & Nature', 'le lac', 'بحيرة', null, null, '/zeː/', '{}', '{"der Fluss"}', '{"der Seeufer", "die Seelandschaft"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}'),

('der Fluss', 'river', 'der', 'Flüsse', 'Der Fluss fließt durch die Stadt. - The river flows through the city.', 'A1', 'nature', 'Weather & Nature', 'le fleuve / la rivière', 'نهر', null, null, '/flʊs/', '{"der Strom"}', '{"der See"}', '{"flüssig", "der Flussverlauf"}', '{}', 'very_common', 1, 'noun', '{"nature", "a1"}');

-- ============================================================
-- THEME 9: School & Classroom (15 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('das Buch', 'book', 'das', 'Bücher', 'Das Buch ist interessant. - The book is interesting.', 'A1', 'school', 'School & Classroom', 'le livre', 'كتاب', null, null, '/buːx/', '{"der Band", "der Roman"}', '{}', '{"die Bücherei", "das Bücherregal"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "essential"}'),

('der Stift', 'pen / pencil', 'der', 'Stifte', 'Der Stift schreibt blau. - The pen writes blue.', 'A1', 'school', 'School & Classroom', 'le stylo / le crayon', 'قلم', null, null, '/ʃtɪft/', '{"der Kugelschreiber", "der Bleistift"}', '{}', '{"das Stiftefach", "der Filzstift"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "essential"}'),

('der Lehrer', 'teacher (male)', 'der', 'Lehrer', 'Der Lehrer erklärt die Aufgabe. - The teacher explains the task.', 'A1', 'school', 'School & Classroom', 'l''enseignant / le professeur', 'معلم', null, null, '/ˈleːʁɐ/', '{"der Pädagoge"}', '{"der Schüler"}', '{"die Lehrerin", "lehrreich"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "profession"}'),

('der Schüler', 'student (male)', 'der', 'Schüler', 'Der Schüler lernt Deutsch. - The student learns German.', 'A1', 'school', 'School & Classroom', 'l''élève', 'طالب', null, null, '/ˈʃyːlɐ/', '{"der Student"}', '{"der Lehrer"}', '{"die Schülerin", "schülerhaft"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "profession"}'),

('die Schule', 'school', 'die', 'Schulen', 'Die Schule beginnt um acht Uhr. - School starts at eight o''clock.', 'A1', 'school', 'School & Classroom', 'l''école', 'مدرسة', null, null, '/ˈʃuːlə/', '{"die Bildungseinrichtung"}', '{}', '{"schulisch", "der Schulhof"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "essential"}'),

('der Unterricht', 'lesson / class', 'der', null, 'Der Unterricht ist interessant. - The lesson is interesting.', 'A1', 'school', 'School & Classroom', 'le cours', 'درس', null, null, '/ˈʊntɐʁɪçt/', '{"die Stunde", "der Kurs"}', '{}', '{"unterrichten", "der Sprachunterricht"}', '{}', 'very_common', 1, 'noun', '{"school", "a1"}'),

('die Tafel', 'blackboard', 'die', 'Tafeln', 'Die Tafel ist grün. - The blackboard is green.', 'A1', 'school', 'School & Classroom', 'le tableau', 'سبورة', null, null, '/ˈtaːfəl/', '{"das Whiteboard"}', '{}', '{"die Schultafel", "tafeln"}', '{}', 'common', 1, 'noun', '{"school", "a1"}'),

('die Aufgabe', 'task / exercise', 'die', 'Aufgaben', 'Die Aufgabe ist schwer. - The task is difficult.', 'A1', 'school', 'School & Classroom', 'l''exercice / la tâche', 'مهمة', null, null, '/ˈaʊ̯fɡaːbə/', '{"die Übung"}', '{}', '{"aufgeben", "der Aufgabenbereich"}', '{}', 'very_common', 1, 'noun', '{"school", "a1"}'),

('die Antwort', 'answer', 'die', 'Antworten', 'Die Antwort ist richtig. - The answer is correct.', 'A1', 'school', 'School & Classroom', 'la réponse', 'إجابة', null, null, '/ˈantvɔʁt/', '{"die Lösung"}', '{"die Frage"}', '{"antworten", "die Beantwortung"}', '{}', 'very_common', 1, 'noun', '{"school", "a1"}'),

('die Frage', 'question', 'die', 'Fragen', 'Die Frage ist leicht. - The question is easy.', 'A1', 'school', 'School & Classroom', 'la question', 'سؤال', null, null, '/ˈfʁaːɡə/', '{"die Anfrage"}', '{"die Antwort"}', '{"fragen", "die Fragestellung"}', '{}', 'very_common', 1, 'noun', '{"school", "a1"}'),

('das Papier', 'paper', 'das', 'Papiere', 'Das Papier ist weiß. - The paper is white.', 'A1', 'school', 'School & Classroom', 'le papier', 'ورق', null, null, '/paˈpiːɐ̯/', '{"das Blatt"}', '{}', '{"der Papierkorb", "das Papierflugzeug"}', '{}', 'very_common', 1, 'noun', '{"school", "a1", "object"}'),

('der Bleistift', 'pencil', 'der', 'Bleistifte', 'Der Bleistift ist spitz. - The pencil is sharp.', 'A1', 'school', 'School & Classroom', 'le crayon', 'قلم رصاص', null, null, '/ˈblaɪ̯ʃtɪft/', '{"der Stift"}', '{}', '{"der Bleistiftspitzer", "der Farbstift"}', '{}', 'very_common', 1, 'noun', '{"school", "a1"}'),

('die Prüfung', 'exam / test', 'die', 'Prüfungen', 'Die Prüfung ist schwer. - The exam is difficult.', 'A1', 'school', 'School & Classroom', 'l''examen', 'امتحان', null, null, '/ˈpʁyːfʊŋ/', '{"der Test", "die Klausur"}', '{}', '{"prüfen", "der Prüfling"}', '{}', 'common', 1, 'noun', '{"school", "a1"}'),

('lernen', 'to learn', null, null, 'Ich lerne Deutsch. - I am learning German.', 'A1', 'school', 'School & Classroom', 'apprendre', 'يتعلم', null, null, '/ˈlɛʁnən/', '{"studieren"}', '{"lehren"}', '{"das Lernen", "der Lernstoff"}', '{"base": "lernen", "präsens": {"ich": "lerne", "du": "lernst", "er/sie/es": "lernt", "wir": "lernen", "ihr": "lernt", "sie/Sie": "lernen"}, "präteritum": {"ich": "lernte", "er/sie/es": "lernte"}, "perfekt": "gelernt"}', 'very_common', 1, 'verb', '{"verb", "school", "a1", "essential"}'),

('lesen', 'to read', null, null, 'Ich lese ein Buch. - I am reading a book.', 'A1', 'school', 'School & Classroom', 'lire', 'يقرأ', null, null, '/ˈleːzən/', '{"schmökern"}', '{"schreiben"}', '{"das Lesen", "der Leser"}', '{"base": "lesen", "präsens": {"ich": "lese", "du": "liest", "er/sie/es": "liest", "wir": "lesen", "ihr": "lest", "sie/Sie": "lesen"}, "präteritum": {"ich": "las", "er/sie/es": "las"}, "perfekt": "gelesen"}', 'very_common', 1, 'verb', '{"verb", "school", "a1", "essential"}');

-- ============================================================
-- THEME 10: Daily Objects (10 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Teller', 'plate', 'der', 'Teller', 'Der Teller ist rund. - The plate is round.', 'A1', 'objects', 'Daily Objects', 'l''assiette', 'طبق', null, null, '/ˈtɛlɐ/', '{}', '{}', '{"der Suppenteller", "der Kuchenteller"}', '{}', 'very_common', 1, 'noun', '{"object", "kitchen", "a1"}'),

('das Glas', 'glass', 'das', 'Gläser', 'Das Glas ist leer. - The glass is empty.', 'A1', 'objects', 'Daily Objects', 'le verre', 'كأس', null, null, '/ɡlaːs/', '{"das Trinkglas"}', '{}', '{"die Glaskugel", "gläsern"}', '{}', 'very_common', 1, 'noun', '{"object", "kitchen", "a1"}'),

('die Tasche', 'bag', 'die', 'Taschen', 'Die Tasche ist schwer. - The bag is heavy.', 'A1', 'objects', 'Daily Objects', 'le sac', 'حقيبة', null, null, '/ˈtaʃə/', '{"der Rucksack", "die Handtasche"}', '{}', '{"die Handtasche", "der Taschenrechner"}', '{}', 'very_common', 1, 'noun', '{"object", "a1"}'),

('der Schirm', 'umbrella', 'der', 'Schirme', 'Der Schirm ist kaputt. - The umbrella is broken.', 'A1', 'objects', 'Daily Objects', 'le parapluie', 'مظلة', null, null, '/ʃɪʁm/', '{"der Regenschirm"}', '{}', '{"der Regenschirm", "der Sonnenschirm"}', '{}', 'very_common', 1, 'noun', '{"object", "a1"}'),

('der Koffer', 'suitcase', 'der', 'Koffer', 'Der Koffer ist schwer. - The suitcase is heavy.', 'A1', 'objects', 'Daily Objects', 'la valise', 'حقيبة سفر', null, null, '/ˈkɔfɐ/', '{"der Reisekoffer"}', '{}', '{"der Handkoffer", "kofferartig"}', '{}', 'common', 1, 'noun', '{"object", "travel", "a1"}'),

('die Flasche', 'bottle', 'die', 'Flaschen', 'Die Flasche ist aus Glas. - The bottle is made of glass.', 'A1', 'objects', 'Daily Objects', 'la bouteille', 'زجاجة', null, null, '/ˈflaʃə/', '{}', '{}', '{"die Wasserflasche", "die Weinflasche"}', '{}', 'very_common', 1, 'noun', '{"object", "a1"}'),

('das Handtuch', 'towel', 'das', 'Handtücher', 'Das Handtuch ist nass. - The towel is wet.', 'A1', 'objects', 'Daily Objects', 'la serviette', 'منشفة', null, null, '/ˈhantˌtuːx/', '{}', '{}', '{"das Badetuch", "die Handtuchhalter"}', '{}', 'common', 1, 'noun', '{"object", "a1"}'),

('die Bürste', 'brush', 'die', 'Bürsten', 'Die Bürste ist neu. - The brush is new.', 'A1', 'objects', 'Daily Objects', 'la brosse', 'فرشاة', null, null, '/ˈbʏʁstə/', '{"dieHaarbürste"}', '{}', '{"die Haarbürste", "bürsten"}', '{}', 'common', 1, 'noun', '{"object", "a1"}'),

('die Kerze', 'candle', 'die', 'Kerzen', 'Die Kerze brennt hell. - The candle burns brightly.', 'A1', 'objects', 'Daily Objects', 'la bougie', 'شمعة', null, null, '/ˈkɛʁt͡sə/', '{}', '{}', '{"der Kerzenständer", "der Kerzenschein"}', '{}', 'common', 1, 'noun', '{"object", "a1"}'),

('der Rucksack', 'backpack', 'der', 'Rucksäcke', 'Der Rucksack ist schwer. - The backpack is heavy.', 'A1', 'objects', 'Daily Objects', 'le sac à dos', 'حقيبة ظهر', null, null, '/ˈʁʊkzak/', '{"der Tornister"}', '{}', '{"der Schulrucksack", "der Rucksacktourist"}', '{}', 'common', 1, 'noun', '{"object", "a1"}');

-- ============================================================
-- INDEXES
-- ============================================================

create index if not exists idx_vocabulary_level_theme on public.vocabulary(level, theme);
create index if not exists idx_vocabulary_tags on public.vocabulary using gin(tags);
create index if not exists idx_vocabulary_synonyms on public.vocabulary using gin(synonyms);
