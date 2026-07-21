'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter } from 'next/navigation'

interface QualityCheck {
  id: string
  verb_id: string
  check_type: string
  field_name: string
  old_value: string | null
  suggested_value: string | null
  explanation: string
  confidence: number
  status: string
  created_at: string
  german_verbs?: {
    infinitive: string
    cefr_level: string
    verb_type: string
  }
}

interface Summary {
  total: number
  open: number
  accepted: number
  rejected: number
}

const CHECK_TYPES = [
  { value: '', label: 'All Types' },
  { value: 'infinitive_format', label: 'Infinitive Format' },
  { value: 'cefr_consistency', label: 'CEFR Level' },
  { value: 'partizip_2', label: 'Partizip II' },
  { value: 'auxiliary', label: 'Auxiliary' },
  { value: 'reflexive', label: 'Reflexive' },
  { value: 'separable_prefix', label: 'Separable Prefix' },
  { value: 'verb_type', label: 'Verb Type' },
  { value: 'transitivity', label: 'Transitivity' },
  { value: 'object_case', label: 'Object Case' },
  { value: 'preposition', label: 'Preposition' },
  { value: 'conjugation_completeness', label: 'Conjugations' },
]

const CHECK_TYPE_LABELS: Record<string, string> = {
  infinitive_format: 'Infinitive Format',
  cefr_consistency: 'CEFR Level',
  partizip_2: 'Partizip II',
  auxiliary: 'Auxiliary',
  reflexive: 'Reflexive',
  separable_prefix: 'Separable Prefix',
  verb_type: 'Verb Type',
  transitivity: 'Transitivity',
  object_case: 'Object Case',
  preposition: 'Preposition',
  conjugation_completeness: 'Conjugations',
}

