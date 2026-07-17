'use client'

import { useState, useCallback, useEffect, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Target,
  Heart,
  Clock,
  CheckCircle2,
  XCircle,
  RotateCcw,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import type { LessonTestQuestion } from '@/types'
import { StepHeader } from './step-header'
import { Confetti } from './confetti'
import { useTranslation } from '@/lib/i18n/use-translation'

const PASS_THRESHOLD = 0.6

export function FinalBossTest({
  questions,
  onSubmit,
  isPending,
  onResult,
}: {
  questions: LessonTestQuestion[]
  onSubmit: (answers: string[]) => void
  isPending: boolean
  onResult?: (passed: boolean, score: number) => void
}) {
  const [answers, setAnswers] = useState<string[]>(
    new Array(questions.length).fill('')
  )
  const [lives, setLives] = useState(3)
  const [submitted, setSubmitted] = useState(false)
  const [results, setResults] = useState<
    { correct: boolean; correctAnswer: string }[] | null
  >(null)
  const [showConfetti, setShowConfetti] = useState(false)
  const [passed, setPassed] = useState(false)
  const [score, setScore] = useState(0)
  const [totalPoints, setTotalPoints] = useState(0)
  const [currentQuestion, setCurrentQuestion] = useState(0)
  const [direction, setDirection] = useState(0)
  const [feedback, setFeedback] = useState<
    'correct' | 'wrong' | null
  >(null)
  const inputRef = useRef<HTMLInputElement>(null)
  const { t } = useTranslation()

  const q = questions[currentQuestion]

  const handleAnswer = useCallback(
    (selectedAnswer: string) => {
      if (submitted) return
      const newAnswers = [...answers]
      newAnswers[currentQuestion] = selectedAnswer
      setAnswers(newAnswers)

      const correct =
        selectedAnswer.trim().toLowerCase() ===
        q.correct_answer.trim().toLowerCase()

      setFeedback(correct ? 'correct' : 'wrong')

      if (!correct) {
        const newLives = lives - 1
        setLives(newLives)
        if (newLives <= 0) {
          setTimeout(() => handleSubmit(newAnswers), 800)
          return
        }
      }

      if (currentQuestion < questions.length - 1) {
        setTimeout(() => {
          setDirection(1)
          setCurrentQuestion((c) => c + 1)
          setFeedback(null)
        }, 800)
      } else {
        setTimeout(() => handleSubmit(newAnswers), 800)
      }
    },
    [answers, currentQuestion, q, lives, submitted, questions.length]
  )

  const handleSubmit = useCallback(
    (finalAnswers?: string[]) => {
      const a = finalAnswers ?? answers
      const total = questions.reduce(
        (sum, qq) => sum + (qq.points ?? 1),
        0
      )
      let earned = 0
      const res = questions.map((qq, i) => {
        const correct =
          a[i]?.trim().toLowerCase() ===
          qq.correct_answer.trim().toLowerCase()
        if (correct) earned += qq.points ?? 1
        return { correct, correctAnswer: qq.correct_answer }
      })
      setResults(res)
      setScore(earned)
      setTotalPoints(total)
      setSubmitted(true)
      setFeedback(null)

      const pct = earned / total
      const passedTest = pct >= PASS_THRESHOLD
      setPassed(passedTest)
      if (passedTest) setShowConfetti(true)
      onResult?.(passedTest, Math.round(pct * 100))
    },
    [answers, questions, onResult]
  )

  if (submitted && results) {
    const pct = score / totalPoints
    return (
      <div>
      <StepHeader
        icon={Target}
        title={t('test.results-title')}
        subtitle={
          passed
            ? t('test.passed-subtitle')
            : t('test.failed-subtitle')
        }
        step={4}
        total={8}
      />

        <Confetti active={showConfetti} />

        <motion.div
          initial={{ scale: 0.8, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ type: 'spring', stiffness: 200, damping: 15 }}
          className={`rounded-2xl border-2 p-8 text-center mb-6 ${
            passed
              ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
              : 'border-red-500 bg-red-50 dark:bg-red-900/20'
          }`}
        >
          {passed ? (
            <motion.div
              initial={{ scale: 0 }}
              animate={{ scale: 1 }}
              transition={{ type: 'spring', stiffness: 300, damping: 10, delay: 0.2 }}
            >
              <CheckCircle2 className="h-16 w-16 text-green-500 mx-auto mb-4" />
            </motion.div>
          ) : (
            <XCircle className="h-16 w-16 text-red-500 mx-auto mb-4" />
          )}
          <h2 className="text-2xl font-bold mb-1">
            {passed ? t('test.passed') : t('test.failed')}
          </h2>
          <p className="text-4xl font-bold mb-1 tabular-nums">
            {Math.round(pct * 100)}%
          </p>
          <p className="text-sm text-muted-foreground">
            {t('test.score', { score, total: totalPoints })}
          </p>
          {passed && (
            <motion.div
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: 0.5 }}
              className="mt-4"
            >
              <Badge className="text-sm px-4 py-1.5 bg-green-500 text-white">
                {t('test.boss-defeated')}
              </Badge>
            </motion.div>
          )}
          {!passed && (
            <Button
              variant="outline"
              className="mt-4"
              onClick={() => {
                setSubmitted(false)
                setResults(null)
                setAnswers(new Array(questions.length).fill(''))
                setLives(3)
                setCurrentQuestion(0)
                setShowConfetti(false)
              }}
            >
                <RotateCcw className="h-4 w-4 mr-1.5" /> {t('test.retry')}
              </Button>
          )}
        </motion.div>

        <div className="space-y-2">
          {questions.map((qq, i) => {
            const r = results[i]
            return (
              <motion.div
                key={qq.id}
                initial={{ opacity: 0, x: -10 }}
                animate={{ opacity: 1, x: 0 }}
                transition={{ delay: i * 0.05 }}
                className={`flex items-start gap-3 p-3 rounded-xl border ${
                  r.correct
                    ? 'border-green-200 dark:border-green-800'
                    : 'border-red-200 dark:border-red-800'
                }`}
              >
                {r.correct ? (
                  <CheckCircle2 className="h-5 w-5 text-green-500 mt-0.5 shrink-0" />
                ) : (
                  <XCircle className="h-5 w-5 text-red-500 mt-0.5 shrink-0" />
                )}
                <div className="min-w-0 flex-1">
                  <p className="text-sm font-medium">{qq.question}</p>
                  <p className="text-xs text-muted-foreground mt-0.5">
                    {t('test.your-answer')} {answers[i] || '-'}
                  </p>
                  {!r.correct && (
                    <p className="text-xs text-green-600 mt-0.5">
                      {t('test.correct')} {r.correctAnswer}
                    </p>
                  )}
                </div>
              </motion.div>
            )
          })}
        </div>

        {passed && (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 1 }}
            className="mt-6"
          >
            <Button className="w-full rounded-xl" size="lg">
              {t('test.claim')}
            </Button>
          </motion.div>
        )}
      </div>
    )
  }

  return (
    <div>
      <StepHeader
        icon={Target}
        title={t('test.title')}
        subtitle={t('test.subtitle', { count: questions.length, pass: Math.round(PASS_THRESHOLD * 100) })}
        step={4}
        total={8}
      />

      {/* Lives + Progress Bar */}
      <div className="flex items-center gap-4 mb-6 p-3 rounded-xl bg-muted/50 border">
        <div className="flex items-center gap-1">
          {[1, 2, 3].map((life) => (
            <Heart
              key={life}
              className={`h-5 w-5 transition-all duration-300 ${
                life <= lives
                  ? 'text-red-500 fill-red-500'
                  : 'text-muted-foreground/20'
              }`}
            />
          ))}
        </div>
        <div className="flex-1 h-1.5 bg-muted-foreground/20 rounded-full overflow-hidden">
          <motion.div
            className="h-full bg-primary rounded-full"
            initial={{ width: 0 }}
            animate={{
              width: `${((currentQuestion + 1) / questions.length) * 100}%`,
            }}
            transition={{ duration: 0.4 }}
          />
        </div>
        <span className="text-xs text-muted-foreground tabular-nums">
          {currentQuestion + 1}/{questions.length}
        </span>
      </div>

      {/* Question Card */}
      <AnimatePresence mode="wait">
        <motion.div
          key={currentQuestion}
          initial={{ opacity: 0, x: 50 }}
          animate={{ opacity: 1, x: 0 }}
          exit={{ opacity: 0, x: -50 }}
          transition={{ type: 'spring', stiffness: 260, damping: 24 }}
          className="rounded-2xl border bg-card p-6 mb-6"
        >
          <div className="flex items-center justify-between mb-4">
            <Badge variant="outline" className="text-xs capitalize">
              {q.question_type.replace(/_/g, ' ')}
            </Badge>
            <span className="text-xs text-muted-foreground">
              {t('exercise.pts', { pts: q.points ?? 1 })}
            </span>
          </div>

          <p className="text-lg font-medium mb-5">{q.question}</p>

          {q.options.length > 0 ? (
            <div className="space-y-2">
              {q.options.map((opt, i) => {
                const isSelected = answers[currentQuestion] === opt
                const showFeedback = feedback && (isSelected || opt === q.correct_answer)
                const isAnswer = opt === q.correct_answer
                return (
                  <motion.button
                    key={i}
                    whileTap={{ scale: 0.98 }}
                    onClick={() => handleAnswer(opt)}
                    disabled={!!feedback || isPending}
                    className={`w-full text-left p-3 rounded-xl text-sm border transition-all duration-200 ${
                      feedback
                        ? isAnswer
                          ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                          : isSelected
                            ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                            : 'border-border opacity-50'
                        : isSelected
                          ? 'border-primary bg-primary/5'
                          : 'border-border hover:border-primary/50 hover:bg-muted/50'
                    }`}
                  >
                    <div className="flex items-center gap-3">
                      <div
                        className={`w-5 h-5 rounded-full border-2 flex items-center justify-center transition-colors ${
                          feedback && isAnswer
                            ? 'border-green-500 bg-green-500'
                            : feedback && isSelected && !isAnswer
                              ? 'border-red-500 bg-red-500'
                              : isSelected
                                ? 'border-primary'
                                : 'border-muted-foreground/30'
                        }`}
                      >
                        {feedback && isAnswer && (
                          <CheckCircle2 className="h-3 w-3 text-white" />
                        )}
                        {feedback && isSelected && !isAnswer && (
                          <XCircle className="h-3 w-3 text-white" />
                        )}
                      </div>
                      {opt}
                    </div>
                  </motion.button>
                )
              })}
            </div>
          ) : (
            <div className="space-y-3">
              <Input
                ref={inputRef}
                value={answers[currentQuestion] ?? ''}
                onChange={(e) => {
                  const a = [...answers]
                  a[currentQuestion] = e.target.value
                  setAnswers(a)
                }}
                placeholder={t('test.type-answer')}
                disabled={!!feedback || isPending}
                onKeyDown={(e) => {
                  if (
                    e.key === 'Enter' &&
                    !feedback &&
                    !isPending &&
                    answers[currentQuestion]?.trim()
                  ) {
                    handleAnswer(answers[currentQuestion])
                  }
                }}
              />
              {answers[currentQuestion]?.trim() && !feedback && (
                <motion.div
                  initial={{ opacity: 0, y: 5 }}
                  animate={{ opacity: 1, y: 0 }}
                >
                  <Button
                    onClick={() => handleAnswer(answers[currentQuestion])}
                    disabled={isPending}
                    className="w-full rounded-xl"
                  >
                    {isPending ? t('test.submitting') : t('test.confirm')}
                  </Button>
                </motion.div>
              )}
            </div>
          )}

          {/* Lose a life feedback */}
          <AnimatePresence>
            {feedback === 'wrong' && (
              <motion.div
                initial={{ opacity: 0, y: 10 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0 }}
                className="mt-4 p-3 rounded-xl bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800"
              >
                <p className="text-sm text-red-700 dark:text-red-300 flex items-center gap-2">
                  <XCircle className="h-4 w-4" />
                  {t('test.wrong')} {lives > 0 ? t('test.lives-left', { count: lives }) : t('test.no-lives')}
                </p>
              </motion.div>
            )}
            {feedback === 'correct' && (
              <motion.div
                initial={{ opacity: 0, y: 10 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0 }}
                className="mt-4 p-3 rounded-xl bg-green-50 dark:bg-green-900/20 border border-green-200 dark:border-green-800"
              >
                <p className="text-sm text-green-700 dark:text-green-300 flex items-center gap-2">
                  <CheckCircle2 className="h-4 w-4" />
                  {t('exercise.correct')}
                </p>
              </motion.div>
            )}
          </AnimatePresence>
        </motion.div>
      </AnimatePresence>

      {lives <= 0 && (
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          className="text-center"
        >
          <p className="text-sm text-muted-foreground mb-3">
            {t('test.lives-exhausted')}
          </p>
        </motion.div>
      )}
    </div>
  )
}
