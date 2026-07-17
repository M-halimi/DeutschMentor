'use client'

import { motion } from 'framer-motion'
import { RotateCcw, CheckCircle2, Lightbulb, BookOpen, AlertTriangle, Star, ListChecks } from 'lucide-react'
import { useTranslation } from '@/lib/i18n/use-translation'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import type { LessonReview } from '@/types'

export function ReviewSection({
  review,
  onComplete,
}: {
  review: LessonReview[]
  onComplete: () => void
}) {
  const { t } = useTranslation()

  if (!review.length) return null

  return (
    <div>
      <StepHeader
        icon={RotateCcw}
        title={t('review.title')}
        subtitle={t('review.subtitle')}
        step={0}
        total={0}
      />

      <div className="space-y-6">
        {review.map((r, ri) => (
          <motion.div
            key={r.id}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: ri * 0.1 }}
            className="space-y-4"
          >
            {r.summary && (
              <div className="rounded-2xl border bg-card p-5">
                <p className="text-sm text-muted-foreground leading-relaxed">{r.summary}</p>
              </div>
            )}

            {r.key_points.length > 0 && (
              <div className="rounded-2xl border bg-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <CheckCircle2 className="h-4 w-4 text-green-500" />
                  {t('review.key-points')}
                </h3>
                <div className="space-y-2">
                  {r.key_points.map((kp, ki) => (
                    <div key={ki} className="flex items-start gap-2 text-sm">
                      <CheckCircle2 className="h-4 w-4 text-green-500 shrink-0 mt-0.5" />
                      <span>{kp}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {r.grammar_summary.length > 0 && (
              <div className="rounded-2xl border bg-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <BookOpen className="h-4 w-4 text-blue-500" />
                  {t('review.grammar-summary')}
                </h3>
                <div className="space-y-2">
                  {r.grammar_summary.map((gs, gi) => {
                    const item = gs as { title?: string; summary?: string }
                    return (
                      <div key={gi} className="p-3 rounded-xl bg-muted/50 border">
                        {item.title && (
                          <p className="text-sm font-medium mb-1">{item.title}</p>
                        )}
                        {item.summary && (
                          <p className="text-xs text-muted-foreground">{item.summary}</p>
                        )}
                      </div>
                    )
                  })}
                </div>
              </div>
            )}

            {r.vocabulary_focus.length > 0 && (
              <div className="rounded-2xl border bg-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <ListChecks className="h-4 w-4 text-purple-500" />
                  {t('review.vocabulary')}
                </h3>
                <div className="flex flex-wrap gap-1.5">
                  {r.vocabulary_focus.map((vf, vi) => (
                    <Badge key={vi} variant="secondary" className="text-xs">
                      {vf}
                    </Badge>
                  ))}
                </div>
              </div>
            )}

            {r.common_mistakes_summary.length > 0 && (
              <div className="rounded-2xl border bg-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <AlertTriangle className="h-4 w-4 text-red-500" />
                  {t('review.watch-out-for')}
                </h3>
                <div className="space-y-2">
                  {r.common_mistakes_summary.map((cm, ci) => (
                    <div key={ci} className="flex items-start gap-2 p-2 rounded-lg bg-red-50 dark:bg-red-900/10">
                      <AlertTriangle className="h-4 w-4 text-red-500 shrink-0 mt-0.5" />
                      <span className="text-sm">{cm}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {r.tips.length > 0 && (
              <div className="rounded-2xl border bg-card p-5">
                <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <Lightbulb className="h-4 w-4 text-amber-500" />
                  {t('review.tips')}
                </h3>
                <div className="space-y-2">
                  {r.tips.map((tip, ti) => (
                    <div key={ti} className="flex items-start gap-2 p-2 rounded-lg bg-amber-50 dark:bg-amber-900/10">
                      <Star className="h-4 w-4 text-amber-500 shrink-0 mt-0.5" />
                      <span className="text-sm">{tip}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}
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
