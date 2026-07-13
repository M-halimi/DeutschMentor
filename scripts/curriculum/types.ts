export interface ModuleDef {
  title: string
  description: string
  objectives: string[]
  lessons: LessonDef[]
}

export interface LessonDef {
  title: string
  description: string
  topic: string
  lesson_type: string
  duration_minutes: number
  objectives?: string[]
  vocab: VocabDef[]
  grammar: GrammarDef[]
  exercises: ExerciseDef[]
  testQuestions: TestQuestionDef[]
}

export interface VocabDef {
  word: string
  arabic: string
  english: string
  article?: string
  plural?: string
  pos: string
  example: string
  exampleEn: string
}

export interface GrammarDef {
  title: string
  explanation: string
  rules: Array<{ rule: string; note?: string }>
  examples: Array<{ german: string; arabic: string; english: string; phonetic?: string }>
  mistakes: Array<{ mistake: string; correction: string; explanation: string }>
}

export interface ExerciseDef {
  type: string
  question: string
  options: string[]
  correct_answer: string
  explanation: string
  points: number
}

export interface TestQuestionDef {
  type: string
  question: string
  options: string[]
  correct_answer: string
  points: number
}
