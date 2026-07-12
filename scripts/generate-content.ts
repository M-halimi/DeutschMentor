/**
 * Arabic Content Generator
 * 
 * Generates comprehensive Arabic learning content as JSON seed files.
 * Run with: npx tsx scripts/generate-content.ts
 * 
 * Output: scripts/output/vocabulary.json, grammar.json, etc.
 * These can be imported and inserted into Supabase.
 */

import * as fs from 'fs'
import * as path from 'path'

const OUTPUT_DIR = path.join(__dirname, 'output')

interface VocabItem {
  language: string
  arabic_word: string
  transliteration: string
  translation: string
  word_type: string
  level: string
  category: string
  example_sentence: string
  example_translation: string
  difficulty: number
  tags: string[]
}

interface GrammarLesson {
  title: string
  explanation: string
  examples: { arabic: string; translation: string }[]
  exercises: { question: string; options: string[]; correct_answer: string }[]
  difficulty: string
  category: string
  order_index: number
}

interface VerbConjugation {
  root: string
  infinitive: string
  translation: string
  transliteration: string
  level: string
  category: string
  past_conjugation: Record<string, string>
  present_conjugation: Record<string, string>
  example_sentences: { arabic: string; translation: string }[]
}

interface Expression {
  language: string
  arabic: string
  transliteration: string
  english: string
  usage_context: string
  level: string
  category: string
}

// ============================================================
// ARABIC VOCABULARY GENERATOR
// ============================================================

const verbRoots = [
  { root: 'كتب', infinitive: 'كتب', translation: 'to write', trans: 'kataba' },
  { root: 'قرأ', infinitive: 'قرأ', translation: 'to read', trans: 'qara\'a' },
  { root: 'ذهب', infinitive: 'ذهب', translation: 'to go', trans: 'dhahaba' },
  { root: 'أكل', infinitive: 'أكل', translation: 'to eat', trans: 'akala' },
  { root: 'شرب', infinitive: 'شرب', translation: 'to drink', trans: 'shariba' },
  { root: 'قال', infinitive: 'قال', translation: 'to say', trans: 'qala' },
  { root: 'عمل', infinitive: 'عمل', translation: 'to work', trans: 'amila' },
  { root: 'درس', infinitive: 'درس', translation: 'to study', trans: 'darasa' },
  { root: 'فتح', infinitive: 'فتح', translation: 'to open', trans: 'fataha' },
  { root: 'سكن', infinitive: 'سكن', translation: 'to live', trans: 'sakana' },
  { root: 'جلس', infinitive: 'جلس', translation: 'to sit', trans: 'jalasa' },
  { root: 'نام', infinitive: 'نام', translation: 'to sleep', trans: 'nama' },
  { root: 'مشى', infinitive: 'مشى', translation: 'to walk', trans: 'masha' },
  { root: 'رأى', infinitive: 'رأى', translation: 'to see', trans: 'ra\'a' },
  { root: 'سمع', infinitive: 'سمع', translation: 'to hear', trans: 'sami\'a' },
  { root: 'فهم', infinitive: 'فهم', translation: 'to understand', trans: 'fahima' },
]

function generateVocabulary(): VocabItem[] {
  const items: VocabItem[] = []
  const categories: Record<string, { ar: string; en: string; words: [string, string, string][] }> = {
    family: {
      ar: 'العائلة', en: 'Family',
      words: [
        ['والد', 'wālid', 'father'], ['والدة', 'wālidah', 'mother'],
        ['زوج', 'zawj', 'husband'], ['زوجة', 'zawjah', 'wife'],
        ['ابن', 'ibn', 'son'], ['ابنة', 'ibnah', 'daughter'],
      ],
    },
    food: {
      ar: 'الطعام', en: 'Food',
      words: [
        ['خبز', 'khubz', 'bread'], ['جبن', 'jubn', 'cheese'],
        ['لبن', 'laban', 'milk'], ['عسل', 'asal', 'honey'],
      ],
    },
    education: {
      ar: 'التعليم', en: 'Education',
      words: [
        ['مدرسة', 'madrasah', 'school'], ['جامعة', 'jāmi\'ah', 'university'],
        ['كتاب', 'kitāb', 'book'], ['قلم', 'qalam', 'pen'],
        ['درس', 'dars', 'lesson'], ['معلم', 'mu\'allim', 'teacher'],
      ],
    },
  }

  let idx = 0
  for (const [, cat] of Object.entries(categories)) {
    for (const [word, trans, meaning] of cat.words) {
      items.push({
        language: 'ar',
        arabic_word: word,
        transliteration: trans,
        translation: meaning,
        word_type: 'noun',
        level: 'A1',
        category: cat.en.toLowerCase().replace(/\s+/g, '_'),
        example_sentence: `هذا ${word} جميل`,
        example_translation: `This ${meaning} is beautiful`,
        difficulty: 1,
        tags: [cat.en.toLowerCase(), 'basic'],
      })
      idx++
    }
  }
  return items
}

