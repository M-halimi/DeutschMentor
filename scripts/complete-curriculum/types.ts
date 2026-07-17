/**
 * Complete Lesson Component Types
 * Each lesson has 20+ components for production German learning
 */

export interface LessonObjectives {
  canDo: string[]
  vocabulary: string[]
  grammar: string[]
  pronunciation: string[]
  culture: string[]
}

export interface VocabItem {
  word: string
  arabic: string
  english: string
  french?: string
  article?: string
  plural?: string
  pos: string
  ipa?: string
  cefr: string
  example: string
  exampleEn: string
  collocations?: string[]
  synonyms?: string[]
  antonyms?: string[]
  wordFamily?: string[]
  frequency?: string
  register?: string
  commonMistake?: string
  memoryHint?: string
  pronunciationNote?: string
}

export interface GrammarTopic {
  title: string
  titleArabic: string
  explanation: string
  explanationArabic: string
  rules: { rule: string; note: string; arabic?: string }[]
  examples: { german: string; arabic: string; english: string; french?: string; phonetic?: string }[]
  mistakes: { mistake: string; correction: string; explanation: string; arabic?: string }[]
  memoryTip?: string
  teacherNotes?: string[]
  examNotes?: string[]
  exercises?: GrammarExercise[]
}

export interface GrammarExercise {
  question: string
  options: string[]
  answer: string
  explanation: string
}

export interface PronunciationGuide {
  topic: string
  ipa: string
  howTo: string
  howToArabic: string
  examples: { word: string; ipa: string; audio: string }[]
  commonMistake: string
  practiceWords: string[]
}

export interface DialogueLine {
  speaker: string
  german: string
  arabic: string
  english: string
  french?: string
  vocabNote?: string
  grammarNote?: string
  cultureNote?: string
}

export interface ReadingText {
  title: string
  content: string
  arabicTranslation: string
  englishTranslation: string
  frenchTranslation?: string
  wordCount: number
  questions: ReadingQuestion[]
}

export interface ReadingQuestion {
  type: 'true_false' | 'multiple_choice' | 'open' | 'matching' | 'ordering'
  question: string
  options?: string[]
  answer: string
  explanation: string
}

export interface ListeningScript {
  title: string
  speakers: { name: string; role: string }[]
  lines: DialogueLine[]
  duration: number
  questions: ListeningQuestion[]
}

export interface ListeningQuestion {
  type: 'gap_fill' | 'true_false' | 'multiple_choice' | 'dictation'
  question: string
  options?: string[]
  answer: string
  explanation?: string
}

export interface SpeakingPrompt {
  title: string
  scenario: string
  task: string
  tips: string[]
  vocabHints: string[]
  minDuration: number
  roleplayWith?: string
  followUp?: string[]
}

export interface WritingTask {
  title: string
  type: 'email' | 'letter' | 'whatsapp' | 'essay' | 'forum' | 'complaint' | 'application' | 'cv' | 'journal'
  task: string
  formal: boolean
  tips: string[]
  vocabHints: string[]
  wordLimit: { min: number; max: number }
  correctionExample?: { wrong: string; correct: string; explanation: string }
}

export interface TranslationExercise {
  from: 'ar' | 'en' | 'de'
  to: 'ar' | 'en' | 'de'
  sentences: { original: string; correct: string; hints?: string }[]
}

export interface RealLifeSituation {
  situation: string
  context: string
  phrases: { german: string; arabic: string; english: string; french?: string }[]
  culturalNote: string
  steps?: string[]
}

export interface CultureNote {
  topic: string
  explanation: string
  explanationArabic: string
  tips: string[]
  doDont?: { do: string; dont: string }[]
}

export interface CommonMistake {
  mistake: string
  correct: string
  reason: string
  reasonArabic: string
  category: string
  examples: { wrong: string; right: string }[]
}

export interface MemoryTip {
  tip: string
  type: 'mnemonic' | 'visual' | 'association' | 'pattern' | 'story'
  explanation: string
  arabicExplanation?: string
}

export interface AIKnowledge {
  definitions: { term: string; definition: string }[]
  faqs: { question: string; answer: string }[]
  teacherTips: string[]
  advancedExplanations: string[]
  synonyms: { german: string; meaning: string }[]
  antonyms: { german: string; opposite: string }[]
  examAdvice: string[]
  conversationExamples: { situation: string; dialogue: string }[]
}

export interface QuizQuestion {
  type: 'multiple_choice' | 'true_false' | 'fill_blank' | 'matching' | 'translation' | 'sentence_order'
  question: string
  options: string[]
  answer: string
  explanation: string
  points: number
}

