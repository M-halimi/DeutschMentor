'use client'

import { useEffect, useState, useCallback } from 'react'
import { useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from '@/components/ui/select'
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from '@/components/ui/table'
import {
  DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { useAdminStore } from '@/stores/admin-store'
import { AuditBadge, getAuditHref } from '@/components/verbs/audit-badge'
import { CEFR_LEVELS, VERB_TYPES, AUXILIARIES, VERB_TYPE_LABELS, FREQUENCY_LABELS, AUXILIARY_LABELS } from '@/lib/verbs/admin-types'
import type { VerbListItem } from '@/lib/verbs/admin-types'
import {
  Search, Plus, MoreHorizontal, Eye, Edit, ChevronLeft, ChevronRight,
} from 'lucide-react'
import { toast } from 'sonner'

export default function VerbsPage() {
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [verbs, setVerbs] = useState<VerbListItem[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [search, setSearch] = useState('')
  const [cefrLevel, setCefrLevel] = useState('')
  const [verbType, setVerbType] = useState('')
  const [auxiliary, setAuxiliary] = useState('')
  const [auditStatus, setAuditStatus] = useState('')
  const [sortBy, setSortBy] = useState('infinitive')
  const [sortOrder, setSortOrder] = useState<'asc' | 'desc'>('asc')
  const [loading, setLoading] = useState(true)
  const perPage = 50

  const fetchVerbs = useCallback(async () => {
    setLoading(true)
    const params = new URLSearchParams()
    params.set('page', String(page))
    params.set('per_page', String(perPage))
    if (search) params.set('search', search)
    if (cefrLevel) params.set('cefr_level', cefrLevel)
    if (verbType) params.set('verb_type', verbType)
    if (auxiliary) params.set('auxiliary', auxiliary)
    if (auditStatus) params.set('audit_status', auditStatus)
    params.set('sort_by', sortBy)
    params.set('sort_order', sortOrder)

    try {
      const res = await fetch(`/api/admin/verbs?${params}`)
      const result = await res.json()
      if (result.error) { toast.error(result.error); return }
      setVerbs(result.data || [])
      setTotal(result.total || 0)
    } catch {
      toast.error('Failed to load verbs')
    } finally {
      setLoading(false)
    }
  }, [page, search, cefrLevel, verbType, auxiliary, auditStatus, sortBy, sortOrder])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchVerbs()
  }, [loaded, isAdminUser, fetchVerbs, router])

  const toggleSort = (col: string) => {
    if (sortBy === col) {
      setSortOrder(o => o === 'asc' ? 'desc' : 'asc')
    } else {
      setSortBy(col)
      setSortOrder('asc')
    }
    setPage(1)
  }

  const SortIcon = ({ col }: { col: string }) => {
    if (sortBy !== col) return null
    return <span className="ml-1">{sortOrder === 'asc' ? '↑' : '↓'}</span>
  }

  const totalPages = Math.ceil(total / perPage)
  const pageWindow = (() => {
    const pages: number[] = []
    const start = Math.max(1, page - 2)
    const end = Math.min(totalPages, page + 2)
    for (let i = start; i <= end; i++) pages.push(i)
    return pages
  })()

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold tracking-tight">German Verbs</h1>
            <p className="text-sm text-muted-foreground">Manage all {total} verbs in the database</p>
          </div>
          <Button onClick={() => router.push('/admin/verbs/new')}>
            <Plus className="h-4 w-4 mr-2" />
            New Verb
          </Button>
        </div>

        <div className="flex flex-wrap gap-3 items-end">
          <div className="relative flex-1 min-w-[200px]">
            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
            <Input
              placeholder="Search verbs..."
              value={search}
              onChange={e => { setSearch(e.target.value); setPage(1) }}
              className="pl-8"
            />
          </div>
          <Select value={cefrLevel || null} onValueChange={v => { setCefrLevel(v || ''); setPage(1) }}>
            <SelectTrigger className="w-[110px]"><SelectValue placeholder="CEFR" /></SelectTrigger>
            <SelectContent>
              {CEFR_LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={verbType || null} onValueChange={v => { setVerbType(v || ''); setPage(1) }}>
            <SelectTrigger className="w-[140px]"><SelectValue placeholder="Type" /></SelectTrigger>
            <SelectContent>
              {VERB_TYPES.map(t => <SelectItem key={t} value={t}>{VERB_TYPE_LABELS[t] || t}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={auxiliary || null} onValueChange={v => { setAuxiliary(v || ''); setPage(1) }}>
            <SelectTrigger className="w-[120px]"><SelectValue placeholder="Auxiliary" /></SelectTrigger>
            <SelectContent>
              {AUXILIARIES.map(a => <SelectItem key={a} value={a}>{AUXILIARY_LABELS[a] || a}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={auditStatus || null} onValueChange={v => { setAuditStatus(v || ''); setPage(1) }}>
            <SelectTrigger className="w-[140px]"><SelectValue placeholder="Audit Status" /></SelectTrigger>
            <SelectContent>
              <SelectItem value="error">Has Errors</SelectItem>
              <SelectItem value="warning">Has Warnings</SelectItem>
              <SelectItem value="clean">Clean</SelectItem>
            </SelectContent>
          </Select>
        </div>

        <div className="rounded-md border">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead className="w-16">ID</TableHead>
                <TableHead className="cursor-pointer select-none" onClick={() => toggleSort('infinitive')}>
                  Verb <SortIcon col="infinitive" />
                </TableHead>
                <TableHead className="cursor-pointer select-none" onClick={() => toggleSort('cefr_level')}>
                  Level <SortIcon col="cefr_level" />
                </TableHead>
                <TableHead className="cursor-pointer select-none" onClick={() => toggleSort('verb_type')}>
                  Type <SortIcon col="verb_type" />
                </TableHead>
                <TableHead className="cursor-pointer select-none" onClick={() => toggleSort('frequency')}>
                  Frequency <SortIcon col="frequency" />
                </TableHead>
                <TableHead className="cursor-pointer select-none" onClick={() => toggleSort('auxiliary')}>
                  Aux <SortIcon col="auxiliary" />
                </TableHead>
                <TableHead>Partizip II</TableHead>
                <TableHead>Reflexive</TableHead>
                <TableHead>Prefix</TableHead>
                <TableHead>Audit</TableHead>
                <TableHead className="w-20">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {loading ? (
                <TableRow>
                  <TableCell colSpan={11} className="text-center py-12 text-muted-foreground">
                    Loading...
                  </TableCell>
                </TableRow>
              ) : verbs.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={11} className="text-center py-12 text-muted-foreground">
                    No verbs found
                  </TableCell>
                </TableRow>
              ) : (
                verbs.map((v, i) => (
                  <TableRow key={v.id} className="group">
                    <TableCell className="text-xs text-muted-foreground font-mono">{i + 1 + (page - 1) * perPage}</TableCell>
                    <TableCell className="font-medium">
                      <div>{v.infinitive}</div>
                      {v.english_translation && (
                        <div className="text-xs text-muted-foreground">{v.english_translation}</div>
                      )}
                    </TableCell>
                    <TableCell>
                      <Badge variant="outline" className="text-xs">{v.cefr_level}</Badge>
                    </TableCell>
                    <TableCell className="text-sm">{VERB_TYPE_LABELS[v.verb_type] || v.verb_type}</TableCell>
                    <TableCell className="text-sm">{FREQUENCY_LABELS[v.frequency] || v.frequency}</TableCell>
                    <TableCell className={v.auxiliary === 'sein' ? 'text-amber-600 font-medium' : ''}>
                      {AUXILIARY_LABELS[v.auxiliary] || v.auxiliary}
                    </TableCell>
                    <TableCell className="text-sm font-mono">{v.partizip_2}</TableCell>
                    <TableCell>{v.is_reflexive ? <Badge variant="secondary" className="text-xs">sich</Badge> : '-'}</TableCell>
                    <TableCell className="text-sm">{v.separable_prefix || '-'}</TableCell>
                    <TableCell>
                      <div
                        className="cursor-pointer inline-block"
                        onClick={() => router.push(getAuditHref(v.id))}
                      >
                        <AuditBadge
                          status={v.audit_status}
                          errorCount={v.audit_error_count}
                          warningCount={v.audit_warning_count}
                        />
                      </div>
                    </TableCell>
                    <TableCell>
                      <DropdownMenu>
                        <DropdownMenuTrigger className="inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors hover:bg-accent h-8 w-8">
                          <MoreHorizontal className="h-4 w-4" />
                        </DropdownMenuTrigger>
                        <DropdownMenuContent align="end">
                          <DropdownMenuItem onClick={() => router.push(`/admin/verbs/${v.id}`)}>
                            <Eye className="h-4 w-4 mr-2" />
                            View
                          </DropdownMenuItem>
                          <DropdownMenuItem onClick={() => router.push(`/admin/verbs/${v.id}/edit`)}>
                            <Edit className="h-4 w-4 mr-2" />
                            Edit
                          </DropdownMenuItem>
                        </DropdownMenuContent>
                      </DropdownMenu>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </div>

        <div className="flex items-center justify-between">
          <p className="text-sm text-muted-foreground">{total} total</p>
          <div className="flex gap-1">
            <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(p => p - 1)}>
              <ChevronLeft className="h-4 w-4" />
            </Button>
            {pageWindow.map(p => (
              <Button key={p} variant={p === page ? 'default' : 'outline'} size="sm" onClick={() => setPage(p)}>
                {p}
              </Button>
            ))}
            <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(p => p + 1)}>
              <ChevronRight className="h-4 w-4" />
            </Button>
          </div>
        </div>
      </div>
    </AppShell>
  )
}
