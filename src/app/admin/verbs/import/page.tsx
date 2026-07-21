'use client'

import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from '@/components/ui/select'
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from '@/components/ui/table'
import { useAdminStore } from '@/stores/admin-store'
import { CEFR_LEVELS } from '@/lib/verbs/admin-types'
import type { ImportProgressStep } from '@/lib/verbs/admin-types'
import {
  Download, ListChecks, History, RefreshCw, AlertCircle, CheckCircle2, Loader2,
  Eye, FileWarning, XCircle, ChevronLeft, Search, RotateCcw, Filter,
} from 'lucide-react'
import { toast } from 'sonner'

interface ImportSource {
  id: string
  name: string
  website: string
  description: string
  adapter_name: string
}

interface BrowseEntry {
  infinitive: string
  auxiliary: string | null
  verb_type: string | null
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  partizip_2: string | null
  cefr_level: string | null
  translation: string | null
  confidence?: number
  already_imported: boolean
}

interface BrowseResult {
  entries: BrowseEntry[]
  total: number
  source_name: string
  cefr_level: string | null
  already_imported: string[]
}

interface ImportResult {
  source_name: string
  cefr_level: string | null
  total_fetched: number
  total_imported: number
  total_errors: number
  total_warnings: number
  total_duplicates?: number
  total_failed?: number
  total_valid?: number
  errors: string[]
  warnings: string[]
  log_id: string
}

interface ImportLog {
  id: string
  source_name: string
  cefr_level: string | null
  total_fetched: number
  total_imported: number
  total_approved: number
  total_rejected: number
  status: string
  error_message: string | null
  started_at: string
}

const PROGRESS_STEPS: ImportProgressStep[] = [
  { step: 'connecting', message: 'Connecting to source...' },
  { step: 'fetching', message: 'Fetching verb data...' },
  { step: 'parsing', message: 'Parsing verb entries...' },
  { step: 'validating', message: 'Validating verb data...' },
  { step: 'saving', message: 'Saving candidates...' },
]

const PAGE_SIZE = 25

type PageMode = 'browser' | 'importing' | 'result'

const VERB_TYPES = ['regular', 'irregular', 'mixed', 'separable', 'inseparable', 'reflexive', 'modal', 'auxiliary'] as const

