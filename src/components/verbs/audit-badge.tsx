import { Badge } from '@/components/ui/badge'
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from '@/components/ui/tooltip'
import { AlertCircle, AlertTriangle, CheckCircle2, Clock } from 'lucide-react'

interface AuditBadgeProps {
  status: 'error' | 'warning' | 'clean' | 'pending' | null | undefined
  errorCount?: number
  warningCount?: number
  onClick?: () => void
}

export function AuditBadge({ status, errorCount, warningCount, onClick }: AuditBadgeProps) {
  if (status === 'error') {
    return (
      <TooltipProvider>
        <Tooltip>
            <TooltipTrigger
              className={`inline-flex items-center gap-1 rounded-md border px-2.5 py-0.5 text-xs font-semibold border-red-500/50 text-red-600 bg-red-500/5 cursor-pointer ${onClick ? 'hover:bg-red-500/10' : ''}`}
              onClick={onClick}
            >
              <AlertCircle className="h-3 w-3" />
              {errorCount} Error{errorCount !== 1 ? 's' : ''}
            </TooltipTrigger>
          <TooltipContent>
            <p>Has {errorCount} error{errorCount !== 1 ? 's' : ''} and {warningCount || 0} warning{warningCount !== 1 ? 's' : ''}</p>
          </TooltipContent>
        </Tooltip>
      </TooltipProvider>
    )
  }

  if (status === 'warning') {
    return (
      <TooltipProvider>
        <Tooltip>
            <TooltipTrigger
              className={`inline-flex items-center gap-1 rounded-md border px-2.5 py-0.5 text-xs font-semibold border-amber-500/50 text-amber-600 bg-amber-500/5 cursor-pointer ${onClick ? 'hover:bg-amber-500/10' : ''}`}
              onClick={onClick}
            >
              <AlertTriangle className="h-3 w-3" />
              {warningCount} Warning{warningCount !== 1 ? 's' : ''}
            </TooltipTrigger>
          <TooltipContent>
            <p>Has {warningCount} warning{warningCount !== 1 ? 's' : ''}</p>
          </TooltipContent>
        </Tooltip>
      </TooltipProvider>
    )
  }

  if (status === 'clean') {
    return (
      <Badge variant="outline" className="gap-1 border-emerald-500/50 text-emerald-600 bg-emerald-500/5">
        <CheckCircle2 className="h-3 w-3" />
        Clean
      </Badge>
    )
  }

  return (
    <Badge variant="outline" className="gap-1 text-muted-foreground">
      <Clock className="h-3 w-3" />
      Pending
    </Badge>
  )
}

export function getAuditHref(verbId: string): string {
  return `/admin/verbs/audit?verb_id=${verbId}`
}
