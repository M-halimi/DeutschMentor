/**
 * Complete CEFR Curriculum Specifications (A1-C2)
 * Compact lesson specs that get expanded by the content engine
 * 6 levels × 6+ modules × 6+ lessons = 200+ lessons
 */

import type { LessonSpec } from './lesson-engine'

export interface ModuleSpec {
  id: string
  title: string
  description: string
  objectives: string[]
  orderIndex: number
  estimatedHours: number
  lessons: LessonSpec[]
}

export interface LevelSpec {
  id: string
  title: string
  description: string
  color: string
  orderIndex: number
  modules: ModuleSpec[]
}

// Vocabulary domains mapped to levels
export const LEVEL_VOCAB: Record<string, string[]> = {
  A1: ['greetings', 'family', 'food', 'home', 'daily_routine', 'numbers', 'colors', 'body', 'clothes', 'weather'],
  A2: ['shopping', 'travel', 'restaurant', 'health', 'city', 'directions', 'hobbies', 'holidays', 'nature', 'animals'],
  B1: ['work', 'education', 'media', 'society', 'environment', 'technology', 'culture', 'sports', 'relationships', 'feelings'],
  B2: ['business', 'politics', 'science', 'economy', 'law', 'finance', 'art', 'literature', 'history', 'philosophy'],
  C1: ['academic', 'research', 'linguistics', 'rhetoric', 'discourse', 'diplomacy', 'journalism', 'psychology', 'sociology', 'ethics'],
  C2: ['stylistics', 'poetics', 'pragmatics', 'semantics', 'translation', 'dialectology', 'media_theory', 'intercultural', 'cognitive_science', 'epistemology'],
}

// ================================================================
// COMPLETE CURRICULUM
// ================================================================

