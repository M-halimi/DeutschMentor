'use client'

import { useState } from 'react'
import { motion } from 'framer-motion'
import { Mic, Clock, Lightbulb, BookOpen } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import { useTranslation } from '@/lib/i18n/use-translation'
import type { LessonSpeakingPrompt } from '@/types'

export function SpeakingSection({
  speaking,
  onComplete,
}: {
  speaking: LessonSpeakingPrompt[]
  onComplete: () => void
}) {
  const { t } = useTranslation()
  const [activeIndex, setActiveIndex] = useState<number | null>(null)

  if (!speaking.length) return null

  return (
    <div>
      <StepHeader
        icon={Mic}
        title={t('speaking.title')}
        subtitle={t('speaking.build-confidence')}
        step={0}
        total={0}
      />

      <div className="space-y-4">
        {speaking.map((item, i) => {
          const isActive = activeIndex === i

          return (
            <motion.div
              key={item.id}
              initial={{ opacity: 0, y: 16 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.1 }}
              className="rounded-2xl border bg-card overflow-hidden"
            >
              <button
                onClick={() => setActiveIndex(isActive ? null : i)}
                className="w-full p-5 text-left"
              >
                <div className="flex items-center gap-2 mb-2">
                  <Mic className="h-5 w-5 text-primary" />
                  <h3 className="font-semibold">{item.title}</h3>
                </div>

                <div className="flex flex-wrap gap-2 mb-3">
                  {item.min_duration_seconds > 0 && (
                    <Badge variant="outline" className="text-xs gap-1">
                      <Clock className="h-3 w-3" />
                      {t('speaking.seconds-minimum', { seconds: item.min_duration_seconds })}
                    </Badge>
                  )}
                  {item.scenario && (
                    <Badge variant="secondary" className="text-xs">
                      {item.scenario}
                    </Badge>
                  )}
                </div>

                <div className="p-4 rounded-xl bg-muted/30 border">
                  <p className="text-sm">{item.prompt}</p>
                </div>
              </button>

              {isActive && (
                <motion.div
                  initial={{ opacity: 0, height: 0 }}
                  animate={{ opacity: 1, height: 'auto' }}
                  className="px-5 pb-5 space-y-3"
                >
                  {item.tips.length > 0 && (
                    <div>
                      <h4 className="text-xs font-semibold mb-2 flex items-center gap-1">
                        <Lightbulb className="h-3 w-3 text-amber-500" />
                        {t('speaking.tips')}
                      </h4>
                      <div className="flex flex-wrap gap-1.5">
                        {item.tips.map((tip, ti) => (
                          <Badge key={ti} variant="secondary" className="text-xs">
                            {tip}
                          </Badge>
                        ))}
                      </div>
                    </div>
                  )}

                  {item.vocabulary_hints.length > 0 && (
                    <div>
                      <h4 className="text-xs font-semibold mb-2 flex items-center gap-1">
                        <BookOpen className="h-3 w-3 text-blue-500" />
                        {t('speaking.helpful-vocab')}
                      </h4>
                      <div className="flex flex-wrap gap-1.5">
                        {item.vocabulary_hints.map((vh, vi) => (
                          <Badge key={vi} variant="outline" className="text-xs">
                            {vh}
                          </Badge>
                        ))}
                      </div>
                    </div>
                  )}

                  <div className="p-3 rounded-xl bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-800">
                    <p className="text-xs text-amber-700 dark:text-amber-300">
                      {t('speaking.encouragement')}
                    </p>
                  </div>
                </motion.div>
              )}
            </motion.div>
          )
        })}
      </div>

      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.3 }}
        className="mt-6"
      >
        <button
          onClick={onComplete}
          className="w-full py-3 rounded-xl bg-primary text-primary-foreground font-medium hover:bg-primary/90 transition-colors"
        >
          {t('lesson.continue')}
        </button>
      </motion.div>
    </div>
  )
}
