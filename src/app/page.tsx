'use client'

import Link from 'next/link'
import { motion } from 'framer-motion'
import { Button } from '@/components/ui/button'
import { Sparkles, Headphones, BookOpen, Pen, Mic, ArrowRight, Star, Brain } from 'lucide-react'

const features = [
  { icon: Headphones, title: 'Hören', description: 'KI-gestützte Hörübungen mit authentischen deutschen Dialogen', color: 'from-blue-500/20 to-blue-600/20' },
  { icon: BookOpen, title: 'Lesen', description: 'Kuratierte Lesetexte für jedes Niveau', color: 'from-emerald-500/20 to-emerald-600/20' },
  { icon: Pen, title: 'Schreiben', description: 'Intelligenter Schreibassistent mit Grammatikanalyse', color: 'from-purple-500/20 to-purple-600/20' },
  { icon: Mic, title: 'Sprechen', description: 'KI-Gesprächspartner für Sprechpraxis', color: 'from-amber-500/20 to-amber-600/20' },
]

const levels = [
  { level: 'A1', label: 'Anfänger', desc: 'Beginne deine Deutschreise' },
  { level: 'A2', label: 'Grundlagen', desc: 'Baue grundlegende Kommunikation auf' },
  { level: 'B1', label: 'Mittelstufe', desc: 'Bewältige Alltagssituationen' },
  { level: 'B2', label: 'Fortgeschritten', desc: 'Erreiche Sprachgewandtheit' },
  { level: 'C1', label: 'Kompetent', desc: 'Meistere die Sprache' },
]

export default function LandingPage() {
  return (
    <div className="min-h-screen">
      <header className="fixed top-0 z-50 w-full border-b bg-background/80 backdrop-blur-xl">
        <div className="mx-auto flex h-16 max-w-7xl items-center justify-between px-6">
          <Link href="/" className="flex items-center gap-2">
            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-primary-foreground">
              <Sparkles className="h-4 w-4" />
            </div>
            <span className="text-lg font-semibold">DeutschMentor</span>
          </Link>
          <nav className="hidden items-center gap-6 md:flex">
            <Link href="/login" className="text-sm font-medium text-muted-foreground hover:text-foreground">Anmelden</Link>
            <Link href="/signup">
              <Button>Kostenlos starten</Button>
            </Link>
          </nav>
        </div>
      </header>

      <section className="relative pt-32 pb-20 md:pt-40 md:pb-28">
        <div className="absolute inset-0 overflow-hidden">
          <div className="absolute -top-40 right-0 h-[500px] w-[500px] rounded-full bg-primary/10 blur-[100px]" />
          <div className="absolute -bottom-40 left-0 h-[400px] w-[400px] rounded-full bg-primary/5 blur-[100px]" />
        </div>
        <div className="relative mx-auto max-w-5xl px-6 text-center">
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
          >
            <div className="mb-6 inline-flex items-center gap-2 rounded-full border bg-muted/50 px-4 py-1.5 text-sm">
              <Sparkles className="h-3.5 w-3.5 text-primary" />
              <span className="text-muted-foreground">Dein KI-gestützter Deutsch-Coach</span>
            </div>
            <h1 className="text-4xl font-bold tracking-tight md:text-6xl lg:text-7xl">
              Meistere Deutsch mit
              <br />
              <span className="bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent">
                deinem persönlichen KI-Mentor
              </span>
            </h1>
            <p className="mx-auto mt-6 max-w-2xl text-lg text-muted-foreground">
              Von A1 bis C1. Personalisierte Lektionen, Echtzeit-Feedback und Prüfungsvorbereitung für Goethe und TELC.
              Deine Reise zur deutschen Sprachgewandtheit beginnt hier.
            </p>
            <div className="mt-10 flex items-center justify-center gap-4">
              <Link href="/signup">
                <Button size="lg">
                  Kostenlos lernen <ArrowRight className="ml-2 h-4 w-4" />
                </Button>
              </Link>
              <Link href="/login">
                <Button size="lg" variant="outline">Anmelden</Button>
              </Link>
            </div>
          </motion.div>
        </div>
      </section>

      <section className="border-t py-20">
        <div className="mx-auto max-w-7xl px-6">
          <div className="mb-12 text-center">
            <h2 className="text-3xl font-bold">Meistere alle vier Fertigkeiten</h2>
            <p className="mt-2 text-muted-foreground">Umfassendes Training für vollständige Sprachgewandtheit</p>
          </div>
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
            {features.map((feature, i) => (
              <motion.div
                key={feature.title}
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.1, duration: 0.5 }}
                className="group relative overflow-hidden rounded-xl border bg-card p-6 transition-colors hover:border-primary/50"
              >
                <div className={`absolute inset-0 bg-gradient-to-br ${feature.color} opacity-0 transition-opacity group-hover:opacity-100`} />
                <div className="relative">
                  <div className="mb-4 flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
                    <feature.icon className="h-6 w-6 text-primary" />
                  </div>
                  <h3 className="mb-2 text-lg font-semibold">{feature.title}</h3>
                  <p className="text-sm text-muted-foreground">{feature.description}</p>
                </div>
              </motion.div>
            ))}
          </div>
        </div>
      </section>

      <section className="border-t py-20">
        <div className="mx-auto max-w-7xl px-6">
          <div className="mb-12 text-center">
            <h2 className="text-3xl font-bold">Vom Anfänger zum Fortgeschrittenen</h2>
            <p className="mt-2 text-muted-foreground">Strukturierte Lernpfade für jedes Niveau</p>
          </div>
          <div className="grid gap-4 md:grid-cols-5">
            {levels.map((l, i) => (
              <motion.div
                key={l.level}
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.1, duration: 0.5 }}
                className="rounded-xl border bg-card p-6 text-center"
              >
                <div className="mb-2 inline-flex h-12 w-12 items-center justify-center rounded-full bg-primary/10 text-lg font-bold text-primary">
                  {l.level}
                </div>
                <h3 className="font-semibold">{l.label}</h3>
                <p className="text-sm text-muted-foreground">{l.desc}</p>
              </motion.div>
            ))}
          </div>
        </div>
      </section>

      <section className="border-t py-20">
        <div className="mx-auto max-w-5xl px-6 text-center">
          <motion.div
            initial={{ opacity: 0, scale: 0.95 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.5 }}
            className="rounded-2xl border bg-card p-12"
          >
            <div className="mb-6 inline-flex rounded-full bg-primary/10 p-3">
              <Brain className="h-8 w-8 text-primary" />
            </div>
            <h2 className="text-3xl font-bold">Bereit für deine Deutschreise?</h2>
            <p className="mx-auto mt-4 max-w-lg text-muted-foreground">
              Werde Mitglied bei DeutschMentor und erhalte deinen persönlichen Deutsch-Coach. Kostenlos starten.
            </p>
            <div className="mt-8 flex items-center justify-center gap-3">
              <div className="flex items-center gap-1 text-sm text-muted-foreground">
                <Star className="h-4 w-4 fill-yellow-500 text-yellow-500" />
                Keine Kreditkarte erforderlich
              </div>
            </div>
            <Link href="/signup">
              <Button size="lg" className="mt-6">
                Kostenlos starten <ArrowRight className="ml-2 h-4 w-4" />
              </Button>
            </Link>
          </motion.div>
        </div>
      </section>

      <footer className="border-t py-8">
        <div className="mx-auto max-w-7xl px-6 text-center text-sm text-muted-foreground">
          <p>DeutschMentor — Dein persönlicher KI-Deutsch-Coach</p>
        </div>
      </footer>
    </div>
  )
}