export const CURRICULUM_SPECS: LevelSpec[] = [
  // ================================================================
  // A1 - BEGINNER
  // ================================================================
  {
    id: 'A1', title: 'Beginner',
    description: 'Start your German journey from zero. Learn basic greetings, introductions, and everyday phrases. By the end of A1, you can understand and use familiar everyday expressions and very basic phrases.',
    color: 'from-green-500 to-emerald-600', orderIndex: 1,
    modules: [
      {
        id: 'M-A1-01', title: 'Hallo! Erste Schritte',
        description: 'Learn basic greetings, introductions, the alphabet, and numbers 1-100.',
        objectives: ['Greet people formally and informally', 'Introduce yourself and ask others their name', 'Say where you come from', 'Count from 1 to 100', 'Spell your name using the German alphabet'],
        orderIndex: 1, estimatedHours: 4,
        lessons: [
          { id: 'L-A1-01-01', moduleId: 'M-A1-01', title: 'Begrüßungen und Vorstellungen', description: 'Learn how to greet people, say goodbye, and introduce yourself.', topic: 'Greetings & Introductions', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'greetings', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-01-02', moduleId: 'M-A1-01', title: 'Das Alphabet', description: 'Learn the German alphabet, letter pronunciation, and spelling.', topic: 'Alphabet', type: 'pronunciation', duration: 30, orderIndex: 2, domain: 'greetings', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-01-03', moduleId: 'M-A1-01', title: 'Zahlen 1-20', description: 'Learn numbers from 1 to 20, age, and phone numbers.', topic: 'Numbers', type: 'vocabulary', duration: 25, orderIndex: 3, domain: 'numbers', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-01-04', moduleId: 'M-A1-01', title: 'Zahlen 21-100', description: 'Learn numbers 21-100, prices, and quantities.', topic: 'Numbers', type: 'vocabulary', duration: 25, orderIndex: 4, domain: 'numbers', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-01-05', moduleId: 'M-A1-01', title: 'Länder und Nationalitäten', description: 'Learn country names and nationalities in German.', topic: 'Countries & Nationalities', type: 'vocabulary', duration: 30, orderIndex: 5, domain: 'greetings', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-01-06', moduleId: 'M-A1-01', title: 'Erste Gespräche führen', description: 'Combine greetings, introductions, and basic questions in simple conversations.', topic: 'Basic Conversations', type: 'conversation', duration: 35, orderIndex: 6, domain: 'greetings', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
      {
        id: 'M-A1-02', title: 'Familie und Alltag',
        description: 'Talk about your family, describe your daily routine, and tell time.',
        objectives: ['Describe family members and relationships', 'Use possessive articles mein/dein', 'Conjugate regular verbs in present tense', 'Tell time and talk about daily schedules'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-A1-02-01', moduleId: 'M-A1-02', title: 'Die Familie', description: 'Learn family member vocabulary and possessive articles.', topic: 'Family Members', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'family', grammarFocus: 'possessive_articles', cefr: 'A1' },
          { id: 'L-A1-02-02', moduleId: 'M-A1-02', title: 'Verwandte und Beziehungen', description: 'Extended family, relationship terms, and family tree.', topic: 'Relatives', type: 'vocabulary', duration: 25, orderIndex: 2, domain: 'family', grammarFocus: 'possessive_articles', cefr: 'A1' },
          { id: 'L-A1-02-03', moduleId: 'M-A1-02', title: 'Mein Tagesablauf', description: 'Describe your daily routine using regular verbs.', topic: 'Daily Routine', type: 'vocabulary', duration: 30, orderIndex: 3, domain: 'daily_routine', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-02-04', moduleId: 'M-A1-02', title: 'Die Uhrzeit', description: 'Learn how to tell time in formal and informal ways.', topic: 'Telling Time', type: 'vocabulary', duration: 25, orderIndex: 4, domain: 'daily_routine', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-02-05', moduleId: 'M-A1-02', title: 'Meine Familie vorstellen', description: 'Practice introducing and describing your family.', topic: 'Family Introduction', type: 'speaking', duration: 20, orderIndex: 5, domain: 'family', grammarFocus: 'possessive_articles', cefr: 'A1' },
          { id: 'L-A1-02-06', moduleId: 'M-A1-02', title: 'Test: Familie und Alltag', description: 'Test your knowledge of Module 2.', topic: 'Module Test', type: 'test', duration: 25, orderIndex: 6, domain: 'family', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
      {
        id: 'M-A1-03', title: 'Wohnen',
        description: 'Learn vocabulary about homes, furniture, and describing where you live.',
        objectives: ['Describe your home and rooms', 'Name furniture and household items', 'Use definite and indefinite articles', 'Use adjectives after "sein"'],
        orderIndex: 3, estimatedHours: 4,
        lessons: [
          { id: 'L-A1-03-01', moduleId: 'M-A1-03', title: 'Mein Zuhause', description: 'Learn rooms and basic furniture vocabulary with articles.', topic: 'Home & Rooms', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-03-02', moduleId: 'M-A1-03', title: 'Möbel und Haushaltsgegenstände', description: 'Detailed furniture and household item vocabulary.', topic: 'Furniture', type: 'vocabulary', duration: 30, orderIndex: 2, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-03-03', moduleId: 'M-A1-03', title: 'Die Wohnung beschreiben', description: 'Describe apartments using adjectives and prepositions.', topic: 'Describing Homes', type: 'grammar', duration: 30, orderIndex: 3, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-03-04', moduleId: 'M-A1-03', title: 'Wohnungssuche', description: 'Learn how to read apartment ads and talk about housing.', topic: 'Apartment Hunting', type: 'reading', duration: 25, orderIndex: 4, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-03-05', moduleId: 'M-A1-03', title: 'Meine Wohnung präsentieren', description: 'Present your apartment or ideal home.', topic: 'Presenting Home', type: 'speaking', duration: 20, orderIndex: 5, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-03-06', moduleId: 'M-A1-03', title: 'Test: Wohnen', description: 'Test your knowledge of Module 3.', topic: 'Module Test', type: 'test', duration: 20, orderIndex: 6, domain: 'home', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
      {
        id: 'M-A1-04', title: 'Essen und Einkaufen',
        description: 'Learn shopping vocabulary, food names, and how to order in restaurants.',
        objectives: ['Name foods and drinks', 'Shop for groceries', 'Order in a restaurant', 'Understand prices and pay', 'Use "möchten" for polite requests'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-A1-04-01', moduleId: 'M-A1-04', title: 'Lebensmittel', description: 'Learn food and grocery vocabulary with articles.', topic: 'Food & Groceries', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-04-02', moduleId: 'M-A1-04', title: 'Getränke und Mahlzeiten', description: 'Learn drinks and meal names.', topic: 'Drinks & Meals', type: 'vocabulary', duration: 25, orderIndex: 2, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-04-03', moduleId: 'M-A1-04', title: 'Im Supermarkt', description: 'Practice shopping conversations and understand prices.', topic: 'Shopping', type: 'dialogue', duration: 30, orderIndex: 3, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-04-04', moduleId: 'M-A1-04', title: 'Im Restaurant', description: 'Learn how to order food and interact in restaurants.', topic: 'Restaurant', type: 'dialogue', duration: 30, orderIndex: 4, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-04-05', moduleId: 'M-A1-04', title: 'Mengen und Preise', description: 'Learn quantities, weights, and how to talk about prices.', topic: 'Quantities & Prices', type: 'vocabulary', duration: 25, orderIndex: 5, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-04-06', moduleId: 'M-A1-04', title: 'Test: Essen und Einkaufen', description: 'Test your knowledge of Module 4.', topic: 'Module Test', type: 'test', duration: 25, orderIndex: 6, domain: 'food', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
      {
        id: 'M-A1-05', title: 'Arbeit und Berufe',
        description: 'Learn vocabulary for jobs, workplaces, and basic professional communication.',
        objectives: ['Name common professions', 'Talk about your job', 'Use the verb "sein" for professions', 'Use the verb "haben" for possession', 'Use numbers for phone and email'],
        orderIndex: 5, estimatedHours: 4,
        lessons: [
          { id: 'L-A1-05-01', moduleId: 'M-A1-05', title: 'Berufe', description: 'Learn common job titles and profession vocabulary.', topic: 'Professions', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'work', grammarFocus: 'sein_haben', cefr: 'A1' },
          { id: 'L-A1-05-02', moduleId: 'M-A1-05', title: 'Am Arbeitsplatz', description: 'Learn workplace and office vocabulary.', topic: 'Workplace', type: 'vocabulary', duration: 30, orderIndex: 2, domain: 'work', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-05-03', moduleId: 'M-A1-05', title: 'Telefonnummer und E-Mail', description: 'Practice giving phone numbers and email addresses.', topic: 'Contact Details', type: 'vocabulary', duration: 25, orderIndex: 3, domain: 'work', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-05-04', moduleId: 'M-A1-05', title: 'Im Büro', description: 'Learn office routines and basic workplace communication.', topic: 'Office Life', type: 'dialogue', duration: 30, orderIndex: 4, domain: 'work', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-05-05', moduleId: 'M-A1-05', title: 'Was sind Sie von Beruf?', description: 'Practice talking about professions and workplaces.', topic: 'Talking About Jobs', type: 'speaking', duration: 20, orderIndex: 5, domain: 'work', grammarFocus: 'sein_haben', cefr: 'A1' },
          { id: 'L-A1-05-06', moduleId: 'M-A1-05', title: 'Test: Arbeit und Berufe', description: 'Test your knowledge of Module 5.', topic: 'Module Test', type: 'test', duration: 20, orderIndex: 6, domain: 'work', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
      {
        id: 'M-A1-06', title: 'Reisen und Freizeit',
        description: 'Learn travel vocabulary, transportation, and leisure activities.',
        objectives: ['Book accommodations and transportation', 'Ask for and give directions', 'Talk about hobbies and free time', 'Use separable prefix verbs', 'Use "gern" to express likes'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-A1-06-01', moduleId: 'M-A1-06', title: 'Verkehrsmittel', description: 'Learn transportation vocabulary: trains, buses, cars, planes.', topic: 'Transportation', type: 'vocabulary', duration: 30, orderIndex: 1, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-06-02', moduleId: 'M-A1-06', title: 'Am Bahnhof', description: 'Learn how to buy tickets and navigate train stations.', topic: 'Train Station', type: 'dialogue', duration: 30, orderIndex: 2, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-06-03', moduleId: 'M-A1-06', title: 'Hobbys und Freizeit', description: 'Learn vocabulary for hobbies, sports, and free time activities.', topic: 'Hobbies', type: 'vocabulary', duration: 30, orderIndex: 3, domain: 'hobbies', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-06-04', moduleId: 'M-A1-06', title: 'Das Wetter', description: 'Learn basic weather expressions and seasons.', topic: 'Weather', type: 'vocabulary', duration: 25, orderIndex: 4, domain: 'weather', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-06-05', moduleId: 'M-A1-06', title: 'Im Hotel', description: 'Learn how to book a room and interact at hotels.', topic: 'Hotel', type: 'dialogue', duration: 30, orderIndex: 5, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A1' },
          { id: 'L-A1-06-06', moduleId: 'M-A1-06', title: 'A1 Abschlusstest', description: 'Comprehensive A1 level test.', topic: 'Level Test', type: 'test', duration: 45, orderIndex: 6, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A1' },
        ]
      },
    ]
  },

  // ================================================================
  // A2 - ELEMENTARY
  // ================================================================
  {
    id: 'A2', title: 'Elementary',
    description: 'Build confidence with common situations: shopping, eating out, talking about your daily routine, and describing your surroundings.',
    color: 'from-blue-500 to-cyan-600', orderIndex: 2,
    modules: [
      {
        id: 'M-A2-01', title: 'Essen und Trinken',
        description: 'Learn detailed food vocabulary, cooking, recipes, and restaurant interactions.',
        objectives: ['Describe food and drinks in detail', 'Order and pay in restaurants confidently', 'Use the Perfekt tense to talk about past meals', 'Use Dativ for indirect objects', 'Express quantities and amounts'],
        orderIndex: 1, estimatedHours: 5,
        lessons: [
          { id: 'L-A2-01-01', moduleId: 'M-A2-01', title: 'Lebensmittel und Nahrungsmittel', description: 'Detailed food vocabulary including ingredients and packaging.', topic: 'Food & Ingredients', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-01-02', moduleId: 'M-A2-01', title: 'Getränke und Mahlzeiten', description: 'Beverages, meals of the day, and eating habits.', topic: 'Meals & Drinks', type: 'vocabulary', duration: 45, orderIndex: 2, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-01-03', moduleId: 'M-A2-01', title: 'Perfekt mit haben und sein', description: 'Learn the perfect tense to talk about past meals and experiences.', topic: 'Perfect Tense', type: 'grammar', duration: 60, orderIndex: 3, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-01-04', moduleId: 'M-A2-01', title: 'Im Restaurant bestellen', description: 'Practice ordering food, asking about the menu, and paying.', topic: 'Restaurant Ordering', type: 'dialogue', duration: 50, orderIndex: 4, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-01-05', moduleId: 'M-A2-01', title: 'Kochen und Rezepte', description: 'Learn cooking verbs, recipes, and kitchen vocabulary.', topic: 'Cooking & Recipes', type: 'reading', duration: 45, orderIndex: 5, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-01-06', moduleId: 'M-A2-01', title: 'Test: Essen und Trinken', description: 'Module test on food, drink, and restaurant topics.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 6, domain: 'food', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
      {
        id: 'M-A2-02', title: 'Kleidung und Mode',
        description: 'Name clothing items, describe colors and sizes, and go shopping.',
        objectives: ['Name clothing items and accessories', 'Describe colors, sizes, and materials', 'Use accusative and dative correctly', 'Use comparative and superlative', 'Shop for clothes and make returns'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-A2-02-01', moduleId: 'M-A2-02', title: 'Kleidungsstücke', description: 'Learn clothing items and their articles.', topic: 'Clothing', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-02-02', moduleId: 'M-A2-02', title: 'Farben, Größen und Materialien', description: 'Describe colors, sizes, and what clothes are made of.', topic: 'Colors & Materials', type: 'vocabulary', duration: 45, orderIndex: 2, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-02-03', moduleId: 'M-A2-02', title: 'Einkaufen: Kleidung kaufen', description: 'Practice shopping for clothes, asking for sizes, and paying.', topic: 'Clothes Shopping', type: 'dialogue', duration: 50, orderIndex: 3, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-02-04', moduleId: 'M-A2-02', title: 'Mode und Stil', description: 'Discuss fashion, style preferences, and compliments.', topic: 'Fashion & Style', type: 'vocabulary', duration: 45, orderIndex: 4, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-02-05', moduleId: 'M-A2-02', title: 'Komparativ und Superlativ', description: 'Compare clothing items using comparative and superlative forms.', topic: 'Comparatives', type: 'grammar', duration: 50, orderIndex: 5, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-02-06', moduleId: 'M-A2-02', title: 'Test: Kleidung und Mode', description: 'Module test on clothing and fashion.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 6, domain: 'clothes', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
      {
        id: 'M-A2-03', title: 'Stadt und Orientierung',
        description: 'Navigate cities, ask for and give directions, and use public transportation.',
        objectives: ['Ask for and give directions', 'Name city landmarks and locations', 'Use prepositions of location', 'Use modal verbs for polite requests', 'Navigate public transportation'],
        orderIndex: 3, estimatedHours: 5,
        lessons: [
          { id: 'L-A2-03-01', moduleId: 'M-A2-03', title: 'In der Stadt', description: 'Learn city vocabulary: streets, buildings, and landmarks.', topic: 'City Life', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'city', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-03-02', moduleId: 'M-A2-03', title: 'Wegbeschreibung', description: 'Learn how to ask for and give directions.', topic: 'Directions', type: 'dialogue', duration: 50, orderIndex: 2, domain: 'city', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-03-03', moduleId: 'M-A2-03', title: 'Öffentliche Verkehrsmittel', description: 'Learn how to use buses, trains, and trams.', topic: 'Public Transport', type: 'vocabulary', duration: 45, orderIndex: 3, domain: 'city', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-03-04', moduleId: 'M-A2-03', title: 'Am Bahnhof und Flughafen', description: 'Practice buying tickets and navigating transport hubs.', topic: 'Train Stations & Airports', type: 'dialogue', duration: 50, orderIndex: 4, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-03-05', moduleId: 'M-A2-03', title: 'Meine Stadt beschreiben', description: 'Describe your city or favorite places.', topic: 'Describing Cities', type: 'speaking', duration: 40, orderIndex: 5, domain: 'city', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-03-06', moduleId: 'M-A2-03', title: 'Test: Stadt und Orientierung', description: 'Module test on city and orientation.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 6, domain: 'city', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
      {
        id: 'M-A2-04', title: 'Gesundheit und Körper',
        description: 'Talk about health, body parts, and visit the doctor.',
        objectives: ['Name body parts', 'Describe symptoms to a doctor', 'Make a doctor\'s appointment', 'Use imperative mood for instructions', 'Talk about health and fitness'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-A2-04-01', moduleId: 'M-A2-04', title: 'Der Körper', description: 'Learn body part vocabulary.', topic: 'Body Parts', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-04-02', moduleId: 'M-A2-04', title: 'Beim Arzt', description: 'Practice describing symptoms and visiting the doctor.', topic: 'At the Doctor', type: 'dialogue', duration: 50, orderIndex: 2, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-04-03', moduleId: 'M-A2-04', title: 'Gesundheit und Fitness', description: 'Learn vocabulary about health, exercise, and well-being.', topic: 'Health & Fitness', type: 'vocabulary', duration: 45, orderIndex: 3, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-04-04', moduleId: 'M-A2-04', title: 'In der Apotheke', description: 'Learn how to buy medicine and ask for advice at the pharmacy.', topic: 'Pharmacy', type: 'dialogue', duration: 40, orderIndex: 4, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-04-05', moduleId: 'M-A2-04', title: 'Der Imperativ', description: 'Learn the imperative mood for commands and requests.', topic: 'Imperative', type: 'grammar', duration: 50, orderIndex: 5, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-04-06', moduleId: 'M-A2-04', title: 'Test: Gesundheit und Körper', description: 'Module test on health and body.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 6, domain: 'body', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
      {
        id: 'M-A2-05', title: 'Wetter, Natur und Jahreszeiten',
        description: 'Talk about weather, nature, and seasons.',
        objectives: ['Describe weather conditions', 'Name seasons and months', 'Use "es gibt" and "es ist" for weather', 'Use prepositions of time: im, am, um', 'Discuss climate and environment'],
        orderIndex: 5, estimatedHours: 4,
        lessons: [
          { id: 'L-A2-05-01', moduleId: 'M-A2-05', title: 'Das Wetter', description: 'Learn weather vocabulary and expressions.', topic: 'Weather', type: 'vocabulary', duration: 40, orderIndex: 1, domain: 'weather', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-05-02', moduleId: 'M-A2-05', title: 'Die Jahreszeiten', description: 'Learn seasons, months, and seasonal activities.', topic: 'Seasons', type: 'vocabulary', duration: 40, orderIndex: 2, domain: 'weather', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-05-03', moduleId: 'M-A2-05', title: 'Tiere und Natur', description: 'Learn animal and nature vocabulary.', topic: 'Animals & Nature', type: 'vocabulary', duration: 45, orderIndex: 3, domain: 'nature', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-05-04', moduleId: 'M-A2-05', title: 'Präpositionen: im, am, um', description: 'Learn time prepositions for seasons, days, and times.', topic: 'Time Prepositions', type: 'grammar', duration: 45, orderIndex: 4, domain: 'weather', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-05-05', moduleId: 'M-A2-05', title: 'Test: Wetter und Natur', description: 'Module test on weather and nature.', topic: 'Module Test', type: 'test', duration: 35, orderIndex: 5, domain: 'weather', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
      {
        id: 'M-A2-06', title: 'Feste, Traditionen und Reisen',
        description: 'Learn about German holidays, traditions, and travel experiences.',
        objectives: ['Name German holidays and traditions', 'Talk about travel experiences', 'Use Perfekt tense for past events', 'Write a simple postcard or email', 'Discuss cultural differences'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-A2-06-01', moduleId: 'M-A2-06', title: 'Feste und Feiertage', description: 'Learn about German holidays and celebrations.', topic: 'Holidays & Celebrations', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'holidays', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-06-02', moduleId: 'M-A2-06', title: 'Geburtstag feiern', description: 'Learn birthday vocabulary and party planning.', topic: 'Birthday', type: 'dialogue', duration: 40, orderIndex: 2, domain: 'holidays', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-06-03', moduleId: 'M-A2-06', title: 'Reiseerfahrungen', description: 'Talk about travel experiences using Perfekt tense.', topic: 'Travel Experiences', type: 'reading', duration: 50, orderIndex: 3, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-06-04', moduleId: 'M-A2-06', title: 'Postkarte und E-Mail schreiben', description: 'Write simple postcards and emails from vacation.', topic: 'Writing: Postcards & Emails', type: 'writing', duration: 45, orderIndex: 4, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-06-05', moduleId: 'M-A2-06', title: 'Kulturelle Unterschiede', description: 'Discuss cultural differences between your country and Germany.', topic: 'Cultural Differences', type: 'culture', duration: 40, orderIndex: 5, domain: 'holidays', grammarFocus: 'present_tense', cefr: 'A2' },
          { id: 'L-A2-06-06', moduleId: 'M-A2-06', title: 'A2 Abschlusstest', description: 'Comprehensive A2 level test.', topic: 'Level Test', type: 'test', duration: 50, orderIndex: 6, domain: 'travel', grammarFocus: 'present_tense', cefr: 'A2' },
        ]
      },
    ]
  },
  
  // ================================================================
  // B1 - INTERMEDIATE
  // ================================================================
  {
    id: 'B1', title: 'Intermediate',
    description: 'Handle most everyday situations. Express opinions, talk about experiences, and manage simple work conversations.',
    color: 'from-yellow-500 to-orange-600', orderIndex: 3,
    modules: [
      {
        id: 'M-B1-01', title: 'Alltag und Gesellschaft',
        description: 'Talk about daily life, social interactions, and society.',
        objectives: ['Use Präteritum for sein, haben, wissen', 'Use Nebensätze with weil, da, obwohl', 'Use comparative and superlative forms', 'Make appointments and invitations', 'Discuss social topics'],
        orderIndex: 1, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-01-01', moduleId: 'M-B1-01', title: 'Tagesablauf und Alltag', description: 'Detailed daily routine vocabulary and time management.', topic: 'Daily Life', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'daily_routine', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-01-02', moduleId: 'M-B1-01', title: 'Gesellschaft und Zusammenleben', description: 'Talk about society, community, and social life.', topic: 'Society & Community', type: 'vocabulary', duration: 45, orderIndex: 2, domain: 'society', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-01-03', moduleId: 'M-B1-01', title: 'Präteritum: sein, haben, wissen', description: 'Learn the simple past of important irregular verbs.', topic: 'Simple Past', type: 'grammar', duration: 60, orderIndex: 3, domain: 'society', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-01-04', moduleId: 'M-B1-01', title: 'Nebensätze mit weil, da, obwohl', description: 'Learn subordinate clauses for reasons and concessions.', topic: 'Subordinate Clauses', type: 'grammar', duration: 60, orderIndex: 4, domain: 'society', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-01-05', moduleId: 'M-B1-01', title: 'Einladungen und Verabredungen', description: 'Practice making, accepting, and declining invitations.', topic: 'Invitations', type: 'dialogue', duration: 50, orderIndex: 5, domain: 'society', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-01-06', moduleId: 'M-B1-01', title: 'Test: Alltag und Gesellschaft', description: 'Module test on daily life and society.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 6, domain: 'society', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
      {
        id: 'M-B1-02', title: 'Arbeit und Karriere',
        description: 'Professional communication, job applications, and career planning.',
        objectives: ['Write a job application and CV', 'Conduct a job interview', 'Use Konjunktiv II for polite requests', 'Use Passiv in present tense', 'Discuss career goals'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-02-01', moduleId: 'M-B1-02', title: 'Berufe und Arbeitsplätze', description: 'Detailed profession and workplace vocabulary.', topic: 'Professions & Workplaces', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-02-02', moduleId: 'M-B1-02', title: 'Bewerbung und Lebenslauf', description: 'Write job applications and CVs in German.', topic: 'Job Applications', type: 'writing', duration: 60, orderIndex: 2, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-02-03', moduleId: 'M-B1-02', title: 'Das Vorstellungsgespräch', description: 'Practice job interviews with common questions.', topic: 'Job Interviews', type: 'dialogue', duration: 60, orderIndex: 3, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-02-04', moduleId: 'M-B1-02', title: 'Konjunktiv II (würde + Infinitiv)', description: 'Learn the subjunctive for polite requests and hypotheticals.', topic: 'Konjunktiv II', type: 'grammar', duration: 60, orderIndex: 4, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-02-05', moduleId: 'M-B1-02', title: 'Das Passiv im Präsens', description: 'Learn passive voice in present tense for formal communication.', topic: 'Passive Voice', type: 'grammar', duration: 55, orderIndex: 5, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-02-06', moduleId: 'M-B1-02', title: 'Test: Arbeit und Karriere', description: 'Module test on work and career.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 6, domain: 'work', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
      {
        id: 'M-B1-03', title: 'Medien und Kommunikation',
        description: 'Discuss media, technology, and modern communication.',
        objectives: ['Discuss news and media', 'Talk about technology and social media', 'Use Relativsätze with nominative and accusative', 'Express opinions and arguments', 'Write forum posts and comments'],
        orderIndex: 3, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-03-01', moduleId: 'M-B1-03', title: 'Medien: Zeitung, Radio, Internet', description: 'Learn media and journalism vocabulary.', topic: 'Media', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'media', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-03-02', moduleId: 'M-B1-03', title: 'Soziale Medien und Technologie', description: 'Discuss social media, apps, and technology.', topic: 'Social Media & Technology', type: 'vocabulary', duration: 45, orderIndex: 2, domain: 'media', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-03-03', moduleId: 'M-B1-03', title: 'Relativsätze (Nominativ, Akkusativ)', description: 'Learn relative clauses for connecting information.', topic: 'Relative Clauses', type: 'grammar', duration: 60, orderIndex: 3, domain: 'media', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-03-04', moduleId: 'M-B1-03', title: 'Meinung äußern und diskutieren', description: 'Practice expressing opinions and debating.', topic: 'Expressing Opinions', type: 'speaking', duration: 50, orderIndex: 4, domain: 'media', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-03-05', moduleId: 'M-B1-03', title: 'Test: Medien und Kommunikation', description: 'Module test on media and communication.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 5, domain: 'media', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
      {
        id: 'M-B1-04', title: 'Bildung und Lernen',
        description: 'Talk about education, school systems, and learning experiences.',
        objectives: ['Describe school systems and education', 'Talk about learning experiences', 'Use two-way prepositions (Wechselpräpositionen)', 'Give presentations on familiar topics', 'Discuss language learning strategies'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-04-01', moduleId: 'M-B1-04', title: 'Das deutsche Schulsystem', description: 'Learn about the German education system.', topic: 'German School System', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'education', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-04-02', moduleId: 'M-B1-04', title: 'Sprachen lernen', description: 'Discuss language learning strategies and experiences.', topic: 'Language Learning', type: 'vocabulary', duration: 45, orderIndex: 2, domain: 'education', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-04-03', moduleId: 'M-B1-04', title: 'Wechselpräpositionen', description: 'Learn two-way prepositions with accusative and dative.', topic: 'Two-Way Prepositions', type: 'grammar', duration: 60, orderIndex: 3, domain: 'education', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-04-04', moduleId: 'M-B1-04', title: 'Eine Präsentation halten', description: 'Practice giving a short presentation on a familiar topic.', topic: 'Presentations', type: 'speaking', duration: 50, orderIndex: 4, domain: 'education', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-04-05', moduleId: 'M-B1-04', title: 'Test: Bildung und Lernen', description: 'Module test on education and learning.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 5, domain: 'education', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
      {
        id: 'M-B1-05', title: 'Umwelt und Nachhaltigkeit',
        description: 'Discuss environmental issues and sustainability.',
        objectives: ['Discuss environmental topics', 'Use um...zu and damit for purpose', 'Understand and discuss news articles', 'Make suggestions and proposals', 'Compare environmental policies'],
        orderIndex: 5, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-05-01', moduleId: 'M-B1-05', title: 'Umweltschutz und Nachhaltigkeit', description: 'Learn environmental and sustainability vocabulary.', topic: 'Environment', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'environment', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-05-02', moduleId: 'M-B1-05', title: 'Mülltrennung und Recycling', description: 'Learn about German waste separation and recycling.', topic: 'Recycling in Germany', type: 'reading', duration: 50, orderIndex: 2, domain: 'environment', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-05-03', moduleId: 'M-B1-05', title: 'Infinitivsätze: um...zu, damit', description: 'Learn infinitive clauses for expressing purpose.', topic: 'Infinitive Clauses', type: 'grammar', duration: 55, orderIndex: 3, domain: 'environment', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-05-04', moduleId: 'M-B1-05', title: 'Unsere Umwelt schützen', description: 'Discuss ways to protect the environment.', topic: 'Protecting the Environment', type: 'speaking', duration: 45, orderIndex: 4, domain: 'environment', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-05-05', moduleId: 'M-B1-05', title: 'Test: Umwelt und Nachhaltigkeit', description: 'Module test on environment and sustainability.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 5, domain: 'environment', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
      {
        id: 'M-B1-06', title: 'Reisen, Kultur und interkulturelle Kompetenz',
        description: 'Explore German-speaking countries, travel planning, and intercultural skills.',
        objectives: ['Plan and describe trips', 'Understand cultural differences', 'Use Präteritum of modal verbs', 'Use comparative sentences with "je...desto"', 'Write travel reports'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-B1-06-01', moduleId: 'M-B1-06', title: 'Reiseplanung und Buchung', description: 'Plan trips and make bookings.', topic: 'Travel Planning', type: 'dialogue', duration: 50, orderIndex: 1, domain: 'travel', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-06-02', moduleId: 'M-B1-06', title: 'Präteritum der Modalverben', description: 'Learn simple past of modal verbs.', topic: 'Modal Verbs Past', type: 'grammar', duration: 55, orderIndex: 2, domain: 'travel', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-06-03', moduleId: 'M-B1-06', title: 'Sehenswürdigkeiten in DACH', description: 'Explore landmarks in Germany, Austria, Switzerland.', topic: 'DACH Landmarks', type: 'reading', duration: 50, orderIndex: 3, domain: 'travel', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-06-04', moduleId: 'M-B1-06', title: 'Je...desto Sätze', description: 'Learn comparative sentences with je...desto.', topic: 'Comparative Sentences', type: 'grammar', duration: 45, orderIndex: 4, domain: 'travel', grammarFocus: 'present_tense', cefr: 'B1' },
          { id: 'L-B1-06-05', moduleId: 'M-B1-06', title: 'B1 Abschlusstest', description: 'Comprehensive B1 level test.', topic: 'Level Test', type: 'test', duration: 60, orderIndex: 5, domain: 'travel', grammarFocus: 'present_tense', cefr: 'B1' },
        ]
      },
    ]
  },

  // ================================================================
  // B2 - UPPER INTERMEDIATE
  // ================================================================
  {
    id: 'B2', title: 'Upper Intermediate',
    description: 'Speak fluently and spontaneously. Discuss complex topics, argue positions, and understand detailed texts.',
    color: 'from-purple-500 to-violet-600', orderIndex: 4,
    modules: [
      {
        id: 'M-B2-01', title: 'Berufliche Kommunikation',
        description: 'Professional communication: meetings, emails, negotiations, and presentations.',
        objectives: ['Lead and participate in meetings', 'Write professional emails and reports', 'Use Passiv with modal verbs', 'Use Konjunktiv II für höfliche Bitten', 'Handle negotiations in German'],
        orderIndex: 1, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-01-01', moduleId: 'M-B2-01', title: 'Büro und Arbeitsplatz', description: 'Advanced office and workplace vocabulary.', topic: 'Office & Workplace', type: 'vocabulary', duration: 45, orderIndex: 1, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-01-02', moduleId: 'M-B2-01', title: 'Geschäftskorrespondenz', description: 'Write professional emails and letters.', topic: 'Business Correspondence', type: 'writing', duration: 60, orderIndex: 2, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-01-03', moduleId: 'M-B2-01', title: 'Passiv mit Modalverben', description: 'Learn passive voice combined with modal verbs.', topic: 'Passive with Modals', type: 'grammar', duration: 55, orderIndex: 3, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-01-04', moduleId: 'M-B2-01', title: 'Besprechungen und Meetings', description: 'Participate in meetings and discussions.', topic: 'Meetings', type: 'dialogue', duration: 60, orderIndex: 4, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-01-05', moduleId: 'M-B2-01', title: 'Kausalsätze: wegen, aufgrund, dank', description: 'Express reasons using prepositions with Genitiv.', topic: 'Causal Clauses', type: 'grammar', duration: 50, orderIndex: 5, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-01-06', moduleId: 'M-B2-01', title: 'Test: Berufliche Kommunikation', description: 'Module test on professional communication.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 6, domain: 'business', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
      {
        id: 'M-B2-02', title: 'Gesellschaft und Politik',
        description: 'Discuss political systems, social issues, and current events.',
        objectives: ['Discuss political systems and elections', 'Analyze social issues', 'Use Konjunktiv II for hypothetical situations', 'Write opinion pieces', 'Use indefinite pronouns'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-02-01', moduleId: 'M-B2-02', title: 'Politisches System Deutschlands', description: 'Learn about German political system and vocabulary.', topic: 'German Politics', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'politics', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-02-02', moduleId: 'M-B2-02', title: 'Soziale Themen und Diskussionen', description: 'Discuss social issues like migration, education, healthcare.', topic: 'Social Issues', type: 'vocabulary', duration: 50, orderIndex: 2, domain: 'politics', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-02-03', moduleId: 'M-B2-02', title: 'Konjunktiv II: hätte, wäre, würde', description: 'Learn subjunctive forms for hypothetical situations.', topic: 'Konjunktiv II Forms', type: 'grammar', duration: 60, orderIndex: 3, domain: 'politics', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-02-04', moduleId: 'M-B2-02', title: 'Eine Debatte führen', description: 'Practice formal debating and argumentation.', topic: 'Debating', type: 'speaking', duration: 55, orderIndex: 4, domain: 'politics', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-02-05', moduleId: 'M-B2-02', title: 'Test: Gesellschaft und Politik', description: 'Module test on society and politics.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 5, domain: 'politics', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
      {
        id: 'M-B2-03', title: 'Wissenschaft und Technik',
        description: 'Discuss scientific topics, technology, and innovation.',
        objectives: ['Understand scientific vocabulary', 'Discuss technological developments', 'Use Nomen-Verb-Verbindungen', 'Understand and explain processes', 'Use Futur I and II'],
        orderIndex: 3, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-03-01', moduleId: 'M-B2-03', title: 'Wissenschaftliche Themen', description: 'Learn scientific vocabulary and concepts.', topic: 'Science', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'science', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-03-02', moduleId: 'M-B2-03', title: 'Technologie und Innovation', description: 'Discuss technology, AI, and digitalization.', topic: 'Technology & Innovation', type: 'vocabulary', duration: 50, orderIndex: 2, domain: 'science', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-03-03', moduleId: 'M-B2-03', title: 'Nomen-Verb-Verbindungen', description: 'Learn noun-verb collocations common in academic German.', topic: 'Noun-Verb Combinations', type: 'grammar', duration: 55, orderIndex: 3, domain: 'science', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-03-04', moduleId: 'M-B2-03', title: 'Futur I und II', description: 'Learn future tenses for predictions and assumptions.', topic: 'Future Tenses', type: 'grammar', duration: 50, orderIndex: 4, domain: 'science', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-03-05', moduleId: 'M-B2-03', title: 'Test: Wissenschaft und Technik', description: 'Module test on science and technology.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 5, domain: 'science', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
      {
        id: 'M-B2-04', title: 'Wirtschaft und Finanzen',
        description: 'Understand business and financial vocabulary and concepts.',
        objectives: ['Understand business vocabulary', 'Discuss economic topics', 'Use Genitiv and Genitivpräpositionen', 'Read financial reports', 'Discuss money and investments'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-04-01', moduleId: 'M-B2-04', title: 'Wirtschaftliche Grundbegriffe', description: 'Learn basic economic and business vocabulary.', topic: 'Economics Basics', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'economy', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-04-02', moduleId: 'M-B2-04', title: 'Bankwesen und Finanzen', description: 'Learn banking and financial vocabulary.', topic: 'Banking & Finance', type: 'vocabulary', duration: 50, orderIndex: 2, domain: 'economy', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-04-03', moduleId: 'M-B2-04', title: 'Der Genitiv und Genitivpräpositionen', description: 'Learn Genitiv case and prepositions requiring Genitiv.', topic: 'Genitive Case', type: 'grammar', duration: 55, orderIndex: 3, domain: 'economy', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-04-04', moduleId: 'M-B2-04', title: 'Test: Wirtschaft und Finanzen', description: 'Module test on economy and finance.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 4, domain: 'economy', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
      {
        id: 'M-B2-05', title: 'Kunst und Literatur',
        description: 'Discuss art, literature, and cultural topics.',
        objectives: ['Describe artworks and exhibitions', 'Discuss literature and authors', 'Use Partizipialattribute', 'Write reviews', 'Express aesthetic judgments'],
        orderIndex: 5, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-05-01', moduleId: 'M-B2-05', title: 'Kunst und Kultur', description: 'Learn art and cultural vocabulary.', topic: 'Art & Culture', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'art', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-05-02', moduleId: 'M-B2-05', title: 'Deutschsprachige Literatur', description: 'Explore German-language literature and authors.', topic: 'German Literature', type: 'reading', duration: 60, orderIndex: 2, domain: 'literature', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-05-03', moduleId: 'M-B2-05', title: 'Partizipialattribute', description: 'Learn participial phrases for formal written German.', topic: 'Participial Phrases', type: 'grammar', duration: 55, orderIndex: 3, domain: 'art', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-05-04', moduleId: 'M-B2-05', title: 'Test: Kunst und Literatur', description: 'Module test on art and literature.', topic: 'Module Test', type: 'test', duration: 40, orderIndex: 4, domain: 'art', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
      {
        id: 'M-B2-06', title: 'Deutschland, Österreich, Schweiz',
        description: 'In-depth look at German-speaking countries: history, culture, and current affairs.',
        objectives: ['Understand recent German history', 'Compare DACH countries', 'Use complex sentence structures', 'Write essays on cultural topics', 'Give detailed presentations'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-B2-06-01', moduleId: 'M-B2-06', title: 'Geschichte Deutschlands', description: 'Learn about German history from 1945 to today.', topic: 'German History', type: 'reading', duration: 60, orderIndex: 1, domain: 'history', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-06-02', moduleId: 'M-B2-06', title: 'Österreich und die Schweiz', description: 'Explore Austrian and Swiss culture and language.', topic: 'Austria & Switzerland', type: 'vocabulary', duration: 50, orderIndex: 2, domain: 'history', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-06-03', moduleId: 'M-B2-06', title: 'Die deutsche Wiedervereinigung', description: 'Understand German reunification and its effects.', topic: 'German Reunification', type: 'reading', duration: 55, orderIndex: 3, domain: 'history', grammarFocus: 'present_tense', cefr: 'B2' },
          { id: 'L-B2-06-04', moduleId: 'M-B2-06', title: 'B2 Abschlusstest', description: 'Comprehensive B2 level test.', topic: 'Level Test', type: 'test', duration: 60, orderIndex: 4, domain: 'history', grammarFocus: 'present_tense', cefr: 'B2' },
        ]
      },
    ]
  },

  // ================================================================
  // C1 - ADVANCED
  // ================================================================
  {
    id: 'C1', title: 'Advanced',
    description: 'Express yourself clearly on complex subjects. Use German effectively in professional and academic settings.',
    color: 'from-red-500 to-rose-600', orderIndex: 5,
    modules: [
      {
        id: 'M-C1-01', title: 'Akademische Sprache',
        description: 'Master academic German: nominal style, complex structures, and formal register.',
        objectives: ['Use Nominalstil vs Verbalstil appropriately', 'Use Nomen-Verb-Verbindungen actively', 'Understand and write complex sentences', 'Analyze academic texts', 'Write academic essays'],
        orderIndex: 1, estimatedHours: 6,
        lessons: [
          { id: 'L-C1-01-01', moduleId: 'M-C1-01', title: 'Wissenschaftliche Grundbegriffe', description: 'Learn core academic vocabulary.', topic: 'Academic Vocabulary', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-01-02', moduleId: 'M-C1-01', title: 'Akademisches Schreiben', description: 'Write academic texts with proper structure.', topic: 'Academic Writing', type: 'writing', duration: 60, orderIndex: 2, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-01-03', moduleId: 'M-C1-01', title: 'Nominalstil vs. Verbalstil', description: 'Learn when to use nominal vs verbal style.', topic: 'Nominal vs Verbal Style', type: 'grammar', duration: 60, orderIndex: 3, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-01-04', moduleId: 'M-C1-01', title: 'Nomen-Verb-Verbindungen', description: 'Master noun-verb collocations for formal German.', topic: 'Noun-Verb Collocations', type: 'grammar', duration: 55, orderIndex: 4, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-01-05', moduleId: 'M-C1-01', title: 'Komplexe Satzstrukturen', description: 'Analyze and create complex sentence structures.', topic: 'Complex Sentences', type: 'grammar', duration: 60, orderIndex: 5, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-01-06', moduleId: 'M-C1-01', title: 'Test: Akademische Sprache', description: 'Module test on academic language.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 6, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
      {
        id: 'M-C1-02', title: 'Sprache, Stil und Rhetorik',
        description: 'Analyze and use sophisticated language, style, and rhetorical devices.',
        objectives: ['Use rhetorical devices effectively', 'Analyze text style and register', 'Use Konjunktiv I for reported speech', 'Write in different registers', 'Give persuasive presentations'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-C1-02-01', moduleId: 'M-C1-02', title: 'Rhetorische Mittel', description: 'Learn rhetorical devices and their effects.', topic: 'Rhetorical Devices', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'rhetoric', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-02-02', moduleId: 'M-C1-02', title: 'Konjunktiv I: Indirekte Rede', description: 'Learn subjunctive I for indirect speech.', topic: 'Indirect Speech', type: 'grammar', duration: 60, orderIndex: 2, domain: 'rhetoric', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-02-03', moduleId: 'M-C1-02', title: 'Stilistische Analyse', description: 'Analyze text styles and registers.', topic: 'Stylistic Analysis', type: 'reading', duration: 55, orderIndex: 3, domain: 'rhetoric', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-02-04', moduleId: 'M-C1-02', title: 'Test: Sprache und Stil', description: 'Module test on language and style.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 4, domain: 'rhetoric', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
      {
        id: 'M-C1-03', title: 'Diskurs und Argumentation',
        description: 'Master academic discourse and persuasive argumentation.',
        objectives: ['Construct and deconstruct arguments', 'Use Konnektoren for text coherence', 'Write academic essays and papers', 'Participate in formal debates', 'Critically analyze texts'],
        orderIndex: 3, estimatedHours: 5,
        lessons: [
          { id: 'L-C1-03-01', moduleId: 'M-C1-03', title: 'Argumentationsstrukturen', description: 'Learn argumentation structures and strategies.', topic: 'Argumentation', type: 'vocabulary', duration: 50, orderIndex: 1, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-03-02', moduleId: 'M-C1-03', title: 'Konnektoren: trotzdem, dennoch, allerdings', description: 'Learn advanced connectors for text coherence.', topic: 'Advanced Connectors', type: 'grammar', duration: 55, orderIndex: 2, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-03-03', moduleId: 'M-C1-03', title: 'Wissenschaftliche Essays schreiben', description: 'Write structured academic essays.', topic: 'Academic Essays', type: 'writing', duration: 60, orderIndex: 3, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-03-04', moduleId: 'M-C1-03', title: 'Test: Diskurs und Argumentation', description: 'Module test on discourse and argumentation.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 4, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
      {
        id: 'M-C1-04', title: 'Fachsprachen',
        description: 'Explore specialized languages: legal, medical, technical, and business German.',
        objectives: ['Understand legal German', 'Use medical terminology', 'Read technical documentation', 'Understand business reports', 'Adapt language to professional context'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-C1-04-01', moduleId: 'M-C1-04', title: 'Rechtssprache', description: 'Learn legal terminology and text types.', topic: 'Legal German', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-04-02', moduleId: 'M-C1-04', title: 'Medizinische Fachsprache', description: 'Learn medical terminology and doctor-patient communication.', topic: 'Medical German', type: 'vocabulary', duration: 55, orderIndex: 2, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-04-03', moduleId: 'M-C1-04', title: 'Test: Fachsprachen', description: 'Module test on specialized languages.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 3, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
      {
        id: 'M-C1-05', title: 'Kultur, Identität und Migration',
        description: 'Discuss complex cultural topics: identity, migration, and integration.',
        objectives: ['Discuss migration and integration', 'Analyze cultural identity', 'Use evaluative language', 'Write analytical essays', 'Present complex topics'],
        orderIndex: 5, estimatedHours: 5,
        lessons: [
          { id: 'L-C1-05-01', moduleId: 'M-C1-05', title: 'Migration und Integration', description: 'Discuss migration policy and integration.', topic: 'Migration & Integration', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'society', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-05-02', moduleId: 'M-C1-05', title: 'Kulturelle Identität', description: 'Explore concepts of cultural identity.', topic: 'Cultural Identity', type: 'reading', duration: 55, orderIndex: 2, domain: 'society', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-05-03', moduleId: 'M-C1-05', title: 'Test: Kultur und Identität', description: 'Module test on culture and identity.', topic: 'Module Test', type: 'test', duration: 45, orderIndex: 3, domain: 'society', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
      {
        id: 'M-C1-06', title: 'Globalisierung, Zukunft und Innovation',
        description: 'Discuss globalization, future trends, and innovation.',
        objectives: ['Analyze globalization effects', 'Discuss future scenarios', 'Use irrealis and hypothetical structures', 'Write policy papers', 'Present future scenarios'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-C1-06-01', moduleId: 'M-C1-06', title: 'Globalisierung', description: 'Discuss globalization and its impacts.', topic: 'Globalization', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-06-02', moduleId: 'M-C1-06', title: 'Zukunftsszenarien', description: 'Discuss future scenarios and predictions.', topic: 'Future Scenarios', type: 'speaking', duration: 50, orderIndex: 2, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
          { id: 'L-C1-06-03', moduleId: 'M-C1-06', title: 'C1 Abschlusstest', description: 'Comprehensive C1 level test.', topic: 'Level Test', type: 'test', duration: 70, orderIndex: 3, domain: 'discourse', grammarFocus: 'present_tense', cefr: 'C1' },
        ]
      },
    ]
  },

  // ================================================================
  // C2 - MASTERY
  // ================================================================
  {
    id: 'C2', title: 'Mastery',
    description: 'Near-native proficiency. Understand virtually everything heard or read. Express yourself spontaneously with precision.',
    color: 'from-amber-500 to-yellow-600', orderIndex: 6,
    modules: [
      {
        id: 'M-C2-01', title: 'Linguistik und Stilistik',
        description: 'Word formation, stylistics, and linguistic analysis at the highest level.',
        objectives: ['Analyze word formation processes', 'Identify and use stylistic figures', 'Analyze language variation', 'Use Register and style consciously', 'Analyze literary and journalistic texts'],
        orderIndex: 1, estimatedHours: 6,
        lessons: [
          { id: 'L-C2-01-01', moduleId: 'M-C2-01', title: 'Wortbildung: Komposition, Derivation, Konversion', description: 'Master German word formation mechanisms.', topic: 'Word Formation', type: 'vocabulary', duration: 60, orderIndex: 1, domain: 'linguistics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-01-02', moduleId: 'M-C2-01', title: 'Stilfiguren: Metapher, Metonymie, Ironie', description: 'Analyze and use rhetorical tropes.', topic: 'Stylistic Figures', type: 'vocabulary', duration: 60, orderIndex: 2, domain: 'stylistics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-01-03', moduleId: 'M-C2-01', title: 'Sprachvarietäten und Register', description: 'Explore language varieties, dialects, and registers.', topic: 'Language Varieties', type: 'reading', duration: 60, orderIndex: 3, domain: 'stylistics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-01-04', moduleId: 'M-C2-01', title: 'Test: Linguistik und Stilistik', description: 'Module test on linguistics and stylistics.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 4, domain: 'linguistics', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
      {
        id: 'M-C2-02', title: 'Literatur und Interpretation',
        description: 'Analyze German literature and write critical interpretations.',
        objectives: ['Analyze literary texts', 'Write literary interpretations', 'Use literary terminology', 'Compare different literary periods', 'Write critical essays'],
        orderIndex: 2, estimatedHours: 5,
        lessons: [
          { id: 'L-C2-02-01', moduleId: 'M-C2-02', title: 'Literarische Textanalyse', description: 'Analyze literary texts systematically.', topic: 'Literary Analysis', type: 'reading', duration: 60, orderIndex: 1, domain: 'literature', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-02-02', moduleId: 'M-C2-02', title: 'Interpretation und Kritik', description: 'Write critical interpretations of literary works.', topic: 'Literary Criticism', type: 'writing', duration: 65, orderIndex: 2, domain: 'literature', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-02-03', moduleId: 'M-C2-02', title: 'Test: Literatur und Analyse', description: 'Module test on literature and analysis.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 3, domain: 'literature', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
      {
        id: 'M-C2-03', title: 'Pragmatik und Diskursanalyse',
        description: 'Study language in use: pragmatics, discourse analysis, and conversation analysis.',
        objectives: ['Analyze speech acts and implicature', 'Understand discourse markers', 'Analyze conversational structure', 'Use hedging and mitigation strategies', 'Write discourse analytic papers'],
        orderIndex: 3, estimatedHours: 5,
        lessons: [
          { id: 'L-C2-03-01', moduleId: 'M-C2-03', title: 'Sprechakte und Implikaturen', description: 'Learn about speech acts and conversational implicature.', topic: 'Speech Acts', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'pragmatics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-03-02', moduleId: 'M-C2-03', title: 'Diskursmarker und Kohärenz', description: 'Master discourse markers for text coherence.', topic: 'Discourse Markers', type: 'grammar', duration: 55, orderIndex: 2, domain: 'pragmatics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-03-03', moduleId: 'M-C2-03', title: 'Test: Pragmatik und Diskurs', description: 'Module test on pragmatics and discourse.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 3, domain: 'pragmatics', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
      {
        id: 'M-C2-04', title: 'Übersetzung und Sprachmittlung',
        description: 'Master translation and language mediation techniques.',
        objectives: ['Translate between German and Arabic', 'Mediate between languages', 'Handle false friends and idioms', 'Use translation technology', 'Write target-language oriented texts'],
        orderIndex: 4, estimatedHours: 5,
        lessons: [
          { id: 'L-C2-04-01', moduleId: 'M-C2-04', title: 'Übersetzungstechniken', description: 'Learn translation methods for German-Arabic pairs.', topic: 'Translation Techniques', type: 'vocabulary', duration: 60, orderIndex: 1, domain: 'translation', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-04-02', moduleId: 'M-C2-04', title: 'False Friends und idiomatische Wendungen', description: 'Identify false friends between German and Arabic.', topic: 'False Friends & Idioms', type: 'vocabulary', duration: 55, orderIndex: 2, domain: 'translation', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-04-03', moduleId: 'M-C2-04', title: 'Test: Übersetzung und Sprachmittlung', description: 'Module test on translation.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 3, domain: 'translation', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
      {
        id: 'M-C2-05', title: 'Wissenschaftskommunikation',
        description: 'Learn to communicate complex scientific topics to different audiences.',
        objectives: ['Write scientific papers in German', 'Present research findings', 'Communicate science to the public', 'Use appropriate register for different audiences', 'Understand publication conventions'],
        orderIndex: 5, estimatedHours: 5,
        lessons: [
          { id: 'L-C2-05-01', moduleId: 'M-C2-05', title: 'Wissenschaftliches Publizieren', description: 'Learn scientific publishing conventions.', topic: 'Scientific Publishing', type: 'vocabulary', duration: 60, orderIndex: 1, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-05-02', moduleId: 'M-C2-05', title: 'Wissenschaft verständlich kommunizieren', description: 'Communicate complex topics to general audiences.', topic: 'Science Communication', type: 'speaking', duration: 55, orderIndex: 2, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-05-03', moduleId: 'M-C2-05', title: 'Test: Wissenschaftskommunikation', description: 'Module test on science communication.', topic: 'Module Test', type: 'test', duration: 50, orderIndex: 3, domain: 'academic', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
      {
        id: 'M-C2-06', title: 'Sprachvariation und Sprachwandel',
        description: 'Study language variation, change, and dialectology at an advanced level.',
        objectives: ['Analyze dialectal variation', 'Understand language change processes', 'Use historical linguistics concepts', 'Analyze sociolinguistic variation', 'Research language variation'],
        orderIndex: 6, estimatedHours: 5,
        lessons: [
          { id: 'L-C2-06-01', moduleId: 'M-C2-06', title: 'Dialekte und regionale Variation', description: 'Explore German dialects and regional variation.', topic: 'German Dialects', type: 'vocabulary', duration: 55, orderIndex: 1, domain: 'linguistics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-06-02', moduleId: 'M-C2-06', title: 'Sprachwandel und Jugendsprache', description: 'Study language change and youth language.', topic: 'Language Change', type: 'reading', duration: 55, orderIndex: 2, domain: 'linguistics', grammarFocus: 'present_tense', cefr: 'C2' },
          { id: 'L-C2-06-03', moduleId: 'M-C2-06', title: 'C2 Abschlusstest', description: 'Comprehensive C2 mastery level test.', topic: 'Level Test', type: 'test', duration: 90, orderIndex: 3, domain: 'linguistics', grammarFocus: 'present_tense', cefr: 'C2' },
        ]
      },
    ]
  },
]

// Summary statistics
export function getCurriculumStats(): string {
  let totalModules = 0
  let totalLessons = 0
  for (const level of CURRICULUM_SPECS) {
    totalModules += level.modules.length
    for (const mod of level.modules) {
      totalLessons += mod.lessons.length
    }
  }
  return `Total: ${CURRICULUM_SPECS.length} levels, ${totalModules} modules, ${totalLessons} lessons`
}
