'use client'

import { useTranslation } from '@/lib/i18n/use-translation'
import { motion } from 'framer-motion'
import { Pen, BookOpen, Lightbulb, Hash, AlignLeft } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import type { LessonWritingPrompt } from '@/types'

export function WritingSection({
  writing,
  onComplete,
}: {
  writing: LessonWritingPrompt[]
  onComplete: () => void
}) {
  const { t } = useTranslation()
  if (!writing.length) return null

  return (
    <div>
      <StepHeader
        icon={Pen}
        title={t('writing.title')}
        subtitle={t('writing.express-yourself')}
        step={0}
        total={0}
      />

      <div className="space-y-6">
        {writing.map((item, i) => (
          <motion.div
            key={item.id}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.1 }}
            className="rounded-2xl border bg-card p-5"
          >
            <div className="flex items-center gap-2 mb-3">
              <Pen className="h-5 w-5 text-primary" />
              <h3 className="font-semibold">{item.title}</h3>
            </div>

            <div className="flex flex-wrap gap-2 mb-4">
              {item.word_limit_min > 0 && item.word_limit_max > 0 && (
                <Badge variant="outline" className="text-xs gap-1">
                  <AlignLeft className="h-3 w-3" />
                  {t('writing.word-count', { min: item.word_limit_min, max: item.word_limit_max, count: item.word_limit_max })}
                </Badge>
              )}
            </div>

            <div className="p-4 rounded-xl bg-muted/30 border mb-4">
              <p className="text-sm leading-relaxed">{item.task}</p>
            </div>

            <div className="space-y-3">
              {item.tips.length > 0 && (
                <div>
                  <h4 className="text-xs font-semibold mb-2 flex items-center gap-1">
                    <Lightbulb className="h-3 w-3 text-amber-500" />
                    {t('writing.tips')}
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
                    {t('writing.useful-vocab')}
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

              {item.grammar_focus.length > 0 && (
                <div>
                  <h4 className="text-xs font-semibold mb-2 flex items-center gap-1">
                    <Hash className="h-3 w-3 text-purple-500" />
                    {t('writing.grammar-focus')}
                  </h4>
                  <div className="flex flex-wrap gap-1.5">
                    {item.grammar_focus.map((gf, gi) => (
                      <Badge key={gi} variant="outline" className="text-xs">
                        {gf}
                      </Badge>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </motion.div>
        ))}
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
