'use client'

import { useState, useRef, useEffect } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Textarea } from '@/components/ui/textarea'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import { Play, Pause, Ear, CheckCircle2, XCircle, RefreshCw } from 'lucide-react'
import { useDictationExercises, useSubmitDictation } from '@/hooks/use-progress'

export default function DictationPage() {
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const [level, setLevel] = useState<string>('')
  const [userText, setUserText] = useState('')
  const [result, setResult] = useState<{ score: number; mistakes: { original: string; expected: string }[]; correctCount: number; totalWords: number } | null>(null)
  const [isPlaying, setIsPlaying] = useState(false)
  const audioRef = useRef<HTMLAudioElement | null>(null)

  const { data: exercises, isLoading } = useDictationExercises(level || undefined)
  const submitDictation = useSubmitDictation()

  const selectedExercise = exercises?.find(e => e.id === selectedId)

  useEffect(() => {
    if (!audioRef.current) {
      audioRef.current = new Audio()
      audioRef.current.onended = () => setIsPlaying(false)
      audioRef.current.onplay = () => setIsPlaying(true)
      audioRef.current.onpause = () => setIsPlaying(false)
    }
  }, [])

  useEffect(() => {
    if (selectedExercise?.audio_url && audioRef.current) {
      audioRef.current.src = selectedExercise.audio_url
      audioRef.current.load()
    }
  }, [selectedExercise?.audio_url])

  function togglePlay() {
    if (!audioRef.current) return
    if (isPlaying) audioRef.current.pause()
    else audioRef.current.play().catch(() => {})
  }

  async function handleSubmit() {
    if (!selectedId || !selectedExercise || !userText.trim()) return
    const res = await submitDictation.mutateAsync({
      dictationId: selectedId,
      userText: userText.trim(),
      fullText: selectedExercise.full_text,
    })
    setResult(res)
  }

  function resetExercise() {
    setUserText('')
    setResult(null)
  }

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <Skeleton className="h-48" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-indigo-500 to-indigo-600 text-white">
            <Ear className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Diktat</h1>
            <p className="text-muted-foreground">Höre zu und tippe, was du hörst. Verbessere deine Hör- und Schreibfähigkeiten.</p>
          </div>
        </div>

        <div className="flex items-center gap-4">
          <Select value={level} onValueChange={(v) => { if (v) setLevel(v) }}>
            <SelectTrigger className="w-32">
              <SelectValue placeholder="Niveau" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="">Alle Niveaus</SelectItem>
              <SelectItem value="A1">A1</SelectItem>
              <SelectItem value="A2">A2</SelectItem>
              <SelectItem value="B1">B1</SelectItem>
              <SelectItem value="B2">B2</SelectItem>
              <SelectItem value="C1">C1</SelectItem>
            </SelectContent>
          </Select>
          {selectedId && (
            <Button variant="outline" size="sm" onClick={() => { setSelectedId(null); setResult(null); setUserText('') }}>
              Übung wechseln
            </Button>
          )}
        </div>

        {!selectedId ? (
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
            {exercises?.map((ex, i) => (
              <motion.div
                key={ex.id}
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.05 }}
              >
                <Card className="group cursor-pointer hover:border-primary/50 transition-all hover:shadow-lg" onClick={() => setSelectedId(ex.id)}>
                  <CardContent className="p-5">
                    <div className="flex items-center justify-between mb-3">
                      <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-primary/10">
                        <Ear className="h-5 w-5 text-primary" />
                      </div>
                      <Badge>{ex.level}</Badge>
                    </div>
                    <h3 className="font-semibold">{ex.title}</h3>
                    <p className="text-xs text-muted-foreground mt-2">{ex.duration_seconds}s · {ex.full_text.split(/\s+/).length} Wörter</p>
                  </CardContent>
                </Card>
              </motion.div>
            ))}
            {(!exercises || exercises.length === 0) && (
              <Card className="col-span-full">
                <CardContent className="p-8 text-center text-muted-foreground">
                  Keine Diktatübungen verfügbar.
                </CardContent>
              </Card>
            )}
          </div>
        ) : selectedExercise ? (
          <div className="max-w-2xl mx-auto space-y-6">
            <Card>
              <CardHeader className="text-center">
                <CardTitle>{selectedExercise.title}</CardTitle>
                <CardDescription>Höre dir das Audio an und tippe genau das, was du hörst</CardDescription>
              </CardHeader>
              <CardContent className="space-y-6">
                <div className="flex justify-center">
                  <Button size="lg" className="h-16 w-16 rounded-full" onClick={togglePlay}>
                    {isPlaying ? <Pause className="h-8 w-8" /> : <Play className="h-8 w-8 ml-1" />}
                  </Button>
                </div>
                <p className="text-center text-sm text-muted-foreground">
                  Klicke auf Play, höre genau hin und tippe dann, was du gehört hast
                </p>

                <Button variant="outline" size="sm" className="mx-auto flex" onClick={togglePlay}>
                  <RefreshCw className="mr-2 h-4 w-4" /> Nochmal abspielen
                </Button>
              </CardContent>
            </Card>

            {!result ? (
              <Card>
                <CardHeader>
                  <CardTitle className="text-lg">Deine Antwort</CardTitle>
                  <CardDescription>Tippe den gehörten deutschen Text</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <Textarea
                    placeholder="Tippe, was du gehört hast..."
                    className="min-h-[120px]"
                    value={userText}
                    onChange={(e) => setUserText(e.target.value)}
                  />
                  <Button onClick={handleSubmit} disabled={!userText.trim() || submitDictation.isPending} className="w-full">
                    {submitDictation.isPending ? 'Wird überprüft...' : 'Antwort prüfen'}
                  </Button>
                </CardContent>
              </Card>
            ) : (
              <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}>
                <Card>
                  <CardHeader className="text-center">
                    <div className="flex justify-center mb-2">
                      {result.score >= 80 ? (
                        <CheckCircle2 className="h-12 w-12 text-green-500" />
                      ) : (
                        <XCircle className="h-12 w-12 text-amber-500" />
                      )}
                    </div>
                    <CardTitle className="text-2xl">{result.score}%</CardTitle>
                    <CardDescription>
                      {result.correctCount} von {result.totalWords} Wörtern richtig
                    </CardDescription>
                  </CardHeader>
                  <CardContent className="space-y-4">
                    <div>
                      <p className="text-sm font-medium mb-1">Erwartet:</p>
                      <p className="text-sm bg-muted p-3 rounded-lg">{selectedExercise.full_text}</p>
                    </div>
                    <div>
                      <p className="text-sm font-medium mb-1">Deine Antwort:</p>
                      <p className="text-sm bg-muted p-3 rounded-lg">{userText}</p>
                    </div>
                    {result.mistakes.length > 0 && (
                      <div>
                        <p className="text-sm font-medium mb-2 text-amber-500">Fehler ({result.mistakes.length}):</p>
                        <div className="space-y-1">
                          {result.mistakes.map((m, i) => (
                            <div key={i} className="text-sm flex gap-2">
                              <span className="text-destructive line-through">{m.original || '(fehlt)'}</span>
                              <span className="text-green-500">→ {m.expected}</span>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}
                    <div className="flex gap-2 pt-2">
                      <Button variant="outline" className="flex-1" onClick={resetExercise}>
                        <RefreshCw className="mr-2 h-4 w-4" /> Nochmal versuchen
                      </Button>
                      <Button className="flex-1" onClick={() => { setSelectedId(null); setResult(null); setUserText('') }}>
                        Nächste Übung
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              </motion.div>
            )}
          </div>
        ) : null}
      </div>
    </AppShell>
  )
}
