'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { useUserCertificates } from '@/hooks/use-progress'
import { Award, Loader2, Download, Share2 } from 'lucide-react'

const LEVEL_GRADIENTS: Record<string, string> = {
  A1: 'from-green-500 to-emerald-600',
  A2: 'from-blue-500 to-cyan-600',
  B1: 'from-yellow-500 to-orange-600',
  B2: 'from-purple-500 to-violet-600',
  C1: 'from-red-500 to-rose-600',
  C2: 'from-amber-500 to-yellow-600',
}

export default function CertificatesPage() {
  const { data: certificates, isLoading } = useUserCertificates()

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <Award className="h-6 w-6 text-primary" />
          <h1 className="text-2xl font-bold">My Certificates</h1>
        </div>

        {isLoading ? (
          <div className="flex justify-center py-12"><Loader2 className="h-8 w-8 animate-spin text-muted-foreground" /></div>
        ) : !certificates || certificates.length === 0 ? (
          <Card>
            <CardContent className="p-12 text-center">
              <Award className="h-16 w-16 text-muted-foreground/30 mx-auto mb-4" />
              <h3 className="font-semibold mb-2">No Certificates Yet</h3>
              <p className="text-sm text-muted-foreground">Complete a full course level to earn your certificate!</p>
            </CardContent>
          </Card>
        ) : (
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
            {certificates.map((cert: any) => (
              <Card key={cert.id} className="overflow-hidden">
                <div className={`h-2 bg-gradient-to-r ${LEVEL_GRADIENTS[cert.level_id] ?? 'from-primary to-primary/60'}`} />
                <CardContent className="p-6">
                  <div className="text-center mb-4">
                    <Award className={`h-12 w-12 mx-auto mb-2 bg-gradient-to-r ${LEVEL_GRADIENTS[cert.level_id] ?? 'from-primary to-primary/60'} bg-clip-text text-transparent`} />
                    <h3 className="font-bold text-lg">{cert.level_id} Certificate</h3>
                    {cert.course_levels && <p className="text-sm text-muted-foreground">{cert.course_levels.title}</p>}
                  </div>
                  <div className="text-xs text-muted-foreground text-center mb-4">
                    Issued: {new Date(cert.issued_at).toLocaleDateString()}
                  </div>
                  <div className="flex gap-2">
                    <Button size="sm" className="flex-1" disabled={!cert.certificate_url}>
                      <Download className="h-4 w-4 mr-1" /> Download
                    </Button>
                    <Button size="sm" variant="outline" className="flex-1">
                      <Share2 className="h-4 w-4 mr-1" /> Share
                    </Button>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}

        <Card>
          <CardHeader><CardTitle className="text-base">What are Certificates?</CardTitle></CardHeader>
          <CardContent>
            <p className="text-sm text-muted-foreground">
              When you complete all modules in a course level, you earn a certificate that proves your German proficiency at that CEFR level.
              Certificates track your progress from A1 (Beginner) to C2 (Mastery).
            </p>
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
