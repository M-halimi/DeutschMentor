export type Role = 'student' | 'teacher' | 'admin'

export type GermanLevel = 'A1' | 'A2' | 'B1' | 'B2' | 'C1'

export type SkillType = 'hoeren' | 'lesen' | 'schreiben' | 'sprechen'

export type ExamType = 'goethe' | 'telc'

export type LearningGoal = 'exam_preparation' | 'daily_conversation' | 'business_german' | 'academic' | 'travel' | 'relocation'

export type LessonType = 'listening' | 'reading' | 'writing' | 'speaking' | 'vocabulary' | 'grammar'

export type LanguageCode = 'de' | 'ar' | 'en' | 'fr' | 'es'

export type WordType = 'noun' | 'verb' | 'adjective' | 'adverb' | 'preposition' | 'conjunction' | 'expression'

export type ArabicDifficulty = 'beginner' | 'A1' | 'A2' | 'B1' | 'B2'

export type Frequency = 'very_common' | 'common' | 'rare' | 'very_rare'

export type ListeningQuestionType = 'multiple_choice' | 'true_false' | 'matching' | 'fill_blank' | 'order_events' | 'short_answer'

export type ReadingQuestionType = 'multiple_choice' | 'true_false' | 'match_headings' | 'gap_filling' | 'inference' | 'vocabulary_context' | 'short_answer'

export type WritingExerciseType = 'email' | 'formal_letter' | 'informal_letter' | 'complaint' | 'application' | 'opinion' | 'forum_post' | 'invitation' | 'review' | 'story' | 'description' | 'argumentative'

export interface Profile {
  id: string
  user_id: string
  email: string | null
  full_name: string
  avatar_url: string | null
  native_language: string
  current_level: GermanLevel
  target_level: GermanLevel
  learning_goal: LearningGoal
  daily_study_minutes: number
  exam_goal: ExamType | null
  role: Role
  created_at: string
  updated_at: string
}

export interface Course {
  id: string
  title: string
  description: string
  level: GermanLevel
  image_url: string | null
  teacher_id: string
  is_published: boolean
  created_at: string
  updated_at: string
  lesson_count?: number
}

export interface Lesson {
  id: string
  course_id: string
  title: string
  description: string
  lesson_type: LessonType
  level: GermanLevel
  order_index: number
  duration_minutes: number
  is_published: boolean
  created_at: string
  updated_at: string
}

export interface LessonContent {
  id: string
  lesson_id: string
  content_type: string
  content: Record<string, unknown>
  order_index: number
}

export interface Skill {
  id: string
  user_id: string
  skill_type: SkillType
  score: number
  level: GermanLevel
  updated_at: string
}

export interface Progress {
  id: string
  user_id: string
  lesson_id: string
  completed: boolean
  score: number | null
  time_spent_minutes: number
  completed_at: string | null
  created_at: string
}

export interface StudySession {
  id: string
  user_id: string
  date: string
  total_minutes: number
  lessons_completed: number
  created_at: string
}

export interface Vocabulary {
  id: string
  german_word: string
  english_translation: string
  article: string | null
  plural: string | null
  example_sentence: string | null
  level: GermanLevel
  category: string | null
  french_translation: string | null
  arabic_translation: string | null
  pronunciation_url: string | null
  slow_pronunciation_url: string | null
  ipa: string | null
  synonyms: string[]
  antonyms: string[]
  word_family: string[]
  verb_forms: Record<string, string>
  frequency: Frequency
  difficulty_score: number
  word_type: WordType | null
  tags: string[]
  theme: string | null
  created_at: string
}

export interface UserVocabulary {
  id: string
  user_id: string
  vocabulary_id: string
  mastered: boolean
  difficulty: number
  next_review: string
  review_count: number
  is_favorite: boolean
  created_at: string
  updated_at: string
}

export interface ReviewHistory {
  id: string
  user_vocabulary_id: string
  review_date: string
  performance: number
  created_at: string
}

export interface Mistake {
  id: string
  user_id: string
  lesson_id: string | null
  mistake_type: string
  user_answer: string
  correct_answer: string
  context: string | null
  created_at: string
}

export interface WritingSubmission {
  id: string
  user_id: string
  title: string
  prompt_id: string | null
  original_text: string
  corrected_text: string | null
  corrected_version: string | null
  feedback: Record<string, unknown> | null
  score: number | null
  grammar_score: number | null
  vocabulary_score: number | null
  coherence_score: number | null
  naturalness_score: number | null
  exam_score_estimate: number | null
  suggestions: string[]
  word_count: number | null
  time_spent_minutes: number | null
  level_estimate: GermanLevel | null
  created_at: string
}

export interface WritingPrompt {
  id: string
  title: string
  instructions: string
  exercise_type: WritingExerciseType
  level: GermanLevel
  word_limit_min: number
  word_limit_max: number
  difficulty: number
  timer_minutes: number | null
  hints: string[]
  target_grammar: string[]
  target_vocabulary: string[]
  example_structure: string | null
  is_active: boolean
  created_at: string
}

