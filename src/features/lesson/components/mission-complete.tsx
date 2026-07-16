'use client'

import { useState, useEffect, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Trophy,
  Star,
  Zap,
  CheckCircle2,
  ArrowRight,
  Home,
  RotateCcw,
  Sparkles,
  Target,
  BookOpen,
  Mic,
  Pen,
} from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { LinkButton } from '@/components/shared/link-button'
import { Confetti } from './confetti'

interface MissionCompleteProps {
  levelParam: string
  lessonTitle: string
  xpEarned: number
  vocabLearned?: number
  exercisesCompleted?: number
  testPassed?: boolean
  testScore?: number
  onRetry?: () => void
}

export function MissionComplete({
  levelParam,
  lessonTitle,
  xpEarned,
  vocabLearned = 0,
  exercisesCompleted = 0,
  testPassed = false,
  testScore = 0,
  onRetry,
}: MissionCompleteProps) {
  const [showConfetti, setShowConfetti] = useState(true)
  const [xpCount, setXpCount] = useState(0)
  const [phase, setPhase] = useState<'xp' | 'stats' | 'achievement' | 'done'>('xp')
  const hasStarted = useRef(false)

  useEffect(() => {
    if (hasStarted.current) return
    hasStarted.current = true
    const duration = 1500
    const steps = 40
    const increment = xpEarned / steps
    let current = 0
    const interval = setInterval(() => {
      current += increment
      if (current >= xpEarned) {
        setXpCount(xpEarned)
        clearInterval(interval)
        setTimeout(() => setPhase('stats'), 300)
      } else {
        setXpCount(Math.floor(current))
      }
    }, duration / steps)
    return () => clearInterval(interval)
  }, [xpEarned])

  useEffect(() => {
    if (phase === 'stats') {
      const timer = setTimeout(() => setPhase('achievement'), 1500)
      return () => clearTimeout(timer)
    }
    if (phase === 'achievement') {
      const timer = setTimeout(() => setPhase('done'), 2000)
      return () => clearTimeout(timer)
    }
  }, [phase])

  return (
    <div className="text-center">
      <Confetti active={showConfetti} />

      <motion.div
        initial={{ opacity: 0, scale: 0.8 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ type: 'spring', stiffness: 200, damping: 15 }}
        className="mb-6"
      >
        <div className="w-20 h-20 rounded-full bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center mx-auto mb-4 shadow-lg">
          <Trophy className="h-10 w-10 text-white" />
        </div>
        <h1 className="text-3xl font-bold mb-1">Mission Complete!</h1>
        <p className="text-muted-foreground">{lessonTitle}</p>
      </motion.div>

      {/* XP Counter */}
      <AnimatePresence mode="wait">
        {phase === 'xp' && (
          <motion.div
            key="xp"
            initial={{ opacity: 0, scale: 0.5 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 1.2 }}
            className="mb-8"
          >
            <div className="inline-flex items-center gap-3 px-8 py-4 rounded-2xl bg-gradient-to-r from-amber-500 to-orange-500 text-white shadow-xl">
              <Sparkles className="h-6 w-6" />
              <div>
                <motion.div className="text-4xl font-bold tabular-nums">
                  {xpCount}
                </motion.div>
                <div className="text-xs font-medium opacity-80">XP EARNED</div>
              </div>
            </div>
          </motion.div>
        )}

        {/* Stats Grid */}
        {(phase === 'stats' || phase === 'achievement' || phase === 'done') && (
          <motion.div
            key="stats"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="grid grid-cols-2 gap-3 mb-8 max-w-sm mx-auto"
          >
            <div className="rounded-xl bg-muted/50 border p-4">
              <BookOpen className="h-5 w-5 text-blue-500 mx-auto mb-1" />
              <div className="text-2xl font-bold tabular-nums">{vocabLearned}</div>
              <div className="text-xs text-muted-foreground">Words Learned</div>
            </div>
            <div className="rounded-xl bg-muted/50 border p-4">
              <Target className="h-5 w-5 text-green-500 mx-auto mb-1" />
              <div className="text-2xl font-bold tabular-nums">{exercisesCompleted}</div>
              <div className="text-xs text-muted-foreground">Exercises Done</div>
            </div>
            {testPassed && (
              <div className="rounded-xl bg-muted/50 border p-4 col-span-2">
                <Trophy className="h-5 w-5 text-amber-500 mx-auto mb-1" />
                <div className="text-2xl font-bold tabular-nums">{testScore}%</div>
                <div className="text-xs text-muted-foreground">Test Score</div>
              </div>
            )}
          </motion.div>
        )}
      </AnimatePresence>

      {/* Achievement Unlock */}
      <AnimatePresence>
        {(phase === 'achievement' || phase === 'done') && (
          <motion.div
            key="achievement"
            initial={{ opacity: 0, scale: 0.8, y: 20 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            className="mb-8"
          >
            <div className="inline-flex items-center gap-3 px-6 py-3 rounded-2xl bg-gradient-to-br from-purple-500 to-pink-500 text-white shadow-lg">
              <Star className="h-6 w-6 fill-white" />
              <div className="text-left">
                <div className="text-xs font-medium opacity-80">ACHIEVEMENT UNLOCKED</div>
                <div className="text-lg font-bold">
                  {testPassed ? 'Sprachmeister' : 'Fleißiger Lerner'}
                </div>
                <div className="text-xs opacity-80">
                  {testPassed
                    ? 'Completed a full lesson with test pass'
                    : 'Completed a full lesson'}
                </div>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Action Buttons */}
      <AnimatePresence>
        {phase === 'done' && (
          <motion.div
            key="actions"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="space-y-3 max-w-xs mx-auto"
          >
            <LinkButton
              href={`/dashboard/courses/${levelParam}`}
              className="w-full rounded-xl py-6 gap-2"
              size="lg"
            >
              <ArrowRight className="h-5 w-5" />
              Next Lesson
            </LinkButton>
            <div className="flex gap-2">
              <LinkButton
                href="/dashboard/courses"
                variant="outline"
                className="flex-1 rounded-xl gap-2"
              >
                <Home className="h-4 w-4" />
                Courses
              </LinkButton>
              {onRetry && (
                <Button
                  variant="outline"
                  onClick={onRetry}
                  className="flex-1 rounded-xl gap-2"
                >
                  <RotateCcw className="h-4 w-4" />
                  Retry
                </Button>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}
