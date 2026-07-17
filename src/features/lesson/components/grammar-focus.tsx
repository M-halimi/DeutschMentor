'use client'

import { motion } from 'framer-motion'
import { FileText, AlertTriangle, CheckCircle2, Lightbulb, ArrowRight } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import { AudioPlayer } from '@/components/audio-player'
import { useTranslation } from '@/lib/i18n/use-translation'
import type { LessonGrammar, GrammarItem, GrammarExample, GrammarMistake } from '@/types'

export function GrammarFocus({
  grammarItems,
  onComplete,
}: {
  grammarItems: LessonGrammar[]
  onComplete: () => void
}) {
  const { t } = useTranslation()

  if (grammarItems.length === 0) return null

  return (
    <div>
      <StepHeader
        icon={FileText}
        title={t('grammar.title')}
        subtitle={t('grammar.subtitle')}
        step={2}
        total={8}
      />

      <div className="space-y-6">
        {grammarItems.map((item, idx) => (
          <motion.div
            key={item.id}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: idx * 0.1 }}
            className="rounded-2xl border bg-card p-6"
          >
            <h3 className="text-lg font-bold mb-1">{item.title}</h3>
            <p className="text-sm text-muted-foreground mb-4">{item.explanation}</p>

            {item.rules.length > 0 && (
              <div className="mb-4">
                <h4 className="text-xs font-semibold uppercase tracking-wider text-muted-foreground mb-2 flex items-center gap-1.5">
                  <Lightbulb className="h-3.5 w-3.5" />
                  {t('grammar.rules')}
                </h4>
                <div className="space-y-1.5">
                  {item.rules.map((rule: GrammarItem, i: number) => (
                    <div key={i} className="flex items-start gap-2 text-sm p-2 rounded-lg bg-muted/50">
                      <ArrowRight className="h-3.5 w-3.5 text-primary shrink-0 mt-0.5" />
                      <div>
                        <span>{rule.rule}</span>
                        {rule.note && (
                          <span className="text-muted-foreground block text-xs mt-0.5">{rule.note}</span>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {item.examples.length > 0 && (
              <div className="mb-4">
                <h4 className="text-xs font-semibold uppercase tracking-wider text-muted-foreground mb-2 flex items-center gap-1.5">
                  <CheckCircle2 className="h-3.5 w-3.5" />
                  {t('grammar.examples')}
                </h4>
                <div className="space-y-2">
                  {item.examples.map((ex: GrammarExample, i: number) => (
                    <div key={i} className="p-3 rounded-xl border bg-gradient-to-r from-primary/5 to-transparent">
                      <div className="flex items-start gap-2">
                        <AudioPlayer text={ex.german} lang="de" showSlow={false} />
                        <div className="min-w-0 flex-1">
                          <p className="text-sm font-medium">{ex.german}</p>
                          <p className="text-xs text-muted-foreground">{ex.english}</p>
                          <p className="text-xs text-muted-foreground/70" dir="auto">{ex.arabic}</p>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {item.common_mistakes.length > 0 && (
              <div>
                <h4 className="text-xs font-semibold uppercase tracking-wider text-destructive mb-2 flex items-center gap-1.5">
                  <AlertTriangle className="h-3.5 w-3.5" />
                  {t('grammar.common-mistakes')}
                </h4>
                <div className="space-y-2">
                  {item.common_mistakes.map((mistake: GrammarMistake, i: number) => (
                    <div key={i} className="p-3 rounded-xl border border-red-200 dark:border-red-900 bg-red-50 dark:bg-red-900/20">
                      <div className="flex items-start gap-2">
                        <div className="shrink-0 mt-0.5">
                          <div className="text-sm font-medium line-through text-red-500">❌ {mistake.mistake}</div>
                          <div className="text-sm font-medium text-green-600">✅ {mistake.correction}</div>
                        </div>
                      </div>
                      <p className="text-xs text-muted-foreground mt-1">{mistake.explanation}</p>
                    </div>
                  ))}
                </div>
              </div>
            )}
          </motion.div>
        ))}
      </div>

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.4 }}
        className="mt-6"
      >
        <button
          onClick={onComplete}
          className="w-full rounded-xl py-3 px-6 bg-primary text-primary-foreground font-medium hover:bg-primary/90 transition-colors text-sm"
        >
          {t('grammar.continue-vocab')}
        </button>
      </motion.div>
    </div>
  )
}