function generateGrammarLessons(): GrammarLesson[] {
  return [
    {
      title: 'Introduction to Arabic',
      explanation: 'Arabic is written from right to left with 28 letters. Each letter can have up to 4 forms.',
      examples: [
        { arabic: 'اللغة العربية', translation: 'The Arabic language' },
        { arabic: 'أهلاً وسهلاً', translation: 'Welcome' },
      ],
      exercises: [],
      difficulty: 'beginner',
      category: 'introduction',
      order_index: 1,
    },
    {
      title: 'The Definite Article',
      explanation: 'ال (al-) is the definite article attached to nouns. With sun letters the ل is assimilated.',
      examples: [
        { arabic: 'كتاب → الكتاب', translation: 'book → the book' },
        { arabic: 'شمس → الشمس', translation: 'sun → the sun (ash-shams)' },
      ],
      exercises: [],
      difficulty: 'beginner',
      category: 'articles',
      order_index: 2,
    },
    {
      title: 'Personal Pronouns',
      explanation: 'Arabic has 12 personal pronouns covering singular, dual, and plural for masculine and feminine.',
      examples: [
        { arabic: 'أنا', translation: 'I' },
        { arabic: 'أنت', translation: 'you (masc. sg.)' },
        { arabic: 'هو', translation: 'he' },
        { arabic: 'هي', translation: 'she' },
        { arabic: 'نحن', translation: 'we' },
        { arabic: 'هم', translation: 'they (masc.)' },
      ],
      exercises: [],
      difficulty: 'beginner',
      category: 'pronouns',
      order_index: 3,
    },
  ]
}

function generateVerbs(): VerbConjugation[] {
  return verbRoots.map((v, i) => ({
    root: v.root,
    infinitive: v.infinitive,
    translation: v.translation,
    transliteration: v.trans,
    level: 'A1',
    category: 'basic',
    past_conjugation: {
      ana: `${v.root}ت`,
      anta: `${v.root}ت`,
      huwa: v.infinitive,
      hiya: `${v.root}ت`,
      nahnu: `${v.root}نا`,
      hum: `${v.root}وا`,
    },
    present_conjugation: {
      ana: `أ${v.infinitive}`,
      anta: `ت${v.infinitive}`,
      huwa: `ي${v.infinitive}`,
      hiya: `ت${v.infinitive}`,
      nahnu: `ن${v.infinitive}`,
      hum: `ي${v.infinitive}ون`,
    },
    example_sentences: [
      { arabic: `أنا ${v.root}ت كتاباً`, translation: `I ${v.translation} a book` },
      { arabic: `هو ${v.infinitive} درساً`, translation: `He ${v.translation}s a lesson` },
    ],
  }))
}

