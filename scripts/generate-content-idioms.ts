/**
 * Idioms, Common Mistakes, Pronunciation & Culture Generator
 *
 * Generates German learning content for Arabic speakers as a JSON seed file.
 * Run with: npx tsx scripts/generate-content-idioms.ts
 *
 * Output: scripts/seed-data/idioms-culture.json
 */

import * as fs from 'fs'
import * as path from 'path'

const OUTPUT = path.join(__dirname, 'seed-data', 'idioms-culture.json')

interface Idiom {
  german: string
  english: string
  literalTranslation: string
  meaning: string
  usageExample: string
  usageExampleEnglish: string
  level: string
  category: string
  register: string
}

interface CommonMistake {
  mistake: string
  correct: string
  explanation: string
  rule: string
  level: string
  category: string
  frequency: string
}

interface PronunciationExample {
  word: string
  phonetic: string
  audioHint: string
}

interface PronunciationGuide {
  focus: string
  description: string
  rule: string
  examples: PronunciationExample[]
  level: string
  challengeFor: string[]
}

interface CulturalNote {
  title: string
  category: string
  description: string
  tips: string[]
  level: string
  goetheRelevant: boolean
}

interface OutputData {
  idioms: Idiom[]
  commonMistakes: CommonMistake[]
  pronunciationGuides: PronunciationGuide[]
  culturalNotes: CulturalNote[]
}

