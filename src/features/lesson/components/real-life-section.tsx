'use client'

import { motion } from 'framer-motion'
import { MessageSquare, Speech, Globe } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import { useTranslation } from '@/lib/i18n/use-translation'
import { AudioPlayer } from '@/components/audio-player'
import type { LessonExpression, LessonConversation } from '@/types'

export function RealLifeSection({
  expressions,
  conversations,
  onComplete,
}: {
  expressions: LessonExpression[]
  conversations: LessonConversation[]
  onComplete: () => void
}) {
  const { t } = useTranslation()
  const hasContent = expressions.length > 0 || conversations.length > 0

  if (!hasContent) return null

  return (
    <div>
      <StepHeader
        icon={Globe}
        title={t('reallife.title')}
        subtitle={t('reallife.subtitle')}
        step={2}
        total={8}
      />

      <div className="space-y-6">
        {expressions.length > 0 && (
          <motion.div
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            className="rounded-2xl border bg-card p-5"
          >
            <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
              <MessageSquare className="h-4 w-4 text-primary" />
              {t('reallife.expressions')}
            </h3>
            <div className="space-y-2">
              {expressions.map((expr) => (
                <div
                  key={expr.id}
                  className="flex items-start gap-3 p-3 rounded-xl bg-muted/30 border"
                >
                  <AudioPlayer text={expr.german} lang="de" showSlow={false} />
                  <div className="min-w-0 flex-1">
                    <div className="flex items-center gap-2">
                      <span className="text-sm font-medium">{expr.german}</span>
                      {expr.is_idiom && (
                        <Badge variant="secondary" className="text-[10px]">
                          {t('reallife.idiom')}
                        </Badge>
                      )}
                      {expr.formality && (
                        <Badge variant="outline" className="text-[10px]">
                          {expr.formality}
                        </Badge>
                      )}
                    </div>
                    <p className="text-xs text-muted-foreground">{expr.english_translation}</p>
                    {expr.arabic_translation && (
                      <p className="text-xs text-muted-foreground/70" dir="auto">{expr.arabic_translation}</p>
                    )}
                    {expr.usage_context && (
                      <p className="text-xs text-muted-foreground/60 mt-1 italic">{expr.usage_context}</p>
                    )}
                  </div>
                </div>
              ))}
            </div>
          </motion.div>
        )}

        {conversations.length > 0 && (
          <motion.div
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.15 }}
            className="rounded-2xl border bg-card p-5"
          >
            <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
              <Speech className="h-4 w-4 text-primary" />
              {t('reallife.dialogues')}
            </h3>
            <div className="space-y-3">
              {conversations.map((conv) => (
                <div
                  key={conv.id}
                  className="p-4 rounded-xl bg-gradient-to-br from-primary/5 to-transparent border"
                >
                  <h4 className="font-medium text-sm mb-1">{conv.title}</h4>
                  <p className="text-xs text-muted-foreground mb-2">{conv.scenario}</p>
                  <div className="space-y-1 text-sm">
                    <p><span className="font-medium text-primary">{conv.role_user}:</span> {conv.opening_line || '...'}</p>
                    <p><span className="font-medium text-muted-foreground">{conv.role_ai}:</span> {conv.context || '...'}</p>
                  </div>
                  {conv.vocabulary_hints.length > 0 && (
                    <div className="flex flex-wrap gap-1 mt-2">
                      {conv.vocabulary_hints.map((hint, i) => (
                        <Badge key={i} variant="secondary" className="text-[10px]">
                          {hint}
                        </Badge>
                      ))}
                    </div>
                  )}
                </div>
              ))}
            </div>
          </motion.div>
        )}
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
          {t('lesson.continue')}
        </button>
      </motion.div>
    </div>
  )
}
