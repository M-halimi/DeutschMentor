'use client'

import { useEffect, useState, Suspense } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { CheckCircle, XCircle, Loader2 } from 'lucide-react'

function AcceptInvitationInner() {
  const searchParams = useSearchParams()
  const router = useRouter()
  const token = searchParams.get('token')
  const [status, setStatus] = useState<'loading' | 'success' | 'error'>('loading')
  const [message, setMessage] = useState('')

  useEffect(() => {
    if (!token) {
      setStatus('error')
      setMessage('Ungültiger Einladungslink: Kein Token gefunden')
      return
    }
    acceptInvitation()
  }, [token])

  async function acceptInvitation() {
    try {
      const res = await fetch('/api/auth/accept-admin-invitation', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ token }),
      })
      const data = await res.json()
      if (res.ok && data.success) {
        setStatus('success')
        setMessage('Einladung angenommen! Du hast jetzt Admin-Zugriff.')
      } else {
        setStatus('error')
        setMessage(data.error || 'Einladung konnte nicht angenommen werden')
      }
    } catch {
      setStatus('error')
      setMessage('Ein Fehler ist aufgetreten. Bitte versuche es später erneut.')
    }
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-background p-4">
      <Card className="w-full max-w-md">
        <CardHeader className="text-center">
          {status === 'loading' && <Loader2 className="h-12 w-12 mx-auto mb-4 animate-spin text-primary" />}
          {status === 'success' && <CheckCircle className="h-12 w-12 mx-auto mb-4 text-green-500" />}
          {status === 'error' && <XCircle className="h-12 w-12 mx-auto mb-4 text-destructive" />}
          <CardTitle>
            {status === 'loading' && 'Einladung wird angenommen...'}
            {status === 'success' && 'Einladung angenommen!'}
            {status === 'error' && 'Fehler'}
          </CardTitle>
          <CardDescription>{message}</CardDescription>
        </CardHeader>
        <CardContent className="flex justify-center">
          {status === 'success' && (
            <Button onClick={() => router.push('/admin')}>
              Zum Admin-Dashboard
            </Button>
          )}
          {status === 'error' && (
            <Button variant="outline" onClick={() => router.push('/dashboard')}>
              Zum Dashboard
            </Button>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

export default function AcceptInvitationPage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen flex items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin" />
      </div>
    }>
      <AcceptInvitationInner />
    </Suspense>
  )
}