function generateIdioms(): Idiom[] {
  return [
    // ===== A2 (8) =====
    {
      german: 'Das ist mir egal',
      english: "I don't care",
      literalTranslation: 'That is equal to me',
      meaning: 'Used to express indifference about something',
      usageExample: 'Sollen wir Pizza oder Pasta essen? Das ist mir egal.',
      usageExampleEnglish: 'Should we eat pizza or pasta? I do not care.',
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Kein Problem',
      english: 'No problem',
      literalTranslation: 'No problem',
      meaning: 'Response to thanks or to indicate something is easy',
      usageExample: 'Kannst du mir helfen? Ja, kein Problem!',
      usageExampleEnglish: 'Can you help me? Yes, no problem!',
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Na klar',
      english: 'Of course / Sure',
      literalTranslation: 'Well clear',
      meaning: 'Emphatic agreement or confirmation',
      usageExample: 'Kommst du mit? Na klar!',
      usageExampleEnglish: 'Are you coming along? Of course!',
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Ich drücke die Daumen',
      english: "I'm keeping my fingers crossed",
      literalTranslation: 'I press the thumbs',
      meaning: 'Wishing someone good luck (German gesture: pressing thumbs into fists)',
      usageExample: 'Ich habe morgen eine Prüfung. Ich drücke dir die Daumen!',
      usageExampleEnglish: 'I have an exam tomorrow. I am keeping my fingers crossed for you!',
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Auf jeden Fall',
      english: 'Definitely / In any case',
      literalTranslation: 'On every case',
      meaning: 'Used to strongly agree or confirm something will happen',
      usageExample: 'Kommst du zur Party? Auf jeden Fall!',
      usageExampleEnglish: 'Are you coming to the party? Definitely!',
      level: 'A2',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Keine Ahnung',
      english: 'No idea',
      literalTranslation: 'No clue',
      meaning: "I don't know / I have no clue about something",
      usageExample: 'Weißt du, wann der Zug kommt? Keine Ahnung.',
      usageExampleEnglish: 'Do you know when the train arrives? No idea.',
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Mach dir keine Sorgen',
      english: "Don't worry",
      literalTranslation: 'Make yourself no worries',
      meaning: 'Reassuring someone not to be anxious',
      usageExample: 'Ich komme zu spät. Mach dir keine Sorgen, es ist noch früh!',
      usageExampleEnglish: "I am coming late. Don't worry, it is still early!",
      level: 'A2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Das geht',
      english: "That's okay / That works",
      literalTranslation: 'That goes',
      meaning: 'Indicating that something is acceptable or possible',
      usageExample: 'Kann ich morgen kommen? Ja, das geht.',
      usageExampleEnglish: 'Can I come tomorrow? Yes, that works.',
      level: 'A2',
      category: 'everyday',
      register: 'neutral',
    },

    // ===== B1 (12) =====
    {
      german: 'Lügen haben kurze Beine',
      english: 'Lies have short legs',
      literalTranslation: 'Lies have short legs',
      meaning: 'Lies are easily discovered and do not last long',
      usageExample: 'Er hat gesagt, er war krank, aber ich habe ihn im Park gesehen. Lügen haben kurze Beine.',
      usageExampleEnglish: 'He said he was sick, but I saw him in the park. Lies have short legs.',
      level: 'B1',
      category: 'proverb',
      register: 'neutral',
    },
    {
      german: 'Da steppt der Bär',
      english: "It's going to be a great party",
      literalTranslation: 'There the bear dances',
      meaning: 'Describes a lively, fun party or event',
      usageExample: 'Auf der Party von Anna steppt der Bär!',
      usageExampleEnglish: "At Anna's party it is going to be wild!",
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Ich verstehe nur Bahnhof',
      english: "It's all Greek to me",
      literalTranslation: 'I only understand train station',
      meaning: 'Understanding nothing of what is being said',
      usageExample: 'Die Erklärung war so kompliziert, ich habe nur Bahnhof verstanden.',
      usageExampleEnglish: 'The explanation was so complicated, I did not understand a thing.',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Das ist nicht mein Bier',
      english: "That's not my problem",
      literalTranslation: 'That is not my beer',
      meaning: 'Indicating that something is not one\'s responsibility or concern',
      usageExample: 'Warum ist das Projekt gescheitert? Das ist nicht mein Bier, frag den Chef.',
      usageExampleEnglish: 'Why did the project fail? That is not my concern, ask the boss.',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Hals- und Beinbruch',
      english: 'Break a leg',
      literalTranslation: 'Neck and leg break',
      meaning: 'Wishing someone good luck, especially before a performance',
      usageExample: 'Du hast heute dein Konzert? Hals- und Beinbruch!',
      usageExampleEnglish: 'You have your concert today? Break a leg!',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Tomaten auf den Augen haben',
      english: 'To be blind to something obvious',
      literalTranslation: 'To have tomatoes on the eyes',
      meaning: 'Failing to see something that is clearly visible',
      usageExample: 'Die Schlüssel liegen direkt vor dir! Hast du Tomaten auf den Augen?',
      usageExampleEnglish: 'The keys are right in front of you! Are you blind?',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Schwein haben',
      english: 'To be lucky',
      literalTranslation: 'To have pig',
      meaning: 'Having good luck unexpectedly',
      usageExample: 'Ich habe im Lotto gewonnen! Du hast wirklich Schwein!',
      usageExampleEnglish: 'I won the lottery! You are really lucky!',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Fix und fertig sein',
      english: 'To be completely exhausted',
      literalTranslation: 'To be fixed and finished',
      meaning: 'Being extremely tired or worn out',
      usageExample: 'Nach der Arbeit bin ich fix und fertig.',
      usageExampleEnglish: 'After work I am completely exhausted.',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Bock haben',
      english: 'To feel like doing something',
      literalTranslation: 'To have buck (male goat)',
      meaning: 'Having the desire or motivation to do something',
      usageExample: 'Hast du Bock, ins Kino zu gehen?',
      usageExampleEnglish: 'Do you feel like going to the cinema?',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Blau machen',
      english: 'To skip work / play hooky',
      literalTranslation: 'To make blue',
      meaning: 'Staying away from work or school without a valid reason',
      usageExample: 'Er hat heute blaugemacht und ist stattdessen an den See gefahren.',
      usageExampleEnglish: 'He skipped work today and went to the lake instead.',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Das ist unter aller Sau',
      english: 'That is absolutely terrible',
      literalTranslation: 'That is below all sow',
      meaning: 'Criticizing something as being of extremely poor quality or unacceptable',
      usageExample: 'Der Service in diesem Restaurant ist unter aller Sau.',
      usageExampleEnglish: 'The service in this restaurant is absolutely terrible.',
      level: 'B1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Die Daumen drücken',
      english: 'To keep ones fingers crossed',
      literalTranslation: 'To press the thumbs',
      meaning: 'Wishing someone success or good luck',
      usageExample: 'Ich drücke dir die Daumen für deine Prüfung!',
      usageExampleEnglish: 'I am keeping my fingers crossed for your exam!',
      level: 'B1',
      category: 'everyday',
      register: 'neutral',
    },

    // ===== B2 (12) =====
    {
      german: 'Den Nagel auf den Kopf treffen',
      english: 'To hit the nail on the head',
      literalTranslation: 'To hit the nail on the head',
      meaning: 'Describing something exactly right or identifying the core issue',
      usageExample: 'Mit deiner Analyse hast du den Nagel auf den Kopf getroffen.',
      usageExampleEnglish: 'With your analysis you hit the nail on the head.',
      level: 'B2',
      category: 'communication',
      register: 'neutral',
    },
    {
      german: 'Die Kirche im Dorf lassen',
      english: 'To not get carried away',
      literalTranslation: 'To leave the church in the village',
      meaning: 'To keep things in perspective or not exaggerate',
      usageExample: 'Jetzt lass mal die Kirche im Dorf! Es ist nicht so schlimm.',
      usageExampleEnglish: 'Do not get carried away! It is not that bad.',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Fünf gerade sein lassen',
      english: 'To let something slide / not be too strict',
      literalTranslation: 'To let five be straight',
      meaning: 'To overlook a small irregularity or not insist on precision',
      usageExample: 'Normalerweise ist er sehr genau, aber heute lässt er mal fünf gerade sein.',
      usageExampleEnglish: 'Usually he is very precise, but today he is letting things slide.',
      level: 'B2',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Das ist ein Katzensprung',
      english: 'It is just a stone\'s throw away',
      literalTranslation: 'That is a cat\'s jump',
      meaning: 'A very short distance',
      usageExample: 'Der Supermarkt ist nur ein Katzensprung von hier entfernt.',
      usageExampleEnglish: 'The supermarket is just a stone\'s throw away from here.',
      level: 'B2',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Sich wie ein Fisch auf dem Trockenen fühlen',
      english: 'To feel like a fish out of water',
      literalTranslation: 'To feel like a fish on dry land',
      meaning: 'Feeling uncomfortable because one is in an unfamiliar situation',
      usageExample: 'Auf der Party kannte ich niemanden und fühlte mich wie ein Fisch auf dem Trockenen.',
      usageExampleEnglish: 'I did not know anyone at the party and felt like a fish out of water.',
      level: 'B2',
      category: 'emotions',
      register: 'neutral',
    },
    {
      german: 'Zwei Fliegen mit einer Klappe schlagen',
      english: 'To kill two birds with one stone',
      literalTranslation: 'To hit two flies with one swatter',
      meaning: 'Accomplishing two things with a single action',
      usageExample: 'Indem ich zum Supermarkt gehe und gleichzeitig das Paket abgebe, schlage ich zwei Fliegen mit einer Klappe.',
      usageExampleEnglish: 'By going to the supermarket and dropping off the package at the same time, I kill two birds with one stone.',
      level: 'B2',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Auf dem Schlauch stehen',
      english: 'To be stuck / not get it',
      literalTranslation: 'To stand on the hose',
      meaning: 'Not understanding something immediately or being slow to grasp an idea',
      usageExample: 'Ich stehe auf dem Schlauch – kannst du die Aufgabe noch einmal erklären?',
      usageExampleEnglish: 'I am not getting it – can you explain the exercise once more?',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Mit dem Rücken zur Wand stehen',
      english: 'To have ones back against the wall',
      literalTranslation: 'To stand with the back to the wall',
      meaning: 'Being in a difficult situation with no easy way out',
      usageExample: 'Nach der Krise stand das Unternehmen mit dem Rücken zur Wand.',
      usageExampleEnglish: 'After the crisis the company had its back against the wall.',
      level: 'B2',
      category: 'emotions',
      register: 'neutral',
    },
    {
      german: 'Ins Fettnäpfchen treten',
      english: 'To put ones foot in it',
      literalTranslation: 'To step into the grease pot',
      meaning: 'Accidentally saying or doing something socially awkward or offensive',
      usageExample: 'Ich habe gefragt, wann das Baby kommt, aber sie war gar nicht schwanger. Schon wieder ins Fettnäpfchen getreten!',
      usageExampleEnglish: 'I asked when the baby was due, but she was not pregnant. I put my foot in it again!',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Um den heißen Brei herumreden',
      english: 'To beat around the bush',
      literalTranslation: 'To talk around the hot porridge',
      meaning: 'Avoiding addressing the main topic directly',
      usageExample: 'Hör auf, um den heißen Brei herumzureden, und sag mir die Wahrheit!',
      usageExampleEnglish: 'Stop beating around the bush and tell me the truth!',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Kein Blatt vor den Mund nehmen',
      english: 'To not mince words',
      literalTranslation: 'To not take a leaf before the mouth',
      meaning: 'Speaking frankly and directly without holding back',
      usageExample: 'Meine Oma nimmt kein Blatt vor den Mund und sagt immer, was sie denkt.',
      usageExampleEnglish: 'My grandmother does not mince words and always says what she thinks.',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Da liegt der Hund begraben',
      english: 'That is the heart of the matter',
      literalTranslation: 'There lies the dog buried',
      meaning: 'Identifying the real cause or core of a problem',
      usageExample: 'Er hat kein Geld, aber er will immer teure Sachen kaufen. Da liegt der Hund begraben.',
      usageExampleEnglish: 'He has no money, but he always wants to buy expensive things. That is the heart of the matter.',
      level: 'B2',
      category: 'communication',
      register: 'informal',
    },

    // ===== C1 (10) =====
    {
      german: 'Etwas auf die lange Bank schieben',
      english: 'To put something off',
      literalTranslation: 'To push something onto the long bench',
      meaning: 'Procrastinating or delaying something indefinitely',
      usageExample: 'Ich schiebe die Steuererklärung schon seit Wochen auf die lange Bank.',
      usageExampleEnglish: 'I have been putting off my tax return for weeks.',
      level: 'C1',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Den Teufel an die Wand malen',
      english: 'To paint a gloomy picture',
      literalTranslation: 'To paint the devil on the wall',
      meaning: 'Predicting the worst possible outcome unnecessarily',
      usageExample: 'Nur weil du erkältet bist, musst du nicht gleich den Teufel an die Wand malen.',
      usageExampleEnglish: 'Just because you have a cold you do not have to imagine the worst.',
      level: 'C1',
      category: 'communication',
      register: 'neutral',
    },
    {
      german: 'Perlen vor die Säue werfen',
      english: 'To cast pearls before swine',
      literalTranslation: 'To throw pearls before the sows',
      meaning: 'Giving something valuable to someone who cannot appreciate it',
      usageExample: 'Wenn du ihm guten Wein servierst, wirfst du Perlen vor die Säue – er trinkt lieber Bier.',
      usageExampleEnglish: 'If you serve him fine wine you are casting pearls before swine – he prefers beer.',
      level: 'C1',
      category: 'proverb',
      register: 'neutral',
    },
    {
      german: 'Das ist ein Fass ohne Boden',
      english: 'That is a bottomless pit',
      literalTranslation: 'That is a barrel without a bottom',
      meaning: 'Something that consumes endless resources without ever being resolved',
      usageExample: 'Die Renovierung des alten Hauses ist ein Fass ohne Boden.',
      usageExampleEnglish: 'The renovation of the old house is a bottomless pit.',
      level: 'C1',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Sich in der eigenen Schlinge fangen',
      english: 'To be caught in ones own trap',
      literalTranslation: 'To catch oneself in ones own noose',
      meaning: 'Being harmed by ones own scheme or dishonesty',
      usageExample: 'Er hat gelogen, um sich zu schützen, aber am Ende hat er sich in der eigenen Schlinge gefangen.',
      usageExampleEnglish: 'He lied to protect himself, but in the end he was caught in his own trap.',
      level: 'C1',
      category: 'proverb',
      register: 'formal',
    },
    {
      german: 'Qual der Wahl',
      english: 'Embarrassment of riches / difficult choice',
      literalTranslation: 'Torture of choice',
      meaning: 'Having so many options that choosing is difficult',
      usageExample: 'Die Speisekarte ist so umfangreich, ich habe die Qual der Wahl.',
      usageExampleEnglish: 'The menu is so extensive, it is a difficult choice.',
      level: 'C1',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Sich in die Büsche schlagen',
      english: 'To make oneself scarce',
      literalTranslation: 'To beat oneself into the bushes',
      meaning: 'Leaving quickly or escaping from an unpleasant situation',
      usageExample: 'Als die Diskussion unangenehm wurde, hat er sich in die Büsche geschlagen.',
      usageExampleEnglish: 'When the discussion became unpleasant he made himself scarce.',
      level: 'C1',
      category: 'everyday',
      register: 'informal',
    },
    {
      german: 'Jemandem den Kopf waschen',
      english: 'To give someone a piece of ones mind',
      literalTranslation: 'To wash someones head',
      meaning: 'Severely reprimanding or scolding someone',
      usageExample: 'Der Chef hat ihm den Kopf gewaschen, weil er den Bericht nicht rechtzeitig abgegeben hat.',
      usageExampleEnglish: 'The boss gave him a piece of his mind because he did not submit the report on time.',
      level: 'C1',
      category: 'communication',
      register: 'informal',
    },
    {
      german: 'Das ist ein Tropfen auf den heißen Stein',
      english: 'That is a drop in the bucket',
      literalTranslation: 'That is a drop on a hot stone',
      meaning: 'An effort or amount that is far too small to make a real difference',
      usageExample: 'Die Spende von 50 Euro ist ein Tropfen auf den heißen Stein bei den hohen Kosten.',
      usageExampleEnglish: 'The donation of 50 euros is a drop in the bucket given the high costs.',
      level: 'C1',
      category: 'everyday',
      register: 'neutral',
    },
    {
      german: 'Hinter dem Mond leben',
      english: 'To be out of touch / behind the times',
      literalTranslation: 'To live behind the moon',
      meaning: 'Being unaware of current events or modern developments',
      usageExample: 'Du hast noch nie von WhatsApp gehört? Lebst du hinter dem Mond?',
      usageExampleEnglish: 'You have never heard of WhatsApp? Do you live under a rock?',
      level: 'C1',
      category: 'everyday',
      register: 'informal',
    },
  ]
}