export interface GoetheStyleTest {
  reading: { text: string; questions: { question: string; options: string[]; answer: string }[] }
  listening: { script: string; questions: { question: string; options: string[]; answer: string }[] }
  writing: { prompt: string; requirements: string[] }
  speaking: { prompt: string; topics: string[] }
  vocabulary: { task: string; items: { question: string; answer: string }[] }
  grammar: { task: string; items: { question: string; options: string[]; answer: string }[] }
}

export interface Homework {
  title: string
  type: 'vocabulary' | 'grammar' | 'writing' | 'speaking' | 'mixed'
  tasks: { description: string; estimatedMinutes: number }[]
  totalMinutes: number
}

export interface LessonReview {
  summary: string
  summaryArabic: string
  keyPoints: string[]
  grammarSummary: string
  vocabFocus: string[]
  commonMistakes: string[]
  tips: string[]
  flashcardCount: number
  checklist: { item: string; checked: boolean }[]
}

export interface LessonPronunciation {
  alphabet?: {
    uppercase: string
    lowercase: string
    name: string
    example: string
    ipa: string
  }[]
  umlauts: PronunciationGuide
  chSound: PronunciationGuide
  schSound: PronunciationGuide
  spSound: PronunciationGuide
  stSound: PronunciationGuide
  rSound: PronunciationGuide
  zSound: PronunciationGuide
  euSound: PronunciationGuide
  eiSound: PronunciationGuide
  ieSound: PronunciationGuide
  auSound: PronunciationGuide
}

export interface LessonNumbers {
  cardinal: { range: string; list: { number: number; german: string; note?: string }[] }
  ordinal: { range: string; pattern: string; examples: { number: number; german: string }[] }
  phone: { rule: string; examples: string[] }
  money: { rule: string; examples: string[] }
  dates: { rule: string; examples: string[] }
  years: { rule: string; examples: string[] }
  time: { rule: string; examples: string[] }
}

export interface ExamPrepSection {
  examType: 'Goethe' | 'TELC' | 'ÖSD' | 'TestDaF' | 'DSH'
  level: string
  tips: string[]
  timing: { section: string; minutes: number }[]
  commonMistakes: string[]
  sampleAnswers: { question: string; sampleAnswer: string; score: string }[]
  mockQuestions: GoetheStyleTest[]
}

export interface CompleteLesson {
  id: string
  moduleId: string
  title: string
  description: string
  topic: string
  type: string
  duration: number
  orderIndex: number
  
  componentFlags: {
    hasObjectives: boolean
    hasVocabulary: boolean
    hasGrammar: boolean
    hasPronunciation: boolean
    hasAlphabet: boolean
    hasNumbers: boolean
    hasDialogue: boolean
    hasReading: boolean
    hasListening: boolean
    hasSpeaking: boolean
    hasWriting: boolean
    hasTranslation: boolean
    hasRealLife: boolean
    hasCulture: boolean
    hasCommonMistakes: boolean
    hasMemoryTips: boolean
    hasQuiz: boolean
    hasExercises: boolean
    hasUnitTest: boolean
    hasHomework: boolean
    hasRevision: boolean
    hasAIKnowledge: boolean
    hasExamPrep: boolean
  }
  
  objectives: LessonObjectives
  vocab: VocabItem[]
  grammar: GrammarTopic[]
  pronunciation?: PronunciationGuide[]
  alphabet?: LessonPronunciation['alphabet']
  numbers?: LessonNumbers
  dialogue?: DialogueLine[]
  reading?: ReadingText
  listening?: ListeningScript
  speaking: SpeakingPrompt[]
  writing: WritingTask[]
  translation?: TranslationExercise
  realLife?: RealLifeSituation[]
  culture: CultureNote[]
  commonMistakes: CommonMistake[]
  memoryTips: MemoryTip[]
  quiz: QuizQuestion[]
  exercises: QuizQuestion[]
  unitTest?: GoetheStyleTest
  homework?: Homework
  review?: LessonReview
  aiKnowledge: AIKnowledge
  examPrep?: ExamPrepSection
  expressions: { german: string; english: string; arabic: string; french?: string; formality: string }[]
  flashcards: { front: string; back: string; hint?: string; category: string }[]
}

export interface CompleteModule {
  id: string
  levelId: string
  title: string
  description: string
  objectives: string[]
  orderIndex: number
  estimatedHours: number
  lessons: CompleteLesson[]
}

export interface CompleteLevel {
  id: string
  title: string
  description: string
  color: string
  orderIndex: number
  modules: CompleteModule[]
}