function generateExpressions(): Expression[] {
  return [
    { language: 'ar', arabic: 'السلام عليكم', transliteration: 'al-salāmu ʿalaykum', english: 'Peace be upon you', usage_context: 'Formal greeting', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'صباح الخير', transliteration: 'ṣabāḥ al-khayr', english: 'Good morning', usage_context: 'Morning greeting', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'مساء الخير', transliteration: 'masā\' al-khayr', english: 'Good evening', usage_context: 'Evening greeting', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'كيف حالك؟', transliteration: 'kayfa ḥāluka', english: 'How are you?', usage_context: 'Asking about well-being', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'الحمد لله', transliteration: 'al-ḥamdu lillāh', english: 'Praise be to God', usage_context: 'Expression of gratitude', level: 'A1', category: 'religion' },
    { language: 'ar', arabic: 'إن شاء الله', transliteration: 'in shā\' allāh', english: 'God willing', usage_context: 'Future plans', level: 'A1', category: 'religion' },
    { language: 'ar', arabic: 'ما شاء الله', transliteration: 'mā shā\' allāh', english: 'What God has willed', usage_context: 'Admiration', level: 'A1', category: 'religion' },
    { language: 'ar', arabic: 'بسم الله', transliteration: 'bismi llāh', english: 'In the name of God', usage_context: 'Before starting', level: 'A1', category: 'religion' },
    { language: 'ar', arabic: 'شكراً', transliteration: 'shukran', english: 'Thank you', usage_context: 'Thanking someone', level: 'A1', category: 'politeness' },
    { language: 'ar', arabic: 'عفواً', transliteration: 'ʿafwan', english: 'You\'re welcome', usage_context: 'Responding to thanks', level: 'A1', category: 'politeness' },
    { language: 'ar', arabic: 'من فضلك', transliteration: 'min faḍlik', english: 'Please', usage_context: 'Making a request', level: 'A1', category: 'politeness' },
    { language: 'ar', arabic: 'نعم', transliteration: 'naʿam', english: 'Yes', usage_context: 'Agreement', level: 'A1', category: 'basic' },
    { language: 'ar', arabic: 'لا', transliteration: 'lā', english: 'No', usage_context: 'Refusal', level: 'A1', category: 'basic' },
    { language: 'ar', arabic: 'ممكن', transliteration: 'mumkin', english: 'Possible / May I?', usage_context: 'Asking permission', level: 'A1', category: 'basic' },
    { language: 'ar', arabic: 'تمام', transliteration: 'tamām', english: 'Perfect / OK', usage_context: 'Confirmation', level: 'A1', category: 'basic' },
    { language: 'ar', arabic: 'مبروك', transliteration: 'mabrūk', english: 'Congratulations', usage_context: 'Happy occasion', level: 'A2', category: 'everyday' },
    { language: 'ar', arabic: 'بالتوفيق', transliteration: 'bil-tawfīq', english: 'Good luck', usage_context: 'Wishing success', level: 'A2', category: 'everyday' },
    { language: 'ar', arabic: 'إلى اللقاء', transliteration: 'ilā al-liqā\'', english: 'See you later', usage_context: 'Saying goodbye', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'مع السلامة', transliteration: 'maʿa al-salāmah', english: 'Goodbye (with peace)', usage_context: 'Saying goodbye', level: 'A1', category: 'greeting' },
    { language: 'ar', arabic: 'أهلاً', transliteration: 'ahlan', english: 'Hi', usage_context: 'Informal greeting', level: 'A1', category: 'greeting' },
  ]
}

// ============================================================
// MAIN - Generate all content
// ============================================================

function main() {
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true })
  }

  const vocab = generateVocabulary()
  fs.writeFileSync(path.join(OUTPUT_DIR, 'vocabulary.json'), JSON.stringify(vocab, null, 2))
  console.log(`Generated ${vocab.length} vocabulary items`)

  const grammar = generateGrammarLessons()
  fs.writeFileSync(path.join(OUTPUT_DIR, 'grammar.json'), JSON.stringify(grammar, null, 2))
  console.log(`Generated ${grammar.length} grammar lessons`)

  const verbs = generateVerbs()
  fs.writeFileSync(path.join(OUTPUT_DIR, 'verbs.json'), JSON.stringify(verbs, null, 2))
  console.log(`Generated ${verbs.length} verbs`)

  const expressions = generateExpressions()
  fs.writeFileSync(path.join(OUTPUT_DIR, 'expressions.json'), JSON.stringify(expressions, null, 2))
  console.log(`Generated ${expressions.length} expressions`)

  console.log('\nAll content generated in scripts/output/')
}

main()
