'use client'

import { useState, useCallback, useMemo } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { ChevronLeft } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { LinkButton } from '@/components/shared/link-button'
import { MissionStepper, type Step } from './components/mission-stepper'
import { MissionBriefing } from './components/mission-briefing'
import { GrammarFocus } from './components/grammar-focus'
import { VocabularyDeck } from './components/vocabulary-deck'
import { ExerciseArena } from './components/exercise-arena'
import { ListeningSection } from './components/listening-section'
import { ReadingSection } from './components/reading-section'
import { SpeakingSection } from './components/speaking-section'
import { WritingSection } from './components/writing-section'
import { RealLifeSection } from './components/real-life-section'
import { ReviewSection } from './components/review-section'
import { FinalBossTest } from './components/final-boss-test'
import { MissionComplete } from './components/mission-complete'
import type { CourseLessonFull } from '@/types'

interface MissionLessonPageProps {
  lesson: CourseLessonFull
  levelParam: string
  onSaveProgress?: (data: { completed?: boolean; score?: number }) => void
  onSubmitTest?: (answers: string[]) => void
  isTestPending?: boolean
}

export function MissionLessonPage({
  lesson,
  levelParam,
  onSaveProgress,
  onSubmitTest,
  isTestPending,
}: MissionLessonPageProps) {
  const [currentStep, setCurrentStep] = useState(0)
  const [completedSteps, setCompletedSteps] = useState<Set<number>>(new Set())
  const [direction, setDirection] = useState(0)
  const [xpEarned, setXpEarned] = useState(0)
  const [vocabLearned, setVocabLearned] = useState(0)
  const [exercisesDone, setExercisesDone] = useState(0)
  const [testPassed, setTestPassed] = useState(false)
  const [testScore, setTestScore] = useState(0)

  const steps = useMemo(() => {
    const s: Step[] = [{ id: 'briefing', label: 'Einführung' }]

    if (lesson.grammar.length > 0)
      s.push({ id: 'grammar', label: 'Grammatik' })
    if (lesson.vocabulary.length > 0)
      s.push({ id: 'vocabulary', label: 'Wortschatz' })
    if (lesson.exercises.length > 0)
      s.push({ id: 'exercises', label: 'Übungen' })
    if ((lesson.listening_content?.length ?? 0) > 0)
      s.push({ id: 'listening', label: 'Hören' })
    if ((lesson.reading_content?.length ?? 0) > 0)
      s.push({ id: 'reading', label: 'Lesen' })
    if ((lesson.speaking_prompts?.length ?? 0) > 0)
      s.push({ id: 'speaking', label: 'Sprechen' })
    if ((lesson.writing_prompts?.length ?? 0) > 0)
      s.push({ id: 'writing', label: 'Schreiben' })
    if (
      (lesson.expressions?.length ?? 0) > 0 ||
      (lesson.conversations?.length ?? 0) > 0
    )
      s.push({ id: 'real-life', label: 'Alltag' })
    if ((lesson.review?.length ?? 0) > 0)
      s.push({ id: 'review', label: 'Wiederholung' })
    if (lesson.test_questions.length > 0)
      s.push({ id: 'test', label: 'Test' })

    s.push({ id: 'complete', label: 'Abschluss' })
    return s
  }, [lesson])

  const totalSteps = steps.length

  const goToStep = useCallback(
    (index: number) => {
      setDirection(index > currentStep ? 1 : -1)
      setCurrentStep(index)
    },
    [currentStep]
  )

  const completeStep = useCallback(
    (xpAmount = 10) => {
      setCompletedSteps((prev) => {
        const next = new Set(prev)
        next.add(currentStep)
        return next
      })
      setXpEarned((prev) => prev + xpAmount)
      if (currentStep < totalSteps - 1) {
        goToStep(currentStep + 1)
      }
    },
    [currentStep, totalSteps, goToStep]
  )

  const handleTestSubmit = useCallback(
    (answers: string[]) => {
      if (onSubmitTest) {
        onSubmitTest(answers)
      }
    },
    [onSubmitTest]
  )

  const pageVariants = {
    enter: (dir: number) => ({
      x: dir > 0 ? 200 : -200,
      opacity: 0,
    }),
    center: {
      x: 0,
      opacity: 1,
    },
    exit: (dir: number) => ({
      x: dir > 0 ? -200 : 200,
      opacity: 0,
    }),
  }

  const handleTestResult = useCallback((passed: boolean, score: number) => {
    setTestPassed(passed)
    setTestScore(score)
  }, [])

  const renderStep = () => {
    const step = steps[currentStep]

    switch (step?.id) {
      case 'briefing':
        return (
          <MissionBriefing
            lesson={lesson}
            onStart={() => {
              setCompletedSteps(new Set([0]))
              goToStep(1)
            }}
          />
        )

      case 'grammar':
        return (
          <GrammarFocus
            grammarItems={lesson.grammar}
            onComplete={() => completeStep(lesson.grammar.length * 10)}
          />
        )

      case 'vocabulary':
        return (
          <VocabularyDeck
            vocabulary={lesson.vocabulary}
            onComplete={() => {
              setVocabLearned(lesson.vocabulary.length)
              completeStep(lesson.vocabulary.length * 10)
            }}
          />
        )

      case 'exercises':
        return (
          <ExerciseArena
            exercises={lesson.exercises}
            onComplete={() => {
              setExercisesDone(lesson.exercises.length)
              completeStep(lesson.exercises.length * 15)
            }}
          />
        )

      case 'listening':
        return (
          <ListeningSection
            listening={lesson.listening_content ?? []}
            onComplete={() => completeStep(20)}
          />
        )

      case 'reading':
        return (
          <ReadingSection
            reading={lesson.reading_content ?? []}
            onComplete={() => completeStep(20)}
          />
        )

      case 'speaking':
        return (
          <SpeakingSection
            speaking={lesson.speaking_prompts ?? []}
            onComplete={() => completeStep(25)}
          />
        )

      case 'writing':
        return (
          <WritingSection
            writing={lesson.writing_prompts ?? []}
            onComplete={() => completeStep(25)}
          />
        )

      case 'real-life':
        return (
          <RealLifeSection
            expressions={lesson.expressions ?? []}
            conversations={lesson.conversations ?? []}
            onComplete={() => completeStep(15)}
          />
        )

      case 'review':
        return (
          <ReviewSection
            review={lesson.review ?? []}
            onComplete={() => completeStep(15)}
          />
        )

      case 'test':
        return (
          <FinalBossTest
            questions={lesson.test_questions}
            onSubmit={handleTestSubmit}
            isPending={isTestPending ?? false}
            onResult={handleTestResult}
          />
        )

      case 'complete':
        return (
          <MissionComplete
            levelParam={levelParam}
            lessonTitle={lesson.title}
            xpEarned={xpEarned}
            vocabLearned={vocabLearned}
            exercisesCompleted={exercisesDone}
            testPassed={testPassed}
            testScore={testScore}
            onRetry={() => {
              setCurrentStep(0)
              setCompletedSteps(new Set())
              setXpEarned(0)
            }}
          />
        )

      default:
        return null
    }
  }

  return (
    <div className="space-y-4">
      {/* Header */}
      <div className="flex items-center gap-3">
        <LinkButton
          href={`/dashboard/courses/${levelParam}`}
          variant="ghost"
          size="icon"
          className="rounded-full"
        >
          <ChevronLeft className="h-4 w-4" />
        </LinkButton>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2 mb-0.5">
            <Badge variant="outline" className="text-xs">
              {levelParam?.toUpperCase()}
            </Badge>
            <Badge variant="secondary" className="text-xs capitalize">
              {lesson.lesson_type}
            </Badge>
            {lesson.topic && (
              <Badge variant="secondary" className="text-xs">
                {lesson.topic}
              </Badge>
            )}
          </div>
          <h1 className="text-lg font-bold truncate">{lesson.title}</h1>
        </div>
        {lesson.progress != null && lesson.progress > 0 && (
          <div className="text-right shrink-0">
            <div className="text-sm font-medium tabular-nums">
              {lesson.progress}%
            </div>
            <div className="h-1.5 w-16 bg-muted rounded-full overflow-hidden">
              <div
                className="h-full bg-primary rounded-full"
                style={{ width: `${lesson.progress}%` }}
              />
            </div>
          </div>
        )}
      </div>

      {/* Stepper */}
      <MissionStepper
        steps={steps}
        currentIndex={currentStep}
        onSelect={goToStep}
      />

      {/* Step Content */}
      <div className="relative overflow-hidden">
        <AnimatePresence mode="wait" custom={direction}>
          <motion.div
            key={currentStep}
            custom={direction}
            variants={pageVariants}
            initial="enter"
            animate="center"
            exit="exit"
            transition={{ type: 'spring', stiffness: 260, damping: 24 }}
          >
            {renderStep()}
          </motion.div>
        </AnimatePresence>
      </div>
    </div>
  )
}
