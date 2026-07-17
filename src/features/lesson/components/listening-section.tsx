'use client'

import { useState } from 'react'
import { useTranslation } from '@/lib/i18n/use-translation'
import { motion } from 'framer-motion'
import { Headphones, Volume2, Clock, Users, Languages } from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { StepHeader } from './step-header'
import type { LessonListeningContent } from '@/types'

function formatTranscript(transcript: string) {
  const lines = transcript.split('\n').filter(Boolean)
  return lines.map((line) => {
    const match = line.match(/^\[([^\]]+)\]:\s*(.+)$/)
    if (match) {
      return { speaker: match[1], text: match[2] }
    }
    return { speaker: null, text: line }
  })
}

export function ListeningSection({
  listening,
  onComplete,
}: {
  listening: LessonListeningContent[]
  onComplete: () => void
}) {
  const { t } = useTranslation()
  const [expandedId, setExpandedId] = useState<string | null>(null)

  if (!listening.length) return null

  return (
    <div>
      <StepHeader
        icon={Headphones}
        title={t('listening.title')}
        subtitle={t('listening.train-ear')}
        step={0}
        total={0}
      />

      <div className="space-y-6">
        {listening.map((item, i) => {
          const dialogue = formatTranscript(item.transcript)
          const isExpanded = expandedId === item.id

          return (
            <motion.div
              key={item.id}
              initial={{ opacity: 0, y: 16 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.1 }}
              className="rounded-2xl border bg-card overflow-hidden"
            >
              <div className="p-5">
                <div className="flex items-center gap-2 mb-3">
                  <Volume2 className="h-5 w-5 text-primary" />
                  <h3 className="font-semibold">{item.title}</h3>
                </div>

                <div className="flex flex-wrap gap-2 mb-4">
                  {item.duration_seconds && (
                    <Badge variant="outline" className="text-xs gap-1">
                      <Clock className="h-3 w-3" />
                      {t('listening.duration', { minutes: Math.round(item.duration_seconds / 60) })}
                    </Badge>
                  )}
                  {item.speaker_count > 0 && (
                    <Badge variant="outline" className="text-xs gap-1">
                      <Users className="h-3 w-3" />
                      {t('listening.speakers', { count: item.speaker_count })}
                    </Badge>
                  )}
                  {item.scenario && (
                    <Badge variant="secondary" className="text-xs">
                      {item.scenario}
                    </Badge>
                  )}
                </div>

                <button
                  onClick={() => setExpandedId(isExpanded ? null : item.id)}
                  className="w-full text-left"
                >
                  <div className="p-4 rounded-xl bg-muted/50 border">
                    {isExpanded ? (
                      <div className="space-y-3">
                        {dialogue.map((d, di) => (
                          <div key={di} className="flex items-start gap-3">
                            {d.speaker && (
                              <Badge variant="secondary" className="shrink-0 mt-0.5 text-xs">
                                {d.speaker}
                              </Badge>
                            )}
                            <p className="text-sm">{d.text}</p>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="flex items-center justify-between">
                        <span className="text-sm text-muted-foreground">{t('listening.transcript')}</span>
                        <Badge variant="outline" className="text-xs">
                          {dialogue.length} lines
                        </Badge>
                      </div>
                    )}
                  </div>
                </button>

                {(item.english_translation || item.arabic_translation) && (
                  <div className="mt-3 flex items-center gap-2 text-xs text-muted-foreground">
                    <Languages className="h-3 w-3" />
                    <span>{t('listening.translation-available')}</span>
                  </div>
                )}

                {item.audio_url && (
                  <div className="mt-3 p-3 rounded-xl bg-primary/5 border border-primary/20">
                    <audio controls className="w-full h-8">
                      <source src={item.audio_url} type="audio/mpeg" />
                    </audio>
                  </div>
                )}
              </div>
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
