'use client'

import { useState, useEffect } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { motion } from 'framer-motion'
import {
  Layers, BookOpen, Headphones, MessageSquare, FileText,
  PenTool, Hash, Sparkles, ArrowRight,
  Briefcase, Heart, Plane, Leaf, Monitor, Music,
  TrendingUp, Users, Home, UtensilsCrossed
} from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import type { GermanLevel, ThemeContentType, ThemeLesson } from '@/types'

const THEMES = [
  { id: 'weather', label: 'Weather', icon: Sparkles, desc: 'Wetterberichte, Klima, Jahreszeiten' },
  { id: 'work', label: 'Work', icon: Briefcase, desc: 'Bewerbung, Büro, Meetings, Beruf' },
  { id: 'health', label: 'Health', icon: Heart, desc: 'Beim Arzt, Krankenhaus, Gesundheit' },
  { id: 'travel', label: 'Travel', icon: Plane, desc: 'Reisen, Verkehr, Unterkunft' },
  { id: 'environment', label: 'Environment', icon: Leaf, desc: 'Umwelt, Klimawandel, Nachhaltigkeit' },
  { id: 'technology', label: 'Technology', icon: Monitor, desc: 'Digitalisierung, KI, Internet' },
  { id: 'culture', label: 'Culture', icon: Music, desc: 'Kunst, Musik, Traditionen, Feste' },
  { id: 'education', label: 'Education', icon: BookOpen, desc: 'Schule, Studium, Ausbildung' },
  { id: 'business', label: 'Business', icon: TrendingUp, desc: 'Wirtschaft, Unternehmen, Finanzen' },
  { id: 'society', label: 'Society', icon: Users, desc: 'Gesellschaft, Politik, Medien' },
  { id: 'daily', label: 'Daily Life', icon: Home, desc: 'Alltag, Einkaufen, Freizeit' },
  { id: 'food', label: 'Food & Dining', icon: UtensilsCrossed, desc: 'Essen, Restaurant, Kochen' },
]

const LEVELS: (GermanLevel | 'C2')[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const CONTENT_ICONS: Record<ThemeContentType, { icon: LucideIcon; label: string }> = {
  vocabulary: { icon: BookOpen, label: 'Vocabulary' },
  listening: { icon: Headphones, label: 'Listening' },
  reading: { icon: FileText, label: 'Reading' },
  speaking: { icon: MessageSquare, label: 'Speaking' },
  writing: { icon: PenTool, label: 'Writing' },
  grammar: { icon: Hash, label: 'Grammar' },
  conversation: { icon: MessageSquare, label: 'Conversation' },
}

export default function ThemesPage() {
  const [selectedTheme, setSelectedTheme] = useState<string | null>(null)
  const [lessons, setLessons] = useState<ThemeLesson[]>([])
  const [selectedLevel, setSelectedLevel] = useState<string>('')
  const [availableThemes, setAvailableThemes] = useState<string[]>([])

  useEffect(() => {
    fetch('/api/themes').then(r => r.ok && r.json()).then(d => {
      if (d?.themes) setAvailableThemes(d.themes)
    }).catch(() => {})
  }, [])

  useEffect(() => {
    if (!selectedTheme) return
    const params = new URLSearchParams({ theme: selectedTheme })
    if (selectedLevel) params.set('level', selectedLevel)
    fetch(`/api/themes?${params}`).then(r => r.ok && r.json()).then(d => setLessons(d ?? [])).catch(() => {})
  }, [selectedTheme, selectedLevel])

  if (selectedTheme) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Button variant="outline" size="sm" onClick={() => { setSelectedTheme(null); setLessons([]) }}>
            <ArrowRight className="h-4 w-4 mr-1 rotate-180" /> All Themes
          </Button>
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-sm">
              <Layers className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-2xl font-bold capitalize">{selectedTheme}</h1>
              <p className="text-muted-foreground text-sm">{THEMES.find(t => t.id === selectedTheme)?.desc}</p>
            </div>
          </div>

          <div className="flex gap-2 flex-wrap">
            <button onClick={() => setSelectedLevel('')} className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${!selectedLevel ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700' : 'text-muted-foreground hover:bg-muted'}`}>
              All Levels
            </button>
            {LEVELS.map(l => (
              <button key={l} onClick={() => setSelectedLevel(l)} className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${selectedLevel === l ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700' : 'text-muted-foreground hover:bg-muted'}`}>
                {l}
              </button>
            ))}
          </div>

          <div className="grid gap-3">
            {lessons.map((lesson: ThemeLesson, i: number) => {
              const ci = CONTENT_ICONS[lesson.content_type as ThemeContentType] ?? { icon: BookOpen, label: lesson.content_type }
              const Icon = ci.icon
              return (
                <motion.div key={lesson.id ?? i} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.03 }}>
                  <Card className="hover:border-violet-400/50 transition-all cursor-pointer">
                    <CardContent className="p-4 flex items-center gap-4">
                      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-violet-100 dark:bg-violet-900/30 text-violet-600">
                        <Icon className="h-5 w-5" />
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-0.5">
                          <h3 className="font-medium text-sm">{lesson.title}</h3>
                          <Badge variant="secondary" className="text-[10px]">{ci.label}</Badge>
                          <Badge variant="outline" className="text-[10px]">{lesson.level}</Badge>
                        </div>
                        {lesson.description && <p className="text-xs text-muted-foreground">{lesson.description}</p>}
                      </div>
                      <ArrowRight className="h-4 w-4 text-muted-foreground shrink-0" />
                    </CardContent>
                  </Card>
                </motion.div>
              )
            })}
            {lessons.length === 0 && (
              <Card>
                <CardContent className="p-8 text-center text-muted-foreground">
                  <Layers className="h-8 w-8 mx-auto mb-2 opacity-50" />
                  <p className="text-sm">No lessons available for this theme yet.</p>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-sm">
            <Layers className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Theme Learning</h1>
            <p className="text-muted-foreground">Complete learning units organized by theme</p>
          </div>
        </div>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {THEMES.map(({ id, label, icon: Icon, desc }, i) => (
            <motion.div key={id} initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.03 }}>
              <Card
                className="group cursor-pointer hover:border-violet-400/50 transition-all hover:shadow-lg overflow-hidden"
                onClick={() => setSelectedTheme(id)}
              >
                <CardContent className="p-5">
                  <div className="flex items-center gap-3 mb-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-violet-100 dark:bg-violet-900/30 text-violet-600 group-hover:bg-violet-200 dark:group-hover:bg-violet-800/40 transition-colors">
                      <Icon className="h-5 w-5" />
                    </div>
                    <div>
                      <h3 className="font-semibold">{label}</h3>
                      <p className="text-xs text-muted-foreground">{desc}</p>
                    </div>
                  </div>
                  {availableThemes.includes(id) && (
                    <Badge variant="secondary" className="text-[10px]">Content available</Badge>
                  )}
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>
      </div>
    </AppShell>
  )
}
