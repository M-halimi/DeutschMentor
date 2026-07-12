'use client'

import { useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import { MessageSquareText, Search, BookmarkPlus, CheckCircle2 } from 'lucide-react'
import { useExpressions, useSaveExpression } from '@/hooks/use-progress'
import { AudioPlayer } from '@/components/audio-player'

const categories = [
  { value: '', label: 'All' },
  { value: 'everyday', label: 'Everyday' },
  { value: 'conversation', label: 'Conversation' },
  { value: 'idioms', label: 'Idioms' },
]

export default function ExpressionsPage() {
  const [search, setSearch] = useState('')
  const [level, setLevel] = useState('')
  const [category, setCategory] = useState('')
  const [savedIds, setSavedIds] = useState<Set<string>>(new Set())

  const { data: expressions, isLoading } = useExpressions(level || undefined, category || undefined)
  const saveExpression = useSaveExpression()

  const filtered = expressions?.filter(e =>
    (e.german.toLowerCase().includes(search.toLowerCase()) ||
     e.english.toLowerCase().includes(search.toLowerCase()) ||
     (e.usage_context && e.usage_context.toLowerCase().includes(search.toLowerCase())))
  ) ?? []

  function handleSave(expressionId: string) {
    saveExpression.mutate({ expressionId, mastered: true })
    setSavedIds(prev => new Set(prev).add(expressionId))
  }

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <div className="grid gap-4 md:grid-cols-2">
            {[1, 2, 3, 4].map(i => <Skeleton key={i} className="h-32" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-teal-500 to-teal-600 text-white">
            <MessageSquareText className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Expressions</h1>
            <p className="text-muted-foreground">Learn essential German expressions and idioms for natural conversation</p>
          </div>
        </div>

        <div className="flex items-center gap-4">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input placeholder="Search expressions..." className="pl-10" value={search} onChange={(e) => setSearch(e.target.value)} />
          </div>
          <Select value={level} onValueChange={(v) => { if (v !== null) setLevel(v) }}>
            <SelectTrigger className="w-28">
              <SelectValue placeholder="Level" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="">All</SelectItem>
              <SelectItem value="A1">A1</SelectItem>
              <SelectItem value="A2">A2</SelectItem>
              <SelectItem value="B1">B1</SelectItem>
              <SelectItem value="B2">B2</SelectItem>
              <SelectItem value="C1">C1</SelectItem>
            </SelectContent>
          </Select>
          <Select value={category} onValueChange={(v) => { if (v !== null) setCategory(v) }}>
            <SelectTrigger className="w-36">
              <SelectValue placeholder="Category" />
            </SelectTrigger>
            <SelectContent>
              {categories.map(c => (
                <SelectItem key={c.value} value={c.value}>{c.label}</SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        <div className="grid gap-4 md:grid-cols-2">
          {filtered.map((expr, i) => (
            <motion.div
              key={expr.id}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.03 }}
            >
              <Card className="group hover:border-primary/50 transition-colors">
                <CardContent className="p-5">
                  <div className="flex items-start justify-between">
                    <div className="flex-1">
                      <div className="flex items-center gap-2 mb-1">
                        <span className="text-lg font-semibold">{expr.german}</span>
                        <AudioPlayer text={expr.german} existingUrl={(expr as { audio_url?: string | null }).audio_url} />
                      </div>
                      <p className="text-sm text-muted-foreground italic">{expr.english}</p>
                      {expr.usage_context && (
                        <p className="text-xs text-muted-foreground mt-2">💡 {expr.usage_context}</p>
                      )}
                    </div>
                    <div className="flex items-center gap-2 shrink-0 ml-4">
                      <Badge variant="outline" className="text-xs">{expr.level}</Badge>
                      {expr.category && <Badge variant="secondary" className="text-xs">{expr.category}</Badge>}
                      {savedIds.has(expr.id) ? (
                        <CheckCircle2 className="h-5 w-5 text-green-500" />
                      ) : (
                        <Button variant="ghost" size="icon" className="h-8 w-8" onClick={() => handleSave(expr.id)}>
                          <BookmarkPlus className="h-4 w-4" />
                        </Button>
                      )}
                    </div>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          ))}
          {filtered.length === 0 && (
            <Card className="col-span-2">
              <CardContent className="p-8 text-center text-muted-foreground">
                No expressions found.
              </CardContent>
            </Card>
          )}
        </div>
      </div>
    </AppShell>
  )
}
