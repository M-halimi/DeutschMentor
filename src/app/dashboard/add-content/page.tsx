'use client'

import { useState, useRef } from 'react'
import { toast } from 'sonner'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Upload, Link, FileText, Headphones, CheckCircle, Loader2,
  AlertCircle, ArrowLeft, Globe, BookOpen, Sparkles
} from 'lucide-react'
import { useUploadAudioContent, useExtractListeningContent } from '@/hooks/use-progress'
import type { GermanLevel } from '@/types'

const LEVELS: GermanLevel[] = ['A1', 'A2', 'B1', 'B2', 'C1']

type AddMethod = 'upload' | 'external_url' | 'paste_transcript'

export default function AddContentPage() {
  const [method, setMethod] = useState<AddMethod>('upload')
  const [title, setTitle] = useState('')
  const [description, setDescription] = useState('')
  const [level, setLevel] = useState<GermanLevel>('A2')
  const [category, setCategory] = useState('')
  const [sourceLabel, setSourceLabel] = useState('')
  const [audioFile, setAudioFile] = useState<File | null>(null)
  const [externalUrl, setExternalUrl] = useState('')
  const [transcript, setTranscript] = useState('')
  const [result, setResult] = useState<{ lesson_id: string } | null>(null)
  const [extractionResult, setExtractionResult] = useState<Record<string, number> | null>(null)
  const [isProcessing, setIsProcessing] = useState(false)
  const fileInputRef = useRef<HTMLInputElement>(null)

  const uploadMutation = useUploadAudioContent()
  const extractMutation = useExtractListeningContent()

  async function handleSubmit() {
    if (!title) return

    setIsProcessing(true)
    setResult(null)
    setExtractionResult(null)

    try {
      const formData = new FormData()
      formData.set('title', title)
      formData.set('level', level)
      formData.set('description', description)
      formData.set('source_type', method)
      formData.set('category', category)
      if (sourceLabel) formData.set('source_label', sourceLabel)

      if (method === 'upload' && audioFile) formData.set('audio', audioFile)
      if (method === 'external_url' && externalUrl) formData.set('external_url', externalUrl)
      if (method === 'paste_transcript' && transcript) {
        formData.set('transcript', transcript)
        formData.set('audio_url', '')
      }

      const uploadRes = await uploadMutation.mutateAsync(formData)

      if (uploadRes.success && transcript) {
        const extractRes = await extractMutation.mutateAsync({
          lesson_id: uploadRes.lesson_id,
          transcript,
          level,
        })
        setExtractionResult(extractRes)
      }

      setResult(uploadRes)
      resetForm()
    } catch (err) {
      toast.error('Hochladen fehlgeschlagen. Bitte versuche es erneut.')
    } finally {
      setIsProcessing(false)
    }
  }

  function resetForm() {
    setTitle('')
    setDescription('')
    setAudioFile(null)
    setExternalUrl('')
    setTranscript('')
    setSourceLabel('')
    if (fileInputRef.current) fileInputRef.current.value = ''
  }

  function isValid() {
    if (!title || !level) return false
    if (method === 'upload' && !audioFile) return false
    if (method === 'external_url' && !externalUrl) return false
    if (method === 'paste_transcript' && !transcript) return false
    return true
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-emerald-500 to-teal-600 text-white shadow-sm">
            <Headphones className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Hörinhalt hinzufügen</h1>
            <p className="text-muted-foreground">Lade eigene deutsche Audiodateien hoch oder verbinde externe Lernmaterialien</p>
          </div>
        </div>

        <AnimatePresence mode="wait">
          {result ? (
            <motion.div key="result" initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="space-y-6">
              <Card className="border-emerald-200 dark:border-emerald-800">
                <CardContent className="p-8 text-center">
                  <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ type: 'spring' }}>
                    <div className="inline-flex h-16 w-16 items-center justify-center rounded-full bg-emerald-100 dark:bg-emerald-900/30 mb-4">
                      <CheckCircle className="h-8 w-8 text-emerald-500" />
                    </div>
                  </motion.div>
                  <h2 className="text-xl font-bold mb-1">Inhalt erfolgreich hinzugefügt!</h2>
                  <p className="text-muted-foreground mb-1">{title}</p>
                  {extractionResult && (
                    <div className="flex items-center justify-center gap-3 flex-wrap mt-3 text-sm text-muted-foreground">
                      <Badge variant="secondary">{extractionResult.vocabulary_count} Wörter</Badge>
                      <Badge variant="secondary">{extractionResult.phrases_count} Ausdrücke</Badge>
                      <Badge variant="secondary">{extractionResult.grammar_points_count} Grammatikpunkte</Badge>
                      <Badge variant="secondary">{extractionResult.exercises_count} Übungen</Badge>
                    </div>
                  )}
                  <div className="flex items-center justify-center gap-3 mt-6">
                    <Button variant="outline" onClick={() => { setResult(null); setExtractionResult(null) }}>
                      Weiteren hinzufügen
                    </Button>
                    <Button onClick={() => window.location.href = '/dashboard/hoeren'}>
                      Zu Hören gehen
                    </Button>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          ) : (
            <motion.div key="form" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-6 max-w-2xl">
              <Card>
                <CardHeader>
                  <CardTitle className="text-lg">Quelltyp</CardTitle>
                  <CardDescription>Wähle, wie du deine deutschen Audio-Inhalte hinzufügen möchtest</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="grid grid-cols-3 gap-3">
                    {[
                      { id: 'upload' as AddMethod, icon: Upload, label: 'Audio hochladen', desc: 'MP3-, WAV- oder M4A-Datei von deinem Gerät' },
                      { id: 'external_url' as AddMethod, icon: Globe, label: 'Externe URL', desc: 'Link zu einer Online-Audiodatei oder einem Podcast' },
                      { id: 'paste_transcript' as AddMethod, icon: FileText, label: 'Transkript einfügen', desc: 'Transkripttext einfügen, Audio per KI generieren' },
                    ].map(({ id, icon: Icon, label, desc }) => (
                      <button
                        key={id}
                        onClick={() => setMethod(id)}
                        className={`p-4 rounded-xl border-2 text-left transition-all ${
                          method === id
                            ? 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/20'
                            : 'border-muted hover:border-emerald-300 dark:hover:border-emerald-700'
                        }`}
                      >
                        <Icon className={`h-6 w-6 mb-2 ${method === id ? 'text-emerald-500' : 'text-muted-foreground'}`} />
                        <p className="font-medium text-sm mb-0.5">{label}</p>
                        <p className="text-xs text-muted-foreground">{desc}</p>
                      </button>
                    ))}
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardHeader>
                  <CardTitle className="text-lg">Inhaltsdetails</CardTitle>
                  <CardDescription>Beschreibe, worum es in diesem Audioinhalt geht</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="grid gap-4 sm:grid-cols-2">
                    <div className="space-y-2">
                      <label className="text-sm font-medium">Titel *</label>
                      <Input
                        placeholder="z. B. B1 TELC Hörpraxis"
                        value={title}
                        onChange={(e) => setTitle(e.target.value)}
                      />
                    </div>
                    <div className="space-y-2">
                      <label className="text-sm font-medium">CEFR-Niveau *</label>
                      <select
                        value={level}
                        onChange={(e) => setLevel(e.target.value as GermanLevel)}
                        className="w-full h-10 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring"
                      >
                        {LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
                      </select>
                    </div>
                  </div>

                  <div className="grid gap-4 sm:grid-cols-2">
                    <div className="space-y-2">
                      <label className="text-sm font-medium">Beschreibung</label>
                      <Input
                        placeholder="Kurze Beschreibung des Inhalts"
                        value={description}
                        onChange={(e) => setDescription(e.target.value)}
                      />
                    </div>
                    <div className="space-y-2">
                      <label className="text-sm font-medium">Kategorie / Thema</label>
                      <Input
                        placeholder="z. B. Alltag, Reisen, Arbeit, Nachrichten"
                        value={category}
                        onChange={(e) => setCategory(e.target.value)}
                      />
                    </div>
                  </div>

                  <div className="space-y-2">
                    <label className="text-sm font-medium">Quellbezeichnung (optional)</label>
                    <Input
                      placeholder="z. B. 'Menschen B1 Kursbuch' oder 'Goethe B2 Prüfung'"
                      value={sourceLabel}
                      onChange={(e) => setSourceLabel(e.target.value)}
                    />
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardHeader>
                  <CardTitle className="text-lg">
                    {method === 'upload' ? 'Audiodatei hochladen' : method === 'external_url' ? 'Externe URL verbinden' : 'Transkript einfügen'}
                  </CardTitle>
                  <CardDescription>
                    {method === 'upload' && 'Wähle eine MP3-, WAV- oder M4A-Datei von deinem Gerät'}
                    {method === 'external_url' && 'Füge einen direkten Link zu einer Audiodatei oder Podcast-Episode ein'}
                    {method === 'paste_transcript' && 'Füge das vollständige Transkript ein – wir generieren Übungen und extrahieren Lerninhalte'}
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <AnimatePresence mode="wait">
                    <motion.div
                      key={method}
                      initial={{ opacity: 0, y: 8 }}
                      animate={{ opacity: 1, y: 0 }}
                      exit={{ opacity: 0, y: -8 }}
                    >
                      {method === 'upload' && (
                        <div className="space-y-4">
                          <div
                            onClick={() => fileInputRef.current?.click()}
                            className="border-2 border-dashed rounded-xl p-10 text-center cursor-pointer hover:border-emerald-400 hover:bg-emerald-50/50 dark:hover:bg-emerald-950/10 transition-all"
                          >
                            <Upload className="h-10 w-10 mx-auto mb-3 text-muted-foreground" />
                            <p className="font-medium mb-1">
                              {audioFile ? audioFile.name : 'Klicken, um eine Audiodatei auszuwählen'}
                            </p>
                            <p className="text-sm text-muted-foreground">
                              {audioFile
                                ? `${(audioFile.size / 1024 / 1024).toFixed(1)} MB`
                                : 'MP3, WAV, M4A — Max. 50 MB'}
                            </p>
                          </div>
                          <input
                            ref={fileInputRef}
                            type="file"
                            accept="audio/*"
                            className="hidden"
                            onChange={(e) => setAudioFile(e.target.files?.[0] ?? null)}
                          />
                          {audioFile && (
                            <Button variant="outline" size="sm" onClick={() => setAudioFile(null)}>
                              Datei entfernen
                            </Button>
                          )}
                        </div>
                      )}

                      {method === 'external_url' && (
                        <div className="space-y-3">
                          <Input
                            placeholder="https://example.com/audio/german-podcast.mp3"
                            value={externalUrl}
                            onChange={(e) => setExternalUrl(e.target.value)}
                          />
                          <p className="text-xs text-muted-foreground flex items-center gap-1">
                            <Link className="h-3 w-3" />
                            Füge eine direkte Audio-URL ein. Das Transkript kann später hinzugefügt werden.
                          </p>
                        </div>
                      )}

                      {method === 'paste_transcript' && (
                        <div className="space-y-3">
                          <textarea
                            placeholder="Füge das deutsche Transkript hier ein...

Beispiel:
Person A: Hallo, wie geht es dir?
Person B: Mir geht es gut, danke! Und dir?
Person A: Auch gut. Hast du schon die Hausaufgaben gemacht?
Person B: Ja, aber sie waren heute sehr schwer..."
                            value={transcript}
                            onChange={(e) => setTranscript(e.target.value)}
                            className="w-full min-h-[250px] rounded-lg border border-input bg-transparent px-3 py-2 text-sm resize-y focus-visible:border-ring focus-visible:ring-3 focus-visible:ring-ring/50 outline-none font-mono leading-relaxed"
                          />
                          <div className="flex items-center gap-2 text-xs text-muted-foreground">
                            <Sparkles className="h-3 w-3" />
                            Das System extrahiert automatisch Vokabeln, Grammatik, Ausdrücke und generiert Übungen aus dem Transkript
                          </div>
                        </div>
                      )}
                    </motion.div>
                  </AnimatePresence>
                </CardContent>
              </Card>

              <div className="flex items-center justify-end gap-3">
                <Button
                  variant="outline"
                  onClick={() => window.location.href = '/dashboard/hoeren'}
                >
                  Abbrechen
                </Button>
                <Button
                  onClick={handleSubmit}
                  disabled={!isValid() || isProcessing}
                  className="bg-emerald-600 hover:bg-emerald-700 min-w-[160px]"
                >
                  {isProcessing ? (
                    <span className="flex items-center gap-2">
                      <Loader2 className="h-4 w-4 animate-spin" />
                      Wird verarbeitet…
                    </span>
                  ) : (
                    <span className="flex items-center gap-2">
                      <Sparkles className="h-4 w-4" />
                      Inhalt hinzufügen
                    </span>
                  )}
                </Button>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {extractionResult && !result && (
          <Card>
            <CardContent className="p-4 text-sm text-muted-foreground">
              <AlertCircle className="h-4 w-4 inline mr-1" />
              Vorheriger Inhalt verarbeitet: {extractionResult.vocabulary_count} Wörter,{' '}
              {extractionResult.phrases_count} Ausdrücke, {extractionResult.grammar_points_count} Grammatikpunkte,{' '}
              {extractionResult.exercises_count} Übungen extrahiert
            </CardContent>
          </Card>
        )}
      </div>
    </AppShell>
  )
}
