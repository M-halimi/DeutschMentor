-- DeutschMentor AI - A2 Core Vocabulary Seed (250 words)
-- Organized by theme for elementary German learners
-- Each word includes translations (EN/FR/AR), IPA, examples, and metadata

-- ============================================================
-- THEME 1: Shopping (25 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('kaufen', 'to buy', null, null, 'Ich möchte ein neues Kleid kaufen. - I would like to buy a new dress.', 'A2', 'shopping', 'Shopping', 'acheter', 'يشتري', null, null, '/ˈkaʊfən/', '{"erwerben", "einkaufen"}', '{"verkaufen"}', '{"der Kauf", "der Käufer", "der Einkauf"}', '{"base": "kaufen", "präsens": {"ich": "kaufe", "du": "kaufst", "er/sie/es": "kauft", "wir": "kaufen", "ihr": "kauft", "sie/Sie": "kaufen"}, "präteritum": {"ich": "kaufte", "er/sie/es": "kaufte"}, "perfekt": "gekauft"}', 'very_common', 1, 'verb', '{"shopping", "daily", "essential"}'),

('verkaufen', 'to sell', null, null, 'Der Laden verkauft frische Blumen. - The shop sells fresh flowers.', 'A2', 'shopping', 'Shopping', 'vendre', 'يبيع', null, null, '/fɛɐˈkaʊfən/', '{"anbieten", "handeln"}', '{"kaufen"}', '{"der Verkauf", "der Verkäufer", "der Verkaufspreis"}', '{"base": "verkaufen", "präsens": {"ich": "verkaufe", "du": "verkaufst", "er/sie/es": "verkauft", "wir": "verkaufen", "ihr": "verkauft", "sie/Sie": "verkaufen"}, "präteritum": {"ich": "verkaufte", "er/sie/es": "verkaufte"}, "perfekt": "verkauft"}', 'very_common', 1, 'verb', '{"shopping", "business", "essential"}'),

('der Preis', 'price', 'der', 'die Preise', 'Der Preis ist zu hoch für mich. - The price is too high for me.', 'A2', 'shopping', 'Shopping', 'le prix', 'السعر', null, null, '/pʁaɪs/', '{"die Kosten", "der Betrag"}', '{"die Qualität"}', '{"preiswert", "die Preisliste", "der Preisnachlass"}', '{}', 'very_common', 1, 'noun', '{"shopping", "money", "essential"}'),

('die Kasse', 'cash register / checkout', 'die', 'die Kassen', 'Bitte zahlen Sie an der Kasse. - Please pay at the checkout.', 'A2', 'shopping', 'Shopping', 'la caisse', 'الخزينة / نقطة الدفع', null, null, '/ˈkasə/', '{"der Kassierer", "der Zahlungstisch"}', '{}', '{"der Kassenzettel", "kassieren", "der Kassierer"}', '{}', 'very_common', 1, 'noun', '{"shopping", "money"}'),

('bezahlen', 'to pay', null, null, 'Kann ich mit Karte bezahlen? - Can I pay by card?', 'A2', 'shopping', 'Shopping', 'payer', 'يدفع', null, null, '/bəˈtsaːlən/', '{"zahlen", "begleichen"}', '{"schulden"}', '{"die Bezahlung", "bar", "der Bezahlsender"}', '{"base": "bezahlen", "präsens": {"ich": "bezahle", "du": "bezahlst", "er/sie/es": "bezahlt", "wir": "bezahlen", "ihr": "bezahlt", "sie/Sie": "bezahlen"}, "präteritum": {"ich": "bezahlte", "er/sie/es": "bezahlte"}, "perfekt": "bezahlt"}', 'very_common', 1, 'verb', '{"shopping", "money", "essential"}'),

('das Geld', 'money', 'das', 'die Gelder', 'Ich habe nicht genug Geld dabei. - I do not have enough money with me.', 'A2', 'shopping', 'Shopping', 'l argent', 'المال', null, null, '/ɡɛlt/', '{"die Währung", "die Knete"}', '{}', '{"das Bargeld", "das Taschengeld", "geldlos"}', '{}', 'very_common', 1, 'noun', '{"shopping", "money", "essential"}'),

('der Einkauf', 'purchase / shopping', 'der', 'die Einkäufe', 'Heute mache ich einen großen Einkauf. - Today I am doing a big shop.', 'A2', 'shopping', 'Shopping', 'les courses / l achat', 'التسوق / المشتريات', null, null, '/ˈaɪnkaʊf/', '{"der Kauf", "die Besorgung"}', '{}', '{"einkaufen", "der Einkaufswagen", "der Einkaufszettel"}', '{}', 'very_common', 1, 'noun', '{"shopping", "daily", "essential"}'),

('das Geschäft', 'shop / store', 'das', 'die Geschäfte', 'Das Geschäft öffnet um neun Uhr. - The shop opens at nine o clock.', 'A2', 'shopping', 'Shopping', 'le magasin', 'المتجر', null, null, '/ɡəˈʃɛft/', '{"der Laden", "der Shop"}', '{"die Schließung"}', '{"geschäftlich", "der Geschäftsmann", "das Geschäftsjahr"}', '{}', 'very_common', 1, 'noun', '{"shopping", "daily"}'),

('der Laden', 'shop / store', 'der', 'die Läden', 'Der Laden hat heute geschlossen. - The shop is closed today.', 'A2', 'shopping', 'Shopping', 'la boutique', 'المحل', null, null, '/ˈlaːdən/', '{"das Geschäft", "der Shop"}', '{}', '{"der Blumenladen", "der Buchladen", "der Ladenbesitzer"}', '{}', 'very_common', 1, 'noun', '{"shopping", "daily"}'),

('die Quittung', 'receipt', 'die', 'die Quittungen', 'Bitte heben Sie die Quittung auf. - Please keep the receipt.', 'A2', 'shopping', 'Shopping', 'le reçu', 'الإيصال', null, null, '/ˈkvɪtʊŋ/', '{"der Bon", "der Kassenbeleg", "der Beleg"}', '{}', '{"quittieren"}', '{}', 'common', 2, 'noun', '{"shopping", "money"}'),

('der Rabatt', 'discount', 'der', 'die Rabatte', 'Auf dieses Produkt gibt es zwanzig Prozent Rabatt. - There is a twenty percent discount on this product.', 'A2', 'shopping', 'Shopping', 'la réduction', 'الخصم', null, null, '/ʁaˈbat/', '{"der Preisnachlass", "der Nachlass"}', '{"der Aufschlag"}', '{"rabattieren"}', '{}', 'common', 2, 'noun', '{"shopping", "money"}'),

('die Größe', 'size', 'die', 'die Größen', 'Welche Größe brauchen Sie? - What size do you need?', 'A2', 'shopping', 'Shopping', 'la taille', 'المقاس', null, null, '/ˈɡʁøːsə/', '{"die Maße"}', '{}', '{"groß", "die Körpergröße"}', '{}', 'very_common', 1, 'noun', '{"shopping", "clothes"}'),

('anprobieren', 'to try on', null, null, 'Kann ich die Hose anprobieren? - Can I try on the trousers?', 'A2', 'shopping', 'Shopping', 'essayer', 'يجرب الملابس', null, null, '/ˈanpʁoˌbiːʁən/', '{"testen"}', '{}', '{"die Anprobe", "die Probierkabine"}', '{"base": "anprobieren", "präsens": {"ich": "probiere an", "du": "probierst an", "er/sie/es": "probiert an", "wir": "probieren an", "ihr": "probiert an", "sie/Sie": "probieren an"}, "präteritum": {"ich": "probierte an", "er/sie/es": "probierte an"}, "perfekt": "anprobiert"}', 'common', 1, 'verb', '{"shopping", "clothes"}'),

('die Farbe', 'color', 'die', 'die Farben', 'Die Farbe Blau gefällt mir sehr gut. - I really like the color blue.', 'A2', 'shopping', 'Shopping', 'la couleur', 'اللون', null, null, '/ˈfaʁbə/', '{"der Farbton", "die Tönung"}', '{}', '{"farbig", "bunt", "der Farbstoff"}', '{}', 'very_common', 1, 'noun', '{"shopping", "description", "essential"}'),

('billig', 'cheap', null, null, 'Dieses Hemd ist sehr billig. - This shirt is very cheap.', 'A2', 'shopping', 'Shopping', 'bon marché', 'رخيص', null, null, '/ˈbɪlɪç/', '{"günstig", "preiswert"}', '{"teuer", "hochwertig"}', '{"der Billigpreis"}', '{}', 'very_common', 1, 'adjective', '{"shopping", "description"}'),

('teuer', 'expensive', null, null, 'Das Auto ist zu teuer für mich. - The car is too expensive for me.', 'A2', 'shopping', 'Shopping', 'cher', 'غالي الثمن', null, null, '/ˈtɔʏɐ/', '{"kostspielig", "hochpreisig"}', '{"billig", "günstig"}', '{"die Teuerung", "verteuern"}', '{}', 'very_common', 1, 'adjective', '{"shopping", "description"}'),

('das Sonderangebot', 'special offer', 'das', 'die Sonderangebote', 'Heute gibt es ein Sonderangebot für Äpfel. - Today there is a special offer on apples.', 'A2', 'shopping', 'Shopping', 'l offre spéciale', 'العرض الخاص', null, null, '/ˈzɔndɐˌʔanɡəboːt/', '{"das Angebot", "die Aktion"}', '{}', '{"anbieten", "das Angebot"}', '{}', 'common', 2, 'noun', '{"shopping", "money"}'),

('der Markt', 'market', 'der', 'die Märkte', 'Auf dem Markt kaufe ich frisches Obst. - At the market I buy fresh fruit.', 'A2', 'shopping', 'Shopping', 'le marché', 'السوق', null, null, '/maʁkt/', '{"der Wochenmarkt", "der Supermarkt"}', '{}', '{"der Supermarkt", "der Marktplatz", "der Marktstand"}', '{}', 'very_common', 1, 'noun', '{"shopping", "daily"}'),

('das Produkt', 'product', 'das', 'die Produkte', 'Dieses Produkt ist aus Deutschland. - This product is from Germany.', 'A2', 'shopping', 'Shopping', 'le produit', 'المنتج', null, null, '/pʁoˈdʊkt/', '{"die Ware", "der Artikel"}', '{}', '{"die Produktion", "produzieren", "der Produzent"}', '{}', 'very_common', 1, 'noun', '{"shopping", "business"}'),

('der Kunde', 'customer', 'der', 'die Kunden', 'Der Kunde möchte eine Reklamation machen. - The customer wants to make a complaint.', 'A2', 'shopping', 'Shopping', 'le client', 'الزبون', null, null, '/ˈkʊndə/', '{"der Käufer"}', '{"der Verkäufer"}', '{"die Kundin", "der Kundendienst", "die Kundschaft"}', '{}', 'very_common', 1, 'noun', '{"shopping", "business"}'),

('die Tüte', 'bag / packet', 'die', 'die Tüten', 'Eine Tüte Chips, bitte. - A bag of crisps, please.', 'A2', 'shopping', 'Shopping', 'le sachet', 'الكيس', null, null, '/ˈtyːtə/', '{"der Beutel", "die Packung"}', '{}', '{"die Plastiktüte", "die Papiertüte"}', '{}', 'common', 1, 'noun', '{"shopping", "daily"}'),

('der Einkaufswagen', 'shopping cart', 'der', 'die Einkaufswagen', 'Den Einkaufswagen bekommt man mit einem Euro Pfand. - You get the shopping cart with a one euro deposit.', 'A2', 'shopping', 'Shopping', 'le chariot de courses', 'عربة التسوق', null, null, '/ˈaɪnkaʊfsˌvaːɡən/', '{}', '{}', '{"der Wagen", "der Einkauf", "einkaufen"}', '{}', 'common', 2, 'noun', '{"shopping", "daily"}'),

('die Kreditkarte', 'credit card', 'die', 'die Kreditkarten', 'Ich bezahle mit der Kreditkarte. - I pay with the credit card.', 'A2', 'shopping', 'Shopping', 'la carte de crédit', 'بطاقة الائتمان', null, null, '/kʁeˈdiːtˌkaʁtə/', '{"die Karte", "die Bankkarte"}', '{}', '{"die Karte", "der Kredit"}', '{}', 'very_common', 1, 'noun', '{"shopping", "money"}'),

('bar', 'cash', null, null, 'Ich bezahle bar. - I pay cash.', 'A2', 'shopping', 'Shopping', 'en espèces', 'نقداً', null, null, '/baːɐ/', '{"in bar"}', '{}', '{"das Bargeld", "bar bezahlen"}', '{}', 'very_common', 1, 'adverb', '{"shopping", "money"}'),

('der Flohmarkt', 'flea market', 'der', 'die Flohmärkte', 'Auf dem Flohmarkt findet man alte Schätze. - At the flea market you find old treasures.', 'A2', 'shopping', 'Shopping', 'le marché aux puces', 'سوق السلع المستعملة', null, null, '/ˈfloːmaʁkt/', '{"der Trödelmarkt"}', '{}', '{"der Markt", "der Floh"}', '{}', 'common', 2, 'noun', '{"shopping", "leisure"}');

-- ============================================================
-- THEME 2: Travel & Transportation (35 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Bahnhof', 'train station', 'der', 'die Bahnhöfe', 'Der Zug fährt um zehn Uhr am Bahnhof ab. - The train departs at ten o clock from the station.', 'A2', 'travel', 'Travel & Transportation', 'la gare', 'محطة القطار', null, null, '/ˈbaːnhoːf/', '{"der Hauptbahnhof", "der Bahnsteig"}', '{}', '{"die Bahn", "der Bahnsteig", "die Bahnhofshalle"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('der Flughafen', 'airport', 'der', 'die Flughäfen', 'Wir bringen dich zum Flughafen. - We will take you to the airport.', 'A2', 'travel', 'Travel & Transportation', 'l aéroport', 'المطار', null, null, '/ˈfluːkhaːfən/', '{"der Airport", "der Flugplatz"}', '{}', '{"fliegen", "der Flug", "der Flughafenbus"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('die Fahrkarte', 'ticket', 'die', 'die Fahrkarten', 'Eine Fahrkarte nach Berlin, bitte. - A ticket to Berlin, please.', 'A2', 'travel', 'Travel & Transportation', 'le billet de train', 'تذكرة السفر', null, null, '/ˈfaːɐˌkaʁtə/', '{"das Ticket", "der Fahrschein"}', '{}', '{"fahren", "die Karte", "der Fahrkartenautomat"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('der Zug', 'train', 'der', 'die Züge', 'Der Zug hat fünf Minuten Verspätung. - The train has a five minute delay.', 'A2', 'travel', 'Travel & Transportation', 'le train', 'القطار', null, null, '/tsuːk/', '{"die Bahn", "der Personenzug"}', '{}', '{"die Bahn", "der Zugführer", "das Zugabteil"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('das Flugzeug', 'airplane', 'das', 'die Flugzeuge', 'Das Flugzeug startet in einer Stunde. - The airplane takes off in one hour.', 'A2', 'travel', 'Travel & Transportation', 'l avion', 'الطائرة', null, null, '/ˈfluːktsɔʏk/', '{"die Maschine", "der Flieger"}', '{}', '{"fliegen", "der Flug", "der Flugzeugführer"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('das Auto', 'car', 'das', 'die Autos', 'Mit dem Auto fahren wir in den Urlaub. - We are driving to our vacation by car.', 'A2', 'travel', 'Travel & Transportation', 'la voiture', 'السيارة', null, null, '/ˈaʊto/', '{"der PKW", "der Wagen", "das Fahrzeug"}', '{}', '{"der Autofahrer", "die Autobahn", "das Autohaus"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('der Bus', 'bus', 'der', 'die Busse', 'Der Bus kommt in fünf Minuten. - The bus comes in five minutes.', 'A2', 'travel', 'Travel & Transportation', 'le bus', 'الحافلة', null, null, '/bʊs/', '{"der Omnibus", "der Linienbus"}', '{}', '{"der Busfahrer", "die Bushaltestelle", "die Buslinie"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('die Haltestelle', 'bus stop', 'die', 'die Haltestellen', 'Die Haltestelle ist gleich um die Ecke. - The bus stop is just around the corner.', 'A2', 'travel', 'Travel & Transportation', 'l arrêt', 'محطة التوقف', null, null, '/ˈhaltəˌʃtɛlə/', '{"die Bushaltestelle", "die Station"}', '{}', '{"halten", "die Stelle", "der Haltepunkt"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('die Reise', 'journey / trip', 'die', 'die Reisen', 'Die Reise nach Italien war wunderbar. - The trip to Italy was wonderful.', 'A2', 'travel', 'Travel & Transportation', 'le voyage', 'الرحلة', null, null, '/ˈʁaɪzə/', '{"der Trip", "die Fahrt", "der Urlaub"}', '{}', '{"reisen", "der Reisende", "der Reiseführer"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation", "essential"}'),

('reisen', 'to travel', null, null, 'Ich reise gerne in andere Länder. - I like to travel to other countries.', 'A2', 'travel', 'Travel & Transportation', 'voyager', 'يسافر', null, null, '/ˈʁaɪzən/', '{"fahren", "verreisen", "unterwegs sein"}', '{"bleiben"}', '{"die Reise", "der Reisende", "die Reisetasche"}', '{"base": "reisen", "präsens": {"ich": "reise", "du": "reist", "er/sie/es": "reist", "wir": "reisen", "ihr": "reist", "sie/Sie": "reisen"}, "präteritum": {"ich": "reiste", "er/sie/es": "reiste"}, "perfekt": "gereist"}', 'very_common', 1, 'verb', '{"travel", "essential"}'),

('der Urlaub', 'vacation', 'der', 'die Urlaube', 'Wir fahren im Sommer in den Urlaub. - We are going on vacation in summer.', 'A2', 'travel', 'Travel & Transportation', 'les vacances', 'العطلة / الإجازة', null, null, '/ˈuːɐlaʊp/', '{"die Ferien", "die Auszeit"}', '{"die Arbeit"}', '{"der Urlauber", "der Urlaubsort", "urlaubsreif"}', '{}', 'very_common', 1, 'noun', '{"travel", "leisure"}'),

('der Koffer', 'suitcase', 'der', 'die Koffer', 'Ich muss meinen Koffer packen. - I have to pack my suitcase.', 'A2', 'travel', 'Travel & Transportation', 'la valise', 'حقيبة السفر', null, null, '/ˈkɔfɐ/', '{"der Reisekoffer", "der Trolley"}', '{}', '{"der Kofferwagen", "der Handkoffer", "kofferpacken"}', '{}', 'very_common', 1, 'noun', '{"travel", "essential"}'),

('packen', 'to pack', null, null, 'Ich muss meine Tasche für die Reise packen. - I have to pack my bag for the trip.', 'A2', 'travel', 'Travel & Transportation', 'faire la valise', 'يحزم', null, null, '/ˈpakən/', '{"einpacken", "verpacken"}', '{"auspacken"}', '{"der Packer", "die Packung", "das Packstück"}', '{"base": "packen", "präsens": {"ich": "packe", "du": "packst", "er/sie/es": "packt", "wir": "packen", "ihr": "packt", "sie/Sie": "packen"}, "präteritum": {"ich": "packte", "er/sie/es": "packte"}, "perfekt": "gepackt"}', 'very_common', 1, 'verb', '{"travel", "daily"}'),

('der Reisepass', 'passport', 'der', 'die Reisepässe', 'Vergiss deinen Reisepass nicht! - Do not forget your passport!', 'A2', 'travel', 'Travel & Transportation', 'le passeport', 'جواز السفر', null, null, '/ˈʁaɪzəˌpas/', '{"der Pass", "der Ausweis"}', '{}', '{"passen", "der Pass", "das Reisedokument"}', '{}', 'very_common', 1, 'noun', '{"travel", "essential"}'),

('die Unterkunft', 'accommodation', 'die', 'die Unterkünfte', 'Wir suchen eine günstige Unterkunft. - We are looking for cheap accommodation.', 'A2', 'travel', 'Travel & Transportation', 'l hébergement', 'مكان الإقامة', null, null, '/ʊntɐˈkʊnft/', '{"das Hotel", "die Bleibe", "die Herberge"}', '{}', '{"unterkommen", "unterbringen"}', '{}', 'common', 2, 'noun', '{"travel", "essential"}'),

('das Hotel', 'hotel', 'das', 'die Hotels', 'Das Hotel hat ein sehr gutes Frühstück. - The hotel has a very good breakfast.', 'A2', 'travel', 'Travel & Transportation', 'l hôtel', 'الفندق', null, null, '/hoˈtɛl/', '{"die Pension", "die Herberge", "das Gasthaus"}', '{}', '{"der Hotelier", "die Hotelkette"}', '{}', 'very_common', 1, 'noun', '{"travel", "essential"}'),

('buchen', 'to book', null, null, 'Ich möchte ein Zimmer buchen. - I would like to book a room.', 'A2', 'travel', 'Travel & Transportation', 'réserver', 'يحجز', null, null, '/ˈbuːxən/', '{"reservieren", "vorbestellen"}', '{"stornieren"}', '{"die Buchung", "der Buchungsbeleg", "die Buchungsnummer"}', '{"base": "buchen", "präsens": {"ich": "buche", "du": "buchst", "er/sie/es": "bucht", "wir": "buchen", "ihr": "bucht", "sie/Sie": "buchen"}, "präteritum": {"ich": "buchte", "er/sie/es": "buchte"}, "perfekt": "gebucht"}', 'very_common', 1, 'verb', '{"travel", "business"}'),

('abfahren', 'to depart', null, null, 'Der Zug fährt um acht Uhr ab. - The train departs at eight o clock.', 'A2', 'travel', 'Travel & Transportation', 'partir', 'يغادر / ينطلق', null, null, '/ˈapˌfaːʁən/', '{"losfahren", "starten"}', '{"ankommen"}', '{"die Abfahrt", "die Abfahrtszeit"}', '{"base": "abfahren", "präsens": {"ich": "fahre ab", "du": "fährst ab", "er/sie/es": "fährt ab", "wir": "fahren ab", "ihr": "fahrt ab", "sie/Sie": "fahren ab"}, "präteritum": {"ich": "fuhr ab", "er/sie/es": "fuhr ab"}, "perfekt": "abgefahren"}', 'very_common', 1, 'verb', '{"travel", "transportation"}'),

('ankommen', 'to arrive', null, null, 'Wir kommen morgen in München an. - We arrive in Munich tomorrow.', 'A2', 'travel', 'Travel & Transportation', 'arriver', 'يصل', null, null, '/ˈanˌkɔmən/', '{"eintreffen", "anlangen"}', '{"abfahren", "weggehen"}', '{"die Ankunft", "der Ankömmling", "die Ankunftszeit"}', '{"base": "ankommen", "präsens": {"ich": "komme an", "du": "kommst an", "er/sie/es": "kommt an", "wir": "kommen an", "ihr": "kommt an", "sie/Sie": "kommen an"}, "präteritum": {"ich": "kam an", "er/sie/es": "kam an"}, "perfekt": "angekommen"}', 'very_common', 1, 'verb', '{"travel", "transportation"}'),

('die Verspätung', 'delay', 'die', 'die Verspätungen', 'Der Zug hat eine Stunde Verspätung. - The train has a delay of one hour.', 'A2', 'travel', 'Travel & Transportation', 'le retard', 'التأخير', null, null, '/fɛɐˈʃpɛːtʊŋ/', '{"die Verzögerung", "der Aufschub"}', '{"die Pünktlichkeit"}', '{"verspäten", "spät", "verspätet"}', '{}', 'common', 2, 'noun', '{"travel", "transportation"}'),

('der Bahnsteig', 'platform', 'der', 'die Bahnsteige', 'Der Zug fährt ab Bahnsteig vier. - The train departs from platform four.', 'A2', 'travel', 'Travel & Transportation', 'le quai', 'رصيف المحطة', null, null, '/ˈbaːnʃtaɪk/', '{"der Gleis", "der Perron"}', '{}', '{"die Bahn", "der Steig", "der Bahnsteigkarte"}', '{}', 'common', 1, 'noun', '{"travel", "transportation"}'),

('umsteigen', 'to change trains', null, null, 'Sie müssen in Köln umsteigen. - You have to change trains in Cologne.', 'A2', 'travel', 'Travel & Transportation', 'changer', 'يغير وسيلة النقل', null, null, '/ˈʊmˌʃtaɪɡən/', '{"wechseln", "umsteigen"}', '{}', '{"der Umstieg", "der Umsteigebahnhof"}', '{"base": "umsteigen", "präsens": {"ich": "steige um", "du": "steigst um", "er/sie/es": "steigt um", "wir": "steigen um", "ihr": "steigt um", "sie/Sie": "steigen um"}, "präteritum": {"ich": "stieg um", "er/sie/es": "stieg um"}, "perfekt": "umgestiegen"}', 'common', 2, 'verb', '{"travel", "transportation"}'),

('der Fahrplan', 'timetable', 'der', 'die Fahrpläne', 'Den Fahrplan findest du im Internet. - You can find the timetable on the internet.', 'A2', 'travel', 'Travel & Transportation', 'l horaire', 'جدول المواعيد', null, null, '/ˈfaːɐplaːn/', '{"der Stundenplan", "der Zeitplan"}', '{}', '{"fahren", "der Plan", "planen"}', '{}', 'common', 1, 'noun', '{"travel", "transportation"}'),

('die Grenze', 'border', 'die', 'die Grenzen', 'Wir überqueren morgen die Grenze. - We cross the border tomorrow.', 'A2', 'travel', 'Travel & Transportation', 'la frontière', 'الحدود', null, null, '/ˈɡʁɛntsə/', '{"die Landesgrenze"}', '{}', '{"grenzen", "angrenzend", "der Grenzübergang"}', '{}', 'common', 2, 'noun', '{"travel", "geography"}'),

('der Rucksack', 'backpack', 'der', 'die Rucksäcke', 'Ich nehme nur meinen Rucksack mit. - I am only taking my backpack.', 'A2', 'travel', 'Travel & Transportation', 'le sac à dos', 'حقيبة الظهر', null, null, '/ˈʁʊkzak/', '{"der Tornister", "der Daypack"}', '{}', '{"der Sack", "der Rücken"}', '{}', 'common', 1, 'noun', '{"travel", "daily"}'),

('die Reservierung', 'reservation', 'die', 'die Reservierungen', 'Ich habe eine Reservierung auf den Namen Müller. - I have a reservation under the name Müller.', 'A2', 'travel', 'Travel & Transportation', 'la réservation', 'الحجز', null, null, '/ʁezɛʁˈviːʁʊŋ/', '{"die Buchung", "die Vorbestellung"}', '{}', '{"reservieren", "reserviert"}', '{}', 'very_common', 1, 'noun', '{"travel", "business"}'),

('das Taxi', 'taxi', 'das', 'die Taxis', 'Wir nehmen ein Taxi zum Hotel. - We take a taxi to the hotel.', 'A2', 'travel', 'Travel & Transportation', 'le taxi', 'سيارة أجرة', null, null, '/ˈtaksi/', '{"die Taxifahrt"}', '{}', '{"der Taxifahrer", "das Taxiunternehmen"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation"}'),

('die Rückfahrkarte', 'round-trip ticket', 'die', 'die Rückfahrkarten', 'Eine Rückfahrkarte nach Stuttgart kostet achtzig Euro. - A round-trip ticket to Stuttgart costs eighty euros.', 'A2', 'travel', 'Travel & Transportation', 'le billet aller-retour', 'تذكرة ذهاب وعودة', null, null, '/ˈʁʏkfaːɐˌkaʁtə/', '{"das Rückfahrticket"}', '{"die Fahrkarte einfach"}', '{"zurück", "die Rückfahrt", "die Fahrkarte"}', '{}', 'common', 2, 'noun', '{"travel", "transportation"}'),

('die Ankunft', 'arrival', 'die', 'die Ankünfte', 'Die Ankunft ist für fünfzehn Uhr geplant. - The arrival is planned for three pm.', 'A2', 'travel', 'Travel & Transportation', 'l arrivée', 'الوصول', null, null, '/ˈankʊnft/', '{"das Eintreffen"}', '{"die Abfahrt", "der Abflug"}', '{"ankommen", "die Ankunftszeit"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation"}'),

('der Flug', 'flight', 'der', 'die Flüge', 'Der Flug nach London dauert zwei Stunden. - The flight to London takes two hours.', 'A2', 'travel', 'Travel & Transportation', 'le vol', 'الرحلة الجوية', null, null, '/fluːk/', '{"der Linienflug", "der Charterflug"}', '{}', '{"fliegen", "der Flughafen", "der Fluggast"}', '{}', 'very_common', 1, 'noun', '{"travel", "transportation"}'),

('das Gepäck', 'luggage', 'das', 'die Gepäckstücke', 'Wo kann ich mein Gepäck abgeben? - Where can I drop off my luggage?', 'A2', 'travel', 'Travel & Transportation', 'les bagages', 'الأمتعة', null, null, '/ɡəˈpɛk/', '{"das Reisegepäck", "das Baggage"}', '{}', '{"der Gepäckwagen", "der Koffer", "die Tasche"}', '{}', 'very_common', 1, 'noun', '{"travel", "essential"}'),

('der Stadtplan', 'city map', 'der', 'die Stadtpläne', 'Kann ich bitte einen Stadtplan haben? - Can I have a city map, please?', 'A2', 'travel', 'Travel & Transportation', 'le plan de la ville', 'خريطة المدينة', null, null, '/ˈʃtatplaːn/', '{"die Karte", "der Plan"}', '{}', '{"die Stadt", "der Plan", "planen"}', '{}', 'common', 2, 'noun', '{"travel", "daily"}'),

('der Ausflug', 'excursion', 'der', 'die Ausflüge', 'Am Sonntag machen wir einen Ausflug. - On Sunday we are going on an excursion.', 'A2', 'travel', 'Travel & Transportation', 'l excursion', 'الرحلة / النزهة', null, null, '/ˈaʊsfluːk/', '{"der Trip", "der Tagesausflug"}', '{}', '{"fliegen", "der Flug", "der Ausflugsort"}', '{}', 'common', 1, 'noun', '{"travel", "leisure"}'),

('der Zoll', 'customs', 'der', null, 'Am Zoll muss man den Reisepass zeigen. - At customs you have to show your passport.', 'A2', 'travel', 'Travel & Transportation', 'la douane', 'الجمارك', null, null, '/tsɔl/', '{"die Zollkontrolle"}', '{}', '{"der Zöllner", "die Zollkontrolle"}', '{}', 'common', 2, 'noun', '{"travel", "transportation"}'),

('der Reiseführer', 'travel guide', 'der', 'die Reiseführer', 'Der Reiseführer empfiehlt dieses Restaurant. - The travel guide recommends this restaurant.', 'A2', 'travel', 'Travel & Transportation', 'le guide de voyage', 'دليل السفر', null, null, '/ˈʁaɪzəˌfyːʁɐ/', '{"der Fremdenführer", "der Stadtführer"}', '{}', '{"reisen", "führen", "die Reise"}', '{}', 'common', 2, 'noun', '{"travel", "leisure"}');

-- ============================================================
-- THEME 3: Restaurant & Food (25 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('bestellen', 'to order', null, null, 'Ich möchte bitte ein Schnitzel bestellen. - I would like to order a schnitzel, please.', 'A2', 'food', 'Restaurant & Food', 'commander', 'يطلب طعام', null, null, '/bəˈʃtɛlən/', '{"orderen", "reservieren"}', '{}', '{"die Bestellung", "der Bestellzettel", "der Besteller"}', '{"base": "bestellen", "präsens": {"ich": "bestelle", "du": "bestellst", "er/sie/es": "bestellt", "wir": "bestellen", "ihr": "bestellt", "sie/Sie": "bestellen"}, "präteritum": {"ich": "bestellte", "er/sie/es": "bestellte"}, "perfekt": "bestellt"}', 'very_common', 1, 'verb', '{"food", "restaurant", "essential"}'),

('die Speisekarte', 'menu', 'die', 'die Speisekarten', 'Kann ich bitte die Speisekarte sehen? - Can I see the menu, please?', 'A2', 'food', 'Restaurant & Food', 'la carte', 'قائمة الطعام', null, null, '/ˈʃpaɪzəˌkaʁtə/', '{"die Karte", "das Menü"}', '{}', '{"die Speise", "die Karte", "die Getränkekarte"}', '{}', 'very_common', 1, 'noun', '{"food", "restaurant", "essential"}'),

('der Kellner', 'waiter', 'der', 'die Kellner', 'Der Kellner bringt die Rechnung. - The waiter brings the bill.', 'A2', 'food', 'Restaurant & Food', 'le serveur', 'النادل', null, null, '/ˈkɛlnɐ/', '{"der Ober", "die Servicekraft", "die Bedienung"}', '{"der Gast"}', '{"die Kellnerin", "der Kellnerberuf"}', '{}', 'common', 1, 'noun', '{"food", "restaurant", "essential"}'),

('die Rechnung', 'bill / check', 'die', 'die Rechnungen', 'Die Rechnung bitte! - The bill, please!', 'A2', 'food', 'Restaurant & Food', 'l addition', 'الفاتورة', null, null, '/ˈʁɛçnʊŋ/', '{"der Beleg", "die Quittung", "der Kassenbon"}', '{}', '{"rechnen", "der Rechnungsbetrag"}', '{}', 'very_common', 1, 'noun', '{"food", "restaurant", "essential"}'),

('trinken', 'to drink', null, null, 'Was möchtest du trinken? - What would you like to drink?', 'A2', 'food', 'Restaurant & Food', 'boire', 'يشرب', null, null, '/ˈtʁɪŋkən/', '{"schlürfen", "nippen"}', '{"essen"}', '{"das Getränk", "der Trinker", "trinkbar"}', '{"base": "trinken", "präsens": {"ich": "trinke", "du": "trinkst", "er/sie/es": "trinkt", "wir": "trinken", "ihr": "trinkt", "sie/Sie": "trinken"}, "präteritum": {"ich": "trank", "er/sie/es": "trank"}, "perfekt": "getrunken"}', 'very_common', 1, 'verb', '{"food", "essential"}'),

('das Frühstück', 'breakfast', 'das', 'die Frühstücke', 'Das Frühstück ist von sieben bis zehn Uhr. - Breakfast is from seven to ten o clock.', 'A2', 'food', 'Restaurant & Food', 'le petit-déjeuner', 'الفطور', null, null, '/ˈfʁyːʃtʏk/', '{"das Morgenessen"}', '{"das Abendessen", "das Mittagessen"}', '{"frühstücken", "der Frühstückstisch"}', '{}', 'very_common', 1, 'noun', '{"food", "daily", "essential"}'),

('das Mittagessen', 'lunch', 'das', 'die Mittagessen', 'Das Mittagessen gibt es um zwölf Uhr. - Lunch is served at twelve o clock.', 'A2', 'food', 'Restaurant & Food', 'le déjeuner', 'الغداء', null, null, '/ˈmɪtaːkˌʔɛsən/', '{"der Mittagstisch"}', '{"das Frühstück", "das Abendessen"}', '{"der Mittag", "das Essen", "mittagessen"}', '{}', 'very_common', 1, 'noun', '{"food", "daily", "essential"}'),

('das Abendessen', 'dinner', 'das', 'die Abendessen', 'Wir treffen uns zum Abendessen. - We are meeting for dinner.', 'A2', 'food', 'Restaurant & Food', 'le dîner', 'العشاء', null, null, '/ˈaːbəntˌʔɛsən/', '{"das Dinner", "das Nachtmahl"}', '{"das Frühstück"}', '{"der Abend", "das Essen", "abendessen"}', '{}', 'very_common', 1, 'noun', '{"food", "daily", "essential"}'),

('die Vorspeise', 'appetizer', 'die', 'die Vorspeisen', 'Als Vorspeise nehme ich eine Suppe. - As a starter I will have soup.', 'A2', 'food', 'Restaurant & Food', 'l entrée', 'المقبلات', null, null, '/ˈfoːɐˌʃpaɪzə/', '{"der Aperitif", "der Appetizer"}', '{"die Nachspeise", "das Hauptgericht"}', '{"vor", "die Speise", "der Vorspeisenteller"}', '{}', 'common', 1, 'noun', '{"food", "restaurant"}'),

('die Nachspeise', 'dessert', 'die', 'die Nachspeisen', 'Zur Nachspeise gibt es Kuchen. - For dessert there is cake.', 'A2', 'food', 'Restaurant & Food', 'le dessert', 'الحلوى', null, null, '/ˈnaːxˌʃpaɪzə/', '{"der Nachtisch", "das Dessert"}', '{"die Vorspeise"}', '{"nach", "die Speise", "nachspeisen"}', '{}', 'common', 1, 'noun', '{"food", "restaurant"}'),

('das Getränk', 'beverage', 'das', 'die Getränke', 'Welches Getränk möchtest du? - Which drink would you like?', 'A2', 'food', 'Restaurant & Food', 'la boisson', 'المشروب', null, null, '/ɡəˈtʁɛŋk/', '{"der Drink", "das Trinken"}', '{}', '{"trinken", "die Getränkekarte", "die Getränkeauswahl"}', '{}', 'very_common', 1, 'noun', '{"food", "essential"}'),

('das Gericht', 'dish', 'das', 'die Gerichte', 'Das Gericht schmeckt ausgezeichnet. - The dish tastes excellent.', 'A2', 'food', 'Restaurant & Food', 'le plat', 'الطبق', null, null, '/ɡəˈʁɪçt/', '{"die Speise", "das Essen", "der Gang"}', '{}', '{"das Hauptgericht", "die Gerichtekarte", "das Gericht des Tages"}', '{}', 'very_common', 1, 'noun', '{"food", "restaurant"}'),

('der Geschmack', 'taste', 'der', 'die Geschmäcker', 'Der Geschmack ist sehr intensiv. - The taste is very intense.', 'A2', 'food', 'Restaurant & Food', 'le goût', 'الطعم', null, null, '/ɡəˈʃmak/', '{"das Aroma", "der Flavor"}', '{}', '{"schmecken", "geschmacklos", "geschmackvoll"}', '{}', 'common', 1, 'noun', '{"food", "description"}'),

('schmecken', 'to taste', null, null, 'Das Essen schmeckt sehr gut. - The food tastes very good.', 'A2', 'food', 'Restaurant & Food', 'avoir le goût', 'يتذوق / يكون طعمه', null, null, '/ˈʃmɛkən/', '{"munden", "probieren"}', '{"widerlich sein"}', '{"der Geschmack", "geschmacklos", "schmackhaft"}', '{"base": "schmecken", "präsens": {"ich": "schmecke", "du": "schmeckst", "er/sie/es": "schmeckt", "wir": "schmecken", "ihr": "schmeckt", "sie/Sie": "schmecken"}, "präteritum": {"ich": "schmeckte", "er/sie/es": "schmeckte"}, "perfekt": "geschmeckt"}', 'very_common', 1, 'verb', '{"food", "essential"}'),

('die Zutat', 'ingredient', 'die', 'die Zutaten', 'Die Zutaten für den Kuchen sind einfach. - The ingredients for the cake are simple.', 'A2', 'food', 'Restaurant & Food', 'l ingrédient', 'المكون', null, null, '/ˈtsuːtaːt/', '{"der Bestandteil", "die Komponente"}', '{}', '{"die Zutatenliste", "die Hauptzutat"}', '{}', 'common', 2, 'noun', '{"food", "cooking"}'),

('kochen', 'to cook', null, null, 'Ich koche heute Abend für meine Freunde. - I am cooking tonight for my friends.', 'A2', 'food', 'Restaurant & Food', 'cuisiner', 'يطبخ', null, null, '/ˈkɔχən/', '{"zubereiten", "brutzeln"}', '{"essen gehen"}', '{"der Koch", "der Herd", "das Kochbuch"}', '{"base": "kochen", "präsens": {"ich": "koche", "du": "kochst", "er/sie/es": "kocht", "wir": "kochen", "ihr": "kocht", "sie/Sie": "kochen"}, "präteritum": {"ich": "kochte", "er/sie/es": "kochte"}, "perfekt": "gekocht"}', 'very_common', 1, 'verb', '{"food", "daily", "essential"}'),

('das Messer', 'knife', 'das', 'die Messer', 'Das Messer ist sehr scharf. - The knife is very sharp.', 'A2', 'food', 'Restaurant & Food', 'le couteau', 'السكين', null, null, '/ˈmɛsɐ/', '{}', '{}', '{"das Taschenmesser", "das Küchenmesser"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('die Gabel', 'fork', 'die', 'die Gabeln', 'Die Gabel liegt neben dem Teller. - The fork is next to the plate.', 'A2', 'food', 'Restaurant & Food', 'la fourchette', 'الشوكة', null, null, '/ˈɡaːbəl/', '{}', '{}', '{"gabelförmig"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('der Löffel', 'spoon', 'der', 'die Löffel', 'Für die Suppe brauche ich einen Löffel. - For the soup I need a spoon.', 'A2', 'food', 'Restaurant & Food', 'la cuillère', 'الملعقة', null, null, '/ˈlœfəl/', '{}', '{}', '{"der Teelöffel", "der Esslöffel", "löffeln"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('der Teller', 'plate', 'der', 'die Teller', 'Der Teller ist aus Porzellan. - The plate is made of porcelain.', 'A2', 'food', 'Restaurant & Food', 'l assiette', 'الطبق', null, null, '/ˈtɛlɐ/', '{"der Tellerrand"}', '{}', '{"der Suppenteller", "der Kuchenteller", "das Tellergericht"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('die Tasse', 'cup', 'die', 'die Tassen', 'Eine Tasse Kaffee, bitte. - A cup of coffee, please.', 'A2', 'food', 'Restaurant & Food', 'la tasse', 'الفنجان', null, null, '/ˈtasə/', '{"der Becher", "der Kaffeebecher"}', '{}', '{"das Tässchen", "der Tassenkopf"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('das Glas', 'glass', 'das', 'die Gläser', 'Ein Glas Wasser, bitte. - A glass of water, please.', 'A2', 'food', 'Restaurant & Food', 'le verre', 'الكأس', null, null, '/ɡlaːs/', '{"das Trinkglas", "das Wasserglas"}', '{}', '{"das Weinglas", "das Bierglas", "der Glasrand"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('die Flasche', 'bottle', 'die', 'die Flaschen', 'Die Flasche Wein kostet neun Euro. - The bottle of wine costs nine euros.', 'A2', 'food', 'Restaurant & Food', 'la bouteille', 'الزجاجة', null, null, '/ˈflaʃə/', '{"der Behälter"}', '{}', '{"die Wasserflasche", "die Bierflasche", "der Flaschenöffner"}', '{}', 'very_common', 1, 'noun', '{"food", "kitchen", "essential"}'),

('die Bedienung', 'service / server', 'die', 'die Bedienungen', 'Die Bedienung ist sehr freundlich. - The service is very friendly.', 'A2', 'food', 'Restaurant & Food', 'le service', 'الخدمة', null, null, '/bəˈdiːnʊŋ/', '{"der Service", "der Kellner", "die Servicekraft"}', '{}', '{"bedienen", "die Selbstbedienung"}', '{}', 'common', 1, 'noun', '{"food", "restaurant"}'),

('das Trinkgeld', 'tip', 'das', 'die Trinkgelder', 'In Deutschland gibt man etwa zehn Prozent Trinkgeld. - In Germany you give about ten percent tip.', 'A2', 'food', 'Restaurant & Food', 'le pourboire', 'الإكرامية / البقشيش', null, null, '/ˈtʁɪŋkɡɛlt/', '{"die Aufmerksamkeit"}', '{}', '{"trinken", "das Geld", "die Trinkgelddose"}', '{}', 'common', 2, 'noun', '{"food", "restaurant", "money"}');

-- ============================================================
-- THEME 4: Daily Life & Routine (30 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('aufstehen', 'to get up', null, null, 'Ich stehe jeden Morgen um sieben Uhr auf. - I get up every morning at seven o clock.', 'A2', 'daily', 'Daily Life & Routine', 'se lever', 'يستيقظ', null, null, '/ˈaʊfʃteːən/', '{"aufwachen", "erwachen"}', '{"schlafen gehen", "ins Bett gehen"}', '{"der Aufstand", "das Aufstehen", "die Aufstehzeit"}', '{"base": "aufstehen", "präsens": {"ich": "stehe auf", "du": "stehst auf", "er/sie/es": "steht auf", "wir": "stehen auf", "ihr": "steht auf", "sie/Sie": "stehen auf"}, "präteritum": {"ich": "stand auf", "er/sie/es": "stand auf"}, "perfekt": "aufgestanden"}', 'very_common', 1, 'verb', '{"daily", "routine", "essential"}'),

('sich anziehen', 'to get dressed', null, null, 'Ich ziehe mich schnell an. - I get dressed quickly.', 'A2', 'daily', 'Daily Life & Routine', 's habiller', 'يرتدي ملابسه', null, null, '/zɪç ˈantsiːən/', '{"sich kleiden", "sich einkleiden"}', '{"sich ausziehen"}', '{"die Anziehsache", "der Anzug", "die Kleidung"}', '{"base": "sich anziehen", "präsens": {"ich": "ziehe mich an", "du": "ziehst dich an", "er/sie/es": "zieht sich an", "wir": "ziehen uns an", "ihr": "zieht euch an", "sie/Sie": "ziehen sich an"}, "präteritum": {"ich": "zog mich an", "er/sie/es": "zog sich an"}, "perfekt": "angezogen"}', 'very_common', 1, 'verb', '{"daily", "routine", "essential"}'),

('frühstücken', 'to have breakfast', null, null, 'Ich frühstücke um halb acht. - I have breakfast at half past seven.', 'A2', 'daily', 'Daily Life & Routine', 'prendre le petit-déjeuner', 'يتناول الفطور', null, null, '/ˈfʁyːʃtʏkən/', '{}', '{}', '{"das Frühstück", "der Frühstückstisch"}', '{"base": "frühstücken", "präsens": {"ich": "frühstücke", "du": "frühstückst", "er/sie/es": "frühstückt", "wir": "frühstücken", "ihr": "frühstückt", "sie/Sie": "frühstücken"}, "präteritum": {"ich": "frühstückte", "er/sie/es": "frühstückte"}, "perfekt": "gefrühstückt"}', 'very_common', 1, 'verb', '{"daily", "routine", "essential"}'),

('duschen', 'to shower', null, null, 'Ich dusche jeden Morgen. - I shower every morning.', 'A2', 'daily', 'Daily Life & Routine', 'se doucher', 'يستحم', null, null, '/ˈduːʃən/', '{"abduschen", "sich waschen"}', '{}', '{"die Dusche", "das Duschgel", "der Duschvorhang"}', '{"base": "duschen", "präsens": {"ich": "dusche", "du": "duschst", "er/sie/es": "duscht", "wir": "duschen", "ihr": "duscht", "sie/Sie": "duschen"}, "präteritum": {"ich": "duschte", "er/sie/es": "duschte"}, "perfekt": "geduscht"}', 'very_common', 1, 'verb', '{"daily", "routine", "hygiene"}'),

('sich waschen', 'to wash oneself', null, null, 'Ich wasche mir die Hände. - I wash my hands.', 'A2', 'daily', 'Daily Life & Routine', 'se laver', 'يغتسل', null, null, '/zɪç ˈvaʃən/', '{"sich reinigen", "sich säubern"}', '{"sich schmutzig machen"}', '{"die Wäsche", "die Waschmaschine", "das Waschbecken"}', '{"base": "sich waschen", "präsens": {"ich": "wasche mich", "du": "wäschst dich", "er/sie/es": "wäscht sich", "wir": "waschen uns", "ihr": "wascht euch", "sie/Sie": "waschen sich"}, "präteritum": {"ich": "wusch mich", "er/sie/es": "wusch sich"}, "perfekt": "gewaschen"}', 'very_common', 1, 'verb', '{"daily", "routine", "hygiene"}'),

('Zähne putzen', 'to brush teeth', null, null, 'Ich putze mir dreimal täglich die Zähne. - I brush my teeth three times a day.', 'A2', 'daily', 'Daily Life & Routine', 'se brosser les dents', 'ينظف أسنانه', null, null, '/ˈtsɛːnə ˈpʊtsən/', '{}', '{}', '{"die Zahnbürste", "die Zahnpasta", "der Zahnarzt"}', '{"base": "Zähne putzen", "präsens": {"ich": "putze mir die Zähne", "du": "putzt dir die Zähne", "er/sie/es": "putzt sich die Zähne", "wir": "putzen uns die Zähne", "ihr": "putzt euch die Zähne", "sie/Sie": "putzen sich die Zähne"}, "präteritum": {"ich": "putzte mir die Zähne", "er/sie/es": "putzte sich die Zähne"}, "perfekt": "geputzt"}', 'very_common', 1, 'verb', '{"daily", "routine", "hygiene"}'),

('arbeiten', 'to work', null, null, 'Ich arbeite von Montag bis Freitag. - I work from Monday to Friday.', 'A2', 'daily', 'Daily Life & Routine', 'travailler', 'يعمل', null, null, '/ˈaʁbaɪtən/', '{"jobben", "tätig sein", "schaffen"}', '{"faulenzen", "pausieren"}', '{"die Arbeit", "der Arbeiter", "das Arbeitszimmer"}', '{"base": "arbeiten", "präsens": {"ich": "arbeite", "du": "arbeitest", "er/sie/es": "arbeitet", "wir": "arbeiten", "ihr": "arbeitet", "sie/Sie": "arbeiten"}, "präteritum": {"ich": "arbeitete", "er/sie/es": "arbeitete"}, "perfekt": "gearbeitet"}', 'very_common', 1, 'verb', '{"daily", "routine", "essential"}'),

('der Wecker', 'alarm clock', 'der', 'die Wecker', 'Der Wecker klingelt um sechs Uhr. - The alarm clock rings at six o clock.', 'A2', 'daily', 'Daily Life & Routine', 'le réveil', 'المنبه', null, null, '/ˈvɛkɐ/', '{"der Alarm", "der Klingelwecker"}', '{}', '{"wecken", "das Wecken", "die Weckzeit"}', '{}', 'very_common', 1, 'noun', '{"daily", "routine", "essential"}'),


('der Tagesablauf', 'daily routine', 'der', 'die Tagesabläufe', 'Mein Tagesablauf ist immer ähnlich. - My daily routine is always similar.', 'A2', 'daily', 'Daily Life & Routine', 'le déroulement de la journée', 'الروتين اليومي', null, null, '/ˈtaːɡəsˌapˌlaʊf/', '{"der Alltag", "die Routine", "der Tagesrhythmus"}', '{}', '{"der Tag", "der Ablauf", "der Alltag"}', '{}', 'common', 2, 'noun', '{"daily", "routine"}'),

('sich ausruhen', 'to rest', null, null, 'Nach der Arbeit ruhe ich mich aus. - After work I rest.', 'A2', 'daily', 'Daily Life & Routine', 'se reposer', 'يستريح', null, null, '/zɪç ˈaʊsʁuːən/', '{"entspannen", "pausieren", "rasten"}', '{"sich anstrengen"}', '{"die Ruhe", "die Ruhepause", "die Erholung"}', '{"base": "sich ausruhen", "präsens": {"ich": "ruhe mich aus", "du": "ruhst dich aus", "er/sie/es": "ruht sich aus", "wir": "ruhen uns aus", "ihr": "ruht euch aus", "sie/Sie": "ruhen sich aus"}, "präteritum": {"ich": "ruhte mich aus", "er/sie/es": "ruhte sich aus"}, "perfekt": "ausgeruht"}', 'common', 1, 'verb', '{"daily", "routine", "health"}'),

('einkaufen gehen', 'to go shopping', null, null, 'Ich kaufe am Samstag immer ein. - I always go shopping on Saturday.', 'A2', 'daily', 'Daily Life & Routine', 'faire les courses', 'يتسوق', null, null, '/ˈaɪnkaʊfən ˈɡeːən/', '{"shoppen", "einkaufen"}', '{}', '{"der Einkauf", "der Einkaufswagen", "die Einkaufsliste"}', '{"base": "einkaufen gehen", "präsens": {"ich": "gehe einkaufen", "du": "gehst einkaufen", "er/sie/es": "geht einkaufen", "wir": "gehen einkaufen", "ihr": "geht einkaufen", "sie/Sie": "gehen einkaufen"}, "präteritum": {"ich": "ging einkaufen", "er/sie/es": "ging einkaufen"}, "perfekt": "einkaufen gegangen"}', 'very_common', 1, 'verb', '{"daily", "routine", "shopping"}'),

('putzen', 'to clean', null, null, 'Ich putze am Wochenende die Wohnung. - I clean the apartment on the weekend.', 'A2', 'daily', 'Daily Life & Routine', 'nettoyer', 'ينظف', null, null, '/ˈpʊtsən/', '{"sauber machen", "reinigen", "wischen"}', '{"verschmutzen", "schmutzig machen"}', '{"die Putzfrau", "der Putzlappen", "das Putzmittel"}', '{"base": "putzen", "präsens": {"ich": "putze", "du": "putzt", "er/sie/es": "putzt", "wir": "putzen", "ihr": "putzt", "sie/Sie": "putzen"}, "präteritum": {"ich": "putzte", "er/sie/es": "putzte"}, "perfekt": "geputzt"}', 'very_common', 1, 'verb', '{"daily", "routine", "home"}'),

('Wäsche waschen', 'to do laundry', null, null, 'Ich wasche meine Wäsche am Sonntag. - I do my laundry on Sunday.', 'A2', 'daily', 'Daily Life & Routine', 'faire la lessive', 'يغسل الملابس', null, null, '/ˈvɛʃə ˈvaʃən/', '{"die Wäsche machen"}', '{}', '{"die Waschmaschine", "der Waschkorb", "das Waschmittel"}', '{"base": "Wäsche waschen", "präsens": {"ich": "wasche die Wäsche", "du": "wäschst die Wäsche", "er/sie/es": "wäscht die Wäsche", "wir": "waschen die Wäsche", "ihr": "wascht die Wäsche", "sie/Sie": "waschen die Wäsche"}, "präteritum": {"ich": "wusch die Wäsche", "er/sie/es": "wusch die Wäsche"}, "perfekt": "gewaschen"}', 'very_common', 1, 'verb', '{"daily", "routine", "home"}'),

('der Haushalt', 'household', 'der', 'die Haushalte', 'Den Haushalt teilen wir uns. - We share the household.', 'A2', 'daily', 'Daily Life & Routine', 'le ménage', 'الأعمال المنزلية', null, null, '/ˈhaʊshalt/', '{"die Haushaltsführung", "die Hausarbeit"}', '{}', '{"haushalten", "das Haushaltsgerät", "die Haushaltshilfe"}', '{}', 'common', 1, 'noun', '{"daily", "routine", "home"}'),

('fernsehen', 'to watch TV', null, null, 'Abends sehe ich gerne fern. - In the evening I like to watch TV.', 'A2', 'daily', 'Daily Life & Routine', 'regarder la télévision', 'يشاهد التلفاز', null, null, '/ˈfɛʁnzeːən/', '{"glotzen", "TV schauen"}', '{}', '{"der Fernseher", "das Fernsehprogramm", "der Fernsehapparat"}', '{"base": "fernsehen", "präsens": {"ich": "sehe fern", "du": "siehst fern", "er/sie/es": "sieht fern", "wir": "sehen fern", "ihr": "seht fern", "sie/Sie": "sehen fern"}, "präteritum": {"ich": "sah fern", "er/sie/es": "sah fern"}, "perfekt": "ferngesehen"}', 'very_common', 1, 'verb', '{"daily", "routine", "leisure"}'),

('ins Bett gehen', 'to go to bed', null, null, 'Ich gehe um zehn Uhr ins Bett. - I go to bed at ten o clock.', 'A2', 'daily', 'Daily Life & Routine', 'aller au lit', 'يذهب إلى السرير', null, null, '/ɪns bɛt ˈɡeːən/', '{"schlafen gehen", "zu Bett gehen"}', '{"aufstehen"}', '{"das Bett", "die Bettzeit", "die Bettdecke"}', '{"base": "ins Bett gehen", "präsens": {"ich": "gehe ins Bett", "du": "gehst ins Bett", "er/sie/es": "geht ins Bett", "wir": "gehen ins Bett", "ihr": "geht ins Bett", "sie/Sie": "gehen ins Bett"}, "präteritum": {"ich": "ging ins Bett", "er/sie/es": "ging ins Bett"}, "perfekt": "ins Bett gegangen"}', 'very_common', 1, 'verb', '{"daily", "routine", "essential"}'),

('die Hausarbeit', 'housework', 'die', 'die Hausarbeiten', 'Die Hausarbeit ist heute erledigt. - The housework is done today.', 'A2', 'daily', 'Daily Life & Routine', 'le travail ménager', 'الأعمال المنزلية', null, null, '/ˈhaʊsʔaʁbaɪt/', '{"die Haushaltsarbeit", "die Haushaltstätigkeit"}', '{}', '{"das Haus", "die Arbeit", "der Hausarbeiter"}', '{}', 'common', 1, 'noun', '{"daily", "routine", "home"}'),

('der Alltag', 'everyday life', 'der', 'die Alltage', 'Der Alltag ist manchmal anstrengend. - Everyday life is sometimes exhausting.', 'A2', 'daily', 'Daily Life & Routine', 'la vie quotidienne', 'الحياة اليومية', null, null, '/ˈaltaːk/', '{"der Tagesablauf", "die Routine", "der gewöhnliche Tag"}', '{}', '{"alltäglich", "der Alltagsstress", "der Alltagsgegenstand"}', '{}', 'common', 1, 'noun', '{"daily", "routine"}'),

('die Freizeit', 'free time', 'die', 'die Freizeiten', 'In meiner Freizeit lese ich gern. - In my free time I like to read.', 'A2', 'daily', 'Daily Life & Routine', 'le temps libre', 'وقت الفراغ', null, null, '/ˈfʁaɪtsaɪt/', '{"die Muße", "der freie Zeit"}', '{"die Arbeitszeit"}', '{"frei", "die Zeit", "die Freizeitbeschäftigung"}', '{}', 'very_common', 1, 'noun', '{"daily", "routine", "leisure"}'),

('der Feierabend', 'end of workday', 'der', 'die Feierabende', 'Um siebzehn Uhr habe ich Feierabend. - At five pm my workday ends.', 'A2', 'daily', 'Daily Life & Routine', 'la fin de la journée de travail', 'نهاية يوم العمل', null, null, '/ˈfaɪɐˌʔaːbənt/', '{"der Arbeitsschluss", "der Dienstschluss"}', '{"der Arbeitsbeginn"}', '{"feiern", "der Abend", "feierabendlich"}', '{}', 'common', 2, 'noun', '{"daily", "routine", "work"}'),

('die Pause', 'break', 'die', 'die Pausen', 'Wir machen eine kurze Pause. - We are taking a short break.', 'A2', 'daily', 'Daily Life & Routine', 'la pause', 'الاستراحة', null, null, '/ˈpaʊzə/', '{"die Unterbrechung", "die Rast", "die Erholung"}', '{"die Arbeit", "die Kontinuität"}', '{"pausieren", "die Pausenzeit", "der Pausenraum"}', '{}', 'very_common', 1, 'noun', '{"daily", "routine", "work"}'),

('der Mittagsschlaf', 'afternoon nap', 'der', 'die Mittagsschläfe', 'Ein kurzer Mittagsschlaf tut gut. - A short afternoon nap does you good.', 'A2', 'daily', 'Daily Life & Routine', 'la sieste', 'القيلولة', null, null, '/ˈmɪtaːksˌʃlaːf/', '{"das Nickerchen", "die Siesta"}', '{}', '{"der Mittag", "der Schlaf", "schlafen"}', '{}', 'common', 2, 'noun', '{"daily", "routine"}'),

('das Abendbrot', 'evening meal', 'das', 'die Abendbrote', 'Zum Abendbrot gibt es Käse und Wurst. - For the evening meal there is cheese and sausage.', 'A2', 'daily', 'Daily Life & Routine', 'le dîner froid', 'عشاء خفيف', null, null, '/ˈaːbəntˌbʁoːt/', '{"das Abendessen", "das Nachtmahl"}', '{}', '{"der Abend", "das Brot", "abendbrotessen"}', '{}', 'common', 2, 'noun', '{"daily", "routine", "food"}'),

('gähnen', 'to yawn', null, null, 'Wenn ich müde bin, muss ich gähnen. - When I am tired I have to yawn.', 'A2', 'daily', 'Daily Life & Routine', 'bâiller', 'يتثاءب', null, null, '/ˈɡɛːnən/', '{}', '{}', '{"das Gähnen", "der Gähnreiz"}', '{"base": "gähnen", "präsens": {"ich": "gähne", "du": "gähnst", "er/sie/es": "gähnt", "wir": "gähnen", "ihr": "gähnt", "sie/Sie": "gähnen"}, "präteritum": {"ich": "gähnte", "er/sie/es": "gähnte"}, "perfekt": "gegähnt"}', 'common', 2, 'verb', '{"daily", "routine"}'),

('sich ausziehen', 'to get undressed', null, null, 'Ich ziehe mich vor dem Schlafengehen aus. - I get undressed before going to sleep.', 'A2', 'daily', 'Daily Life & Routine', 'se déshabiller', 'يخلع ملابسه', null, null, '/zɪç ˈaʊstsˌiːən/', '{"sich entkleiden"}', '{"sich anziehen"}', '{"der Auszug", "ausziehen"}', '{"base": "sich ausziehen", "präsens": {"ich": "ziehe mich aus", "du": "ziehst dich aus", "er/sie/es": "zieht sich aus", "wir": "ziehen uns aus", "ihr": "zieht euch aus", "sie/Sie": "ziehen sich aus"}, "präteritum": {"ich": "zog mich aus", "er/sie/es": "zog sich aus"}, "perfekt": "ausgezogen"}', 'common', 1, 'verb', '{"daily", "routine"}'),

('die Morgenroutine', 'morning routine', 'die', 'die Morgenroutinen', 'Meine Morgenroutine dauert eine Stunde. - My morning routine takes one hour.', 'A2', 'daily', 'Daily Life & Routine', 'la routine matinale', 'الروتين الصباحي', null, null, '/ˈmɔʁɡənʁuˌtiːnə/', '{"der Morgen", "die Routine"}', '{}', '{"der Morgen", "die Routine", "morgens"}', '{}', 'common', 2, 'noun', '{"daily", "routine"}'),

('die Abendroutine', 'evening routine', 'die', 'die Abendroutinen', 'Meine Abendroutine hilft mir beim Einschlafen. - My evening routine helps me fall asleep.', 'A2', 'daily', 'Daily Life & Routine', 'la routine du soir', 'الروتين المسائي', null, null, '/ˈaːbəntʁuˌtiːnə/', '{}', '{}', '{"der Abend", "die Routine", "abends"}', '{}', 'common', 2, 'noun', '{"daily", "routine"}'),

('sich kämmen', 'to comb one s hair', null, null, 'Ich kämme mich jeden Morgen. - I comb my hair every morning.', 'A2', 'daily', 'Daily Life & Routine', 'se peigner', 'يمشط شعره', null, null, '/zɪç ˈkɛmən/', '{"sich bürsten"}', '{}', '{"der Kamm", "die Bürste"}', '{"base": "sich kämmen", "präsens": {"ich": "kämme mich", "du": "kämmst dich", "er/sie/es": "kämmt sich", "wir": "kämmen uns", "ihr": "kämmt euch", "sie/Sie": "kämmen sich"}, "präteritum": {"ich": "kämmte mich", "er/sie/es": "kämmte sich"}, "perfekt": "gekämmt"}', 'common', 1, 'verb', '{"daily", "routine", "hygiene"}'),

('das Frühstücksbrot', 'breakfast bread roll', 'das', 'die Frühstücksbrote', 'Ich esse ein Frühstücksbrot mit Marmelade. - I eat a breakfast bread roll with jam.', 'A2', 'daily', 'Daily Life & Routine', 'le pain du petit-déjeuner', 'خبز الفطور', null, null, '/ˈfʁyːʃtʏksˌbʁoːt/', '{"das Brötchen", "die Semmel"}', '{}', '{"das Brot", "frühstücken", "das Frühstück"}', '{}', 'common', 2, 'noun', '{"daily", "routine", "food"}');

-- ============================================================
-- THEME 5: Hobbies & Free Time (25 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('spielen', 'to play', null, null, 'Die Kinder spielen im Park. - The children are playing in the park.', 'A2', 'leisure', 'Hobbies & Free Time', 'jouer', 'يلعب', null, null, '/ˈʃpiːlən/', '{"sich vergnügen", "tollen"}', '{"arbeiten"}', '{"das Spiel", "der Spieler", "der Spielplatz"}', '{"base": "spielen", "präsens": {"ich": "spiele", "du": "spielst", "er/sie/es": "spielt", "wir": "spielen", "ihr": "spielt", "sie/Sie": "spielen"}, "präteritum": {"ich": "spielte", "er/sie/es": "spielte"}, "perfekt": "gespielt"}', 'very_common', 1, 'verb', '{"leisure", "hobbies", "essential"}'),

('lesen', 'to read', null, null, 'Ich lese gerne Romane. - I like to read novels.', 'A2', 'leisure', 'Hobbies & Free Time', 'lire', 'يقرأ', null, null, '/ˈleːzən/', '{"durchlesen", "schmökern", "studieren"}', '{"schreiben"}', '{"der Leser", "die Leserin", "das Lesebuch"}', '{"base": "lesen", "präsens": {"ich": "lese", "du": "liest", "er/sie/es": "liest", "wir": "lesen", "ihr": "lest", "sie/Sie": "lesen"}, "präteritum": {"ich": "las", "er/sie/es": "las"}, "perfekt": "gelesen"}', 'very_common', 1, 'verb', '{"leisure", "hobbies", "essential"}'),

('schwimmen', 'to swim', null, null, 'Im Sommer schwimme ich im See. - In summer I swim in the lake.', 'A2', 'leisure', 'Hobbies & Free Time', 'nager', 'يسبح', null, null, '/ˈʃvɪmən/', '{"badminton", "planschen"}', '{"sinken"}', '{"der Schwimmer", "das Schwimmbad", "der Schwimmstil"}', '{"base": "schwimmen", "präsens": {"ich": "schwimme", "du": "schwimmst", "er/sie/es": "schwimmt", "wir": "schwimmen", "ihr": "schwimmt", "sie/Sie": "schwimmen"}, "präteritum": {"ich": "schwamm", "er/sie/es": "schwamm"}, "perfekt": "geschwommen"}', 'very_common', 1, 'verb', '{"leisure", "sports", "essential"}'),

('das Hobby', 'hobby', 'das', 'die Hobbys', 'Mein Hobby ist Fotografieren. - My hobby is photography.', 'A2', 'leisure', 'Hobbies & Free Time', 'le hobby', 'الهواية', null, null, '/ˈhɔbi/', '{"die Freizeitbeschäftigung", "das Steckenpferd"}', '{}', '{"der Hobbyraum", "der Hobbykoch"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "essential"}'),

('malen', 'to paint', null, null, 'Ich male gern Landschaften. - I like to paint landscapes.', 'A2', 'leisure', 'Hobbies & Free Time', 'peindre', 'يرسم بالألوان', null, null, '/ˈmaːlən/', '{"zeichnen", "anmalen", "bemalen"}', '{}', '{"der Maler", "die Malerin", "das Gemälde"}', '{"base": "malen", "präsens": {"ich": "male", "du": "malst", "er/sie/es": "malt", "wir": "malen", "ihr": "malt", "sie/Sie": "malen"}, "präteritum": {"ich": "malte", "er/sie/es": "malte"}, "perfekt": "gemalt"}', 'very_common', 1, 'verb', '{"leisure", "hobbies", "creative"}'),

('tanzen', 'to dance', null, null, 'Wir tanzen bis in die Nacht. - We dance until the night.', 'A2', 'leisure', 'Hobbies & Free Time', 'danser', 'يرقص', null, null, '/ˈtantsən/', '{"sich drehen", "hüpfen"}', '{}', '{"der Tanz", "der Tänzer", "die Tanzschule"}', '{"base": "tanzen", "präsens": {"ich": "tanze", "du": "tanzt", "er/sie/es": "tanzt", "wir": "tanzen", "ihr": "tanzt", "sie/Sie": "tanzen"}, "präteritum": {"ich": "tanzte", "er/sie/es": "tanzte"}, "perfekt": "getanzt"}', 'very_common', 1, 'verb', '{"leisure", "hobbies", "music"}'),

('singen', 'to sing', null, null, 'Ich singe gerne unter der Dusche. - I like to sing in the shower.', 'A2', 'leisure', 'Hobbies & Free Time', 'chanter', 'يغني', null, null, '/ˈzɪŋən/', '{"trällern", "vor sich hin singen"}', '{}', '{"der Sänger", "das Lied", "der Gesang"}', '{"base": "singen", "präsens": {"ich": "singe", "du": "singst", "er/sie/es": "singt", "wir": "singen", "ihr": "singt", "sie/Sie": "singen"}, "präteritum": {"ich": "sang", "er/sie/es": "sang"}, "perfekt": "gesungen"}', 'very_common', 1, 'verb', '{"leisure", "hobbies", "music"}'),

('reiten', 'to ride a horse', null, null, 'Meine Schwester reitet am Wochenende. - My sister rides horses on the weekend.', 'A2', 'leisure', 'Hobbies & Free Time', 'faire de l équitation', 'يركب الخيل', null, null, '/ˈʁaɪtən/', '{"ausreiten", "reiten gehen"}', '{}', '{"der Reiter", "das Pferd", "der Reitstall"}', '{"base": "reiten", "präsens": {"ich": "reite", "du": "reitest", "er/sie/es": "reitet", "wir": "reiten", "ihr": "reitet", "sie/Sie": "reiten"}, "präteritum": {"ich": "ritt", "er/sie/es": "ritt"}, "perfekt": "geritten"}', 'common', 2, 'verb', '{"leisure", "sports", "animals"}'),

('fotografieren', 'to photograph', null, null, 'Ich fotografiere gerne die Natur. - I like to photograph nature.', 'A2', 'leisure', 'Hobbies & Free Time', 'photographier', 'يصور', null, null, '/fotoɡʁaˈfiːʁən/', '{"knipsen", "Bilder machen", "aufnehmen"}', '{}', '{"der Fotograf", "die Fotografie", "der Fotoapparat"}', '{"base": "fotografieren", "präsens": {"ich": "fotografiere", "du": "fotografierst", "er/sie/es": "fotografiert", "wir": "fotografieren", "ihr": "fotografiert", "sie/Sie": "fotografieren"}, "präteritum": {"ich": "fotografierte", "er/sie/es": "fotografierte"}, "perfekt": "fotografiert"}', 'common', 1, 'verb', '{"leisure", "hobbies", "creative"}'),

('wandern', 'to hike', null, null, 'Wir wandern jedes Wochenende im Wald. - We hike every weekend in the forest.', 'A2', 'leisure', 'Hobbies & Free Time', 'faire de la randonnée', 'يتنزه / يمشي في الطبيعة', null, null, '/ˈvandɐn/', '{"spazieren", "marschieren"}', '{}', '{"der Wanderer", "die Wanderung", "der Wanderweg"}', '{"base": "wandern", "präsens": {"ich": "wandere", "du": "wanderst", "er/sie/es": "wandert", "wir": "wandern", "ihr": "wandert", "sie/Sie": "wandern"}, "präteritum": {"ich": "wanderte", "er/sie/es": "wanderte"}, "perfekt": "gewandert"}', 'common', 1, 'verb', '{"leisure", "hobbies", "nature"}'),

('das Konzert', 'concert', 'das', 'die Konzerte', 'Das Konzert war fantastisch. - The concert was fantastic.', 'A2', 'leisure', 'Hobbies & Free Time', 'le concert', 'الحفل الموسيقي', null, null, '/kɔnˈtsɛʁt/', '{"die Musikveranstaltung", "das Livekonzert"}', '{}', '{"der Konzertbesucher", "die Konzertkarte", "das Konzerthaus"}', '{}', 'common', 1, 'noun', '{"leisure", "hobbies", "music"}'),

('die Musik', 'music', 'die', 'die Musiken', 'Ich höre gerne klassische Musik. - I like to listen to classical music.', 'A2', 'leisure', 'Hobbies & Free Time', 'la musique', 'الموسيقى', null, null, '/muˈziːk/', '{"die Melodie", "die Klänge"}', '{}', '{"musikalisch", "der Musiker", "die Musikrichtung"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "essential"}'),

('das Instrument', 'instrument', 'das', 'die Instrumente', 'Welches Instrument spielst du? - Which instrument do you play?', 'A2', 'leisure', 'Hobbies & Free Time', 'l instrument', 'الآلة الموسيقية', null, null, '/ɪnstʁuˈmɛnt/', '{}', '{}', '{"der Instrumentalist", "das Musikinstrument"}', '{}', 'common', 1, 'noun', '{"leisure", "hobbies", "music"}'),

('das Fahrrad', 'bicycle', 'das', 'die Fahrräder', 'Ich fahre mit dem Fahrrad zur Arbeit. - I ride my bicycle to work.', 'A2', 'leisure', 'Hobbies & Free Time', 'le vélo', 'الدراجة', null, null, '/ˈfaːɐʁaːt/', '{"das Rad", "das Bike", "der Drahtesel"}', '{}', '{"der Fahrradfahrer", "der Fahrradweg", "der Fahrradladen"}', '{}', 'very_common', 1, 'noun', '{"leisure", "sports", "transportation"}'),

('Rad fahren', 'to ride a bike', null, null, 'Ich fahre jeden Tag Rad. - I ride my bike every day.', 'A2', 'leisure', 'Hobbies & Free Time', 'faire du vélo', 'يركب الدراجة', null, null, '/ʁaːt ˈfaːʁən/', '{"Fahrrad fahren", "radeln"}', '{}', '{"das Rad", "der Radfahrer", "die Radtour"}', '{"base": "Rad fahren", "präsens": {"ich": "fahre Rad", "du": "fährst Rad", "er/sie/es": "fährt Rad", "wir": "fahren Rad", "ihr": "fahrt Rad", "sie/Sie": "fahren Rad"}, "präteritum": {"ich": "fuhr Rad", "er/sie/es": "fuhr Rad"}, "perfekt": "Rad gefahren"}', 'very_common', 1, 'verb', '{"leisure", "sports", "transportation"}'),

('das Internet', 'internet', 'das', null, 'Ich surfe jeden Tag im Internet. - I surf the internet every day.', 'A2', 'leisure', 'Hobbies & Free Time', 'l internet', 'الإنترنت', null, null, '/ˈɪntɐnɛt/', '{"das Netz", "das World Wide Web"}', '{}', '{"der Internetzugang", "die Internetverbindung", "der Internetanschluss"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "technology"}'),

('der Film', 'movie', 'der', 'die Filme', 'Der Film hat mir sehr gut gefallen. - I really liked the movie.', 'A2', 'leisure', 'Hobbies & Free Time', 'le film', 'الفيلم', null, null, '/fɪlm/', '{"der Streifen", "der Kinofilm"}', '{}', '{"der Filmtitel", "der Filmstar", "das Filmfest"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "entertainment"}'),

('das Kino', 'cinema', 'das', 'die Kinos', 'Gehen wir heute ins Kino? - Shall we go to the cinema today?', 'A2', 'leisure', 'Hobbies & Free Time', 'le cinéma', 'السينما', null, null, '/ˈkiːno/', '{"das Filmtheater", "der Kinosaal"}', '{}', '{"der Kinobesucher", "die Kinokarte", "der Kinofilm"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "entertainment"}'),

('der Sport', 'sports', 'der', 'die Sportarten', 'Sport macht fit und gesund. - Sports keep you fit and healthy.', 'A2', 'leisure', 'Hobbies & Free Time', 'le sport', 'الرياضة', null, null, '/ʃpɔʁt/', '{"die Bewegung", "die Leibesübung"}', '{}', '{"sportlich", "der Sportler", "die Sportart"}', '{}', 'very_common', 1, 'noun', '{"leisure", "sports", "essential"}'),

('das Spiel', 'game', 'das', 'die Spiele', 'Das Spiel war sehr spannend. - The game was very exciting.', 'A2', 'leisure', 'Hobbies & Free Time', 'le jeu', 'اللعبة', null, null, '/ʃpiːl/', '{"der Wettkampf", "die Partie"}', '{}', '{"spielen", "der Spieler", "der Spielplatz"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "essential"}'),

('der Fußball', 'soccer', 'der', 'die Fußbälle', 'Fußball ist der beliebteste Sport in Deutschland. - Soccer is the most popular sport in Germany.', 'A2', 'leisure', 'Hobbies & Free Time', 'le football', 'كرة القدم', null, null, '/ˈfuːsbal/', '{"der Fußballspiel", "der Kicker"}', '{}', '{"der Fußballspieler", "das Fußballstadion", "die Fußballmannschaft"}', '{}', 'very_common', 1, 'noun', '{"leisure", "sports", "essential"}'),

('das Museum', 'museum', 'das', 'die Museen', 'Das Museum hat am Montag geschlossen. - The museum is closed on Mondays.', 'A2', 'leisure', 'Hobbies & Free Time', 'le musée', 'المتحف', null, null, '/muˈzeːʊm/', '{"die Ausstellung", "die Galerie"}', '{}', '{"der Museumsbesucher", "das Museumstück", "der Museumsführer"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "culture"}'),

('das Theater', 'theatre', 'das', 'die Theater', 'Heute Abend gehen wir ins Theater. - Tonight we are going to the theatre.', 'A2', 'leisure', 'Hobbies & Free Time', 'le théâtre', 'المسرح', null, null, '/teˈaːtɐ/', '{"die Bühne", "das Schauspielhaus"}', '{}', '{"der Theaterbesuch", "die Theaterkarte", "der Schauspieler"}', '{}', 'very_common', 1, 'noun', '{"leisure", "hobbies", "culture"}'),

('basteln', 'to do handicrafts', null, null, 'Die Kinder basteln gerne zu Weihnachten. - The children like to do handicrafts at Christmas.', 'A2', 'leisure', 'Hobbies & Free Time', 'bricoler', 'يعمل أشغالاً يدوية', null, null, '/ˈbastəln/', '{"werken", "handarbeiten"}', '{}', '{"die Bastelei", "das Basteln", "der Bastelladen"}', '{"base": "basteln", "präsens": {"ich": "bastle", "du": "bastelst", "er/sie/es": "bastelt", "wir": "basteln", "ihr": "bastelt", "sie/Sie": "basteln"}, "präteritum": {"ich": "bastelte", "er/sie/es": "bastelte"}, "perfekt": "gebastelt"}', 'common', 2, 'verb', '{"leisure", "hobbies", "creative"}'),

('zeichnen', 'to draw', null, null, 'Ich zeichne gerne mit Bleistift. - I like to draw with a pencil.', 'A2', 'leisure', 'Hobbies & Free Time', 'dessiner', 'يرسم بالقلم الرصاص', null, null, '/ˈtsaɪçnən/', '{"skizzieren", "malen"}', '{}', '{"die Zeichnung", "der Zeichner", "der Zeichenblock"}', '{"base": "zeichnen", "präsens": {"ich": "zeichne", "du": "zeichnest", "er/sie/es": "zeichnet", "wir": "zeichnen", "ihr": "zeichnet", "sie/Sie": "zeichnen"}, "präteritum": {"ich": "zeichnete", "er/sie/es": "zeichnete"}, "perfekt": "gezeichnet"}', 'common', 1, 'verb', '{"leisure", "hobbies", "creative"}');

-- ============================================================
-- THEME 6: Health & Doctor (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Arzt', 'doctor', 'der', 'die Ärzte', 'Ich muss zum Arzt gehen. - I have to go to the doctor.', 'A2', 'health', 'Health & Doctor', 'le médecin', 'الطبيب', null, null, '/aːɐtst/', '{"der Mediziner", "der Doktor"}', '{}', '{"die Ärztin", "der Arztbesuch", "die Arztpraxis"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "essential"}'),

('die Apotheke', 'pharmacy', 'die', 'die Apotheken', 'Die Apotheke hat bis achtzehn Uhr geöffnet. - The pharmacy is open until six pm.', 'A2', 'health', 'Health & Doctor', 'la pharmacie', 'الصيدلية', null, null, '/apoˈteːkə/', '{"die Pharmazie", "die Drogerie"}', '{}', '{"der Apotheker", "das Apothekenglas", "der Apothekennotdienst"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "essential"}'),

('krank', 'sick', null, null, 'Ich bin krank und muss im Bett bleiben. - I am sick and have to stay in bed.', 'A2', 'health', 'Health & Doctor', 'malade', 'مريض', null, null, '/kʁaŋk/', '{"erkrankt", "unwohl", "leidend"}', '{"gesund", "fit", "wohlauf"}', '{"die Krankheit", "der Kranke", "das Krankenhaus"}', '{}', 'very_common', 1, 'adjective', '{"health", "doctor", "essential"}'),

('die Medizin', 'medicine', 'die', 'die Medizinen', 'Die Medizin hat mir schnell geholfen. - The medicine helped me quickly.', 'A2', 'health', 'Health & Doctor', 'le médicament', 'الدواء', null, null, '/mediˈtsiːn/', '{"das Medikament", "das Arzneimittel"}', '{}', '{"medizinisch", "der Mediziner", "die Medikamentenpackung"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "essential"}'),

('das Krankenhaus', 'hospital', 'das', 'die Krankenhäuser', 'Er wurde ins Krankenhaus gebracht. - He was taken to the hospital.', 'A2', 'health', 'Health & Doctor', 'l hôpital', 'المستشفى', null, null, '/ˈkʁaŋkənˌhaʊs/', '{"die Klinik", "das Spital"}', '{}', '{"krank", "das Haus", "der Krankenhausaufenthalt"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "essential"}'),

('der Schmerz', 'pain', 'der', 'die Schmerzen', 'Ich habe starke Schmerzen im Rücken. - I have severe pain in my back.', 'A2', 'health', 'Health & Doctor', 'la douleur', 'الألم', null, null, '/ʃmɛʁts/', '{"das Weh", "die Pein", "das Leiden"}', '{"die Wohltat", "das Wohlbehagen"}', '{"schmerzen", "schmerzhaft", "der Kopfschmerz"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "essential"}'),

('das Fieber', 'fever', 'das', null, 'Ich habe Fieber und muss im Bett bleiben. - I have a fever and have to stay in bed.', 'A2', 'health', 'Health & Doctor', 'la fièvre', 'الحمى', null, null, '/ˈfiːbɐ/', '{"die Temperatur", "das Fieberkrankheit"}', '{}', '{"fiebrig", "die Fiebertablette", "fieberhaft"}', '{}', 'common', 1, 'noun', '{"health", "doctor"}'),

('die Tablette', 'tablet', 'die', 'die Tabletten', 'Der Arzt hat mir Tabletten verschrieben. - The doctor prescribed me tablets.', 'A2', 'health', 'Health & Doctor', 'le comprimé', 'القرص / الحبة', null, null, '/taˈblɛtə/', '{"die Pille", "das Medikament"}', '{}', '{"die Tablettenpackung", "die Schmerztablette"}', '{}', 'common', 1, 'noun', '{"health", "doctor", "medicine"}'),

('der Termin', 'appointment', 'der', 'die Termine', 'Ich habe einen Termin beim Arzt. - I have an appointment with the doctor.', 'A2', 'health', 'Health & Doctor', 'le rendez-vous', 'الموعد', null, null, '/tɛʁˈmiːn/', '{"die Verabredung", "der Zeitpunkt"}', '{}', '{"terminieren", "der Arzttermin", "der Terminkalender"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "daily"}'),

('die Krankenschwester', 'nurse', 'die', 'die Krankenschwestern', 'Die Krankenschwester kümmert sich um die Patienten. - The nurse takes care of the patients.', 'A2', 'health', 'Health & Doctor', 'l infirmière', 'الممرضة', null, null, '/ˈkʁaŋkənˌʃvɛstɐ/', '{"die Pflegerin", "die Schwester"}', '{}', '{"der Krankenpfleger", "das Krankenhaus", "die Pflege"}', '{}', 'common', 2, 'noun', '{"health", "doctor"}'),

('der Patient', 'patient', 'der', 'die Patienten', 'Der Patient wartet auf den Arzt. - The patient is waiting for the doctor.', 'A2', 'health', 'Health & Doctor', 'le patient', 'المريض', null, null, '/paˈtsi̯ɛnt/', '{"der Kranke", "der Behandelte"}', '{"der Arzt", "der Gesunde"}', '{"die Patientin", "die Patientenakte", "das Patientenzimmer"}', '{}', 'common', 1, 'noun', '{"health", "doctor"}'),

('gesund', 'healthy', null, null, 'Eine gesunde Ernährung ist wichtig. - A healthy diet is important.', 'A2', 'health', 'Health & Doctor', 'en bonne santé', 'صحي', null, null, '/ɡəˈzʊnt/', '{"fit", "wohlauf", "kerngesund"}', '{"krank", "angeschlagen", "unwohl"}', '{"die Gesundheit", "gesundheitlich", "der Gesundheitscheck"}', '{}', 'very_common', 1, 'adjective', '{"health", "essential"}'),

('die Untersuchung', 'examination', 'die', 'die Untersuchungen', 'Die ärztliche Untersuchung dauert etwa dreißig Minuten. - The medical examination takes about thirty minutes.', 'A2', 'health', 'Health & Doctor', 'l examen', 'الفحص الطبي', null, null, '/ʊntɐˈzuːχʊŋ/', '{"die Kontrolle", "der Check", "die Überprüfung"}', '{}', '{"untersuchen", "der Untersuchungsraum", "die Blutuntersuchung"}', '{}', 'common', 2, 'noun', '{"health", "doctor"}'),

('verschreiben', 'to prescribe', null, null, 'Der Arzt hat mir ein Rezept verschrieben. - The doctor prescribed me a prescription.', 'A2', 'health', 'Health & Doctor', 'prescrire', 'يصف دواء', null, null, '/fɛɐˈʃʁaɪbən/', '{"verordnen", "ausschreiben"}', '{}', '{"das Rezept", "die Verschreibung", "der Verschreibungsbeleg"}', '{"base": "verschreiben", "präsens": {"ich": "verschreibe", "du": "verschreibst", "er/sie/es": "verschreibt", "wir": "verschreiben", "ihr": "verschreibt", "sie/Sie": "verschreiben"}, "präteritum": {"ich": "verschrieb", "er/sie/es": "verschrieb"}, "perfekt": "verschrieben"}', 'common', 2, 'verb', '{"health", "doctor"}'),

('die Versicherung', 'insurance', 'die', 'die Versicherungen', 'Die Krankenversicherung bezahlt die Behandlung. - The health insurance pays for the treatment.', 'A2', 'health', 'Health & Doctor', 'l assurance', 'التأمين', null, null, '/fɛɐˈzɪçəʁʊŋ/', '{"die Assekuranz", "der Versicherungsschutz"}', '{}', '{"versichern", "die Krankenversicherung", "der Versicherungsnehmer"}', '{}', 'very_common', 1, 'noun', '{"health", "doctor", "business"}'),

('die Operation', 'surgery', 'die', 'die Operationen', 'Die Operation war erfolgreich. - The surgery was successful.', 'A2', 'health', 'Health & Doctor', 'l opération', 'العملية الجراحية', null, null, '/opəʁaˈtsi̯oːn/', '{"der Eingriff", "der chirurgische Eingriff"}', '{}', '{"operieren", "der Operationssaal", "der Operationstisch"}', '{}', 'common', 2, 'noun', '{"health", "doctor"}'),

('der Husten', 'cough', 'der', null, 'Ich habe Husten und Schnupfen. - I have a cough and a runny nose.', 'A2', 'health', 'Health & Doctor', 'la toux', 'السعال', null, null, '/ˈhuːstən/', '{"der Hustenreiz", "der Hustenanfall"}', '{}', '{"husten", "der Hustensaft", "der Hustenbonbon"}', '{}', 'common', 1, 'noun', '{"health", "doctor"}'),

('der Schnupfen', 'common cold', 'der', null, 'Bei Schnupfen hilft viel trinken. - Drinking a lot helps with a cold.', 'A2', 'health', 'Health & Doctor', 'le rhume', 'الزكام', null, null, '/ˈʃnʊpfən/', '{"der Infekt", "der Nasenkatarrh"}', '{}', '{"schnupfen", "der Schnupfenspray", "das Taschentuch"}', '{}', 'common', 1, 'noun', '{"health", "doctor"}'),

('der Notfall', 'emergency', 'der', 'die Notfälle', 'Im Notfall rufen Sie den Krankenwagen. - In an emergency call the ambulance.', 'A2', 'health', 'Health & Doctor', 'l urgence', 'الطوارئ', null, null, '/ˈnoːtfal/', '{"der Notruf", "der Ernstfall"}', '{}', '{"die Not", "der Fall", "der Notarzt"}', '{}', 'common', 2, 'noun', '{"health", "doctor", "essential"}'),

('verletzt', 'injured', null, null, 'Er ist beim Sport verletzt worden. - He was injured during sports.', 'A2', 'health', 'Health & Doctor', 'blessé', 'مصاب', null, null, '/fɛɐˈlɛtst/', '{"verwundet", "verletzter Person"}', '{"unverletzt", "gesund"}', '{"die Verletzung", "verletzen", "der Verletzte"}', '{}', 'common', 1, 'adjective', '{"health", "doctor"}');

-- ============================================================
-- THEME 7: Work & Professions (25 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Beruf', 'profession', 'der', 'die Berufe', 'Was ist dein Beruf? - What is your profession?', 'A2', 'work', 'Work & Professions', 'le métier', 'المهنة', null, null, '/bəˈʁuːf/', '{"der Job", "die Arbeitsstelle", "die Tätigkeit"}', '{}', '{"beruflich", "die Berufswahl", "das Berufsleben"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('die Arbeit', 'work', 'die', 'die Arbeiten', 'Die Arbeit macht mir viel Spaß. - I enjoy my work a lot.', 'A2', 'work', 'Work & Professions', 'le travail', 'العمل', null, null, '/ˈaʁbaɪt/', '{"der Job", "die Beschäftigung", "die Tätigkeit"}', '{"die Freizeit", "der Müßiggang"}', '{"arbeiten", "der Arbeiter", "der Arbeitstag"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('der Kollege', 'colleague', 'der', 'die Kollegen', 'Mein Kollege hilft mir bei dem Projekt. - My colleague helps me with the project.', 'A2', 'work', 'Work & Professions', 'le collègue', 'زميل العمل', null, null, '/kɔˈleːɡə/', '{"der Mitarbeiter", "der Arbeitskollege", "der Berufskollege"}', '{}', '{"die Kollegin", "das Kollegium", "kollegial"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('die Firma', 'company', 'die', 'die Firmen', 'Die Firma hat zweihundert Mitarbeiter. - The company has two hundred employees.', 'A2', 'work', 'Work & Professions', 'l entreprise', 'الشركة', null, null, '/ˈfɪʁma/', '{"das Unternehmen", "der Betrieb", "die Gesellschaft"}', '{}', '{"der Firmenchef", "die Firmengründung", "der Firmensitz"}', '{}', 'very_common', 1, 'noun', '{"work", "business", "essential"}'),

('der Chef', 'boss', 'der', 'die Chefs', 'Der Chef ist heute nicht im Büro. - The boss is not in the office today.', 'A2', 'work', 'Work & Professions', 'le chef', 'المدير / الرئيس', null, null, '/ʃɛf/', '{"der Vorgesetzte", "der Leiter", "der Direktor"}', '{"der Angestellte", "der Mitarbeiter"}', '{"die Chefin", "der Chefetage", "der Chefarzt"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('das Büro', 'office', 'das', 'die Büros', 'Mein Büro ist im dritten Stock. - My office is on the third floor.', 'A2', 'work', 'Work & Professions', 'le bureau', 'المكتب', null, null, '/byˈʁoː/', '{"der Arbeitsraum", "der Office"}', '{}', '{"die Büroarbeit", "der Bürojob", "das Bürogebäude"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('der Angestellte', 'employee', 'der', 'die Angestellten', 'Er ist Angestellter in einer Bank. - He is an employee at a bank.', 'A2', 'work', 'Work & Professions', 'l employé', 'الموظف', null, null, '/ˈanɡəʃtɛltə/', '{"der Mitarbeiter", "der Arbeitnehmer", "der Beschäftigte"}', '{"der Arbeitgeber", "der Chef", "der Selbstständige"}', '{"anstellen", "die Anstellung", "das Angestelltenverhältnis"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('der Arbeitgeber', 'employer', 'der', 'die Arbeitgeber', 'Der Arbeitgeber zahlt das Gehalt. - The employer pays the salary.', 'A2', 'work', 'Work & Professions', 'l employeur', 'صاحب العمل', null, null, '/ˈaʁbaɪtˌɡeːbɐ/', '{"der Chef", "der Dienstherr"}', '{"der Arbeitnehmer", "der Angestellte"}', '{"arbeiten", "geben", "die Arbeitgeberin"}', '{}', 'common', 2, 'noun', '{"work", "professions", "business"}'),

('der Arbeitnehmer', 'employee', 'der', 'die Arbeitnehmer', 'Der Arbeitnehmer hat Anspruch auf Urlaub. - The employee is entitled to vacation.', 'A2', 'work', 'Work & Professions', 'le salarié', 'الموظف / الأجير', null, null, '/ˈaʁbaɪtˌneːmɐ/', '{"der Angestellte", "der Beschäftigte"}', '{"der Arbeitgeber"}', '{"arbeiten", "nehmen", "das Arbeitsverhältnis"}', '{}', 'common', 2, 'noun', '{"work", "professions", "business"}'),

('das Gehalt', 'salary', 'das', 'die Gehälter', 'Das Gehalt wird am Ende des Monats überwiesen. - The salary is transferred at the end of the month.', 'A2', 'work', 'Work & Professions', 'le salaire', 'الراتب', null, null, '/ɡəˈhalt/', '{"der Lohn", "das Einkommen", "die Bezahlung"}', '{}', '{"die Gehaltserhöhung", "die Gehaltsabrechnung", "der Gehaltszettel"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "money"}'),

('die Stelle', 'position', 'die', 'die Stellen', 'Er hat eine neue Stelle gefunden. - He found a new job.', 'A2', 'work', 'Work & Professions', 'le poste', 'الوظيفة', null, null, '/ˈʃtɛlə/', '{"der Job", "die Position", "der Arbeitsplatz"}', '{}', '{"stellen", "die Arbeitsstelle", "die Stellenanzeige"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('die Bewerbung', 'application', 'die', 'die Bewerbungen', 'Ich habe eine Bewerbung geschrieben. - I wrote an application.', 'A2', 'work', 'Work & Professions', 'la candidature', 'طلب التوظيف', null, null, '/bəˈvɛʁbʊŋ/', '{"die Application", "die Jobapplication"}', '{}', '{"bewerben", "der Bewerber", "der Bewerbungsbrief"}', '{}', 'common', 2, 'noun', '{"work", "professions", "business"}'),

('das Vorstellungsgespräch', 'job interview', 'das', 'die Vorstellungsgespräche', 'Morgen habe ich ein Vorstellungsgespräch. - Tomorrow I have a job interview.', 'A2', 'work', 'Work & Professions', 'l entretien d embauche', 'مقابلة العمل', null, null, '/ˈfoːɐʃtɛlʊŋsɡəˌʃpʁɛːç/', '{"das Bewerbungsgespräch", "das Interview"}', '{}', '{"sich vorstellen", "das Gespräch", "der Vorstellungstermin"}', '{}', 'common', 2, 'noun', '{"work", "professions", "business"}'),

('die Erfahrung', 'experience', 'die', 'die Erfahrungen', 'Ich habe viel Erfahrung in diesem Bereich. - I have a lot of experience in this area.', 'A2', 'work', 'Work & Professions', 'l expérience', 'الخبرة', null, null, '/ɛɐˈfaːʁʊŋ/', '{"die Praxis", "das Know-how"}', '{}', '{"erfahren", "erfahrungsgemäß", "die Erfahrungswelt"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "essential"}'),

('der Praktikant', 'intern', 'der', 'die Praktikanten', 'Der Praktikant lernt die Arbeit kennen. - The intern gets to know the work.', 'A2', 'work', 'Work & Professions', 'le stagiaire', 'المتدرب', null, null, '/pʁaktiˈkant/', '{"der Auszubildende", "der Volontär"}', '{}', '{"das Praktikum", "die Praktikantin", "das Praktikumszeugnis"}', '{}', 'common', 2, 'noun', '{"work", "professions"}'),

('die Ausbildung', 'training', 'die', 'die Ausbildungen', 'Er macht eine Ausbildung zum Mechatroniker. - He is doing vocational training as a mechatronics engineer.', 'A2', 'work', 'Work & Professions', 'la formation', 'التدريب المهني', null, null, '/ˈaʊsbɪldʊŋ/', '{"die Lehre", "die Schulung", "die Weiterbildung"}', '{}', '{"ausbilden", "der Ausbilder", "der Auszubildende"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "education"}'),

('die Kündigung', 'termination', 'die', 'die Kündigungen', 'Er hat seine Kündigung eingereicht. - He submitted his resignation.', 'A2', 'work', 'Work & Professions', 'le licenciement', 'الإنهاء / الاستقالة', null, null, '/ˈkʏndɪɡʊŋ/', '{"die Entlassung", "der Rauswurf"}', '{"die Einstellung", "der Arbeitsvertrag"}', '{"kündigen", "der Kündigungsschutz", "die Kündigungsfrist"}', '{}', 'common', 2, 'noun', '{"work", "professions", "business"}'),

('die Besprechung', 'meeting', 'die', 'die Besprechungen', 'Die Besprechung beginnt um zehn Uhr. - The meeting starts at ten o clock.', 'A2', 'work', 'Work & Professions', 'la réunion', 'الاجتماع', null, null, '/bəˈʃpʁɛçʊŋ/', '{"die Sitzung", "das Meeting", "die Konferenz"}', '{}', '{"besprechen", "der Besprechungsraum", "der Besprechungspunkt"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "business"}'),

('der Vertrag', 'contract', 'der', 'die Verträge', 'Der Vertrag läuft zwei Jahre. - The contract runs for two years.', 'A2', 'work', 'Work & Professions', 'le contrat', 'العقد', null, null, '/fɛɐˈtʁaːk/', '{"die Vereinbarung", "der Kontrakt"}', '{}', '{"vertraglich", "der Arbeitsvertrag", "der Mietvertrag"}', '{}', 'very_common', 1, 'noun', '{"work", "professions", "business"}'),

('die Karriere', 'career', 'die', 'die Karrieren', 'Sie macht eine erfolgreiche Karriere. - She is having a successful career.', 'A2', 'work', 'Work & Professions', 'la carrière', 'المسيرة المهنية', null, null, '/kaˈʁi̯eːʁə/', '{"der Werdegang", "der Berufsweg", "die Laufbahn"}', '{}', '{"karrieristisch", "der Karrieremann", "der Karrieresprung"}', '{}', 'common', 2, 'noun', '{"work", "professions"}'),

('der Lohn', 'wage', 'der', 'die Löhne', 'Der Lohn wird stündlich bezahlt. - The wage is paid hourly.', 'A2', 'work', 'Work & Professions', 'le salaire', 'الأجر', null, null, '/loːn/', '{"das Gehalt", "der Verdienst", "der Arbeitslohn"}', '{}', '{"lohnen", "die Lohnerhöhung", "die Lohnsteuer"}', '{}', 'common', 1, 'noun', '{"work", "professions", "money"}'),

('der Urlaubstag', 'vacation day', 'der', 'die Urlaubstage', 'Ich habe noch zehn Urlaubstage übrig. - I still have ten vacation days left.', 'A2', 'work', 'Work & Professions', 'le jour de congé', 'يوم الإجازة', null, null, '/ˈuːɐlaʊpsˌtaːk/', '{"der Ferientag", "der freie Tag"}', '{"der Arbeitstag"}', '{"der Urlaub", "der Tag", "Urlaub nehmen"}', '{}', 'common', 2, 'noun', '{"work", "professions", "daily"}'),

('der Azubi', 'apprentice', 'der', 'die Azubis', 'Der Azubi lernt den Beruf von Grund auf. - The apprentice learns the profession from scratch.', 'A2', 'work', 'Work & Professions', 'l apprenti', 'المتدرب المهني', null, null, '/ˈaːtsuːbi/', '{"der Auszubildende", "der Lehrling", "der Praktikant"}', '{}', '{"die Ausbildung", "der Ausbildungsplatz", "das Ausbildungsjahr"}', '{}', 'common', 2, 'noun', '{"work", "professions"}'),

('die Überstunde', 'overtime', 'die', 'die Überstunden', 'Diese Woche habe ich drei Überstunden gemacht. - This week I worked three hours of overtime.', 'A2', 'work', 'Work & Professions', 'l heure supplémentaire', 'ساعة إضافية', null, null, '/ˈyːbɐʃtʊndə/', '{}', '{}', '{"über", "die Stunde", "der Überstundenzuschlag"}', '{}', 'common', 2, 'noun', '{"work", "professions"}'),

('die Abteilung', 'department', 'die', 'die Abteilungen', 'Er arbeitet in der Marketingabteilung. - He works in the marketing department.', 'A2', 'work', 'Work & Professions', 'le département', 'القسم', null, null, '/apˈtaɪlʊŋ/', '{"der Bereich", "die Sektion", "die Sparte"}', '{}', '{"abteilen", "der Abteilungsleiter", "die Abteilungsversammlung"}', '{}', 'common', 2, 'noun', '{"work", "professions"}');

-- ============================================================
-- THEME 8: Home & Living (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('wohnen', 'to live', null, null, 'Ich wohne in einer kleinen Wohnung. - I live in a small apartment.', 'A2', 'home', 'Home & Living', 'habiter', 'يسكن', null, null, '/ˈvoːnən/', '{"leben", "hausen", "residieren"}', '{}', '{"die Wohnung", "der Wohnort", "der Wohnraum"}', '{"base": "wohnen", "präsens": {"ich": "wohne", "du": "wohnst", "er/sie/es": "wohnt", "wir": "wohnen", "ihr": "wohnt", "sie/Sie": "wohnen"}, "präteritum": {"ich": "wohnte", "er/sie/es": "wohnte"}, "perfekt": "gewohnt"}', 'very_common', 1, 'verb', '{"home", "daily", "essential"}'),

('die Wohnung', 'apartment', 'die', 'die Wohnungen', 'Die Wohnung hat drei Zimmer. - The apartment has three rooms.', 'A2', 'home', 'Home & Living', 'l appartement', 'الشقة', null, null, '/ˈvɔnʊŋ/', '{"die Wohnungseinheit", "die Bleibe"}', '{}', '{"wohnen", "der Wohnungsschlüssel", "die Wohnungstür"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('der Mieter', 'tenant', 'der', 'die Mieter', 'Der Mieter zahlt die Miete pünktlich. - The tenant pays the rent on time.', 'A2', 'home', 'Home & Living', 'le locataire', 'المستأجر', null, null, '/ˈmiːtɐ/', '{"der Bewohner", "der Wohnungsmieter"}', '{"der Vermieter", "der Eigentümer"}', '{"mieten", "die Miete", "der Mietvertrag"}', '{}', 'common', 1, 'noun', '{"home", "living"}'),

('die Miete', 'rent', 'die', 'die Mieten', 'Die Miete ist am Ersten des Monats fällig. - The rent is due on the first of the month.', 'A2', 'home', 'Home & Living', 'le loyer', 'الإيجار', null, null, '/ˈmiːtə/', '{"der Mietzins", "die Mietzahlung"}', '{}', '{"mieten", "der Mieter", "der Mietvertrag"}', '{}', 'very_common', 1, 'noun', '{"home", "living", "money"}'),

('das Zimmer', 'room', 'das', 'die Zimmer', 'Mein Zimmer ist sehr gemütlich. - My room is very cozy.', 'A2', 'home', 'Home & Living', 'la chambre', 'الغرفة', null, null, '/ˈtsɪmɐ/', '{"der Raum", "das Gemach"}', '{}', '{"das Wohnzimmer", "das Schlafzimmer", "der Zimmerschlüssel"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('die Küche', 'kitchen', 'die', 'die Küchen', 'In der Küche bereite ich das Essen zu. - In the kitchen I prepare the food.', 'A2', 'home', 'Home & Living', 'la cuisine', 'المطبخ', null, null, '/ˈkʏçə/', '{}', '{}', '{"der Küchenschrank", "der Küchentisch", "die Küchenzeile"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('das Bad', 'bathroom', 'das', 'die Bäder', 'Das Bad ist frisch renoviert. - The bathroom has been recently renovated.', 'A2', 'home', 'Home & Living', 'la salle de bain', 'الحمام', null, null, '/baːt/', '{"das Badezimmer", "das WC"}', '{}', '{"baden", "der Bademantel", "die Badewanne"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('das Schlafzimmer', 'bedroom', 'das', 'die Schlafzimmer', 'Das Schlafzimmer ist sehr ruhig. - The bedroom is very quiet.', 'A2', 'home', 'Home & Living', 'la chambre à coucher', 'غرفة النوم', null, null, '/ˈʃlaːftsɪmɐ/', '{}', '{}', '{"schlafen", "das Zimmer", "der Schlaf"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('das Wohnzimmer', 'living room', 'das', 'die Wohnzimmer', 'Im Wohnzimmer steht ein großes Sofa. - In the living room there is a large sofa.', 'A2', 'home', 'Home & Living', 'le salon', 'غرفة المعيشة', null, null, '/ˈvoːntsɪmɐ/', '{}', '{}', '{"wohnen", "das Zimmer", "die Wohnung"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('der Vermieter', 'landlord', 'der', 'die Vermieter', 'Der Vermieter ist sehr freundlich. - The landlord is very friendly.', 'A2', 'home', 'Home & Living', 'le propriétaire bailleur', 'المؤجر / صاحب المنزل', null, null, '/fɛɐˈmiːtɐ/', '{"der Eigentümer", "der Hausbesitzer"}', '{"der Mieter"}', '{"vermieten", "die Vermietung", "der Mietvertrag"}', '{}', 'common', 2, 'noun', '{"home", "living"}'),

('der Umzug', 'move', 'der', 'die Umzüge', 'Der Umzug in die neue Wohnung war anstrengend. - The move to the new apartment was exhausting.', 'A2', 'home', 'Home & Living', 'le déménagement', 'الانتقال', null, null, '/ˈʊmtsuːk/', '{"der Wohnungswechsel", "der Transfer"}', '{}', '{"umziehen", "der Umzugskarton", "der Umzugswagen"}', '{}', 'common', 2, 'noun', '{"home", "living"}'),

('die Adresse', 'address', 'die', 'die Adressen', 'Kannst du mir deine Adresse geben? - Can you give me your address?', 'A2', 'home', 'Home & Living', 'l adresse', 'العنوان', null, null, '/aˈdʁɛsə/', '{"die Anschrift", "der Wohnsitz"}', '{}', '{"adressieren", "der Adressat", "das Adressbuch"}', '{}', 'very_common', 1, 'noun', '{"home", "daily", "essential"}'),

('die Nachbarin', 'neighbor (female)', 'die', 'die Nachbarinnen', 'Meine Nachbarin ist sehr hilfsbereit. - My neighbor is very helpful.', 'A2', 'home', 'Home & Living', 'la voisine', 'الجارة', null, null, '/ˈnaxbaːʁɪn/', '{"die Anwohnerin"}', '{}', '{"der Nachbar", "die Nachbarschaft", "nachbarlich"}', '{}', 'common', 1, 'noun', '{"home", "living"}'),

('die Heizung', 'heating', 'die', 'die Heizungen', 'Im Winter muss die Heizung funktionieren. - In winter the heating must work.', 'A2', 'home', 'Home & Living', 'le chauffage', 'التدفئة', null, null, '/ˈhaɪtsʊŋ/', '{"die Wärme", "die Zentralheizung"}', '{}', '{"heizen", "der Heizkörper", "die Heizperiode"}', '{}', 'common', 1, 'noun', '{"home", "living"}'),

('die Nebenkosten', 'utility costs', 'die', null, 'Die Nebenkosten sind in der Miete enthalten. - The utility costs are included in the rent.', 'A2', 'home', 'Home & Living', 'les charges', 'تكاليف المرافق', null, null, '/ˈneːbənˌkɔstən/', '{"die Betriebskosten", "die Zusatzkosten"}', '{}', '{"neben", "die Kosten", "die Nebenkostenabrechnung"}', '{}', 'common', 2, 'noun', '{"home", "living", "money"}'),

('die Kaution', 'security deposit', 'die', 'die Kautionen', 'Die Kaution beträgt drei Kaltmieten. - The security deposit is three months cold rent.', 'A2', 'home', 'Home & Living', 'la caution', 'وديعة التأمين', null, null, '/kaʊˈtsi̯oːn/', '{"die Sicherheit", "die Sicherheitsleistung"}', '{}', '{"kautionieren"}', '{}', 'common', 2, 'noun', '{"home", "living", "money"}'),

('der Hausflur', 'hallway', 'der', 'die Hausflure', 'Der Hausflur riecht nach frischer Farbe. - The hallway smells of fresh paint.', 'A2', 'home', 'Home & Living', 'le couloir', 'الردهة / الممر', null, null, '/ˈhaʊsfluːɐ/', '{"der Flur", "der Korridor", "der Eingangsbereich"}', '{}', '{"das Haus", "der Flur", "die Hausflurbeleuchtung"}', '{}', 'common', 2, 'noun', '{"home", "living"}'),

('der Stock', 'floor / storey', 'der', 'die Stockwerke', 'Wir wohnen im dritten Stock. - We live on the third floor.', 'A2', 'home', 'Home & Living', 'l étage', 'الطابق', null, null, '/ʃtɔk/', '{"das Stockwerk", "die Etage", "der Geschoss"}', '{}', '{"der Erdgeschoss", "der Stockwerk", "der Oberstock"}', '{}', 'common', 1, 'noun', '{"home", "living"}'),

('der Balkon', 'balcony', 'der', 'die Balkone', 'Vom Balkon hat man eine schöne Aussicht. - From the balcony you have a nice view.', 'A2', 'home', 'Home & Living', 'le balcon', 'الشرفة', null, null, '/balˈkɔn/', '{"die Terrasse", "der Loggia"}', '{}', '{"der Balkonkäfig", "der Balkonstuhl", "die Balkontür"}', '{}', 'common', 1, 'noun', '{"home", "living"}'),

('der Keller', 'basement', 'der', 'die Keller', 'Im Keller ist der Waschkeller. - The laundry room is in the basement.', 'A2', 'home', 'Home & Living', 'la cave', 'القبو', null, null, '/ˈkɛlɐ/', '{"der Untergeschoss", "der Souterrain"}', '{}', '{"der Kellereingang", "der Kellerraum", "der Kellerabteil"}', '{}', 'common', 1, 'noun', '{"home", "living"}');

-- ============================================================
-- THEME 9: Feelings & Emotions (20 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('glücklich', 'happy', null, null, 'Ich bin sehr glücklich über mein Geschenk. - I am very happy about my gift.', 'A2', 'feelings', 'Feelings & Emotions', 'heureux', 'سعيد', null, null, '/ˈɡlʏklɪç/', '{"fröhlich", "zufrieden", "freudig"}', '{"traurig", "unglücklich", "betrübt"}', '{"das Glück", "das Glücksgefühl", "die Glückseligkeit"}', '{}', 'very_common', 1, 'adjective', '{"feelings", "emotions", "essential"}'),

('traurig', 'sad', null, null, 'Sie ist traurig, weil ihr Hund krank ist. - She is sad because her dog is sick.', 'A2', 'feelings', 'Feelings & Emotions', 'triste', 'حزين', null, null, '/ˈtʁaʊʁɪç/', '{"betrübt", "niedergeschlagen", "deprimiert"}', '{"glücklich", "fröhlich", "freudig"}', '{"die Trauer", "die Traurigkeit", "trauern"}', '{}', 'very_common', 1, 'adjective', '{"feelings", "emotions", "essential"}'),

('aufgeregt', 'excited', null, null, 'Die Kinder sind aufgeregt vor der Reise. - The children are excited before the trip.', 'A2', 'feelings', 'Feelings & Emotions', 'excité', 'منفعل / متحمس', null, null, '/ˈaʊfɡəʁeːkt/', '{"nervös", "erregt", "gespannt"}', '{"ruhig", "gelassen", "entspannt"}', '{"die Aufregung", "sich aufregen", "aufregend"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('müde', 'tired', null, null, 'Nach der Arbeit bin ich immer müde. - After work I am always tired.', 'A2', 'feelings', 'Feelings & Emotions', 'fatigué', 'متعب', null, null, '/ˈmyːdə/', '{"erschöpft", "schlapp", "abgespannt"}', '{"fit", "ausgeruht", "wach"}', '{"die Müdigkeit", "ermüden", "müde machen"}', '{}', 'very_common', 1, 'adjective', '{"feelings", "emotions", "essential"}'),

('ängstlich', 'anxious', null, null, 'Vor der Prüfung bin ich immer ängstlich. - Before the exam I am always anxious.', 'A2', 'feelings', 'Feelings & Emotions', 'anxieux', 'قلق', null, null, '/ˈɛŋstlɪç/', '{"besorgt", "unruhig", "bange"}', '{"mutig", "tapfer", "furchtlos"}', '{"die Angst", "sich ängstigen", "die Ängstlichkeit"}', '{}', 'common', 2, 'adjective', '{"feelings", "emotions"}'),

('die Freude', 'joy', 'die', 'die Freuden', 'Die Freude über das Geschenk war groß. - The joy about the gift was great.', 'A2', 'feelings', 'Feelings & Emotions', 'la joie', 'الفرح', null, null, '/ˈfʁɔʏdə/', '{"das Glück", "die Fröhlichkeit", "die Wonne"}', '{"die Trauer", "die Betrübnis"}', '{"sich freuen", "freudig", "erfreulich"}', '{}', 'very_common', 1, 'noun', '{"feelings", "emotions", "essential"}'),

('die Angst', 'fear', 'die', 'die Ängste', 'Er hat Angst vor Spinnen. - He is afraid of spiders.', 'A2', 'feelings', 'Feelings & Emotions', 'la peur', 'الخوف', null, null, '/aŋst/', '{"die Furcht", "der Schrecken", "die Panik"}', '{"der Mut", "die Tapferkeit"}', '{"ängstlich", "sich ängstigen", "angsterfüllt"}', '{}', 'very_common', 1, 'noun', '{"feelings", "emotions", "essential"}'),

('die Wut', 'anger', 'die', null, 'Vor Wut konnte er nicht sprechen. - He could not speak out of anger.', 'A2', 'feelings', 'Feelings & Emotions', 'la colère', 'الغضب', null, null, '/vuːt/', '{"der Zorn", "der Ärger", "die Raserei"}', '{"die Ruhe", "die Gelassenheit"}', '{"wütend", "sich ärgern", "der Wutanfall"}', '{}', 'common', 2, 'noun', '{"feelings", "emotions"}'),

('langweilig', 'boring', null, null, 'Der Film war sehr langweilig. - The movie was very boring.', 'A2', 'feelings', 'Feelings & Emotions', 'ennuyeux', 'ممل', null, null, '/ˈlaŋˌvaɪlɪç/', '{"öde", "eintönig", "trostlos"}', '{"spannend", "interessant", "aufregend"}', '{"die Langeweile", "sich langweilen", "der Langweiler"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('interessant', 'interesting', null, null, 'Das Buch ist sehr interessant. - The book is very interesting.', 'A2', 'feelings', 'Feelings & Emotions', 'intéressant', 'مثير للاهتمام', null, null, '/ɪntəʁɛˈsant/', '{"spannend", "fesselnd", "packend"}', '{"langweilig", "öde", "eintönig"}', '{"das Interesse", "sich interessieren", "interessiert"}', '{}', 'very_common', 1, 'adjective', '{"feelings", "emotions"}'),

('die Liebe', 'love', 'die', null, 'Die Liebe zu seiner Familie ist stark. - The love for his family is strong.', 'A2', 'feelings', 'Feelings & Emotions', 'l amour', 'الحب', null, null, '/ˈliːbə/', '{"die Zuneigung", "die Zärtlichkeit"}', '{"der Hass"}', '{"lieben", "lieb", "der Liebling"}', '{}', 'very_common', 1, 'noun', '{"feelings", "emotions", "essential"}'),

('der Hass', 'hatred', 'der', null, 'Hass ist eine starke negative Emotion. - Hatred is a strong negative emotion.', 'A2', 'feelings', 'Feelings & Emotions', 'la haine', 'الكراهية', null, null, '/has/', '{"der Groll", "der Abscheu", "der Widerwille"}', '{"die Liebe", "die Zuneigung"}', '{"hassen", "hasserfüllt", "hassenswert"}', '{}', 'common', 2, 'noun', '{"feelings", "emotions"}'),

('zufrieden', 'content', null, null, 'Ich bin mit meiner Arbeit zufrieden. - I am satisfied with my work.', 'A2', 'feelings', 'Feelings & Emotions', 'content', 'راضٍ', null, null, '/tsuˈfʁiːdən/', '{"glücklich", "gesättigt", "erfüllt"}', '{"unzufrieden", "unglücklich"}', '{"die Zufriedenheit", "sich zufriedengeben", "zufriedenstellend"}', '{}', 'very_common', 1, 'adjective', '{"feelings", "emotions"}'),

('neugierig', 'curious', null, null, 'Das Kind ist sehr neugierig. - The child is very curious.', 'A2', 'feelings', 'Feelings & Emotions', 'curieux', 'فضولي', null, null, '/ˈnɔʏɡiːʁɪç/', '{"wißbegierig", "interessiert", "fragend"}', '{"desinteressiert", "gleichgültig"}', '{"die Neugier", "die Neugierde", "neugierig sein"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('einsam', 'lonely', null, null, 'In der großen Stadt fühlt er sich einsam. - In the big city he feels lonely.', 'A2', 'feelings', 'Feelings & Emotions', 'seul', 'وحيد', null, null, '/ˈaɪnzaːm/', '{"allein", "verlassen", "isoliert"}', '{"gesellig", "umgeben"}', '{"die Einsamkeit", "vereinsamen", "das Einsamkeitsgefühl"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('der Stress', 'stress', 'der', null, 'Der Stress bei der Arbeit ist manchmal zu viel. - The stress at work is sometimes too much.', 'A2', 'feelings', 'Feelings & Emotions', 'le stress', 'الضغط النفسي', null, null, '/ʃtʁɛs/', '{"die Belastung", "die Anspannung", "die Überforderung"}', '{"die Ruhe", "die Gelassenheit", "die Entspannung"}', '{"stressig", "stressen", "der Stressfaktor"}', '{}', 'very_common', 1, 'noun', '{"feelings", "emotions", "work"}'),

('aufmerksam', 'attentive', null, null, 'Die Schüler sind sehr aufmerksam. - The students are very attentive.', 'A2', 'feelings', 'Feelings & Emotions', 'attentif', 'منتبه', null, null, '/ˈaʊfmɛʁkzaːm/', '{"konzentriert", "wachsam", "achtsam"}', '{"unaufmerksam", "zerstreut", "abgelenkt"}', '{"die Aufmerksamkeit", "aufmerksam sein", "der Aufmerksamkeitstest"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('die Enttäuschung', 'disappointment', 'die', 'die Enttäuschungen', 'Die Enttäuschung war groß. - The disappointment was great.', 'A2', 'feelings', 'Feelings & Emotions', 'la déception', 'خيبة الأمل', null, null, '/ɛntˈtɔʏʃʊŋ/', '{"die Frustration", "die Niedergeschlagenheit"}', '{"die Freude", "die Zufriedenheit"}', '{"enttäuschen", "enttäuscht", "enttäuschend"}', '{}', 'common', 2, 'noun', '{"feelings", "emotions"}'),

('schüchtern', 'shy', null, null, 'Das Mädchen ist sehr schüchtern. - The girl is very shy.', 'A2', 'feelings', 'Feelings & Emotions', 'timide', 'خجول', null, null, '/ˈʃʏçtɐn/', '{"zurückhaltend", "scheu", "gehemmt"}', '{"selbstbewusst", "mutig", "offen"}', '{"die Schüchternheit", "schüchtern sein", "der Schüchterne"}', '{}', 'common', 1, 'adjective', '{"feelings", "emotions"}'),

('die Sehnsucht', 'longing', 'die', 'die Sehnsüchte', 'Ich habe Sehnsucht nach meiner Familie. - I long for my family.', 'A2', 'feelings', 'Feelings & Emotions', 'le désir ardent', 'الشوق / الحنين', null, null, '/ˈzeːnzʊxt/', '{"das Verlangen", "die Begierde", "die Fernsucht"}', '{"die Gleichgültigkeit"}', '{"sehnsüchtig", "sich sehnen", "sehnsuchtsvoll"}', '{}', 'common', 2, 'noun', '{"feelings", "emotions"}');

-- ============================================================
-- THEME 10: Nature & Animals (15 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('der Baum', 'tree', 'der', 'die Bäume', 'Im Garten steht ein großer Baum. - There is a big tree in the garden.', 'A2', 'nature', 'Nature & Animals', 'l arbre', 'شجرة', null, null, '/baʊm/', '{"der Gehölz", "der Strauch"}', '{}', '{"der Baustamm", "die Baumkrone", "das Baumhaus"}', '{}', 'very_common', 1, 'noun', '{"nature", "plants", "essential"}'),

('die Blume', 'flower', 'die', 'die Blumen', 'Die Blumen im Park blühen wunderschön. - The flowers in the park are blooming beautifully.', 'A2', 'nature', 'Nature & Animals', 'la fleur', 'زهرة', null, null, '/ˈbluːmə/', '{"die Pflanze", "die Blüte"}', '{}', '{"der Blumenstrauß", "der Blumenladen", "der Blütenstand"}', '{}', 'very_common', 1, 'noun', '{"nature", "plants", "essential"}'),

('der Hund', 'dog', 'der', 'die Hunde', 'Der Hund von meinem Nachbarn bellt laut. - My neighbor s dog barks loudly.', 'A2', 'nature', 'Nature & Animals', 'le chien', 'كلب', null, null, '/hʊnt/', '{"der Vierbeiner", "der Haushund"}', '{"die Katze"}', '{"der Hundehalter", "die Hundehütte", "das Hundefutter"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals", "essential"}'),

('die Katze', 'cat', 'die', 'die Katzen', 'Die Katze schläft auf dem Sofa. - The cat is sleeping on the sofa.', 'A2', 'nature', 'Nature & Animals', 'le chat', 'قطة', null, null, '/ˈkatsə/', '{"der Stubentiger", "die Hauskatze"}', '{"der Hund"}', '{"der Katzenbesitzer", "das Katzenfutter", "das Katzenklo"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals", "essential"}'),

('das Pferd', 'horse', 'das', 'die Pferde', 'Das Pferd läuft schnell über die Wiese. - The horse runs quickly across the meadow.', 'A2', 'nature', 'Nature & Animals', 'le cheval', 'حصان', null, null, '/pfeːɐt/', '{"der Gaul", "das Ross"}', '{}', '{"der Reiter", "der Pferdestall", "der Pferdehof"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals"}'),

('der Vogel', 'bird', 'der', 'die Vögel', 'Die Vögel singen am Morgen. - The birds sing in the morning.', 'A2', 'nature', 'Nature & Animals', 'l oiseau', 'طائر', null, null, '/ˈfoːɡəl/', '{"der Singvogel", "der Piepmatz"}', '{}', '{"der Vogelgesang", "der Vogelzug", "der Vogelkäfig"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals", "essential"}'),

('der Fisch', 'fish', 'der', 'die Fische', 'Im See schwimmen viele Fische. - Many fish swim in the lake.', 'A2', 'nature', 'Nature & Animals', 'le poisson', 'سمكة', null, null, '/fɪʃ/', '{}', '{}', '{"der Fischfang", "fischen", "der Fischhändler"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals", "essential"}'),

('der Wald', 'forest', 'der', 'die Wälder', 'Im Wald kann man gut spazieren gehen. - You can go for a nice walk in the forest.', 'A2', 'nature', 'Nature & Animals', 'la forêt', 'الغابة', null, null, '/valt/', '{"der Forst", "der Hain", "der Urwald"}', '{}', '{"der Waldweg", "der Waldspaziergang", "der Waldrand"}', '{}', 'very_common', 1, 'noun', '{"nature", "plants"}'),

('die Wiese', 'meadow', 'die', 'die Wiesen', 'Auf der Wiese wachsen bunte Blumen. - Colorful flowers grow on the meadow.', 'A2', 'nature', 'Nature & Animals', 'le pré', 'المرج', null, null, '/ˈviːzə/', '{"die Weide", "der Anger", "die Grünfläche"}', '{}', '{"der Wiesenblume", "der Wiesenboden"}', '{}', 'common', 1, 'noun', '{"nature", "plants"}'),

('der Fluss', 'river', 'der', 'die Flüsse', 'Der Fluss fließt mitten durch die Stadt. - The river flows right through the city.', 'A2', 'nature', 'Nature & Animals', 'le fleuve / la rivière', 'نهر', null, null, '/flʊs/', '{"der Strom", "der Bach", "der Wasserlauf"}', '{}', '{"der Flusslauf", "das Flussbett", "das Flussufer"}', '{}', 'very_common', 1, 'noun', '{"nature", "geography"}'),

('der See', 'lake', 'der', 'die Seen', 'Der See ist sehr sauber und kalt. - The lake is very clean and cold.', 'A2', 'nature', 'Nature & Animals', 'le lac', 'بحيرة', null, null, '/zeː/', '{"der Teich", "der Weiher"}', '{}', '{"der Seeufer", "der Secamping", "die Seelandschaft"}', '{}', 'very_common', 1, 'noun', '{"nature", "geography"}'),

('das Tier', 'animal', 'das', 'die Tiere', 'Welches Tier magst du am liebsten? - Which animal do you like the most?', 'A2', 'nature', 'Nature & Animals', 'l animal', 'حيوان', null, null, '/tiːɐ/', '{"das Lebewesen", "die Kreatur"}', '{}', '{"der Tierarzt", "der Tierfreund", "das Tierheim"}', '{}', 'very_common', 1, 'noun', '{"nature", "animals", "essential"}'),

('die Pflanze', 'plant', 'die', 'die Pflanzen', 'Die Pflanzen brauchen Wasser und Licht. - The plants need water and light.', 'A2', 'nature', 'Nature & Animals', 'la plante', 'نبات', null, null, '/ˈpflantsə/', '{"das Gewächs", "die Blume", "der Strauch"}', '{}', '{"pflanzlich", "der Pflanzenfresser", "der Pflanzentopf"}', '{}', 'common', 1, 'noun', '{"nature", "plants"}'),

('der Garten', 'garden', 'der', 'die Gärten', 'Im Garten wachsen Tomaten und Salat. - Tomatoes and lettuce grow in the garden.', 'A2', 'nature', 'Nature & Animals', 'le jardin', 'الحديقة', null, null, '/ˈɡaʁtən/', '{"der Park", "die Grünanlage"}', '{}', '{"der Gärtner", "die Gartenarbeit", "das Gartenhaus"}', '{}', 'very_common', 1, 'noun', '{"nature", "plants", "home"}'),

('das Insekt', 'insect', 'das', 'die Insekten', 'Insekten sind wichtig für die Natur. - Insects are important for nature.', 'A2', 'nature', 'Nature & Animals', 'l insecte', 'حشرة', null, null, '/ɪnˈzɛkt/', '{"der Käfer", "das Krabbeltier"}', '{}', '{"der Insektenstich", "das Insektenspray", "die Insektenart"}', '{}', 'common', 1, 'noun', '{"nature", "animals"}');

-- ============================================================
-- THEME 11: Weather & Seasons (10 words)
-- ============================================================

insert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, theme, french_translation, arabic_translation, pronunciation_url, slow_pronunciation_url, ipa, synonyms, antonyms, word_family, verb_forms, frequency, difficulty_score, word_type, tags) values

('das Wetter', 'weather', 'das', null, 'Das Wetter ist heute schön. - The weather is nice today.', 'A2', 'nature', 'Weather & Seasons', 'le temps', 'الطقس', null, null, '/ˈvɛtɐ/', '{"die Witterung", "das Klima"}', '{}', '{"der Wetterbericht", "die Wettervorhersage", "der Wetterumschwung"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "essential"}'),

('die Sonne', 'sun', 'die', 'die Sonnen', 'Die Sonne scheint heute sehr stark. - The sun is shining very strongly today.', 'A2', 'nature', 'Weather & Seasons', 'le soleil', 'الشمس', null, null, '/ˈzɔnə/', '{"der Sonnenschein"}', '{"der Regen", "die Wolke"}', '{"sonnig", "der Sonnenaufgang", "der Sonnenuntergang"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "essential"}'),

('der Regen', 'rain', 'der', null, 'Der Regen hört um drei Uhr auf. - The rain stops at three o clock.', 'A2', 'nature', 'Weather & Seasons', 'la pluie', 'المطر', null, null, '/ˈʁeːɡən/', '{"der Niederschlag", "der Regenschauer"}', '{"die Sonne", "der Sonnenschein"}', '{"regnen", "der Regenschirm", "die Regenjacke"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature", "essential"}'),

('der Schnee', 'snow', 'der', null, 'Im Winter liegt hier viel Schnee. - In winter there is a lot of snow here.', 'A2', 'nature', 'Weather & Seasons', 'la neige', 'الثلج', null, null, '/ʃneː/', '{"die Schneeflocke", "der Schneefall"}', '{}', '{"schneien", "die Schneeflocke", "der Schneemann"}', '{}', 'very_common', 1, 'noun', '{"weather", "winter"}'),

('der Wind', 'wind', 'der', 'die Winde', 'Der Wind weht heute sehr stark. - The wind is blowing very strongly today.', 'A2', 'nature', 'Weather & Seasons', 'le vent', 'الرياح', null, null, '/vɪnt/', '{"der Luftzug", "die Brise", "der Sturm"}', '{"die Windstille"}', '{"windig", "der Windstoß", "der Windschutz"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature"}'),

('die Wolke', 'cloud', 'die', 'die Wolken', 'Am Himmel sind viele weiße Wolken. - There are many white clouds in the sky.', 'A2', 'nature', 'Weather & Seasons', 'le nuage', 'سحابة', null, null, '/ˈvɔlkə/', '{"die Kumuluswolke", "die Gewitterwolke"}', '{}', '{"bewölkt", "der Wolkenhimmel", "wolkenlos"}', '{}', 'very_common', 1, 'noun', '{"weather", "nature"}'),

('der Frühling', 'spring', 'der', 'die Frühlinge', 'Im Frühling blühen die Blumen. - In spring the flowers bloom.', 'A2', 'nature', 'Weather & Seasons', 'le printemps', 'الربيع', null, null, '/ˈfʁyːlɪŋ/', '{"das Frühjahr"}', '{"der Herbst"}', '{"frühlingshaft", "der Frühlingsanfang", "die Frühlingssonne"}', '{}', 'very_common', 1, 'noun', '{"seasons", "weather"}'),

('der Sommer', 'summer', 'der', 'die Sommer', 'Im Sommer machen wir Urlaub am Meer. - In summer we go on vacation by the sea.', 'A2', 'nature', 'Weather & Seasons', 'l été', 'الصيف', null, null, '/ˈzɔmɐ/', '{}', '{"der Winter"}', '{"sommerlich", "der Sommerurlaub", "das Sommerkleid"}', '{}', 'very_common', 1, 'noun', '{"seasons", "weather", "essential"}'),

('der Herbst', 'autumn', 'der', 'die Herbste', 'Im Herbst fallen die Blätter von den Bäumen. - In autumn the leaves fall from the trees.', 'A2', 'nature', 'Weather & Seasons', 'l automne', 'الخريف', null, null, '/hɛʁpst/', '{}', '{"der Frühling"}', '{"herbstlich", "die Herbstzeit", "der Herbstwind"}', '{}', 'very_common', 1, 'noun', '{"seasons", "weather"}'),

('der Winter', 'winter', 'der', 'die Winter', 'Der Winter ist dieses Jahr sehr kalt. - The winter is very cold this year.', 'A2', 'nature', 'Weather & Seasons', 'l hiver', 'الشتاء', null, null, '/ˈvɪntɐ/', '{}', '{"der Sommer"}', '{"winterlich", "der Wintermantel", "die Winterzeit"}', '{}', 'very_common', 1, 'noun', '{"seasons", "weather", "essential"}');
