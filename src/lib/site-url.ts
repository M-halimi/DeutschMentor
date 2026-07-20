import { headers } from 'next/headers'

export async function getSiteUrl(): Promise<string> {
  try {
    const h = await headers()
    const host = h.get('x-forwarded-host') || h.get('host') || 'localhost:3000'
    const protocol = h.get('x-forwarded-proto') || 'http'
    return `${protocol}://${host}`
  } catch {
    return process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000'
  }
}

export function getRequiredEnv(key: string): string {
  const val = process.env[key]
  if (!val) throw new Error(`Missing required environment variable: ${key}`)
  return val
}
