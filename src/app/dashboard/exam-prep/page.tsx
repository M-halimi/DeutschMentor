'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { useQuery } from '@tanstack/react-query'
import { useState } from 'react'
import { Target, Headphones, BookOpen, Pen, Mic, GraduationCap, Loader2 } from 'lucide-react'
import { LinkButton } from '@/components/shared/link-button'

const EXAM_TYPES = [
  { value: 'goethe', label: 'Goethe' },
  { value: 'telc', label: 'TELC' },
  { value: 'testdaf', label: 'TestDaF' },
  { value: 'dsh', label: 'DSH' },
]

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const MODULE_ICONS: Record<string, React.ReactNode> = {
  lesen: <BookOpen className="h-8 w-8" />,
  hoeren: <Headphones className="h-8 w-8" />,
  schreiben: <Pen className="h-8 w-8" />,
  sprechen: <Mic className="h-8 w-8" />,
  wortschatz: <BookOpen className="h-8 w-8" />,
  grammatik: <Target className="h-8 w-8" />,
  full_mock: <GraduationCap className="h-8 w-8" />,
}

const EXAM_COLORS: Record<string, string> = {
  goethe: 'from-blue-500 to-blue-600',
  telc: 'from-green-500 to-green-600',
  testdaf: 'from-purple-500 to-purple-600',
  dsh: 'from-orange-500 to-orange-600',
}

export default function ExamPrepPage() {
  const [examType, setExamType] = useState('goethe')
  const [level, setLevel] = useState('B1')

  const { data: modules, isLoading } = useQuery({
    queryKey: ['exam-prep-modules', level, examType],
    queryFn: async () => {
      const res = await fetch(`/api/exam-prep?level=${level}&exam_type=${examType}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <GraduationCap className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Prüfungsvorbereitung</h1>
          </div>
        </div>

        <div className="flex flex-wrap gap-3">
          {EXAM_TYPES.map(t => (
            <Button key={t.value} variant={examType === t.value ? 'default' : 'outline'} onClick={() => setExamType(t.value)}>
              {t.label}
            </Button>
          ))}
          <Select value={level} onValueChange={(v: string | null) => setLevel(v ?? 'B1')}>
            <SelectTrigger className="w-20"><SelectValue /></SelectTrigger>
            <SelectContent>
              {LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
            </SelectContent>
          </Select>
        </div>

        {isLoading ? (
          <div className="flex justify-center py-12"><Loader2 className="h-8 w-8 animate-spin" /></div>
        ) : (
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
            {(modules ?? []).map((mod: any) => (
              <Card key={mod.id}>
                <CardContent className="p-5">
                  <div className="flex items-start gap-4 mb-4">
                    <div className={`p-3 rounded-lg bg-gradient-to-br ${EXAM_COLORS[mod.exam_type] ?? 'from-primary to-primary/60'} text-white`}>
                      {MODULE_ICONS[mod.module_type] ?? <Target className="h-8 w-8" />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <Badge variant="outline" className="text-xs mb-1 capitalize">{mod.module_type.replace('_', ' ')}</Badge>
                      <h3 className="font-semibold">{mod.title}</h3>
                      {mod.description && <p className="text-sm text-muted-foreground line-clamp-2">{mod.description}</p>}
                    </div>
                  </div>
                  <div className="flex items-center justify-between text-xs text-muted-foreground mb-3">
                    <span>{mod.total_points} Punkte</span>
                    <span>Bestanden: {mod.pass_threshold}%</span>
                    {mod.time_limit_minutes && <span>{mod.time_limit_minutes} Min.</span>}
                  </div>
                  <LinkButton href={`/dashboard/exam-prep/${mod.id}`} className="w-full">
                    Üben starten
                  </LinkButton>
                </CardContent>
              </Card>
            ))}
          </div>
        )}
      </div>
    </AppShell>
  )
}
