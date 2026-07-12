'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { motion } from 'framer-motion'
import { Headphones, BookOpen, Pen, Mic, BookmarkPlus, GraduationCap, Sparkles, ArrowRight, Braces, Ear, MessageSquareText } from 'lucide-react'
import Link from 'next/link'

const modules = [
  {
    href: '/dashboard/hoeren',
    title: 'Hören',
    desc: 'Audio lessons with real German speech and comprehension exercises.',
    icon: Headphones,
    color: 'from-blue-500/20 to-blue-600/20',
    gradient: 'from-blue-500 to-blue-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/lesen',
    title: 'Lesen',
    desc: 'Read articles with vocabulary support and comprehension questions.',
    icon: BookOpen,
    color: 'from-emerald-500/20 to-emerald-600/20',
    gradient: 'from-emerald-500 to-emerald-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/schreiben',
    title: 'Schreiben',
    desc: 'Practice writing with AI-powered grammar and style analysis.',
    icon: Pen,
    color: 'from-purple-500/20 to-purple-600/20',
    gradient: 'from-purple-500 to-purple-600',
    level: 'A2-C1',
  },
  {
    href: '/dashboard/sprechen',
    title: 'Sprechen',
    desc: 'Record your voice and practice speaking with topic-based exercises.',
    icon: Mic,
    color: 'from-amber-500/20 to-amber-600/20',
    gradient: 'from-amber-500 to-amber-600',
    level: 'A2-C1',
  },
  {
    href: '/dashboard/vocabulary',
    title: 'Vocabulary',
    desc: 'Build your vocabulary with flashcards and spaced repetition.',
    icon: BookmarkPlus,
    color: 'from-rose-500/20 to-rose-600/20',
    gradient: 'from-rose-500 to-rose-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/grammar',
    title: 'Grammar',
    desc: 'Interactive grammar exercises with articles, verbs, tenses and more.',
    icon: Braces,
    color: 'from-orange-500/20 to-orange-600/20',
    gradient: 'from-orange-500 to-orange-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/dictation',
    title: 'Dictation',
    desc: 'Listen and type. Improve listening and writing simultaneously.',
    icon: Ear,
    color: 'from-indigo-500/20 to-indigo-600/20',
    gradient: 'from-indigo-500 to-indigo-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/expressions',
    title: 'Expressions',
    desc: 'Learn essential idioms and expressions for natural conversation.',
    icon: MessageSquareText,
    color: 'from-teal-500/20 to-teal-600/20',
    gradient: 'from-teal-500 to-teal-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/exam',
    title: 'Exam Prep',
    desc: 'Prepare for Goethe and TELC exams with mock tests and practice.',
    icon: GraduationCap,
    color: 'from-cyan-500/20 to-cyan-600/20',
    gradient: 'from-cyan-500 to-cyan-600',
    level: 'A1-C1',
  },
]

export default function LearningPage() {
  return (
    <AppShell>
      <div className="space-y-8">
        <div>
          <h1 className="text-3xl font-bold tracking-tight">My Learning</h1>
          <p className="text-muted-foreground mt-1">
            Choose a module to start learning German
          </p>
        </div>

        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {modules.map((mod, i) => {
            const Icon = mod.icon
            return (
              <motion.div
                key={mod.href}
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.05, duration: 0.4 }}
              >
                <Link href={mod.href}>
                  <Card className="group cursor-pointer overflow-hidden transition-all hover:border-primary/50 hover:shadow-lg">
                    <div className={`absolute inset-0 bg-gradient-to-br ${mod.color} opacity-0 transition-opacity group-hover:opacity-100`} />
                    <CardHeader>
                      <div className="flex items-center justify-between">
                        <div className={`flex h-12 w-12 items-center justify-center rounded-lg bg-gradient-to-br ${mod.gradient} text-white`}>
                          <Icon className="h-6 w-6" />
                        </div>
                        <span className="text-xs font-medium text-muted-foreground">{mod.level}</span>
                      </div>
                      <CardTitle className="mt-4">{mod.title}</CardTitle>
                      <CardDescription>{mod.desc}</CardDescription>
                    </CardHeader>
                    <CardContent>
                      <Button variant="ghost" className="group/btn w-full justify-between">
                        Start Learning
                        <ArrowRight className="h-4 w-4 transition-transform group-hover/btn:translate-x-1" />
                      </Button>
                    </CardContent>
                  </Card>
                </Link>
              </motion.div>
            )
          })}
        </div>
      </div>
    </AppShell>
  )
}
