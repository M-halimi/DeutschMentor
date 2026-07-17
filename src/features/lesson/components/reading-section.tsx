'use client'

import { motion } from 'framer-motion'
import { BookOpen, BookText, Languages, Volume2 } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import { useTranslation } from '@/lib/i18n/use-translation'
import type { LessonReadingContent } from '@/types'

export function ReadingSection({
  reading,
  onComplete,
}: {
  reading: LessonReadingContent[]
  onComplete: () => void
}) {
  const { t } = useTranslation()

  if (!reading.length) return null

  return (
    <div>
      <StepHeader
        icon={BookOpen}
        title={t('reading.title')}
        subtitle={t('reading.improve-comprehension')}
        step={0}
        total={0}
      />

      <div className="space-y-6">
        {reading.map((item, i) => (
          <motion.div
            key={item.id}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.1 }}
            className="rounded-2xl border bg-card overflow-hidden"
          >
            <div className="p-5">
              <div className="flex items-center gap-2 mb-3">
                <BookText className="h-5 w-5 text-primary" />
                <h3 className="font-semibold">{item.title}</h3>
              </div>

              <div className="flex flex-wrap gap-2 mb-4">
                {item.word_count && (
                  <Badge variant="outline" className="text-xs">
                    {t('reading.words', { count: item.word_count })}
                  </Badge>
                )}
                {item.difficulty_rating && (
                  <Badge variant="secondary" className="text-xs">
                    {t('reading.difficulty', { rating: item.difficulty_rating })}
                  </Badge>
                )}
                {item.source && (
                  <Badge variant="outline" className="text-xs">
                    {item.source}
                  </Badge>
                )}
              </div>

              <div className="p-4 rounded-xl bg-muted/30 border max-h-80 overflow-y-auto">
                <p className="text-sm leading-relaxed whitespace-pre-line">{item.content}</p>
              </div>

              {(item.english_translation || item.arabic_translation) && (
                <div className="mt-3">
                  <div className="flex items-center gap-2 text-xs text-muted-foreground mb-2">
                    <Languages className="h-3 w-3" />
                    <span>{t('reading.translation-label')}</span>
                  </div>
                  {item.english_translation && (
                    <p className="text-sm text-muted-foreground">{item.english_translation}</p>
                  )}
                  {item.arabic_translation && (
                    <p className="text-sm text-muted-foreground mt-1" dir="auto">{item.arabic_translation}</p>
                  )}
                </div>
              )}

              {item.audio_url && (
                <div className="mt-3 p-3 rounded-xl bg-primary/5 border border-primary/20">
                  <audio controls className="w-full h-8">
                    <source src={item.audio_url} type="audio/mpeg" />
                  </audio>
                  <div className="flex items-center gap-1 mt-1 text-xs text-muted-foreground">
                    <Volume2 className="h-3 w-3" />
                    <span>{t('reading.listen-label')}</span>
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
