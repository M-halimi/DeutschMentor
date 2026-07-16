'use client'

import { useState, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { BookOpen, ChevronLeft, ChevronRight, Check } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import type { LessonVocabulary } from '@/types'
import { StepHeader } from './step-header'
import { XPCounter } from './xp-counter'

const posColors: Record<string, string> = {
  noun: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-300',
  verb: 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-300',
  adjective: 'bg-purple-100 text-purple-700 dark:bg-purple-900/30 dark:text-purple-300',
  adverb: 'bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-300',
  phrase: 'bg-pink-100 text-pink-700 dark:bg-pink-900/30 dark:text-pink-300',
}

export function VocabularyDeck({
  vocabulary,
  onComplete,
}: {
  vocabulary: LessonVocabulary[]
  onComplete: () => void
}) {
  const [current, setCurrent] = useState(0)
  const [flipped, setFlipped] = useState(false)
  const [learned, setLearned] = useState<Set<string>>(new Set())
  const [direction, setDirection] = useState(0)
  const [showXP, setShowXP] = useState(false)
  const [xpEarned, setXpEarned] = useState(0)

  const v = vocabulary[current]

  const goNext = useCallback(() => {
    if (current < vocabulary.length - 1) {
      setDirection(1)
      setFlipped(false)
      setCurrent((c) => c + 1)
    }
  }, [current, vocabulary.length])

  const goPrev = useCallback(() => {
    if (current > 0) {
      setDirection(-1)
      setFlipped(false)
      setCurrent((c) => c - 1)
    }
  }, [current])

  const markLearned = useCallback(() => {
    if (!learned.has(v.id)) {
      const newLearned = new Set(learned)
      newLearned.add(v.id)
      setLearned(newLearned)
      const earned = learned.size === vocabulary.length - 1 ? 0 : 10
      setXpEarned((prev) => prev + earned)
      if (newLearned.size === vocabulary.length) {
        setShowXP(true)
      }
    }
  }, [v.id, learned, vocabulary.length])

  const allLearned = learned.size === vocabulary.length

  const slideVariants = {
    enter: (dir: number) => ({ x: dir > 0 ? 300 : -300, opacity: 0, rotateY: dir > 0 ? 15 : -15 }),
    center: { x: 0, opacity: 1, rotateY: 0 },
    exit: (dir: number) => ({ x: dir > 0 ? -300 : 300, opacity: 0, rotateY: dir > 0 ? -15 : 15 }),
  }

  if (!v) return null

  const progressPct = ((current + 1) / vocabulary.length) * 100

  return (
    <div>
      <StepHeader
        icon={BookOpen}
        title="Vocabulary"
        subtitle={`Learn ${vocabulary.length} essential words`}
        step={2}
        total={8}
      />

      <div className="flex items-center justify-between mb-4">
        <div className="flex-1">
          <div className="h-1.5 bg-muted rounded-full overflow-hidden">
            <motion.div
              className="h-full bg-primary rounded-full"
              initial={{ width: 0 }}
              animate={{ width: `${progressPct}%` }}
              transition={{ duration: 0.4, ease: 'easeOut' }}
            />
          </div>
        </div>
        <span className="text-xs text-muted-foreground ml-3 tabular-nums">
          {current + 1} / {vocabulary.length}
        </span>
      </div>

      <div className="flex justify-center mb-6">
        <div className="flex items-center gap-1.5">
          {vocabulary.map((_, i) => (
            <motion.div
              key={i}
              className={`w-2 h-2 rounded-full transition-colors ${
                i === current
                  ? 'bg-primary'
                  : learned.has(vocabulary[i].id)
                    ? 'bg-green-400'
                    : 'bg-muted-foreground/20'
              }`}
              layout
            />
          ))}
        </div>
      </div>

      <div className="perspective-[1200px] mb-6">
        <AnimatePresence mode="wait" custom={direction}>
          <motion.div
            key={v.id}
            custom={direction}
            variants={slideVariants}
            initial="enter"
            animate="center"
            exit="exit"
            transition={{ type: 'spring', stiffness: 260, damping: 24 }}
            style={{ perspective: '1200px' }}
            className="cursor-pointer"
            onClick={() => setFlipped(!flipped)}
          >
            <div
              className="relative w-full min-h-[280px] transition-transform duration-500"
              style={{
                transformStyle: 'preserve-3d',
                transform: flipped ? 'rotateY(180deg)' : 'rotateY(0deg)',
              }}
            >
              {/* Front */}
              <div
                className="absolute inset-0 backface-hidden rounded-2xl border bg-card p-8 flex flex-col items-center justify-center text-center"
                style={{ backfaceVisibility: 'hidden' }}
              >
                <Badge
                  variant="secondary"
                  className="text-xs mb-4 capitalize"
                >
                  {v.part_of_speech}
                </Badge>
                {v.article && (
                  <span className="text-sm font-medium text-muted-foreground mb-1">
                    {v.article}
                  </span>
                )}
                <h3 className="text-3xl font-bold mb-2">{v.german_word}</h3>
                {v.ipa && (
                  <span className="text-sm text-muted-foreground font-mono mb-3">
                    /{v.ipa}/
                  </span>
                )}
                {v.example_sentence && (
                  <div className="mt-4 p-3 bg-muted/50 rounded-xl w-full max-w-md">
                    <p className="text-sm italic text-muted-foreground">{v.example_sentence}</p>
                  </div>
                )}
                <p className="text-xs text-muted-foreground mt-6">Tap to reveal translation</p>
              </div>

              {/* Back */}
              <div
                className="absolute inset-0 backface-hidden rounded-2xl border bg-card p-8 flex flex-col items-center justify-center text-center"
                style={{ backfaceVisibility: 'hidden', transform: 'rotateY(180deg)' }}
              >
                <Badge className="text-xs mb-4 bg-primary/10 text-primary hover:bg-primary/15">
                  Translation
                </Badge>
                <h3 className="text-2xl font-bold mb-1">{v.arabic_translation}</h3>
                <p className="text-muted-foreground mb-4">{v.english_translation}</p>
                {v.example_translation && (
                  <p className="text-sm text-muted-foreground italic max-w-md">
                    {v.example_translation}
                  </p>
                )}
                {v.cefr_level && (
                  <Badge variant="outline" className="mt-4 text-xs">
                    Level: {v.cefr_level}
                  </Badge>
                )}
              </div>
            </div>
          </motion.div>
        </AnimatePresence>
      </div>

      <div className="flex items-center justify-center gap-4 mb-6">
        <Button
          variant="outline"
          size="icon"
          onClick={goPrev}
          disabled={current === 0}
          className="rounded-full h-10 w-10"
        >
          <ChevronLeft className="h-4 w-4" />
        </Button>

        <Button
          onClick={markLearned}
          disabled={learned.has(v.id)}
          variant={learned.has(v.id) ? 'secondary' : 'default'}
          className="rounded-full px-6 gap-2"
        >
          {learned.has(v.id) ? (
            <>
              <Check className="h-4 w-4" /> Learned
            </>
          ) : (
            'Mark Learned'
          )}
        </Button>

        <Button
          variant="outline"
          size="icon"
          onClick={goNext}
          disabled={current === vocabulary.length - 1}
          className="rounded-full h-10 w-10"
        >
          <ChevronRight className="h-4 w-4" />
        </Button>
      </div>

      <div className="flex justify-center">
        <XPCounter
          earned={xpEarned}
          show={showXP}
          onComplete={onComplete}
        />
        {allLearned && !showXP && (
          <Button onClick={() => { setShowXP(true) }} className="rounded-full px-8">
            Continue Mission
          </Button>
        )}
        {!allLearned && (
          <p className="text-xs text-muted-foreground">
            {learned.size} of {vocabulary.length} words learned
          </p>
        )}
      </div>
    </div>
  )
}
