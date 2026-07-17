'use client'

import { motion } from 'framer-motion'
import {
  BookOpen,
  Target,
  Volume2,
  FileText,
  Headphones,
  Mic,
  Pen,
  MessageSquare,
  Sparkles,
  Star,
  RotateCcw,
  Home,
  CheckCircle2,
  Globe,
  GraduationCap,
  Speech,
} from 'lucide-react'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { StepHeader } from './step-header'
import type { CourseLessonFull } from '@/types'

const sectionIcons: Record<string, typeof BookOpen> = {
  Wortschatz: BookOpen,
  Redewendungen: MessageSquare,
  Grammatik: FileText,
  Lesen: BookOpen,
  Hören: Headphones,
  Sprechen: Mic,
  Schreiben: Pen,
  Konversation: MessageSquare,
  Übungen: Target,
  'KI-Herausforderungen': Sparkles,
  Test: Target,
  Hausaufgaben: Pen,
  Wiederholung: RotateCcw,
  Lernkarten: Star,
  'KI-Lehrer': Sparkles,
}

const realLifeContexts: Record<string, { icon: typeof Globe; label: string }> = {
  Family: { icon: Speech, label: 'Gespräche mit der Familie führen' },
  'Daily Routine': { icon: Speech, label: 'Den Alltag auf Deutsch beschreiben' },
  Food: { icon: Speech, label: 'Essen bestellen und einkaufen' },
  Health: { icon: Speech, label: 'Beim Arzt Termine vereinbaren' },
  Travel: { icon: Speech, label: 'Reisen und Unterkünfte buchen' },
  Work: { icon: Speech, label: 'Auf der Arbeit kommunizieren' },
  Shopping: { icon: Speech, label: 'Einkaufen und nach Preisen fragen' },
  School: { icon: Speech, label: 'Im Unterricht teilnehmen' },
  Hobby: { icon: Speech, label: 'Über Hobbys und Freizeit sprechen' },
  Home: { icon: Speech, label: 'Die Wohnung und das Zuhause beschreiben' },
  Directions: { icon: Speech, label: 'Nach dem Weg fragen und Wege beschreiben' },
  Weather: { icon: Speech, label: 'Über das Wetter sprechen' },
}

