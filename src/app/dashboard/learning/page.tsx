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
    desc: 'Hörübungen mit authentischen deutschen Dialogen und Verständnisfragen.',
    icon: Headphones,
    color: 'from-blue-500/20 to-blue-600/20',
    gradient: 'from-blue-500 to-blue-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/lesen',
    title: 'Lesen',
    desc: 'Lese Artikel mit Wortschatzhilfe und Verständnisfragen.',
    icon: BookOpen,
    color: 'from-emerald-500/20 to-emerald-600/20',
    gradient: 'from-emerald-500 to-emerald-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/schreiben',
    title: 'Schreiben',
    desc: 'Trainiere dein Schreiben mit KI-gestützter Grammatik- und Stilanalyse.',
    icon: Pen,
    color: 'from-purple-500/20 to-purple-600/20',
    gradient: 'from-purple-500 to-purple-600',
    level: 'A2-C1',
  },
  {
    href: '/dashboard/sprechen',
    title: 'Sprechen',
    desc: 'Nimm deine Stimme auf und übe das Sprechen mit themenbasierten Aufgaben.',
    icon: Mic,
    color: 'from-amber-500/20 to-amber-600/20',
    gradient: 'from-amber-500 to-amber-600',
    level: 'A2-C1',
  },
  {
    href: '/dashboard/vocabulary',
    title: 'Wortschatz',
    desc: 'Erweitere deinen Wortschatz mit Karteikarten und Wiederholungen.',
    icon: BookmarkPlus,
    color: 'from-rose-500/20 to-rose-600/20',
    gradient: 'from-rose-500 to-rose-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/grammar',
    title: 'Grammatik',
    desc: 'Interaktive Grammatikübungen zu Artikeln, Verben, Zeiten und mehr.',
    icon: Braces,
    color: 'from-orange-500/20 to-orange-600/20',
    gradient: 'from-orange-500 to-orange-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/dictation',
    title: 'Diktat',
    desc: 'Hören und tippen. Verbessere gleichzeitig Hör- und Schreibfähigkeiten.',
    icon: Ear,
    color: 'from-indigo-500/20 to-indigo-600/20',
    gradient: 'from-indigo-500 to-indigo-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/expressions',
    title: 'Ausdrücke',
    desc: 'Lerne wichtige Redewendungen für natürliche Gespräche.',
    icon: MessageSquareText,
    color: 'from-teal-500/20 to-teal-600/20',
    gradient: 'from-teal-500 to-teal-600',
    level: 'A1-C1',
  },
  {
    href: '/dashboard/exam',
    title: 'Prüfungsvorbereitung',
    desc: 'Bereite dich mit Probeprüfungen auf Goethe- und TELC-Prüfungen vor.',
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
          <h1 className="text-3xl font-bold tracking-tight">Mein Lernen</h1>
          <p className="text-muted-foreground mt-1">
            Wähle ein Modul, um mit dem Deutschlernen zu beginnen
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
                        Lernen starten
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
