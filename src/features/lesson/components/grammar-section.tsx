'use client'

import { motion } from 'framer-motion'
import { FileText, AlertTriangle, Check, X, Lightbulb } from 'lucide-react'
import { StepHeader } from './step-header'
import type { LessonGrammar } from '@/types'

export function GrammarSection({
  grammar,
  onComplete,
}: {
  grammar: LessonGrammar[]
  onComplete: () => void
}) {
  if (!grammar.length) return null

  return (
    <div>
      <StepHeader
        icon={FileText}
        title="Grammar Focus"
        subtitle="Understand the rules and structures"
        step={0}
        total={0}
      />

      <div className="space-y-6">
        {grammar.map((g, i) => (
          <motion.div
            key={g.id}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.1 }}
            className="rounded-2xl border bg-card p-6"
          >
            <h3 className="text-lg font-bold mb-2">{g.title}</h3>
            <p className="text-sm text-muted-foreground mb-4">{g.explanation}</p>

            {g.rules.length > 0 && (
              <div className="mb-4">
                <h4 className="text-sm font-semibold mb-2 flex items-center gap-2">
                  <Lightbulb className="h-4 w-4 text-amber-500" />
                  Rules
                </h4>
                <div className="space-y-2">
                  {g.rules.map((rule, ri) => (
                    <div key={ri} className="p-3 rounded-xl bg-muted/50 border text-sm">
                      <span className="font-medium">{rule.rule}</span>
                      {rule.note && (
                        <p className="text-xs text-muted-foreground mt-1">{rule.note}</p>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {g.examples.length > 0 && (
              <div className="mb-4">
                <h4 className="text-sm font-semibold mb-2 flex items-center gap-2">
                  <Check className="h-4 w-4 text-green-500" />
                  Examples
                </h4>
                <div className="space-y-2">
                  {g.examples.map((ex, ei) => (
                    <div key={ei} className="p-3 rounded-xl bg-green-50 dark:bg-green-900/20 border border-green-200 dark:border-green-800">
                      <p className="text-sm font-medium">{ex.german}</p>
                      <p className="text-xs text-muted-foreground mt-0.5">{ex.english}</p>
                      {ex.arabic && (
                        <p className="text-xs text-muted-foreground mt-0.5" dir="auto">{ex.arabic}</p>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {g.common_mistakes.length > 0 && (
              <div>
                <h4 className="text-sm font-semibold mb-2 flex items-center gap-2">
                  <AlertTriangle className="h-4 w-4 text-red-500" />
                  Common Mistakes
                </h4>
                <div className="space-y-2">
                  {g.common_mistakes.map((cm, ci) => (
                    <div key={ci} className="p-3 rounded-xl bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800">
                      <div className="flex items-start gap-2 text-sm">
                        <X className="h-4 w-4 text-red-500 shrink-0 mt-0.5" />
                        <span className="text-red-700 dark:text-red-300 line-through">{cm.mistake}</span>
                      </div>
                      <div className="flex items-start gap-2 text-sm mt-1">
                        <Check className="h-4 w-4 text-green-500 shrink-0 mt-0.5" />
                        <span className="text-green-700 dark:text-green-300">{cm.correction}</span>
                      </div>
                      <p className="text-xs text-muted-foreground mt-1 ml-6">{cm.explanation}</p>
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
          Continue
        </button>
      </motion.div>
    </div>
  )
}