export function MissionBriefing({
  lesson,
  onStart,
}: {
  lesson: CourseLessonFull
  onStart: () => void
}) {
  const sections = [
    ['Wortschatz', !!lesson.vocabulary.length],
    ['Redewendungen', !!lesson.expressions?.length],
    ['Grammatik', !!lesson.grammar.length],
    ['Lesen', !!lesson.reading_content?.length],
    ['Hören', !!lesson.listening_content?.length],
    ['Sprechen', !!lesson.speaking_prompts?.length],
    ['Schreiben', !!lesson.writing_prompts?.length],
    ['Konversation', !!lesson.conversations?.length],
    ['Übungen', !!lesson.exercises.length],
    ['KI-Herausforderungen', !!lesson.ai_challenges?.length],
    ['Test', !!lesson.test_questions.length],
    ['Hausaufgaben', !!lesson.homework?.length],
    ['Wiederholung', !!lesson.review?.length],
    ['Lernkarten', !!lesson.flashcards?.length],
  ] as const

  const activeSections = sections.filter(([, has]) => has)
  const totalItems =
    lesson.vocabulary.length +
    (lesson.expressions?.length ?? 0) +
    lesson.grammar.length +
    lesson.exercises.length +
    lesson.test_questions.length

  const topicContext = lesson.topic ? realLifeContexts[lesson.topic] : null

  return (
    <div>
      <StepHeader
        icon={BookOpen}
        title="Einführung"
        subtitle={
          lesson.module?.title
            ? `${lesson.module.title} — ${lesson.lesson_type}-Lektion`
            : `${lesson.lesson_type}-Lektion`
        }
        step={1}
        total={8}
      />

      <motion.div
        initial={{ opacity: 0, y: 16 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.1 }}
        className="rounded-2xl border bg-gradient-to-br from-primary/5 to-transparent p-6 mb-6"
      >
        <h2 className="text-xl font-bold mb-2">{lesson.title}</h2>
        <p className="text-sm text-muted-foreground mb-4">
          {lesson.description}
        </p>
        <div className="flex flex-wrap items-center gap-3 text-xs text-muted-foreground">
          <Badge variant="outline" className="text-xs">
            {lesson.duration_minutes} min
          </Badge>
          <Badge variant="secondary" className="text-xs capitalize">
            {lesson.lesson_type}
          </Badge>
          {lesson.difficulty_rating && (
            <Badge variant="outline" className="text-xs">
              {lesson.difficulty_rating}/5 Schwierigkeit
            </Badge>
          )}
          {lesson.topic && (
            <Badge variant="outline" className="text-xs">
              {lesson.topic}
            </Badge>
          )}
        </div>
      </motion.div>

      {/* Lesson Stats */}
      <motion.div
        initial={{ opacity: 0, y: 16 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.2 }}
        className="grid grid-cols-3 gap-3 mb-6"
      >
        <div className="rounded-xl border p-3 text-center">
          <div className="text-2xl font-bold">{activeSections.length}</div>
          <div className="text-[10px] text-muted-foreground leading-tight">
            BEREICHE
          </div>
        </div>
        <div className="rounded-xl border p-3 text-center">
          <div className="text-2xl font-bold">{totalItems}</div>
          <div className="text-[10px] text-muted-foreground leading-tight">
            AKTIVITÄTEN
          </div>
        </div>
        <div className="rounded-xl border p-3 text-center">
          <div className="text-2xl font-bold">~{lesson.duration_minutes}</div>
          <div className="text-[10px] text-muted-foreground leading-tight">
            MINUTEN
          </div>
        </div>
      </motion.div>

      {/* Real-Life Application */}
      <motion.div
        initial={{ opacity: 0, y: 16 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.25 }}
        className="rounded-2xl border border-primary/20 bg-primary/5 p-4 mb-6"
      >
        <h3 className="text-sm font-semibold mb-2 flex items-center gap-2">
          <Globe className="h-4 w-4 text-primary" />
          Anwendung im Alltag
        </h3>
        <p className="text-sm text-muted-foreground">
          {topicContext
            ? `In dieser Lektion lernst du, wie du ${topicContext.label.toLowerCase()}.`
            : `Das Gelernte kannst du direkt im deutschen Alltag anwenden – beim Einkaufen, auf der Arbeit oder im Gespräch mit Freunden.`}
        </p>
      </motion.div>

      {/* Learning Objectives */}
      {lesson.objectives && lesson.objectives.length > 0 && (
        <motion.div
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.3 }}
          className="mb-6"
        >
          <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
            <Target className="h-4 w-4 text-primary" />
            Lernziele
          </h3>
          <div className="space-y-2">
            {lesson.objectives.map((obj, i) => (
              <motion.div
                key={i}
                initial={{ opacity: 0, x: -10 }}
                animate={{ opacity: 1, x: 0 }}
                transition={{ delay: 0.3 + i * 0.08 }}
                className="flex items-start gap-2 text-sm"
              >
                <CheckCircle2 className="h-4 w-4 text-primary shrink-0 mt-0.5" />
                <span>{obj}</span>
              </motion.div>
            ))}
          </div>
        </motion.div>
      )}

      {/* Section Checklist */}
      <motion.div
        initial={{ opacity: 0, y: 16 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.4 }}
        className="mb-8"
      >
        <h3 className="text-sm font-semibold mb-3 flex items-center gap-2">
          <BookOpen className="h-4 w-4 text-primary" />
          Lektionsinhalte
        </h3>
        <div className="grid grid-cols-2 gap-1.5">
          {sections
            .filter(([, has]) => has)
            .map(([name]) => {
              const Icon = sectionIcons[name] ?? BookOpen
              return (
                <div
                  key={name as string}
                  className="flex items-center gap-2 text-xs p-2 rounded-lg bg-muted/50"
                >
                  <Icon className="h-3.5 w-3.5 text-primary shrink-0" />
                  <span>{name as string}</span>
                </div>
              )
            })}
        </div>
      </motion.div>

      {/* Start Button */}
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.6 }}
      >
        <Button
          onClick={onStart}
          size="lg"
          className="w-full rounded-xl py-6 text-base gap-2"
        >
          <Sparkles className="h-5 w-5" />
          Lektion starten
        </Button>
      </motion.div>
    </div>
  )
}