export default function VerbImportPage() {
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [sourceName, setSourceName] = useState('')
  const [sources, setSources] = useState<ImportSource[]>([])

  const [mode, setMode] = useState<PageMode>('browser')
  const [browseLoading, setBrowseLoading] = useState(false)
  const [browseResult, setBrowseResult] = useState<BrowseResult | null>(null)
  const [selectedInfinitives, setSelectedInfinitives] = useState<Set<string>>(new Set())
  const [importing, setImporting] = useState(false)
  const [lastResult, setLastResult] = useState<ImportResult | null>(null)
  const [logs, setLogs] = useState<ImportLog[]>([])
  const [loadingLogs, setLoadingLogs] = useState(true)

  const [currentProgressStep, setCurrentProgressStep] = useState(0)
  const [progressDone, setProgressDone] = useState(false)
  const progressTimer = useRef<ReturnType<typeof setInterval> | null>(null)

  const [searchQuery, setSearchQuery] = useState('')
  const [filterCefr, setFilterCefr] = useState('')
  const [filterReflexive, setFilterReflexive] = useState('')
  const [filterSeparable, setFilterSeparable] = useState('')
  const [filterVerbType, setFilterVerbType] = useState('')
  const [filterAlreadyImported, setFilterAlreadyImported] = useState('')
  const [page, setPage] = useState(0)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchSources()
    fetchLogs()
  }, [loaded, isAdminUser, router])

  useEffect(() => {
    return () => {
      if (progressTimer.current) clearInterval(progressTimer.current)
    }
  }, [])

  useEffect(() => {
    setPage(0)
  }, [searchQuery, filterCefr, filterReflexive, filterSeparable, filterVerbType, filterAlreadyImported])

  async function fetchSources() {
    try {
      const res = await fetch('/api/admin/verbs/import/sources')
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setSources(json.data || [])
      if (json.data?.length > 0 && !sourceName) setSourceName(json.data[0].name)
    } catch { toast.error('Failed to load sources') }
  }

  async function fetchLogs() {
    try {
      const res = await fetch('/api/admin/verbs/import/logs')
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setLogs(json.data || [])
    } catch { /* ignore */ }
    finally { setLoadingLogs(false) }
  }

  async function handleBrowse() {
    if (!sourceName) {
      toast.error('Please select a source')
      return
    }
    setBrowseLoading(true)
    setBrowseResult(null)
    setSelectedInfinitives(new Set())
    setSearchQuery('')
    setFilterCefr('')
    setFilterReflexive('')
    setFilterSeparable('')
    setFilterVerbType('')
    setFilterAlreadyImported('')
    setPage(0)
    try {
      const res = await fetch('/api/admin/verbs/import/preview', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ source: sourceName }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setBrowseResult({
        entries: (json.data?.entries || []).map((e: any) => ({
          ...e,
          already_imported: (json.data?.already_imported || []).includes(e.infinitive),
        })),
        total: json.data?.total || 0,
        source_name: json.data?.source_name || '',
        cefr_level: json.data?.cefr_level || null,
        already_imported: json.data?.already_imported || [],
      })
      const entries = json.data?.entries || []
      setSelectedInfinitives(new Set(entries.map((e: any) => e.infinitive)))
      toast.success(`Loaded ${entries.length} verbs from ${sourceName}`)
    } catch {
      toast.error('Failed to browse source')
    } finally {
      setBrowseLoading(false)
    }
  }

  const filteredEntries = useMemo(() => {
    if (!browseResult) return []
    let entries = browseResult.entries

    if (searchQuery.trim()) {
      const q = searchQuery.trim().toLowerCase()
      entries = entries.filter(e => e.infinitive.toLowerCase().includes(q))
    }
    if (filterCefr) {
      entries = entries.filter(e => e.cefr_level === filterCefr)
    }
    if (filterReflexive === 'yes') {
      entries = entries.filter(e => e.is_reflexive)
    } else if (filterReflexive === 'no') {
      entries = entries.filter(e => !e.is_reflexive)
    }
    if (filterSeparable === 'yes') {
      entries = entries.filter(e => e.separable_prefix && e.separable_prefix !== '')
    } else if (filterSeparable === 'no') {
      entries = entries.filter(e => !e.separable_prefix || e.separable_prefix === '')
    }
    if (filterVerbType) {
      entries = entries.filter(e => e.verb_type === filterVerbType)
    }
    if (filterAlreadyImported === 'yes') {
      entries = entries.filter(e => e.already_imported)
    } else if (filterAlreadyImported === 'no') {
      entries = entries.filter(e => !e.already_imported)
    }

    return entries
  }, [browseResult, searchQuery, filterCefr, filterReflexive, filterSeparable, filterVerbType, filterAlreadyImported])

  const pageCount = Math.max(1, Math.ceil(filteredEntries.length / PAGE_SIZE))
  const safePage = Math.min(page, pageCount - 1)
  const pageEntries = filteredEntries.slice(safePage * PAGE_SIZE, (safePage + 1) * PAGE_SIZE)

  function toggleSelect(infinitive: string) {
    setSelectedInfinitives(prev => {
      const next = new Set(prev)
      if (next.has(infinitive)) next.delete(infinitive)
      else next.add(infinitive)
      return next
    })
  }

  function toggleSelectAll() {
    if (selectedInfinitives.size === filteredEntries.length) {
      setSelectedInfinitives(new Set())
    } else {
      setSelectedInfinitives(new Set(filteredEntries.map(e => e.infinitive)))
    }
  }

  function clearSelection() {
    setSelectedInfinitives(new Set())
  }

  function startProgress() {
    setMode('importing')
    setCurrentProgressStep(0)
    setProgressDone(false)
    progressTimer.current = setInterval(() => {
      setCurrentProgressStep(prev => {
        if (prev < PROGRESS_STEPS.length - 1) return prev + 1
        return prev
      })
    }, 800)
  }

  function stopProgress() {
    if (progressTimer.current) {
      clearInterval(progressTimer.current)
      progressTimer.current = null
    }
    setCurrentProgressStep(PROGRESS_STEPS.length - 1)
    setProgressDone(true)
  }

  async function handleImport() {
    if (selectedInfinitives.size === 0) {
      toast.error('No verbs selected for import')
      return
    }
    setImporting(true)
    startProgress()
    try {
      const res = await fetch('/api/admin/verbs/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          source: sourceName,
          selectedInfinitives: [...selectedInfinitives],
        }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); setMode('browser'); return }
      stopProgress()
      setTimeout(() => {
        setLastResult(json.data)
        setMode('result')
        setImporting(false)
        toast.success(`Imported ${json.data.total_imported} verbs`)
        fetchLogs()
      }, 400)
    } catch {
      stopProgress()
      toast.error('Import failed')
      setImporting(false)
      setMode('browser')
    }
  }

  function resetBrowser() {
    setMode('browser')
    setBrowseResult(null)
    setSelectedInfinitives(new Set())
    setLastResult(null)
    setSearchQuery('')
    setFilterCefr('')
    setFilterReflexive('')
    setFilterSeparable('')
    setFilterVerbType('')
    setFilterAlreadyImported('')
    setPage(0)
  }

  const confidenceBadge = (c: number) => {
    if (c >= 90) return 'bg-emerald-500/10 text-emerald-600'
    if (c >= 70) return 'bg-amber-500/10 text-amber-600'
    return 'bg-red-500/10 text-red-600'
  }

  const progressStepIcon = (idx: number) => {
    if (progressDone && idx === PROGRESS_STEPS.length - 1) return <CheckCircle2 className="h-4 w-4 text-emerald-500" />
    if (idx < currentProgressStep) return <CheckCircle2 className="h-4 w-4 text-emerald-500" />
    if (idx === currentProgressStep) return <Loader2 className="h-4 w-4 text-blue-500 animate-spin" />
    return <div className="h-2 w-2 rounded-full bg-muted-foreground/30" />
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Verb Import</h1>
            <p className="text-sm text-muted-foreground">
              {mode === 'browser' && !browseResult && 'Browse and import verbs from trusted sources'}
              {mode === 'browser' && browseResult && `Showing ${filteredEntries.length} of ${browseResult.total} verbs`}
              {mode === 'importing' && 'Importing verbs...'}
              {mode === 'result' && 'Import complete'}
            </p>
          </div>
          <div className="flex gap-2">
            {mode !== 'browser' && (
              <Button variant="outline" size="sm" onClick={resetBrowser}>
                <ChevronLeft className="h-4 w-4 mr-2" />
                Back
              </Button>
            )}
            <Button
              variant="outline" size="sm"
              onClick={() => router.push('/admin/verbs/import/review')}
            >
              <ListChecks className="h-4 w-4 mr-2" />
              Review Candidates
            </Button>
            <Button variant="outline" size="sm" onClick={() => router.push('/admin/verbs')}>
              <RefreshCw className="h-4 w-4 mr-2" />
              Verbs
            </Button>
          </div>
        </div>

        {/* Source Selector + Fetch Button */}
        {mode === 'browser' && (
          <Card>
            <CardHeader>
              <CardTitle className="text-lg flex items-center gap-2">
                <Eye className="h-5 w-5 text-blue-500" />
                Source Browser
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-4 items-end">
                <div className="space-y-1.5">
                  <label className="text-sm font-medium">Source</label>
                  <Select value={sourceName} onValueChange={(v) => { setSourceName(v || ''); setBrowseResult(null); setSelectedInfinitives(new Set()) }}>
                    <SelectTrigger className="w-[200px]">
                      <SelectValue placeholder="Select source" />
                    </SelectTrigger>
                    <SelectContent>
                      {sources.map(s => (
                        <SelectItem key={s.id} value={s.name}>{s.name}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>

                <Button onClick={handleBrowse} disabled={browseLoading || !sourceName}>
                  {browseLoading ? (
                    <><Loader2 className="h-4 w-4 mr-2 animate-spin" /> Loading...</>
                  ) : (
                    <><Download className="h-4 w-4 mr-2" /> Fetch Verbs</>
                  )}
                </Button>

                {browseResult && (
                  <span className="text-sm text-muted-foreground self-center">
                    {browseResult.total} verbs loaded
                  </span>
                )}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Search + Filters */}
        {mode === 'browser' && browseResult && (
          <Card>
            <CardContent className="p-4 space-y-3">
              <div className="flex flex-wrap gap-3 items-center">
                <div className="relative flex-1 min-w-[200px] max-w-xs">
                  <Search className="h-4 w-4 absolute left-2.5 top-2.5 text-muted-foreground" />
                  <Input
                    placeholder="Search by infinitive..."
                    className="pl-8 h-9 text-sm"
                    value={searchQuery}
                    onChange={e => setSearchQuery(e.target.value)}
                  />
                </div>
                <div className="space-y-0.5">
                  <label className="text-xs text-muted-foreground">CEFR</label>
                  <Select value={filterCefr} onValueChange={v => setFilterCefr(v || '')}>
                    <SelectTrigger className="w-[100px] h-9"><SelectValue placeholder="All" /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="">All</SelectItem>
                      {CEFR_LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
                <div className="space-y-0.5">
                  <label className="text-xs text-muted-foreground">Reflexive</label>
                  <Select value={filterReflexive} onValueChange={v => setFilterReflexive(v || '')}>
                    <SelectTrigger className="w-[110px] h-9"><SelectValue placeholder="All" /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="">All</SelectItem>
                      <SelectItem value="yes">Reflexive</SelectItem>
                      <SelectItem value="no">Not reflexive</SelectItem>
                    </SelectContent>
                  </Select>
                </div>
                <div className="space-y-0.5">
                  <label className="text-xs text-muted-foreground">Separable</label>
                  <Select value={filterSeparable} onValueChange={v => setFilterSeparable(v || '')}>
                    <SelectTrigger className="w-[110px] h-9"><SelectValue placeholder="All" /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="">All</SelectItem>
                      <SelectItem value="yes">Separable</SelectItem>
                      <SelectItem value="no">Not separable</SelectItem>
                    </SelectContent>
                  </Select>
                </div>
                <div className="space-y-0.5">
                  <label className="text-xs text-muted-foreground">Verb Type</label>
                  <Select value={filterVerbType} onValueChange={v => setFilterVerbType(v || '')}>
                    <SelectTrigger className="w-[130px] h-9"><SelectValue placeholder="All" /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="">All</SelectItem>
                      {VERB_TYPES.map(t => <SelectItem key={t} value={t}>{t}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
                <div className="space-y-0.5">
                  <label className="text-xs text-muted-foreground">Imported</label>
                  <Select value={filterAlreadyImported} onValueChange={v => setFilterAlreadyImported(v || '')}>
                    <SelectTrigger className="w-[120px] h-9"><SelectValue placeholder="All" /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="">All</SelectItem>
                      <SelectItem value="yes">Already imported</SelectItem>
                      <SelectItem value="no">Not imported</SelectItem>
                    </SelectContent>
                  </Select>
                </div>
                <Button variant="ghost" size="sm" className="h-9 mt-4" onClick={() => { setSearchQuery(''); setFilterCefr(''); setFilterReflexive(''); setFilterSeparable(''); setFilterVerbType(''); setFilterAlreadyImported('') }}>
                  <RotateCcw className="h-3 w-3 mr-1" /> Reset
                </Button>
              </div>
            </CardContent>
          </Card>
        )}

        {/* Verb Table */}
        {mode === 'browser' && browseResult && (
          <Card>
            <CardHeader className="flex flex-row items-center justify-between pb-3">
              <CardTitle className="text-lg flex items-center gap-2 text-sm font-medium">
                <span>{filteredEntries.length} verbs match filters</span>
                <span className="text-muted-foreground font-normal">({selectedInfinitives.size} selected)</span>
              </CardTitle>
              <div className="flex gap-2 items-center">
                {selectedInfinitives.size > 0 && (
                  <>
                    <Button variant="outline" size="sm" onClick={clearSelection}>
                      Clear
                    </Button>
                    <Button size="sm" onClick={handleImport} disabled={importing}>
                      {importing ? (
                        <><Loader2 className="h-4 w-4 mr-2 animate-spin" /> Importing...</>
                      ) : (
                        <><Download className="h-4 w-4 mr-2" /> Import Selected ({selectedInfinitives.size})</>
                      )}
                    </Button>
                  </>
                )}
              </div>
            </CardHeader>
            <CardContent className="p-0">
              {filteredEntries.length === 0 ? (
                <div className="text-center py-12 text-muted-foreground">
                  No verbs match the current filters.
                </div>
              ) : (
                <>
                  <Table>
                    <TableHeader>
                      <TableRow>
                        <TableHead className="w-10">
                          <input
                            type="checkbox"
                            className="h-4 w-4 rounded border-gray-300"
                            checked={filteredEntries.length > 0 && selectedInfinitives.size === filteredEntries.length}
                            onChange={toggleSelectAll}
                          />
                        </TableHead>
                        <TableHead>Infinitive</TableHead>
                        <TableHead>Translation</TableHead>
                        <TableHead>CEFR</TableHead>
                        <TableHead>Type</TableHead>
                        <TableHead>Reflexive</TableHead>
                        <TableHead>Separable</TableHead>
                        <TableHead>Source</TableHead>
                        <TableHead>Status</TableHead>
                      </TableRow>
                    </TableHeader>
                    <TableBody>
                      {pageEntries.map(entry => {
                        const isSelected = selectedInfinitives.has(entry.infinitive)
                        return (
                          <TableRow key={entry.infinitive} className={`group ${isSelected ? '' : 'opacity-60'} ${entry.already_imported ? 'bg-muted/20' : ''}`}>
                            <TableCell>
                              <input
                                type="checkbox"
                                className="h-4 w-4 rounded border-gray-300"
                                checked={isSelected}
                                onChange={() => toggleSelect(entry.infinitive)}
                              />
                            </TableCell>
                            <TableCell className="font-medium">
                              {entry.infinitive}
                            </TableCell>
                            <TableCell className="text-sm text-muted-foreground">
                              {entry.translation || '-'}
                            </TableCell>
                            <TableCell>
                              {entry.cefr_level
                                ? <Badge variant="outline" className="text-xs">{entry.cefr_level}</Badge>
                                : <span className="text-xs text-muted-foreground">-</span>
                              }
                            </TableCell>
                            <TableCell className="text-sm">{entry.verb_type || '-'}</TableCell>
                            <TableCell className="text-sm">
                              {entry.is_reflexive
                                ? <Badge variant="secondary" className="text-xs">{entry.reflexive_pronoun || 'sich'}</Badge>
                                : '-'
                              }
                            </TableCell>
                            <TableCell className="text-sm font-mono">
                              {entry.separable_prefix
                                ? <Badge variant="secondary" className="text-xs">{entry.separable_prefix}</Badge>
                                : '-'
                              }
                            </TableCell>
                            <TableCell className="text-xs text-muted-foreground">
                              {browseResult.source_name}
                            </TableCell>
                            <TableCell>
                              {entry.already_imported ? (
                                <Badge variant="outline" className="text-xs bg-blue-500/10 text-blue-600 border-blue-500/30">
                                  Imported
                                </Badge>
                              ) : (
                                <Badge variant="outline" className="text-xs bg-emerald-500/10 text-emerald-600 border-emerald-500/30">
                                  New
                                </Badge>
                              )}
                            </TableCell>
                          </TableRow>
                        )
                      })}
                    </TableBody>
                  </Table>

                  {/* Pagination */}
                  {pageCount > 1 && (
                    <div className="flex items-center justify-between px-4 py-3 border-t">
                      <span className="text-xs text-muted-foreground">
                        Page {safePage + 1} of {pageCount}
                      </span>
                      <div className="flex gap-1">
                        <Button
                          variant="outline" size="sm"
                          disabled={safePage <= 0}
                          onClick={() => setPage(p => Math.max(0, p - 1))}
                        >
                          Previous
                        </Button>
                        <Button
                          variant="outline" size="sm"
                          disabled={safePage >= pageCount - 1}
                          onClick={() => setPage(p => Math.min(pageCount - 1, p + 1))}
                        >
                          Next
                        </Button>
                      </div>
                    </div>
                  )}
                </>
              )}
            </CardContent>
          </Card>
        )}

        {/* Import Progress */}
        {mode === 'importing' && (
          <Card>
            <CardContent className="p-6">
              <div className="space-y-4">
                <h3 className="text-sm font-medium flex items-center gap-2">
                  <Loader2 className="h-4 w-4 animate-spin text-blue-500" />
                  Import in progress...
                </h3>
                <div className="space-y-3">
                  {PROGRESS_STEPS.map((step, idx) => (
                    <div key={step.step} className="flex items-center gap-3">
                      {progressStepIcon(idx)}
                      <span className={`text-sm ${idx <= currentProgressStep ? 'text-foreground' : 'text-muted-foreground/50'}`}>
                        {step.message}
                      </span>
                    </div>
                  ))}
                </div>
              </div>
            </CardContent>
          </Card>
        )}

        {/* Detailed Result */}
        {mode === 'result' && lastResult && (
          <Card className="border-emerald-500/30">
            <CardContent className="p-4">
              <div className="flex items-center gap-3 mb-4">
                <CheckCircle2 className="h-5 w-5 text-emerald-500" />
                <p className="text-sm font-medium">
                  Import from <strong>{lastResult.source_name}</strong>
                  {lastResult.cefr_level && <> for level <strong>{lastResult.cefr_level}</strong></>}
                </p>
              </div>

              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm mb-4">
                <div>
                  <span className="text-muted-foreground">Fetched</span>
                  <p className="text-lg font-semibold">{lastResult.total_fetched}</p>
                </div>
                <div>
                  <span className="text-muted-foreground">Imported</span>
                  <p className="text-lg font-semibold text-emerald-600">{lastResult.total_imported}</p>
                </div>
                <div>
                  <span className="text-muted-foreground">Warnings</span>
                  <p className={`text-lg font-semibold ${(lastResult.total_warnings ?? 0) > 0 ? 'text-amber-500' : ''}`}>
                    {lastResult.total_warnings ?? 0}
                  </p>
                </div>
                <div>
                  <span className="text-muted-foreground">Duplicates</span>
                  <p className={`text-lg font-semibold ${(lastResult.total_duplicates ?? 0) > 0 ? 'text-amber-500' : ''}`}>
                    {lastResult.total_duplicates ?? 0}
                  </p>
                </div>
                <div>
                  <span className="text-muted-foreground">Failed</span>
                  <p className={`text-lg font-semibold ${(lastResult.total_failed ?? 0) > 0 ? 'text-red-500' : ''}`}>
                    {lastResult.total_failed ?? 0}
                  </p>
                </div>
                <div>
                  <span className="text-muted-foreground">Errors</span>
                  <p className={`text-lg font-semibold ${lastResult.errors.length > 0 ? 'text-red-500' : ''}`}>
                    {lastResult.errors.length}
                  </p>
                </div>
                <div className="flex items-end gap-2">
                  <Button variant="outline" size="sm" onClick={() => router.push('/admin/verbs/import/review')}>
                    <ListChecks className="h-4 w-4 mr-2" /> Review
                  </Button>
                  <Button variant="outline" size="sm" onClick={resetBrowser}>
                    <Download className="h-4 w-4 mr-2" /> New Import
                  </Button>
                </div>
              </div>

              {lastResult.warnings.length > 0 && (
                <div className="mt-3 text-xs text-amber-600 space-y-1 bg-amber-500/5 rounded-lg p-3">
                  <p className="font-medium flex items-center gap-1"><FileWarning className="h-3 w-3" /> Warnings</p>
                  {lastResult.warnings.map((w, i) => (
                    <p key={i} className="flex items-center gap-1 ml-4">• {w}</p>
                  ))}
                </div>
              )}

              {lastResult.errors.length > 0 && (
                <div className="mt-2 text-xs text-red-500 space-y-1 bg-red-500/5 rounded-lg p-3">
                  <p className="font-medium flex items-center gap-1"><XCircle className="h-3 w-3" /> Errors</p>
                  {lastResult.errors.map((e, i) => (
                    <p key={i} className="flex items-center gap-1 ml-4">• {e}</p>
                  ))}
                </div>
              )}
            </CardContent>
          </Card>
        )}

        {/* Import History */}
        <Card>
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <History className="h-5 w-5 text-purple-500" />
              Import History
            </CardTitle>
          </CardHeader>
          <CardContent>
            {loadingLogs ? (
              <div className="text-center py-8 text-muted-foreground">Loading...</div>
            ) : logs.length === 0 ? (
              <div className="text-center py-8 text-muted-foreground">No imports yet</div>
            ) : (
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Date</TableHead>
                    <TableHead>Source</TableHead>
                    <TableHead>CEFR</TableHead>
                    <TableHead>Fetched</TableHead>
                    <TableHead>Imported</TableHead>
                    <TableHead>Approved</TableHead>
                    <TableHead>Rejected</TableHead>
                    <TableHead>Status</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {logs.map(log => (
                    <TableRow key={log.id}>
                      <TableCell className="text-xs text-muted-foreground">
                        {new Date(log.started_at).toLocaleDateString()}
                      </TableCell>
                      <TableCell className="font-medium">{log.source_name}</TableCell>
                      <TableCell><Badge variant="outline" className="text-xs">{log.cefr_level || 'All'}</Badge></TableCell>
                      <TableCell>{log.total_fetched}</TableCell>
                      <TableCell>{log.total_imported}</TableCell>
                      <TableCell>{log.total_approved}</TableCell>
                      <TableCell>{log.total_rejected}</TableCell>
                      <TableCell>
                        <Badge variant="outline" className={
                          log.status === 'completed' ? 'bg-emerald-500/10 text-emerald-600' :
                          log.status === 'failed' ? 'bg-red-500/10 text-red-600' :
                          'bg-amber-500/10 text-amber-600'
                        }>
                          {log.status}
                        </Badge>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