function generateCommonMistakes(): CommonMistake[] {
  return [
    // Articles (der/die/das based on Arabic gender interference)
    {
      mistake: 'der Sonne',
      correct: 'die Sonne',
      explanation: 'In Arabic "sun" (شمس) is feminine, but Arabic speakers often transfer feminine gender expectations to German incorrectly. "Sonne" is feminine in German as well, but the confusion arises with many other nouns where Arabic and German gender differ.',
      rule: 'Learn noun gender with the article. The gender of German nouns often differs from Arabic. There is no simple rule; memorize der/die/das with each noun.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'der Brücke',
      correct: 'die Brücke',
      explanation: 'Arabic speakers may assume "bridge" (جسر) is masculine based on Arabic, but it is feminine in German.',
      rule: 'German gender does not match Arabic gender. Always memorize nouns with their definite article.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'das Tisch',
      correct: 'der Tisch',
      explanation: 'Arabic "table" (طاولة) is feminine. The German "Tisch" is masculine, which contradicts the Arabic instinct.',
      rule: 'Many everyday objects have different genders in German vs Arabic. Use flashcards with articles.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },

    // Word order (verb position)
    {
      mistake: 'Ich kann Deutsch sprechen.',
      correct: 'Ich kann Deutsch sprechen.',
      explanation: 'This is actually correct! But many Arabic speakers make the mistake of putting the infinitive before the modal verb: "Ich sprechen kann Deutsch." This follows Arabic word order where the main verb comes second.',
      rule: 'In main clauses with modal verbs, the modal verb is conjugated in position 2, and the infinitive goes to the end: Ich kann Deutsch sprechen.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ich möchte, dass du kommst zu mir.',
      correct: 'Ich möchte, dass du zu mir kommst.',
      explanation: 'Arabic speakers often place the verb in its Arabic position (earlier in the clause) rather than at the end of the subordinate clause.',
      rule: 'In subordinate clauses introduced by "dass", "weil", "wenn", etc., the conjugated verb goes to the end.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Gestern ich bin ins Kino gegangen.',
      correct: 'Gestern bin ich ins Kino gegangen.',
      explanation: 'Arabic word order is VSO (verb-subject-object). German requires inverted order when a sentence starts with a time or place adverbial.',
      rule: 'When a sentence starts with anything other than the subject (e.g., time, place), the subject moves after the verb: Time phrase + verb + subject + rest.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },

    // Prepositions
    {
      mistake: 'Ich warte aufen Bus.',
      correct: 'Ich warte auf den Bus.',
      explanation: 'Arabic prepositions often merge with the following noun. In German, prepositions govern specific cases. "Auf" with "warten" takes accusative, so "den" (not "aufen" which does not exist).',
      rule: 'Verbs require specific prepositions in German. Memorize verb + preposition combinations. "Warten auf + Akkusativ" = to wait for.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },
    {
      mistake: 'Ich denke an mein Familie.',
      correct: 'Ich denke an meine Familie.',
      explanation: 'Arabic speakers often forget adjective/article agreement with prepositions. "An" takes accusative here, so "meine" is correct for feminine "Familie".',
      rule: 'Prepositions govern specific cases (accusative or dative). Learn which prepositions take which case and apply article/adjective declension.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },
    {
      mistake: 'Ich bin fertig mit die Arbeit.',
      correct: 'Ich bin fertig mit der Arbeit.',
      explanation: 'Arabic "بـ" does not change the following noun. In German, "mit" always takes dative, so "der Arbeit" (not "die Arbeit").',
      rule: 'The preposition "mit" always takes the dative case. Other dative prepositions: aus, bei, nach, seit, von, zu.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },

    // Perfect tense haben vs sein
    {
      mistake: 'Ich habe nach Hause gegangen.',
      correct: 'Ich bin nach Hause gegangen.',
      explanation: 'Arabic uses one auxiliary (كان) for all past constructions. German splits auxiliary verbs: movement and state change verbs take "sein". "Gehen" implies movement, so "bin".',
      rule: 'Verbs of movement (gehen, fahren, kommen, reisen) and state change (werden, aufwachen, sterben) use "sein" as auxiliary. All others use "haben".',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ich bin gegessen.',
      correct: 'Ich habe gegessen.',
      explanation: 'Arabic speakers may overuse "sein" for all verbs. "Essen" is transitive and takes "haben".',
      rule: 'Transitive verbs (those taking a direct object) always use "haben". Reflexive verbs also use "haben".',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },

    // Case endings (dative/genitive)
    {
      mistake: 'Ich gebe das Buch der Mann.',
      correct: 'Ich gebe das Buch dem Mann.',
      explanation: 'Arabic uses prepositions for indirect objects. German uses the dative case. "Der Mann" becomes "dem Mann" after "geben" (which takes dative for the recipient).',
      rule: 'The indirect object (recipient) takes dative. Masculine and neuter articles change: der -> dem, ein -> einem. Feminine: die -> der, eine -> einer.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Das ist das Auto meiner Vater.',
      correct: 'Das ist das Auto meines Vaters.',
      explanation: 'Arabic uses a construct state (الإضافة) for possession. German uses genitive case: masculine/neuter add -s/-es to the noun and change the article.',
      rule: 'Genitive for masculine/neuter: des + noun + -(e)s (des Vaters, des Kindes). Feminine: der + noun (der Mutter).',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },

    // Plural formation
    {
      mistake: 'zwei Kind',
      correct: 'zwei Kinder',
      explanation: 'Arabic has dual forms and regular plurals, but the variety of German plural endings (-e, -er, -en, -s, umlaut) is confusing.',
      rule: 'German has multiple plural patterns. Common ones: -e (Tag -> Tage), -er (Kind -> Kinder), -en (Frau -> Frauen), -n (Stunde -> Stunden), -s (Auto -> Autos), umlaut (Vater -> Väter).',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'drei Bücher',
      correct: 'drei Bücher',
      explanation: 'This is actually correct! But many learners miss the umlaut declension for "Buch -> Bücher".',
      rule: 'Many one-syllable neuter nouns form the plural with umlaut + -er: Buch -> Bücher, Haus -> Häuser, Glas -> Gläser.',
      level: 'A2',
      category: 'grammar',
      frequency: 'medium',
    },

    // Negation (nicht vs kein)
    {
      mistake: 'Ich habe nicht Geld.',
      correct: 'Ich habe kein Geld.',
      explanation: 'Arabic uses one negator (لا/ليس/ما) for all contexts. German splits: "nicht" negates verbs/adjectives, "kein" negates nouns without articles.',
      rule: 'Use "kein" before nouns that would otherwise use "ein/eine" (indefinite article) or no article. Use "nicht" for all other negation.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ich mag nicht Fußball.',
      correct: 'Ich mag Fußball nicht.',
      explanation: 'Arabic negates the verb directly. German places "nicht" at the end when negating a whole sentence, or before the specific element being negated.',
      rule: '"Nicht" usually goes at the end of the sentence when negating the whole statement. Exception: before specific elements being contrasted.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },

    // mögen vs gern vs gefallen
    {
      mistake: 'Ich mag Fußball spielen gern.',
      correct: 'Ich spiele gern Fußball.',
      explanation: 'Arabic uses one word (أحب) for all "liking" contexts. German distinguishes: "mögen" for nouns, "gern" with verbs, "gefallen" for pleasing.',
      rule: '"Mögen" + noun (Ich mag Pizza). "Gern" + verb (Ich spiele gern Fußball). "Gefallen" + dative (Das gefällt mir). Do not combine them.',
      level: 'A2',
      category: 'vocabulary',
      frequency: 'high',
    },
    {
      mistake: 'Das gefällt mich.',
      correct: 'Das gefällt mir.',
      explanation: 'Arabic uses accusative with "to please". German "gefallen" takes dative for the person pleased.',
      rule: '"Gefallen" always takes a dative object: es gefällt mir/dir/ihm/ihr/uns/euch/ihnen.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },

    // wissen vs kennen
    {
      mistake: 'Ich kenne die Antwort nicht.',
      correct: 'Ich weiß die Antwort nicht.',
      explanation: 'Arabic uses one word (يعرف) for both. German distinguishes: "wissen" for facts/information, "kennen" for being familiar with people/places.',
      rule: '"Wissen" + fact/answer/name. "Kennen" + person/place/thing (Ich kenne Berlin, Ich kenne den Film).',
      level: 'A2',
      category: 'vocabulary',
      frequency: 'high',
    },
    {
      mistake: 'Weißt du den Mann?',
      correct: 'Kennst du den Mann?',
      explanation: 'Arabic speakers use "weißt du" for all contexts because يعرف covers both. But "wissen" does not take a personal direct object.',
      rule: 'You cannot "wissen" a person. Use "kennen" for people and "wissen von" for knowing about someone.',
      level: 'A2',
      category: 'vocabulary',
      frequency: 'high',
    },

    // legen/liegen, stellen/stehen, setzen/sitzen, hängen
    {
      mistake: 'Ich liege das Buch auf den Tisch.',
      correct: 'Ich lege das Buch auf den Tisch.',
      explanation: 'Arabic uses one verb (وضع) for "to put/place" regardless of position. German distinguishes: "legen" = lay flat, "liegen" = be lying flat.',
      rule: 'Transitive (to place): legen (flat), stellen (upright), setzen (seat), hängen (hang). Intransitive (to be placed): liegen, stehen, sitzen, hängen. Learn pairs.',
      level: 'B1',
      category: 'vocabulary',
      frequency: 'medium',
    },
    {
      mistake: 'Der Teller steht auf dem Tisch.',
      correct: 'Der Teller steht auf dem Tisch.',
      explanation: 'This is correct for plates standing upright, but many Arabic speakers use "liegen" for plates because they think of them as flat objects.',
      rule: 'In German, plates "stehen" (stand upright/on edge) even though they are flat. Dishes in general use "stehen" on the table.',
      level: 'B1',
      category: 'vocabulary',
      frequency: 'medium',
    },

    // Reflexive pronoun usage
    {
      mistake: 'Ich wasche die Hände.',
      correct: 'Ich wasche mir die Hände.',
      explanation: 'Arabic uses a direct object for body parts. German uses a reflexive dative when the action is done for oneself.',
      rule: 'With body parts, use reflexive dative (mir/dir/sich) + definite article: Ich wasche mir die Hände, nicht Ich wasche meine Hände.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },
    {
      mistake: 'Ich freue für dich.',
      correct: 'Ich freue mich für dich.',
      explanation: 'Arabic "I am happy" does not require a reflexive pronoun. German "sich freuen" is inherently reflexive.',
      rule: 'Many German verbs are inherently reflexive. Learn them: sich freuen, sich beeilen, sich erinnern, sich entschuldigen.',
      level: 'A2',
      category: 'grammar',
      frequency: 'medium',
    },

    // Sie/du distinction
    {
      mistake: 'Kannst du mir helfen? (to a professor)',
      correct: 'Können Sie mir helfen?',
      explanation: 'Arabic uses أنت for all singular "you". German distinguishes formal "Sie" (capitalized) from informal "du". Using "du" with strangers or authority figures is disrespectful.',
      rule: 'Use "Sie" (formal) with strangers, colleagues you do not know well, professors, and officials. Use "du" with friends, family, children, and younger people. When in doubt, start with "Sie".',
      level: 'A2',
      category: 'culture',
      frequency: 'high',
    },
    {
      mistake: 'Können sie mir helfen? (confusing singular and plural)',
      correct: 'Können Sie mir helfen?',
      explanation: 'Arabic does not capitalize the formal "you". German capitalizes "Sie" (formal you) to distinguish it from "sie" (she/they).',
      rule: 'Formal "Sie" is always capitalized. Lowercase "sie" = she (singular) or they (plural). Context determines meaning.',
      level: 'A2',
      category: 'grammar',
      frequency: 'medium',
    },

    // weil vs denn vs da
    {
      mistake: 'Ich bin müde, denn ich habe schlecht geschlafen.',
      correct: 'Ich bin müde, denn ich habe schlecht geschlafen.',
      explanation: 'This is correct! However, many Arabic speakers use "denn" but do not realize it takes main clause word order, while "weil" takes subordinate clause word order (verb at end).',
      rule: '"Denn" = main clause order (verb stays in position 2). "Weil" = subordinate clause order (verb goes to end). "Da" is similar to "weil" but used for known/given reasons.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },
    {
      mistake: 'Ich bin müde, weil ich habe schlecht geschlafen.',
      correct: 'Ich bin müde, weil ich schlecht geschlafen habe.',
      explanation: 'Arabic "because" clauses use regular word order. German "weil" forces the conjugated verb to the end.',
      rule: '"Weil" introduces a subordinate clause: subject + ... + verb at the end.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },

    // als vs wenn vs wann
    {
      mistake: 'Wenn ich gestern nach Hause kam, hat es geregnet.',
      correct: 'Als ich gestern nach Hause kam, hat es geregnet.',
      explanation: 'Arabic uses one word (عندما/لما) for both. German distinguishes: "als" = single event in the past, "wenn" = repeated events or future.',
      rule: '"Als" for one-time past events. "Wenn" for repeated/habitual events (any time) or future conditional. "Wann" for questions about time.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ich weiß nicht, wenn er kommt.',
      correct: 'Ich weiß nicht, wann er kommt.',
      explanation: 'Arabic uses إذا/متى interchangeably. German strictly separates "wann" (time question) from "wenn" (conditional/temporal).',
      rule: '"Wann" = when as a time question or indirect question. "Wenn" = if/whenever (conditional or temporal conjunction).',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },

    // Dative vs accusative prepositions (Wechselpräpositionen)
    {
      mistake: 'Ich gehe in die Park.',
      correct: 'Ich gehe in den Park.',
      explanation: 'Arabic does not have two-way prepositions with case changes. "Park" is masculine, "in" + accusative for movement (wohin?), so "den Park".',
      rule: 'Two-way prepositions (in, auf, unter, über, neben, zwischen, vor, hinter) take accusative for movement/direction (wohin?) and dative for location (wo?).',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ich bin in der Schule gewesen.',
      correct: 'Ich bin in der Schule gewesen.',
      explanation: 'This is actually correct (dative for location). But Arabic speakers often use accusative everywhere because the distinction does not exist in Arabic.',
      rule: 'After "sein" (to be) use dative: Ich bin in der Schule (location, not movement). After "gehen" (to go) use accusative: Ich gehe in die Schule.',
      level: 'A2',
      category: 'grammar',
      frequency: 'high',
    },

    // Adjective endings after der/ein words
    {
      mistake: 'Der groß Tisch',
      correct: 'Der große Tisch',
      explanation: 'Arabic adjectives agree in gender but not with a comparable ending system. German requires adjective endings based on gender, case, and article type.',
      rule: 'After definite articles (der/die/das): adjective ending is -e (nominative singular) or -en (all other cases). After indefinite articles (ein/eine): mixed declension.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },
    {
      mistake: 'Ein guter Mann',
      correct: 'Ein guter Mann',
      explanation: 'This is correct! But errors occur in other cases: "Ich sehe ein guten Mann" (should be "einen guten Mann" - accusative masculine).',
      rule: 'After "ein", masculine nominative = -er, accusative = -en. Feminine nominative/accusative = -e. Neuter nominative/accusative = -es.',
      level: 'B1',
      category: 'grammar',
      frequency: 'high',
    },

    // Konjunktiv II for polite requests
    {
      mistake: 'Kannst du mir helfen? (when politeness is needed)',
      correct: 'Könntest du mir helfen? / Könnten Sie mir helfen?',
      explanation: 'Arabic uses a particle (لو/من فضلك) for polite requests without changing the verb. German uses Konjunktiv II to soften requests.',
      rule: 'For polite requests use: könnte(n), würde(n), hätte(n), dürfte(n). "Könnten Sie bitte..." is the standard polite request form.',
      level: 'B1',
      category: 'grammar',
      frequency: 'medium',
    },
    {
      mistake: 'Ich will einen Kaffee.',
      correct: 'Ich hätte gern einen Kaffee. / Ich möchte einen Kaffee.',
      explanation: 'Arabic uses أريد (I want) directly, which is normal. In German, "ich will" sounds demanding. Use "ich möchte" or "ich hätte gern" for polite ordering.',
      rule: 'Avoid using "wollen" in restaurants or shops. Use "möchten" (Konjunktiv II of mögen) or "hätte gern" for polite requests.',
      level: 'A2',
      category: 'culture',
      frequency: 'high',
    },
  ]
}

function generatePronunciationGuides(): PronunciationGuide[] {
  return [
    {
      focus: 'Der Buchstabe R',
      description: 'The German R is pronounced differently from the Arabic ر. In most German dialects, it is a uvular fricative (Zäpfchen-R) produced at the back of the throat, not a tongue-tip trill.',
      rule: 'Pronounce the German R like a gentle gargling sound at the back of the throat (uvular). In Arabic, ر is an alveolar trill (tongue tip). Practice saying "rot", "Radio", "Bruder" with a back-of-throat sound.',
      examples: [
        { word: 'rot', phonetic: '/ʁoːt/', audioHint: 'like the French r in "Paris" but softer' },
        { word: 'Radio', phonetic: '/ˈʁaːdi̯o/', audioHint: 'gargle the R briefly, then continue' },
        { word: 'Bruder', phonetic: '/ˈbʁuːdɐ/', audioHint: 'gargle R, keep the vowel short' },
        { word: 'Lehrer', phonetic: '/ˈleːʁɐ/', audioHint: 'final -er sounds like "a" as in English "better"' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Der Umlaut ü',
      description: 'The ü sound does not exist in Arabic. It requires rounding the lips while saying "ee" (like French "u" or "tu").',
      rule: 'Say "ee" as in "see", then round your lips tightly while keeping the tongue in the same position. The result is ü. Practice with "Tür", "über", "fünf".',
      examples: [
        { word: 'Tür', phonetic: '/tyːɐ/', audioHint: 'say "tea" with rounded lips' },
        { word: 'über', phonetic: '/ˈyːbɐ/', audioHint: 'say "eebah" with rounded lips' },
        { word: 'fünf', phonetic: '/fʏnf/', audioHint: 'like "finf" with short, tight rounded lips' },
        { word: 'müde', phonetic: '/ˈmyːdə/', audioHint: 'say "meedah" with rounded lips' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Der Umlaut ö',
      description: 'The ö sound is another vowel missing in Arabic. It is like saying "ay" but with rounded lips (similar to the French "oe" in "soeur").',
      rule: 'Say "ay" as in "say", then round your lips while keeping the tongue position. Practice with "schön", "Öl", "hören".',
      examples: [
        { word: 'schön', phonetic: '/ʃøːn/', audioHint: 'say "shayn" with rounded lips' },
        { word: 'Öl', phonetic: '/øːl/', audioHint: 'say "ayl" with rounded lips' },
        { word: 'hören', phonetic: '/ˈhøːʁən/', audioHint: 'say "herren" but with rounded lips' },
        { word: 'König', phonetic: '/ˈkøːnɪç/', audioHint: 'rounded lips throughout the first syllable' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Der Umlaut ä',
      description: 'The ä sound is close to the Arabic فتحة but more open than the German e. It is like the "a" in English "cat" but often longer.',
      rule: 'Pronounce ä like the "e" in English "bed" but with the mouth more open. In some contexts it is like "a" in "cat". Listen for the difference: "Bären" vs "Beeren".',
      examples: [
        { word: 'Bär', phonetic: '/bɛːɐ/', audioHint: 'like English "bear" but with a clearer e' },
        { word: 'Mädchen', phonetic: '/ˈmɛːtçən/', audioHint: 'like "met-chen", not "made-chen"' },
        { word: 'Käse', phonetic: '/ˈkɛːzə/', audioHint: 'like "kezah", open e sound' },
        { word: 'spät', phonetic: '/ʃpɛːt/', audioHint: 'like "shpet", not "shpayt"' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Der ch-Laut (ich vs ach)',
      description: 'German has two "ch" sounds: the soft "ich-Laut" (ç) after front vowels and the hard "ach-Laut" (χ) after back vowels. Arabic has only خ (which matches the ach-Laut somewhat) but no equivalent for the soft ich-Laut.',
      rule: 'Ich-Laut (ç): after e, i, ä, ö, ü, eu, äu, and at the start of words. Smile and say "sh" with tongue on the lower teeth. Ach-Laut (χ): after a, o, u. Say خ like in Arabic خبز.',
      examples: [
        { word: 'ich', phonetic: '/ɪç/', audioHint: 'like "ish" but softer, no hissing' },
        { word: 'Buch', phonetic: '/buːx/', audioHint: 'like Arabic بوخ, back-of-throat friction' },
        { word: 'Milch', phonetic: '/mɪlç/', audioHint: 'ich-Laut after i, soft and airy' },
        { word: 'Nacht', phonetic: '/naxt/', audioHint: 'ach-Laut after a, like Arabic نخت' },
        { word: 'sprechen', phonetic: '/ˈʃpʁɛçən/', audioHint: 'ich-Laut after e, soft' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'st/sp am Wortanfang',
      description: 'At the beginning of a German word, "st" is pronounced /ʃt/ and "sp" is pronounced /ʃp/. This does not exist in Arabic, where س + ت or س + ب are pronounced separately.',
      rule: 'When "st" or "sp" start a word, pronounce them as "sht" and "shp" (like "shtrasse", "shpiel"). In the middle or end of words, they stay /st/ and /sp/.',
      examples: [
        { word: 'Straße', phonetic: '/ˈʃtʁaːsə/', audioHint: 'like "shtrassah", not "strassah"' },
        { word: 'Spiel', phonetic: '/ʃpiːl/', audioHint: 'like "shpeel", not "speel"' },
        { word: 'stehen', phonetic: '/ˈʃteːən/', audioHint: 'like "shtay-en", not "stay-en"' },
        { word: 'Sport', phonetic: '/ʃpɔʁt/', audioHint: 'like "shport", not "sport"' },
        { word: 'Kiste', phonetic: '/ˈkɪstə/', audioHint: 'st in the middle stays /st/' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'sch vs Arabic ش',
      description: 'German "sch" is very similar to Arabic ش, but German sch is slightly darker and more rounded (lip-rounding is stronger).',
      rule: 'Round your lips more strongly for German "sch" than for Arabic ش. German: Schuh, Schule, schon. Compare with Arabic شمس.',
      examples: [
        { word: 'Schule', phonetic: '/ˈʃuːlə/', audioHint: 'round lips like you are about to whistle' },
        { word: 'Fisch', phonetic: '/fɪʃ/', audioHint: 'short, rounded sch at the end' },
        { word: 'schön', phonetic: '/ʃøːn/', audioHint: 'combined sch + ö, double rounding' },
        { word: 'Schwein', phonetic: '/ʃvaɪn/', audioHint: 'sch + v, strong lip rounding' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Das z /ts/-Laut',
      description: 'German "z" is pronounced /ts/ (like the "ts" in "cats"), which differs from Arabic ز (which is /z/). Arab speakers often pronounce German "z" as /z/ or /ð/.',
      rule: 'German "z" = /ts/, a plosive + fricative combination. The tongue hits the teeth ridge for "t" then releases into "s". Say "cats" and hold the ending: that is German "z".',
      examples: [
        { word: 'Zug', phonetic: '/tsuːk/', audioHint: 'like "tsook", not "zoog"' },
        { word: 'Zeit', phonetic: '/tsaɪt/', audioHint: 'like "tsight", not "zight"' },
        { word: 'Katze', phonetic: '/ˈkatsə/', audioHint: 'like "cat-sah", sharp ts in the middle' },
        { word: 'ganz', phonetic: '/ɡants/', audioHint: 'like "gants", ending with a crisp ts' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Der pf-Laut',
      description: 'The German "pf" combination is a single affricate /pf/, starting with p and moving immediately to f. Arabic has no such combination; speakers tend to drop the p or the f.',
      rule: 'Start with a /p/ (lips closed, release explosively) and immediately transition to /f/ (upper teeth on lower lip). Do not separate into two distinct sounds.',
      examples: [
        { word: 'Pferd', phonetic: '/pfeːɐt/', audioHint: 'bite lower lip after the p burst' },
        { word: 'Apfel', phonetic: '/ˈapfəl/', audioHint: 'like "ap-fel", both lips and teeth' },
        { word: 'Kopf', phonetic: '/kɔpf/', audioHint: 'ending pf, do not drop the p' },
        { word: 'Pfennig', phonetic: '/ˈpfɛnɪç/', audioHint: 'p and f flow together smoothly' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Stimmhaftes s vs stimmloses s',
      description: 'German has two "s" sounds: voiced /z/ (stimmhaft) like in "Sonne" and voiceless /s/ (stimmlos) like in "das". Arabic has only one /s/ sound (سين).',
      rule: 'A single "s" at the start of a word or before a vowel is voiced /z/ (vibrating vocal cords). Double "ss" or "ß" are always voiceless /s/. At the end of a word, "s" is usually voiceless.',
      examples: [
        { word: 'Sonne', phonetic: '/ˈzɔnə/', audioHint: 'like "zonah", with buzzing s' },
        { word: 'das', phonetic: '/das/', audioHint: 'voiceless s at the end, no buzzing' },
        { word: 'Straße', phonetic: '/ˈʃtʁaːsə/', audioHint: 'ß = voiceless s, like Arabic س' },
        { word: 'lesen', phonetic: '/ˈleːzən/', audioHint: 'first s is voiced, like a buzzing' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Vokallängen (kurze vs lange Vokale)',
      description: 'German distinguishes long and short vowels, and the length changes meaning. Arabic has long and short vowels too, but the rules differ.',
      rule: 'A vowel is long when followed by a single consonant (or h), and short when followed by a double consonant or consonant cluster. Memorize minimal pairs: "Miete" (long) vs "Mitte" (short).',
      examples: [
        { word: 'Miete', phonetic: '/ˈmiːtə/', audioHint: 'long ee, like English "meet-ah"' },
        { word: 'Mitte', phonetic: '/ˈmɪtə/', audioHint: 'short i, like English "mit-ah"' },
        { word: 'Ofen', phonetic: '/ˈoːfən/', audioHint: 'long o, like "oh-fen"' },
        { word: 'offen', phonetic: '/ˈɔfən/', audioHint: 'short o, like "awf-fen"' },
        { word: 'Beet', phonetic: '/beːt/', audioHint: 'long e, like "bait"' },
        { word: 'Bett', phonetic: '/bɛt/', audioHint: 'short e, like "bet"' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'ei vs ie',
      description: 'German "ei" is pronounced /aɪ/ (like English "eye") and "ie" is pronounced /iː/ (like English "see"). Arabic speakers often confuse these because Arabic script does not distinguish them.',
      rule: '"ei" = /aɪ/ (diphthong, starts with "ah" moves to "ee"). "ie" = /iː/ (long monophthong, pure "ee" sound). Never pronounce "ie" as two separate vowels.',
      examples: [
        { word: 'Ei', phonetic: '/aɪ/', audioHint: 'like English "eye", a diphthong' },
        { word: 'Eis', phonetic: '/aɪs/', audioHint: 'like English "ice", not "ees"' },
        { word: 'lieb', phonetic: '/liːp/', audioHint: 'long ee, like "leap"' },
        { word: 'Leib', phonetic: '/laɪp/', audioHint: 'like "lipe", a diphthong' },
        { word: 'viel', phonetic: '/fiːl/', audioHint: 'like "feel", not "file"' },
        { word: 'Teil', phonetic: '/taɪl/', audioHint: 'like "tile", not "teel"' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Doppelkonsonanten',
      description: 'Double consonants in German are not just spelling; they signal that the preceding vowel is short. Arabic does not use consonant doubling in the same way.',
      rule: 'After a double consonant (tt, mm, nn, pp, etc.), the preceding vowel is always short. Pronounce the consonant slightly longer/tenser than a single one.',
      examples: [
        { word: 'Kanne', phonetic: '/ˈkanə/', audioHint: 'short a, hold the n slightly longer' },
        { word: 'Kahn', phonetic: '/kaːn/', audioHint: 'single n, long a (compare with Kanne)' },
        { word: 'Bitte', phonetic: '/ˈbɪtə/', audioHint: 'short i, double t is held briefly' },
        { word: 'Ratte', phonetic: '/ˈʁatə/', audioHint: 'short a, double t = crisp stop' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'ng am Wortende',
      description: 'The German "ng" is a single velar nasal sound /ŋ/ (like the "ng" in English "sing"). Arabic does not have this final /ŋ/ sound; Arabic speakers often pronounce it as /nɡ/ or /nʒ/.',
      rule: 'Keep the back of the tongue against the soft palate. Do not release a /g/ after the /ŋ/. The tongue stays up. Compare "singen" (correct /ŋ/) vs "sing-en" (incorrect /ŋɡ/).',
      examples: [
        { word: 'singen', phonetic: '/ˈzɪŋən/', audioHint: 'like "zing-en", no hard g' },
        { word: 'Bank', phonetic: '/baŋk/', audioHint: 'ng + k, keep the tongue up' },
        { word: 'eng', phonetic: '/ɛŋ/', audioHint: 'like English "eng", no g sound' },
        { word: 'Zeitung', phonetic: '/ˈtsaɪtʊŋ/', audioHint: 'ending is /ʊŋ/, not /ʊnɡ/' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'eu / äu',
      description: 'German "eu" and "äu" are both pronounced /ɔʏ/ (like English "boy" but starting with "o"). Arabic does not have this diphthong.',
      rule: 'Start with an "o" sound (like in "pot") and glide into a "y" sound. It is similar to the "oy" in "boy" but with more lip rounding at the start.',
      examples: [
        { word: 'neu', phonetic: '/nɔʏ/', audioHint: 'like "noy", not "new"' },
        { word: 'Haus', phonetic: '/haʊs/', audioHint: 'different diphthong! au = /aʊ/ like "how"' },
        { word: 'Freude', phonetic: '/ˈfʁɔʏdə/', audioHint: 'like "froy-dah", round the o' },
        { word: 'Bäume', phonetic: '/ˈbɔʏmə/', audioHint: 'äu = same as eu, "boy-mah"' },
        { word: 'deutsch', phonetic: '/dɔʏtʃ/', audioHint: 'like "doytch", not "dutch"' },
      ],
      level: 'A1',
      challengeFor: ['Arabic'],
    },
    {
      focus: 'Betonung in zusammengesetzten Wörtern',
      description: 'German compound words (like "Hausaufgaben", "Krankenhaus", "Fernsehapparat") combine multiple nouns. The stress is almost always on the first word. Arabic stress patterns differ significantly.',
      rule: 'In German compound nouns, the stress falls on the first component. For example: "HAUSaufgaben" (not "hausAUFgaben"). This differs from Arabic where stress depends on syllable weight.',
      examples: [
        { word: 'Hausaufgaben', phonetic: '/ˈhaʊsʔaʊfˌɡaːbən/', audioHint: 'stress on HAUS, first element' },
        { word: 'Krankenhaus', phonetic: '/ˈkʁaŋkənˌhaʊs/', audioHint: 'stress on KRANKEN, not haus' },
        { word: 'Wörterbuch', phonetic: '/ˈvœʁtɐˌbuːx/', audioHint: 'stress on WÖRTER, first element' },
        { word: 'Fahrkartenautomat', phonetic: '/ˈfaːɐ̯kaʁtənʔaʊtoˌmaːt/', audioHint: 'primary stress on FAHR' },
      ],
      level: 'B1',
      challengeFor: ['Arabic'],
    },
  ]
}

function generateCulturalNotes(): CulturalNote[] {
  return [
    {
      title: 'Sie vs Du – Die richtige Anrede',
      category: 'etiquette',
      description: 'German distinguishes formal "Sie" (capitalized) from informal "du". Using the wrong form can cause offense or awkwardness.',
      tips: [
        'Always address strangers, colleagues, professors, and officials with "Sie" unless invited to use "du".',
        'Young people (under 30) often use "du" among themselves immediately.',
        'Colleagues may work together for years before switching to "du", often marked by a formal "duzen" ceremony.',
        'When in doubt, always start with "Sie" – it is better to be too formal than too casual.',
        'The verb "duzen" means to address someone with "du", "siezen" means to use "Sie".',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Pünktlichkeit (Punctuality)',
      category: 'etiquette',
      description: 'Germans value punctuality highly. Being late is considered disrespectful, especially for professional or formal appointments.',
      tips: [
        'For business meetings, arrive 5 minutes early. Being on time means exactly on time, not 5–10 minutes late.',
        'For private parties, arriving 15 minutes late is acceptable (called "akademisches Viertel" in academic contexts).',
        'With friends, being 5–10 minutes late is usually fine, but always text if you will be later than agreed.',
        'The phrase "pünktlich wie die Maurer" (punctual like bricklayers) reflects the cultural ideal.',
        'For doctor appointments, arrive exactly on time or you may lose your slot.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Kaffeeklatsch und Kuchen',
      category: 'food',
      description: 'The German tradition of afternoon coffee and cake (Kaffee und Kuchen) is a beloved social ritual, especially on Sundays.',
      tips: [
        'Kaffee und Kuchen is typically between 2:30 PM and 4:30 PM on Sundays.',
        'Common cakes include: Schwarzwälder Kirschtorte, Apfelkuchen, Käsekuchen, and Streuselkuchen.',
        'If invited for Kaffee und Kuchen, bring a small gift (flowers, a bottle of wine, or a cake).',
        'Coffee is usually filter coffee (not espresso-based), and it is common to offer "Milch und Zucker".',
        'Tea is also offered: "Tee" is common in northern Germany (Ostfriesentee).',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Sonntagsruhe (Sunday Quiet Laws)',
      category: 'society',
      description: 'Germany has strict laws about noise on Sundays and public holidays. Many activities are prohibited to preserve a quiet, restful day.',
      tips: [
        'No loud DIY work: drilling, hammering, mowing the lawn are forbidden on Sundays.',
        'Some stores are closed on Sundays (except bakeries, gas stations, and train station shops).',
        'You can still listen to music and have guests, but keep noise at a reasonable level.',
        'Neighbors may call the police if you violate the Sunday quiet rules ("Ruhestörung").',
        'Public holidays are treated like Sundays regarding noise restrictions.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Pfandflaschen (Deposit System)',
      category: 'everyday',
      description: 'Germany has a comprehensive bottle deposit system (Pfandsystem) that encourages recycling. Almost all beverage containers have a deposit.',
      tips: [
        'Look for the Pfand logo on bottles and cans. Most plastic bottles and glass beer bottles have €0.25 Pfand.',
        'Return empty bottles to any supermarket that sells them. There are reverse vending machines ("Pfandautomat").',
        'Glass bottles without Pfand (wine, oil) go in the glass recycling bins (color-separated: weiß, grün, braun).',
        'Some people collect Pfand bottles left on the street – this is accepted but not expected.',
        'The Pfand system covers: Einweg (disposable) €0.25 and Mehrweg (reusable) €0.08–€0.15.',
      ],
      level: 'A2',
      goetheRelevant: false,
    },
    {
      title: 'Anmeldung (Registration System)',
      category: 'society',
      description: 'Every person living in Germany must register their address at the local Bürgeramt within 14 days of moving in.',
      tips: [
        'Bring your passport, rental contract (Wohnungsgeberbestätigung), and registration form.',
        'You must also de-register when moving out of Germany (Abmeldung).',
        'Without Anmeldung, you cannot open a bank account, get health insurance, or register a car.',
        'Book an appointment online (Termin) – walk-ins are rarely accepted.',
        'Some cities allow online registration (digitale Anmeldung) in certain cases.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Krankenversicherung (Health Insurance)',
      category: 'society',
      description: 'Health insurance is mandatory in Germany. You must be covered by either public (gesetzlich) or private (privat) insurance.',
      tips: [
        'Public insurance (gesetzliche Krankenversicherung) costs about 14.6% + Zusatzbeitrag of your salary, shared with employer.',
        'Students under 30 can get discounted student rates (about €110–€120/month).',
        'Private insurance is available for high earners (>€69,300/year in 2025) and self-employed.',
        'You receive an electronic health card (eGK) with a photo to present at doctor visits.',
        'Dental visits are covered for basic checkups; more complex work often requires extra insurance.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Schulnoten (Grading System 1–6)',
      category: 'society',
      description: 'German schools use a grading system from 1 (best) to 6 (fail). This differs from many Arabic grading systems.',
      tips: [
        '1 = sehr gut (very good), 2 = gut (good), 3 = befriedigend (satisfactory), 4 = ausreichend (sufficient/passing), 5 = mangelhaft (poor/failing), 6 = ungenügend (insufficient).',
        'A grade of 4.0 is the minimum passing grade. Below 4.0 means failing.',
        'In oral exams, the "1" is rarely given; "2" is considered excellent.',
        'University grades use a similar system, and your final GPA (Notendurchschnitt) matters for jobs and Master programs.',
        'In job applications, phrases like "mit Auszeichnung bestanden" (with distinction) are used for top performers.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Feiertage (Public Holidays)',
      category: 'society',
      description: 'Public holidays in Germany vary by state (Bundesland). Some holidays are nationwide, others are regional.',
      tips: [
        'Nationwide holidays: Neujahr (Jan 1), Karfreitag, Ostermontag, Tag der Arbeit (May 1), Christi Himmelfahrt, Pfingstmontag, Tag der Deutschen Einheit (Oct 3), 1. und 2. Weihnachtstag (Dec 25–26).',
        'Regional holidays: Heilige Drei Könige (Jan 6) in Bavaria/BW, Fronleichnam in Catholic states, Mariä Himmelfahrt (Aug 15) in parts of Bavaria/Saarland.',
        'Reformationstag (Oct 31) is a holiday in Protestant-majority states.',
        'When a holiday falls on a Thursday, many people take Friday off ("Brückentag" = bridge day).',
        'Shops are closed on public holidays, so plan your grocery shopping in advance.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'BRD vs DDR – Historische Unterschiede',
      category: 'society',
      description: 'Germany was divided into West (BRD/Bundesrepublik) and East (DDR/Deutsche Demokratische Republik) from 1949 to 1990. This still influences culture and language today.',
      tips: [
        'East and West still have different dialects, cultural habits, and even vocabulary differences (e.g., "Brötchen" vs "Semmel" vs "Schrippe").',
        'Economically, the East still lags behind the West in some metrics (income, infrastructure).',
        'Many Germans over 40 have strong memories of the division. Avoid making jokes about the Wall or East German life.',
        'The "Mauer im Kopf" (wall in the head) refers to lingering mental differences between East and West Germans.',
        'Former East German products (Ostprodukte) like "Club-Mate" or "Rotkäppchen" sparkling wine are still popular.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Vereinskultur (Club Membership)',
      category: 'society',
      description: 'Germany has a rich club (Verein) culture. From sports to music to gardening, joining a Verein is a key part of social life.',
      tips: [
        'The most common Verein is the Fußballverein (soccer club), but there are also Schützenverein (shooting), Gesangverein (choir), and Kleingartenverein (allotment garden).',
        'Membership fees are usually low (€50–€200 per year) and offer access to facilities and social events.',
        'Vereine are run by elected boards (Vorstand) with positions like Vorsitzender (chair), Kassenwart (treasurer), and Schriftführer (secretary).',
        'Commitment is expected: members attend meetings, help with events, and pay dues on time.',
        'Joining a Verein is a great way to make German friends and integrate into local communities.',
      ],
      level: 'B1',
      goetheRelevant: false,
    },
    {
      title: 'Mülltrennung (Waste Separation)',
      category: 'society',
      description: 'Germany has one of the most sophisticated waste separation systems in the world. Incorrect sorting can result in fines.',
      tips: [
        'Four main bins: Restmüll (residual waste/gray), Gelber Sack (packaging/yellow), Papier (paper/blue), Bio (organic/brown or green).',
        'Plastic packaging goes in the Gelber Sack, not the Restmüll. Glass goes in neighborhood recycling bins (separated by color).',
        'Batteries and electronics must be returned to special collection points, not household trash.',
        'Bio waste includes: fruit/vegetable scraps, coffee grounds, eggshells, garden waste. No plastic bags!',
        'Many apartments have a "Mülltrennungsordnung" (waste separation rules) posted in the stairwell.',
      ],
      level: 'A2',
      goetheRelevant: false,
    },
    {
      title: 'Deutsche Direktheit (German Directness)',
      category: 'communication',
      description: 'Germans value direct, honest communication. This can feel blunt or rude to people from cultures (like many Arab cultures) that prioritize indirectness and face-saving.',
      tips: [
        'A German "Nein" usually means no – it is not an invitation to negotiate or insist.',
        'Criticism is often given openly and directly in professional settings. It is not personal; it is about the work.',
        'Small talk is less common in Germany than in many other cultures. Germans prefer meaningful conversation.',
        'When Germans say "Wir müssen mal reden" (we need to talk), it is serious – not a casual invitation.',
        'Direct eye contact during conversation is expected and signals honesty and interest.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Handschlag (Handshake Culture)',
      category: 'etiquette',
      description: 'Handshakes are very common in Germany for greetings and farewells in both professional and social contexts.',
      tips: [
        'A firm handshake with direct eye contact is the standard. A weak handshake (like "tote Fisch") gives a bad impression.',
        'Shake hands with everyone in a group when arriving and leaving – even children are offered a handshake.',
        'Between friends, especially younger people, hugs (Umarmung) or cheek kisses are increasingly common.',
        'In business, always shake hands with superiors and colleagues at the start and end of meetings.',
        'Since COVID-19, fist bumps (Faustgruß) or nods are sometimes accepted alternatives.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Bargeld vs Karte (Cash vs Card)',
      category: 'everyday',
      description: 'Despite being a modern country, Germany still heavily relies on cash (Bargeld). Card payments are growing but are not universal like in some other countries.',
      tips: [
        'Many small shops, bakeries, restaurants, and markets only accept cash. Always carry €50–€100 in cash.',
        'EC-Karte (debit card) is widely accepted; credit cards (Visa/Mastercard) are less common in smaller establishments.',
        'Mobile payments (Apple Pay, Google Pay) work at most chain stores but less so at small businesses.',
        'Some places have a minimum amount for card payments (usually €10 or €5).',
        'It is common to split bills ("getrennt zahlen") – each person pays for their own portion.',
      ],
      level: 'A2',
      goetheRelevant: false,
    },
    {
      title: 'Berufsausbildung (Vocational Training)',
      category: 'society',
      description: 'The German dual vocational training system (Duale Ausbildung) combines on-the-job training with classroom education and is highly respected.',
      tips: [
        'About 50% of German school leavers choose vocational training over university. Skilled trades earn respect and good salaries.',
        'The system alternates between working in a company (3–4 days/week) and attending a vocational school (Berufsschule, 1–2 days/week).',
        'Popular apprenticeships include: Kfz-Mechatroniker (auto mechanic), Industriekaufmann (industrial clerk), and Fachinformatiker (IT specialist).',
        'After training (usually 2–3.5 years), you take a final exam (Abschlussprüfung) before the Chamber of Commerce (IHK) or Chamber of Crafts (HWK).',
        'Training is paid by the company: average first-year salary is about €900–€1,100/month, increasing each year.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Weihnachtstraditionen (Christmas Traditions)',
      category: 'traditions',
      description: 'German Christmas traditions are famous worldwide and include Advent, Christmas markets, and specific customs from late November through December.',
      tips: [
        'Advent: the four Sundays before Christmas. Families have Adventskränze (Advent wreaths) with four candles, lighting one more each Sunday.',
        'Adventskalender (Advent calendar): 24 little doors, opened from Dec 1–24, each containing chocolate or a small gift.',
        'Weihnachtsmärkte (Christmas markets) open from late November to Christmas Eve. Famous ones: Nürnberg, Dresden, Cologne.',
        'Heiligabend (Christmas Eve, Dec 24) is when presents are exchanged (Bescherung), often after church.',
        'Traditional foods: Weihnachtsgans (roast goose), Lebkuchen, Stollen, and Glühwein (mulled wine).',
        'The figure of "Weihnachtsmann" (Father Christmas) brings presents in the North, while "Christkind" (Christ child) does so in the South.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Ostertraditionen (Easter Traditions)',
      category: 'traditions',
      description: 'German Easter traditions include unique customs like the Osterhase (Easter bunny), Osterfeuer (Easter fire), and decorated eggs.',
      tips: [
        'Ostereier (Easter eggs) are hard-boiled and painted/colored. Children search for hidden eggs on Easter Sunday.',
        'Osterbrunnen: in many regions (especially Franconia), wells are decorated with thousands of painted eggs and greenery.',
        'Osterfeuer (Easter fires) are lit on Holy Saturday evening, symbolizing the end of winter and the light of Christ.',
        'Traditional foods: Lammbraten (roast lamb), Osterlamm (lamb-shaped cake), and grüne Soße (green sauce, a Hesse tradition).',
        'Public holidays: Karfreitag (Good Friday) and Ostermontag (Easter Monday) are both public holidays.',
        'Karfreitag is a "stiller Feiertag" (silent holiday) – dancing and loud music are prohibited in most states.',
      ],
      level: 'A2',
      goetheRelevant: true,
    },
    {
      title: 'Oktoberfest – Mehr als nur Bier',
      category: 'traditions',
      description: 'Oktoberfest in Munich is the world largest Volksfest (folk festival). Despite the name, it mostly takes place in September.',
      tips: [
        'Oktoberfest starts in mid-September and ends on the first Sunday of October. It runs 16–18 days.',
        'Beer is served in Maß (1-liter glass mugs). Only beer from Munich breweries (Paulaner, Hofbräu, Augustiner, etc.) is allowed.',
        'Traditional attire: Lederhosen (leather pants) for men and Dirndl (dress) for women. Wearing them shows respect for tradition.',
        'Reservations for beer tents are recommended. Without one, arrive before 10 AM on weekdays to get a seat.',
        'Oktoberfest is also a family event with rides, games, and traditional food (Hendl = grilled chicken, Brezen = pretzels).',
        'Many cities have their own smaller Oktoberfest celebrations (e.g., Stuttgart, Hamburg, Berlin).',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Fußballkultur (Soccer Culture)',
      category: 'traditions',
      description: 'Football (Fußball) is the national sport in Germany. The Bundesliga is one of the world top football leagues.',
      tips: [
        'The most successful clubs: FC Bayern München, Borussia Dortmund, RB Leipzig, Bayer Leverkusen.',
        'Ticket prices are relatively affordable (€15–€60 for regular games). Standing areas ("Stehplätze") are especially cheap.',
        'Fans are known for choreographed displays (Choreografien), flags, and singing throughout the match.',
        'The national team (Die Mannschaft) won the World Cup in 1954, 1974, 1990, and 2014.',
        'Public viewing (public screenings) is common during tournaments like the World Cup or European Championship.',
        'Important phrases: "Tor!" (goal), "Abseits" (offside), "Elfmeter" (penalty kick), and "Schiri" (referee).',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Umweltbewusstsein (Environmental Awareness)',
      category: 'society',
      description: 'Germany is a global leader in environmentalism (Umweltschutz). Recycling, renewable energy, and eco-friendly behavior are deeply ingrained.',
      tips: [
        'Germans are enthusiastic about recycling (Pfand, Mülltrennung). Expect questions about which bin something goes in.',
        'Bring your own bags to the supermarket – plastic bags cost extra and are frowned upon.',
        'Many people bike to work or use public transport (ÖPNV) rather than driving. Bike lanes (Radwege) are everywhere.',
        '"Ökostrom" (green electricity) is widely available and many households choose it even if slightly more expensive.',
        'The Energiewende (energy transition) aims to phase out nuclear and coal power in favor of renewables.',
        'Eco-friendly products (Bio-Produkte) are widely available in supermarkets and highly popular.',
      ],
      level: 'B1',
      goetheRelevant: true,
    },
    {
      title: 'Balkonien – Urlaub zu Hause',
      category: 'everyday',
      description: '"Balkonien" is a humorous German term for staying home on vacation (literally "the country of the balcony"). It reflects the cultural appreciation for home relaxation.',
      tips: [
        'The term combines "Balkon" (balcony) with "-ien" (a common suffix for country names like Italien or Frankreich).',
        'Germans take their balcony culture seriously: grilling (Balkongrillen), plants, furniture, and sometimes even small gardens.',
        'Many apartment leases specify rules for balcony use (no loud music at night, no BBQ smoke in neighbors windows).',
        'In summer, parks and green spaces fill with people grilling, playing, and sunbathing.',
        '"Urlaub auf Balkonien" is a self-deprecating way to say one cannot afford a real vacation.',
      ],
      level: 'B1',
      goetheRelevant: false,
    },
  ]
}

function main() {
  const outputDir = path.dirname(OUTPUT)
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true })
  }

  const data: OutputData = {
    idioms: generateIdioms(),
    commonMistakes: generateCommonMistakes(),
    pronunciationGuides: generatePronunciationGuides(),
    culturalNotes: generateCulturalNotes(),
  }

  fs.writeFileSync(OUTPUT, JSON.stringify(data, null, 2))

  console.log(`\nGenerated idioms-culture.json at: ${OUTPUT}`)
  console.log(`\nItem counts:`)
  console.log(`  Idioms:              ${data.idioms.length}`)
  console.log(`  Common Mistakes:     ${data.commonMistakes.length}`)
  console.log(`  Pronunciation Guides: ${data.pronunciationGuides.length}`)
  console.log(`  Cultural Notes:      ${data.culturalNotes.length}`)
  console.log(`  ───────────────────────────`)
  console.log(`  Total:               ${data.idioms.length + data.commonMistakes.length + data.pronunciationGuides.length + data.culturalNotes.length}`)
}

main()