export default function QualityCheckPage() {
  const router = useRouter()
  const [checks, setChecks] = useState<QualityCheck[]>([])
  const [summary, setSummary] = useState<Summary>({ total: 0, open: 0, accepted: 0, rejected: 0 })
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [filterStatus, setFilterStatus] = useState('')
  const [filterType, setFilterType] = useState('')
  const [isRunning, setIsRunning] = useState(false)
  const [progress, setProgress] = useState({ processed: 0, total: 0 })
  const [batchResults, setBatchResults] = useState<{ verb_id: string; infinitive: string; status: string; error_count: number; warning_count: number }[]>([])
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [selectAll, setSelectAll] = useState(false)
  const [actionLoading, setActionLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [statusFilter, setStatusFilter] = useState('')

  const perPage = 50

  const fetchResults = useCallback(async (opts?: { page?: number; status?: string; checkType?: string }) => {
    try {
      const params = new URLSearchParams({
        page: String(opts?.page || page),
        per_page: String(perPage),
      })
      if (opts?.status || statusFilter) params.set('status', opts?.status || statusFilter)
      if (opts?.checkType || filterType) params.set('check_type', opts?.checkType || filterType)

      const res = await fetch(`/api/admin/verbs/quality-check?${params}`)
      if (!res.ok) {
        if (res.status === 401) { router.push('/login'); return }
        throw new Error(`HTTP ${res.status}`)
      }
      const json = await res.json()
      setChecks(json.data || [])
      setTotal(json.total || 0)
      if (json.summary) setSummary(json.summary)
      setSelectedIds(new Set())
      setSelectAll(false)
    } catch (err: any) {
      setError(err.message)
    }
  }, [page, statusFilter, filterType, router])

  useEffect(() => {
    fetchResults()
  }, [fetchResults])

  const runBatch = async () => {
    setIsRunning(true)
    setError(null)
    setProgress({ processed: 0, total: 0 })
    setBatchResults([])

    let offset = 0
    let totalVerbs = 0
    const allResults: { verb_id: string; infinitive: string; status: string; error_count: number; warning_count: number }[] = []

    try {
      while (true) {
        const res = await fetch('/api/admin/verbs/quality-check', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ batch_size: 100, offset }),
        })
        if (!res.ok) {
          if (res.status === 401) { router.push('/login'); return }
          throw new Error(`HTTP ${res.status}`)
        }
        const json = await res.json()
        const data = json.data

        totalVerbs = data.total
        offset = data.next_offset ?? 0

        for (const r of data.results || []) {
          allResults.push({
            verb_id: r.verb_id,
            infinitive: r.infinitive,
            status: r.status,
            error_count: r.error_count,
            warning_count: r.warning_count,
          })
        }

        setProgress({ processed: data.processed + (data.next_offset !== null ? offset - data.processed : offset), total: totalVerbs })
        setBatchResults([...allResults])

        if (data.next_offset === null) break
      }
    } catch (err: any) {
      setError(err.message)
    }

    setIsRunning(false)
    await fetchResults()
  }

  const handleAction = async (action: 'accept' | 'reject') => {
    if (selectedIds.size === 0) return
    setActionLoading(true)
    setError(null)

    try {
      const res = await fetch('/api/admin/verbs/quality-check/checks', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ids: Array.from(selectedIds), action }),
      })
      if (!res.ok) {
        if (res.status === 401) { router.push('/login'); return }
        const json = await res.json()
        throw new Error(json.error || `HTTP ${res.status}`)
      }

      await fetchResults()
    } catch (err: any) {
      setError(err.message)
    }

    setActionLoading(false)
  }

  const toggleSelect = (id: string) => {
    setSelectedIds(prev => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id)
      else next.add(id)
      return next
    })
    setSelectAll(false)
  }

  const toggleSelectAll = () => {
    if (selectAll) {
      setSelectedIds(new Set())
      setSelectAll(false)
    } else {
      setSelectedIds(new Set(checks.map(c => c.id)))
      setSelectAll(true)
    }
  }

  const getConfidenceColor = (confidence: number) => {
    if (confidence >= 80) return 'text-red-600 bg-red-50 border-red-200'
    if (confidence >= 50) return 'text-amber-600 bg-amber-50 border-amber-200'
    return 'text-blue-600 bg-blue-50 border-blue-200'
  }

  const getConfidenceLabel = (confidence: number) => {
    if (confidence >= 80) return 'Error'
    if (confidence >= 50) return 'Warning'
    return 'Info'
  }

  const totalPages = Math.ceil(total / perPage)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold text-gray-900">German Verb Quality Control</h1>
        <div className="flex items-center gap-3">
          <span className="text-sm text-gray-500">
            {progress.total > 0
              ? `${progress.processed} / ${progress.total} checked`
              : `${summary.total} checks total`}
          </span>
          <button
            onClick={runBatch}
            disabled={isRunning}
            className="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 disabled:opacity-50 text-sm font-medium"
          >
            {isRunning ? 'Running...' : 'Run Quality Check'}
          </button>
        </div>
      </div>

      {error && (
        <div className="p-4 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">{error}</div>
      )}

      {isRunning && (
        <div className="p-6 bg-white border rounded-lg space-y-3">
          <div className="flex items-center justify-between">
            <span className="text-sm font-medium text-gray-700">Scanning verbs...</span>
            <span className="text-sm text-gray-500">{progress.processed} / {progress.total}</span>
          </div>
          <div className="w-full bg-gray-200 rounded-full h-2.5">
            <div
              className="bg-indigo-600 h-2.5 rounded-full transition-all duration-300"
              style={{ width: progress.total > 0 ? `${(progress.processed / progress.total) * 100}%` : '0%' }}
            />
          </div>
          {batchResults.length > 0 && (
            <div className="max-h-40 overflow-y-auto space-y-1 text-xs">
              {batchResults.slice(-20).map((r, i) => (
                <div key={i} className="flex items-center gap-2">
                  <span className={`w-2 h-2 rounded-full ${
                    r.status === 'valid' ? 'bg-green-500' :
                    r.status === 'warning' ? 'bg-amber-500' : 'bg-red-500'
                  }`} />
                  <span className="font-mono">{r.infinitive}</span>
                  <span className={
                    r.status === 'valid' ? 'text-green-600' :
                    r.status === 'warning' ? 'text-amber-600' : 'text-red-600'
                  }>
                    {r.status === 'valid' ? '✅' : r.status === 'warning' ? '⚠' : '❌'}
                  </span>
                  {r.error_count > 0 && <span className="text-red-500">{r.error_count}E</span>}
                  {r.warning_count > 0 && <span className="text-amber-500">{r.warning_count}W</span>}
                </div>
              ))}
            </div>
          )}
        </div>
      )}

      <div className="grid grid-cols-4 gap-4">
        <div className="p-4 bg-white border rounded-lg">
          <div className="text-2xl font-bold text-gray-900">{summary.total}</div>
          <div className="text-sm text-gray-500">Total Checks</div>
        </div>
        <div className="p-4 bg-white border rounded-lg">
          <div className="text-2xl font-bold text-amber-600">{summary.open}</div>
          <div className="text-sm text-gray-500">Open</div>
        </div>
        <div className="p-4 bg-white border rounded-lg">
          <div className="text-2xl font-bold text-green-600">{summary.accepted}</div>
          <div className="text-sm text-gray-500">Accepted</div>
        </div>
        <div className="p-4 bg-white border rounded-lg">
          <div className="text-2xl font-bold text-red-600">{summary.rejected}</div>
          <div className="text-sm text-gray-500">Rejected</div>
        </div>
      </div>

      <div className="flex items-center gap-4">
        <select
          value={statusFilter}
          onChange={e => { setStatusFilter(e.target.value); setPage(1) }}
          className="px-3 py-2 border rounded-lg text-sm"
        >
          <option value="">All Status</option>
          <option value="open">Open</option>
          <option value="accepted">Accepted</option>
          <option value="rejected">Rejected</option>
        </select>
        <select
          value={filterType}
          onChange={e => { setFilterType(e.target.value); setPage(1) }}
          className="px-3 py-2 border rounded-lg text-sm"
        >
          {CHECK_TYPES.map(t => (
            <option key={t.value} value={t.value}>{t.label}</option>
          ))}
        </select>
        {selectedIds.size > 0 && (
          <div className="flex items-center gap-2 ml-auto">
            <span className="text-sm text-gray-500">{selectedIds.size} selected</span>
            <button
              onClick={() => handleAction('accept')}
              disabled={actionLoading}
              className="px-3 py-1.5 bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50 text-sm"
            >
              Accept
            </button>
            <button
              onClick={() => handleAction('reject')}
              disabled={actionLoading}
              className="px-3 py-1.5 bg-red-600 text-white rounded-lg hover:bg-red-700 disabled:opacity-50 text-sm"
            >
              Reject
            </button>
          </div>
        )}
      </div>

      <div className="bg-white border rounded-lg overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="bg-gray-50 border-b">
                <th className="w-10 p-3 text-left">
                  <input
                    type="checkbox"
                    checked={selectAll && checks.length > 0}
                    onChange={toggleSelectAll}
                    className="rounded"
                  />
                </th>
                <th className="p-3 text-left font-medium text-gray-700">Verb</th>
                <th className="p-3 text-left font-medium text-gray-700">Check Type</th>
                <th className="p-3 text-left font-medium text-gray-700">Field</th>
                <th className="p-3 text-left font-medium text-gray-700">Current</th>
                <th className="p-3 text-left font-medium text-gray-700">Suggestion</th>
                <th className="p-3 text-left font-medium text-gray-700">Severity</th>
                <th className="p-3 text-left font-medium text-gray-700">Explanation</th>
                <th className="p-3 text-left font-medium text-gray-700">Status</th>
              </tr>
            </thead>
            <tbody>
              {checks.length === 0 ? (
                <tr>
                  <td colSpan={9} className="p-6 text-center text-gray-500">
                    {isRunning ? 'Scanning verbs...' : 'No quality checks found. Click "Run Quality Check" to start.'}
                  </td>
                </tr>
              ) : (
                checks.map(check => (
                  <tr key={check.id} className="border-b hover:bg-gray-50">
                    <td className="p-3">
                      <input
                        type="checkbox"
                        checked={selectedIds.has(check.id)}
                        onChange={() => toggleSelect(check.id)}
                        className="rounded"
                      />
                    </td>
                    <td className="p-3 font-medium">
                      <a
                        href={`/admin/verbs/${check.verb_id}`}
                        className="text-indigo-600 hover:text-indigo-800"
                      >
                        {check.german_verbs?.infinitive || check.verb_id.slice(0, 8)}
                      </a>
                      {check.german_verbs?.cefr_level && (
                        <span className="ml-2 px-1.5 py-0.5 text-xs rounded bg-gray-100 text-gray-600">
                          {check.german_verbs.cefr_level}
                        </span>
                      )}
                    </td>
                    <td className="p-3 text-gray-600">
                      {CHECK_TYPE_LABELS[check.check_type] || check.check_type}
                    </td>
                    <td className="p-3">
                      <code className="px-1.5 py-0.5 bg-gray-100 rounded text-xs">{check.field_name}</code>
                    </td>
                    <td className="p-3 text-gray-600">
                      {check.old_value ? (
                        <code className="px-1.5 py-0.5 bg-red-50 text-red-700 rounded text-xs line-through">
                          {check.old_value}
                        </code>
                      ) : (
                        <span className="text-gray-400">—</span>
                      )}
                    </td>
                    <td className="p-3">
                      {check.suggested_value ? (
                        <code className="px-1.5 py-0.5 bg-green-50 text-green-700 rounded text-xs">
                          {check.suggested_value}
                        </code>
                      ) : (
                        <span className="text-gray-400">—</span>
                      )}
                    </td>
                    <td className="p-3">
                      <span className={`px-2 py-0.5 rounded text-xs font-medium border ${getConfidenceColor(check.confidence)}`}>
                        {getConfidenceLabel(check.confidence)}
                      </span>
                    </td>
                    <td className="p-3 text-gray-500 text-xs max-w-xs truncate" title={check.explanation}>
                      {check.explanation}
                    </td>
                    <td className="p-3">
                      <span className={`px-2 py-0.5 rounded text-xs font-medium ${
                        check.status === 'open' ? 'bg-amber-50 text-amber-700 border border-amber-200' :
                        check.status === 'accepted' ? 'bg-green-50 text-green-700 border border-green-200' :
                        'bg-red-50 text-red-700 border border-red-200'
                      }`}>
                        {check.status}
                      </span>
                      {check.status === 'open' && (
                        <div className="flex gap-1 mt-1">
                          <button
                            onClick={() => handleAction('accept')}
                            disabled={actionLoading || !selectedIds.has(check.id)}
                            className="px-1.5 py-0.5 text-xs bg-green-100 text-green-700 rounded hover:bg-green-200 disabled:opacity-50"
                          >
                            Accept
                          </button>
                          <button
                            onClick={() => handleAction('reject')}
                            disabled={actionLoading || !selectedIds.has(check.id)}
                            className="px-1.5 py-0.5 text-xs bg-red-100 text-red-700 rounded hover:bg-red-200 disabled:opacity-50"
                          >
                            Reject
                          </button>
                        </div>
                      )}
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>
      </div>

      {totalPages > 1 && (
        <div className="flex items-center justify-between">
          <span className="text-sm text-gray-500">
            Page {page} of {totalPages} ({total} total checks)
          </span>
          <div className="flex gap-2">
            <button
              onClick={() => setPage(p => Math.max(1, p - 1))}
              disabled={page <= 1}
              className="px-3 py-1.5 border rounded-lg text-sm disabled:opacity-50 hover:bg-gray-50"
            >
              Previous
            </button>
            <button
              onClick={() => setPage(p => Math.min(totalPages, p + 1))}
              disabled={page >= totalPages}
              className="px-3 py-1.5 border rounded-lg text-sm disabled:opacity-50 hover:bg-gray-50"
            >
              Next
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
