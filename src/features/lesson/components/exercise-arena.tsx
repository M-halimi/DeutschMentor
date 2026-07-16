'use client'

import { useState, useCallback, useEffect, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Target,
  CheckCircle2,
  XCircle,
  Zap,
  Flame,
  Clock,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import type { LessonExercise } from '@/types'
import { StepHeader } from './step-header'
import { XPCounter } from './xp-counter'

export function ExerciseArena({
  exercises,
  onComplete,
}: {
  exercises: LessonExercise[]
  onComplete: () => void
}) {
  const [current, setCurrent] = useState(0)
  const [answers, setAnswers] = useState<Record<string, string>>({})
  const [results, setResults] = useState<Record<string, 'correct' | 'wrong' | null>>({})
  const [streak, setStreak] = useState(0)
  const [bestStreak, setBestStreak] = useState(0)
  const [score, setScore] = useState(0)
  const [showXP, setShowXP] = useState(false)
  const [xpEarned, setXpEarned] = useState(0)
  const [direction, setDirection] = useState(0)
  const [feedbackVisible, setFeedbackVisible] = useState(false)
  const inputRef = useRef<HTMLInputElement>(null)

  const ex = exercises[current]
  const isCorrect = results[ex?.id]
  const allDone = Object.keys(results).length === exercises.length

  useEffect(() => {
    if (feedbackVisible) {
      const timer = setTimeout(() => setFeedbackVisible(false), 1500)
      return () => clearTimeout(timer)
    }
  }, [feedbackVisible])

  const checkAnswer = useCallback(() => {
    const answer = (answers[ex.id] ?? '').trim().toLowerCase()
    const correct = ex.correct_answer.trim().toLowerCase()
    const isAnswerCorrect = answer === correct
    const newResults = { ...results, [ex.id]: (isAnswerCorrect ? 'correct' : 'wrong') as 'correct' | 'wrong' }
    setResults(newResults)
    setFeedbackVisible(true)

    if (isAnswerCorrect) {
      const comboMultiplier = 1 + streak * 0.25
      const basePoints = ex.points ?? 10
      const earned = Math.round(basePoints * comboMultiplier)
      setScore((s) => s + earned)
      setStreak((s) => {
        const newStreak = s + 1
        if (newStreak > bestStreak) setBestStreak(newStreak)
        return newStreak
      })
      setXpEarned((prev) => prev + earned)
    } else {
      setStreak(0)
    }

    if (Object.keys(newResults).length === exercises.length) {
      setTimeout(() => setShowXP(true), 1000)
    }
  }, [answers, ex, results, streak, bestStreak, exercises.length])

  const goNext = useCallback(() => {
    if (current < exercises.length - 1) {
      setDirection(1)
      setCurrent((c) => c + 1)
      setFeedbackVisible(false)
    }
  }, [current, exercises.length])

  const goPrev = useCallback(() => {
    if (current > 0) {
      setDirection(-1)
      setCurrent((c) => c - 1)
      setFeedbackVisible(false)
    }
  }, [current])

  if (!ex) return null

  const slideVariants = {
    enter: (dir: number) => ({ x: dir > 0 ? 200 : -200, opacity: 0 }),
    center: { x: 0, opacity: 1 },
    exit: (dir: number) => ({ x: dir > 0 ? -200 : 200, opacity: 0 }),
  }

  return (
    <div>
      <StepHeader
        icon={Target}
        title="Exercise Battle"
        subtitle="Test your knowledge and build your streak"
        step={3}
        total={8}
      />

      {/* Streak + Score Bar */}
      <div className="flex items-center gap-4 mb-6 p-3 rounded-xl bg-muted/50 border">
        <div className="flex items-center gap-2">
          <Flame className={`h-5 w-5 ${streak > 0 ? 'text-orange-500' : 'text-muted-foreground'}`} />
          <div>
            <div className="text-lg font-bold tabular-nums">{streak}</div>
            <div className="text-[10px] text-muted-foreground leading-tight">STREAK</div>
          </div>
        </div>
        <div className="h-8 w-px bg-border" />
        <div className="flex items-center gap-2">
          <Zap className={`h-5 w-5 ${score > 0 ? 'text-yellow-500' : 'text-muted-foreground'}`} />
          <div>
            <div className="text-lg font-bold tabular-nums">{score}</div>
            <div className="text-[10px] text-muted-foreground leading-tight">SCORE</div>
          </div>
        </div>
        <div className="flex-1" />
        <div className="text-right">
          <div className="text-sm font-medium tabular-nums">
            {current + 1} / {exercises.length}
          </div>
          <div className="text-[10px] text-muted-foreground leading-tight">QUESTION</div>
        </div>
      </div>

      {/* Progress Dots */}
      <div className="flex items-center justify-center gap-1.5 mb-6">
        {exercises.map((e, i) => (
          <motion.div
            key={e.id}
            layout
            className={`w-2.5 h-2.5 rounded-full transition-colors ${
              i === current
                ? 'bg-primary'
                : results[e.id] === 'correct'
                  ? 'bg-green-400'
                  : results[e.id] === 'wrong'
                    ? 'bg-red-400'
                    : 'bg-muted-foreground/20'
            }`}
          />
        ))}
      </div>

      {/* Question Card */}
      <AnimatePresence mode="wait" custom={direction}>
        <motion.div
          key={ex.id}
          custom={direction}
          variants={slideVariants}
          initial="enter"
          animate="center"
          exit="exit"
          transition={{ type: 'spring', stiffness: 260, damping: 24 }}
          className="rounded-2xl border bg-card p-6 mb-6"
        >
          <div className="flex items-center gap-2 mb-4">
            <Badge variant="outline" className="text-xs capitalize">
              {ex.exercise_type.replace(/_/g, ' ')}
            </Badge>
            <span className="text-xs text-muted-foreground">
              {ex.points ?? 10} pts
            </span>
          </div>

          <p className="text-lg font-medium mb-5">{ex.question}</p>

          {ex.options.length > 0 ? (
            <div className="space-y-2">
              {ex.options.map((opt, i) => {
                const isSelected = answers[ex.id] === opt
                const showResult = results[ex.id]
                const isAnswer = opt === ex.correct_answer
                return (
                  <motion.button
                    key={i}
                    whileTap={{ scale: 0.98 }}
                    onClick={() => {
                      if (!results[ex.id]) {
                        setAnswers((a) => ({ ...a, [ex.id]: opt }))
                      }
                    }}
                    className={`w-full text-left p-3 rounded-xl text-sm border transition-all duration-200 ${
                      showResult
                        ? isAnswer
                          ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                          : isSelected
                            ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                            : 'border-border opacity-60'
                        : isSelected
                          ? 'border-primary bg-primary/5'
                          : 'border-border hover:border-primary/50 hover:bg-muted/50'
                    }`}
                    disabled={!!showResult}
                  >
                    <div className="flex items-center gap-3">
                      <div
                        className={`w-5 h-5 rounded-full border-2 flex items-center justify-center transition-colors ${
                          showResult && isAnswer
                            ? 'border-green-500 bg-green-500'
                            : showResult && isSelected && !isAnswer
                              ? 'border-red-500 bg-red-500'
                              : isSelected
                                ? 'border-primary'
                                : 'border-muted-foreground/30'
                        }`}
                      >
                        {showResult && isAnswer && (
                          <CheckCircle2 className="h-3 w-3 text-white" />
                        )}
                        {showResult && isSelected && !isAnswer && (
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
                value={answers[ex.id] ?? ''}
                onChange={(e) => setAnswers((a) => ({ ...a, [ex.id]: e.target.value }))}
                placeholder="Type your answer..."
                disabled={!!results[ex.id]}
                onKeyDown={(e) => e.key === 'Enter' && !results[ex.id] && checkAnswer()}
              />
            </div>
          )}

          {/* Feedback */}
          <AnimatePresence>
            {feedbackVisible && isCorrect && (
              <motion.div
                initial={{ opacity: 0, y: 10, scale: 0.9 }}
                animate={{ opacity: 1, y: 0, scale: 1 }}
                exit={{ opacity: 0, y: -10 }}
                className="mt-4 p-3 rounded-xl bg-green-50 dark:bg-green-900/20 border border-green-200 dark:border-green-800 flex items-center gap-2"
              >
                <CheckCircle2 className="h-5 w-5 text-green-600 shrink-0" />
                <div>
                  <span className="text-sm font-medium text-green-700 dark:text-green-300">
                    Correct! {streak > 1 && `🔥 ${streak}x streak!`}
                  </span>
                  {ex.explanation && (
                    <p className="text-xs text-green-600/70 mt-0.5">{ex.explanation}</p>
                  )}
                </div>
              </motion.div>
            )}
            {feedbackVisible && isCorrect === 'wrong' && (
              <motion.div
                initial={{ opacity: 0, y: 10, scale: 0.9 }}
                animate={{ opacity: 1, y: 0, scale: 1 }}
                exit={{ opacity: 0, y: -10 }}
                className="mt-4 p-3 rounded-xl bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800 flex items-start gap-2"
              >
                <XCircle className="h-5 w-5 text-red-600 shrink-0 mt-0.5" />
                <div>
                  <span className="text-sm font-medium text-red-700 dark:text-red-300">
                    Not quite
                  </span>
                  <p className="text-xs text-red-600/70 mt-0.5">
                    Correct answer: {ex.correct_answer}
                  </p>
                  {ex.explanation && (
                    <p className="text-xs text-red-600/70 mt-0.5">{ex.explanation}</p>
                  )}
                </div>
              </motion.div>
            )}
          </AnimatePresence>

          {/* Action Buttons */}
          {!results[ex.id] && answers[ex.id] && (
            <motion.div
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              className="mt-4"
            >
              <Button onClick={checkAnswer} className="w-full rounded-xl">
                Check Answer
              </Button>
            </motion.div>
          )}
        </motion.div>
      </AnimatePresence>

      {/* Navigation */}
      <div className="flex items-center justify-between">
        <Button
          variant="ghost"
          onClick={goPrev}
          disabled={current === 0}
          size="sm"
        >
          Previous
        </Button>

        {allDone ? (
          <XPCounter
            earned={xpEarned || score}
            show={showXP}
            onComplete={onComplete}
          />
        ) : results[ex.id] ? (
          <Button
            onClick={goNext}
            disabled={current === exercises.length - 1}
            size="sm"
            className="rounded-full"
          >
            Next Question
          </Button>
        ) : (
          <div />
        )}
      </div>
    </div>
  )
}