export interface SpeakingSession {
  id: string
  user_id: string
  topic: string
  duration_seconds: number
  transcript: string | null
  pronunciation_score: number | null
  fluency_score: number | null
  vocabulary_used: string[]
  grammar_mistakes: string[]
  corrected_transcript: string | null
  feedback: Record<string, unknown> | null
  score: number | null
  created_at: string
}

export interface ExamAttempt {
  id: string
  user_id: string
  exam_type: ExamType
  level: GermanLevel
  module: SkillType
  score: number
  max_score: number
  passed: boolean
  attempt_date: string
  created_at: string
}

export interface AiFeedback {
  id: string
  user_id: string
  feedback_type: string
  content: Record<string, unknown>
  reference_id: string | null
  reference_type: string | null
  created_at: string
}

export interface Achievement {
  id: string
  title: string
  description: string
  icon: string
  requirement: Record<string, unknown>
  created_at: string
}

export interface UserAchievement {
  id: string
  user_id: string
  achievement_id: string
  achieved_at: string
}

export interface Notification {
  id: string
  user_id: string
  title: string
  message: string
  type: string
  read: boolean
  created_at: string
}

export interface DailyPlan {
  date: string
  activities: DailyActivity[]
  total_minutes: number
}

export interface DailyActivity {
  type: LessonType
  title: string
  duration_minutes: number
  description: string
}

export interface DashboardStats {
  total_study_hours: number
  current_streak: number
  completed_lessons: number
  vocabulary_learned: number
  skill_scores: Record<SkillType, number>
  weak_areas: string[]
}

export interface AudioLesson {
  id: string
  title: string
  description: string
  audio_url: string
  transcript: string
  level: GermanLevel
  duration_seconds: number
  category: string
  is_published: boolean
  speaker_gender: 'male' | 'female' | 'mixed' | null
  speaker_age_group: 'young' | 'adult' | 'elderly' | 'mixed' | null
  accent: string | null
  scenario: string | null
  cefr_level: string | null
  estimated_duration: string | null
  grammar_involved: string[]
  vocabulary_involved: string[]
  difficulty_rating: number
  speaker_count: number
  created_at: string
}

export interface ListeningExercise {
  id: string
  audio_lesson_id: string
  question: string
  options: string[]
  correct_answer: string
  question_type: ListeningQuestionType
  distractors: string[]
  difficulty_level: number
  hint: string | null
  explanation: string | null
  order_index: number
}

export interface Article {
  id: string
  title: string
  content: string
  summary: string
  level: GermanLevel
  category: string
  word_count: number
  image_url: string | null
  is_published: boolean
  author: string | null
  source: string | null
  reading_time_minutes: number | null
  difficulty_rating: number
  tags: string[]
  grammar_focus: string[]
  created_at: string
}

export interface ReadingQuestion {
  id: string
  article_id: string
  question: string
  options: string[]
  correct_answer: string
  question_type: ReadingQuestionType
  explanation: string | null
  difficulty_level: number
  order_index: number
}

export interface ArticleVocabulary {
  id: string
  article_id: string
  german_word: string
  english_translation: string
  context_sentence: string
}

export interface DictationExercise {
  id: string
  title: string
  audio_url: string
  full_text: string
  level: GermanLevel
  duration_seconds: number
}

export interface UserDictation {
  id: string
  user_id: string
  dictation_id: string
  user_text: string
  score: number
  mistakes: { original: string; expected: string }[]
  completed_at: string
}

export interface Expression {
  id: string
  german: string
  english: string
  usage_context: string
  level: GermanLevel
  category: string
  audio_url: string | null
}

export interface GrammarExercise {
  id: string
  title: string
  description: string
  level: GermanLevel
  category: string
  sub_category: string | null
  question: string
  options: string[]
  correct_answer: string
  explanation: string
  exceptions: string[]
  related_rules: string[]
  difficulty_rating: number
  examples: string[]
  order_index: number
}

export interface UserGrammar {
  id: string
  user_id: string
  exercise_id: string
  user_answer: string
  correct: boolean
  completed_at: string
}

export interface ArticleWithContent extends Article {
  questions: ReadingQuestion[]
  vocabulary: ArticleVocabulary[]
}

export interface AudioLessonWithExercises extends AudioLesson {
  exercises: ListeningExercise[]
}

export interface Language {
  id: string
  code: LanguageCode
  name: string
  native_name: string
  is_rtl: boolean
  is_active: boolean
}

export interface ArabicVerb {
  id: string
  root: string
  infinitive: string
  translation: string
  transliteration: string | null
  pronunciation_url: string | null
  past_conjugation: Record<string, string>
  present_conjugation: Record<string, string>
  future_conjugation: Record<string, string>
  example_sentences: { arabic: string; translation: string }[]
  level: GermanLevel
  category: string | null
}

