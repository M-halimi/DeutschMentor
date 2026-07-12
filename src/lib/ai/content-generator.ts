import { getAIService, initAIService } from './provider'

export type GenerateType = 'vocabulary' | 'grammar' | 'listening' | 'reading' | 'exercises' | 'sentences'

export interface GenerateRequest {
  type: GenerateType
  language: string
  level: string
  count?: number
  category?: string
  existingData?: string
}

export interface GenerateResponse {
  success: boolean
  data: unknown[]
  error?: string
}

function buildPrompt(req: GenerateRequest): string {
  const count = req.count ?? 10
  const base = `Generate ${count} ${req.language} language learning items.`
  const levelInfo = `CEFR Level: ${req.level}.`
  const categoryInfo = req.category ? `Category: ${req.category}.` : ''
  const formatInfo = 'Return ONLY a valid JSON array. No markdown, no explanation, no code blocks.'

  switch (req.type) {
    case 'vocabulary':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each word provide:
{
  "german_word": "the word in ${req.language}",
  "english_translation": "English meaning",
  "transliteration": "pronunciation guide",
  "word_type": "noun|verb|adjective|adverb|expression",
  "article": "der|die|das (for German nouns, otherwise null)",
  "plural": "plural form if noun",
  "example_sentence": "example in ${req.language}",
  "example_translation": "English translation of example",
  "level": "${req.level}",
  "category": "${req.category || 'general'}",
  "difficulty": 1-5,
  "tags": ["relevant", "tags"]
}

Generate vocabulary appropriate for ${req.level} level learners. Include a mix of word types.`

    case 'grammar':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each grammar lesson provide:
{
  "title": "Grammar lesson title",
  "description": "brief description",
  "explanation": "detailed explanation of the grammar rule",
  "examples": ["example 1 in ${req.language}", "example 2 in ${req.language}"],
  "rule": "the grammar rule in simple terms",
  "level": "${req.level}",
  "category": "articles|verbs|nouns|adjectives|prepositions|sentences|tenses|cases",
  "exercises": [
    {
      "question": "exercise question",
      "options": ["A", "B", "C", "D"],
      "correct_answer": "A",
      "explanation": "why this is correct"
    }
  ]
}

Include ${Math.min(count, 5)} exercises per lesson.`

    case 'listening':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each listening lesson provide:
{
  "title": "lesson title in ${req.language}",
  "description": "English description",
  "transcript": "full transcript in ${req.language}",
  "translation": "English translation of transcript",
  "level": "${req.level}",
  "category": "daily|travel|work|education|news|culture",
  "duration_seconds": 60-300,
  "questions": [
    {
      "question": "question in English",
      "options": ["A", "B", "C", "D"],
      "correct_answer": "A"
    }
  ]
}

The transcript should be a natural dialogue or monologue at ${req.level} level.`

    case 'reading':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each reading article provide:
{
  "title": "article title in ${req.language}",
  "content": "article content in ${req.language}",
  "summary": "brief English summary",
  "level": "${req.level}",
  "category": "daily|travel|work|education|news|culture|science",
  "word_count": approximate number,
  "questions": [
    {
      "question": "comprehension question in English",
      "options": ["A", "B", "C", "D"],
      "correct_answer": "A"
    }
  ],
  "vocabulary": [
    {
      "german_word": "key word in ${req.language}",
      "english_translation": "English meaning",
      "context_sentence": "sentence from the article showing the word"
    }
  ]
}

The article should be ${Math.min(count, 3)} short paragraphs at ${req.level} level.`

    case 'exercises':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each exercise provide:
{
  "type": "multiple_choice|fill_blank|matching|true_false",
  "question": "the question or instruction in English",
  "prompt": "the sentence with blank in ${req.language} (if applicable)",
  "options": ["A", "B", "C", "D"],
  "correct_answer": "the correct answer",
  "explanation": "explanation of the answer",
  "level": "${req.level}",
  "category": "${req.category || 'general'}"
}`

    case 'sentences':
      return `${base} ${levelInfo} ${categoryInfo} ${formatInfo}

For each sentence provide:
{
  "german": "sentence in ${req.language}",
  "english": "English translation",
  "transliteration": "pronunciation guide",
  "vocabulary": ["key", "words", "used"],
  "grammar_focus": "grammar point being demonstrated",
  "level": "${req.level}",
  "category": "${req.category || 'general'}"
}

Sentences should demonstrate natural usage at ${req.level} level.`

    default:
      return `${base} ${levelInfo} ${formatInfo}`
  }
}

export async function generateContent(req: GenerateRequest): Promise<GenerateResponse> {
  try {
    await initAIService()
    const service = getAIService()
    if (!service.isAvailable()) {
      return generateFallback(req)
    }
    const prompt = buildPrompt(req)
    const result = await service.complete({
      systemPrompt: 'You are a language learning content generator. Generate accurate, level-appropriate content. Always return only valid JSON arrays with no extra text.',
      userPrompt: prompt,
      temperature: 0.7,
      maxTokens: 4000,
    })

    let data = result.content.trim()
    if (data.startsWith('```json')) data = data.slice(7)
    if (data.startsWith('```')) data = data.slice(3)
    if (data.endsWith('```')) data = data.slice(0, -3)
    data = data.trim()

    const parsed = JSON.parse(data)
    const items = Array.isArray(parsed) ? parsed : [parsed]
    return { success: true, data: items }
  } catch (error) {
    console.error('AI generation failed:', error)
    return generateFallback(req)
  }
}

function generateFallback(req: GenerateRequest): GenerateResponse {
  const count = req.count ?? 5
  const items: unknown[] = []

  if (req.type === 'vocabulary') {
    const fallbackWords: Record<string, string> = {
      'der Tisch': 'table', 'die Lampe': 'lamp', 'das Buch': 'book',
      'der Stuhl': 'chair', 'die Tür': 'door', 'das Fenster': 'window',
      'der Computer': 'computer', 'die Blume': 'flower', 'das Haus': 'house',
      'der Garten': 'garden', 'die Schule': 'school', 'das Auto': 'car',
      'der Zug': 'train', 'die Straße': 'street', 'das Wasser': 'water',
    }
    const entries = Object.entries(fallbackWords).slice(0, count)
    for (const [word, trans] of entries) {
      const parts = word.split(' ')
      const article = parts[0]
      const germanWord = parts.slice(1).join(' ')
      items.push({
        german_word: germanWord,
        english_translation: trans,
        article: article,
        word_type: 'noun',
        level: req.level,
        category: req.category || 'general',
        example_sentence: `Das ${germanWord} ist schön.`,
        example_translation: `The ${trans} is nice.`,
        difficulty: 1,
        tags: ['basic', req.level],
      })
    }
  }

  return { success: true, data: items }
}
