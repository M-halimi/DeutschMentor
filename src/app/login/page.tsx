'use client'

import { Suspense, useState, useEffect } from 'react'
import Link from 'next/link'
import { motion } from 'framer-motion'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Sparkles, Eye, EyeOff } from 'lucide-react'
import { useSearchParams } from 'next/navigation'
import { toast } from 'sonner'
import { createClient } from '@/lib/supabase/client'
import { useAuthStore } from '@/stores/auth-store'

export default function LoginPage() {
  return (
    <Suspense fallback={<div className="flex min-h-screen items-center justify-center p-4"><div className="h-8 w-8 animate-spin rounded-full border-2 border-primary border-t-transparent" /></div>}>
      <LoginForm />
    </Suspense>
  )
}

function LoginForm() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [showPassword, setShowPassword] = useState(false)
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)
  const searchParams = useSearchParams()
  const fetchUser = useAuthStore((s) => s.fetchUser)

  useEffect(() => {
    if (searchParams.get('admin_denied') === 'true') {
      toast.error('You do not have permission to access the administration panel.')
    }
    if (searchParams.get('redirect')) {
      toast.info('Please log in to continue.')
    }
  }, [searchParams])

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setError('')
    setLoading(true)

    const supabase = createClient()
    const { error: signInError } = await supabase.auth.signInWithPassword({
      email,
      password,
    })

    if (signInError) {
      setError(signInError.message)
      setLoading(false)
      return
    }

    // Use the same supabase client instance to avoid cookie sync issues
    // between separate createClient() calls on mobile Safari.
    const { data: { user: authUser } } = await supabase.auth.getUser()

    if (!authUser) {
      // Fallback: try fetchUser() which reads from auth store
      await fetchUser()
      const { user: fallback } = useAuthStore.getState()
      if (fallback) {
        useAuthStore.getState().setUser(fallback)
        window.location.href = '/dashboard'
        return
      }
      window.location.href = '/onboarding'
      return
    }

    const { data: profile } = await supabase
      .from('profiles')
      .select('*')
      .eq('user_id', authUser.id)
      .maybeSingle()

    if (!profile) {
      window.location.href = '/onboarding'
      return
    }

    useAuthStore.getState().setUser(profile)

    let redirectTo = '/dashboard'

    if (profile.status === 'suspended' || profile.status === 'banned') {
      redirectTo = `/account-suspended?reason=${profile.status}`
    } else if (profile.status === 'expired') {
      redirectTo = '/account-expired'
    } else {
      const isAdmin = profile.is_owner === true ||
        profile.role_id !== null ||
        profile.role === 'admin' ||
        profile.role === 'super_admin'

      if (isAdmin) redirectTo = '/admin'
      else if (profile.role === 'teacher') redirectTo = '/teacher'
    }

    // Hard navigation guarantees session cookies are sent on the next request.
    // router.replace() can race with cookie commit on mobile Safari.
    window.location.href = redirectTo
  }

  return (
    <div className="flex min-h-screen items-center justify-center p-4">
      <div className="absolute inset-0 overflow-hidden">
        <div className="absolute -top-40 right-0 h-[500px] w-[500px] rounded-full bg-primary/5 blur-[100px]" />
      </div>

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        className="relative w-full max-w-md"
      >
        <Link href="/" className="mb-8 flex items-center justify-center gap-2">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-primary-foreground">
            <Sparkles className="h-4 w-4" />
          </div>
          <span className="text-lg font-semibold">DeutschMentor</span>
        </Link>

        <Card>
          <CardHeader className="text-center">
            <CardTitle className="text-2xl">Willkommen zurück</CardTitle>
            <CardDescription>Melde dich an, um deine Deutschreise fortzusetzen</CardDescription>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleSubmit} className="space-y-4">
              <div className="space-y-2">
                <Label htmlFor="email">E-Mail</Label>
                <Input
                  id="email"
                  type="email"
                  placeholder="max@beispiel.de"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="password">Passwort</Label>
                <div className="relative">
                  <Input
                    id="password"
                    type={showPassword ? 'text' : 'password'}
                    placeholder="Dein Passwort"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    required
                  />
                  <Button
                    type="button"
                    variant="ghost"
                    size="icon"
                    className="absolute right-0 top-0 h-full px-3"
                    onClick={() => setShowPassword(!showPassword)}
                  >
                    {showPassword ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
                  </Button>
                </div>
              </div>

              {error && (
                <p className="text-sm text-destructive">{error}</p>
              )}

              <Button type="submit" className="w-full" disabled={loading}>
                {loading ? 'Wird angemeldet...' : 'Anmelden'}
              </Button>
            </form>

            <div className="mt-4 text-center">
              <p className="text-sm text-muted-foreground">
                Noch kein Konto?{' '}
                <Link href="/signup" className="font-medium text-primary hover:underline">
                  Registrieren
                </Link>
              </p>
            </div>
          </CardContent>
        </Card>
      </motion.div>
    </div>
  )
}