export interface ArabicLetter {
  id: string
  letter: string
  name: string
  transliteration: string
  pronunciation: string
  isolated_form: string
  beginning_form: string
  middle_form: string
  end_form: string
  is_sun_letter: boolean
  is_moon_letter: boolean
  is_connector: boolean
  audio_url: string | null
  example_word: string
  example_translation: string
  order_index: number
}

export interface ArabicGrammarLesson {
  id: string
  title: string
  explanation: string
  examples: { arabic: string; translation: string }[]
  exercises: { question: string; options: string[]; correct_answer: string }[]
  difficulty: ArabicDifficulty
  category: string
  order_index: number
}

export interface LearningAnalytics {
  id: string
  user_id: string
  total_study_minutes: number
  total_lessons_completed: number
  total_exercises_completed: number
  total_vocabulary_learned: number
  hoeren_score: number
  lesen_score: number
  schreiben_score: number
  sprechen_score: number
  grammar_mastery: number
  current_streak: number
  longest_streak: number
  estimated_cefr_level: GermanLevel
  weak_topics: string[]
  strong_topics: string[]
  monthly_minutes: number[]
  last_active_date: string
  updated_at: string
}

export interface ListeningAnalytics {
  id: string
  user_id: string
  audio_lesson_id: string
  total_plays: number
  completed: boolean
  accuracy: number
  weak_topics: string[]
  time_spent_seconds: number
  last_listened_at: string
}

export interface ExerciseAttempt {
  id: string
  user_id: string
  exercise_type: string
  exercise_id: string
  correct: boolean
  time_spent_seconds: number
  difficulty_at_time: number
  topic: string | null
  created_at: string
}

export type ContentSourceType = 'upload' | 'external_url' | 'youtube' | 'textbook_scan' | 'paste_transcript'
export type ProcessingStatus = 'pending' | 'processing' | 'completed' | 'failed'
export type FormalityLevel = 'formal' | 'neutral' | 'informal' | 'slang'

export interface AudioContentSource {
  id: string
  audio_lesson_id: string
  user_id: string
  source_type: ContentSourceType
  source_url: string | null
  file_path: string | null
  file_size_bytes: number | null
  mime_type: string | null
  original_filename: string | null
  source_label: string | null
  processing_status: ProcessingStatus
  processing_error: string | null
  is_learner_submitted: boolean
  created_at: string
  updated_at: string
}

export interface ListeningVocabulary {
  id: string
  audio_lesson_id: string
  german_word: string
  english_translation: string
  article: string | null
  plural: string | null
  part_of_speech: string | null
  context_sentence: string | null
  context_translation: string | null
  usage_notes: string | null
  cefr_level: string | null
  frequency: Frequency
  order_index: number
  created_at: string
}

export interface ListeningPhrase {
  id: string
  audio_lesson_id: string
  german_phrase: string
  english_translation: string
  literal_translation: string | null
  usage_context: string | null
  formality_level: FormalityLevel
  is_idiom: boolean
  is_colloquial: boolean
  order_index: number
  created_at: string
}

export interface ListeningGrammarPoint {
  id: string
  audio_lesson_id: string
  grammar_topic: string
  explanation: string
  example_from_audio: string
  english_translation: string | null
  rule_summary: string | null
  cefr_level: string | null
  order_index: number
  created_at: string
}

export interface AudioLessonWithExtras extends AudioLesson {
  exercises: ListeningExercise[]
  vocabulary: ListeningVocabulary[]
  phrases: ListeningPhrase[]
  grammar_points: ListeningGrammarPoint[]
  sources: AudioContentSource[]
}

export type WritingExerciseTypeFull =
  | 'email_formal' | 'email_informal' | 'email_request' | 'email_complaint'
  | 'email_application' | 'email_information'
  | 'beschwerde' | 'meinung' | 'argumentation' | 'bewertung'
  | 'beschreibung' | 'einladung' | 'formular' | 'stellungnahme'
  | 'bericht' | 'erfahrung'

export interface WritingExample {
  id: string
  title: string
  task_description: string
  example_answer: string
  exercise_type: WritingExerciseTypeFull
  level: GermanLevel | 'C2'
  theme: string | null
  useful_vocabulary: string[]
  useful_phrases: string[]
  grammar_structures: string[]
  explanation: string
  why_good: string | null
  word_count: number | null
  is_published: boolean
  created_at: string
}

export interface MentorChat {
  id: string
  user_id: string
  title: string
  context: Record<string, unknown>
  is_active: boolean
  created_at: string
  updated_at: string
}

export interface MentorMessage {
  id: string
  chat_id: string
  role: 'user' | 'mentor' | 'system'
  content: string
  metadata: Record<string, unknown>
  created_at: string
}

export type ThemeContentType = 'vocabulary' | 'listening' | 'reading' | 'speaking' | 'writing' | 'grammar' | 'conversation'

export interface ThemeLesson {
  id: string
  theme: string
  title: string
  description: string | null
  level: GermanLevel | 'C2'
  content_type: ThemeContentType
  reference_id: string | null
  reference_table: string | null
  order_index: number
  is_published: boolean
  created_at: string
}
