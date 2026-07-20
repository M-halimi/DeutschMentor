import { NextRequest } from 'next/server'

const IP_HEADERS = [
  'x-forwarded-for',
  'x-real-ip',
  'x-client-ip',
  'cf-connecting-ip',
  'true-client-ip',
  'x-cluster-client-ip',
  'x-vercel-forwarded-for',
  'x-vercel-ip',
  'forwarded-for',
  'forwarded',
] as const

export function getClientIP(req: NextRequest): string {
  for (const header of IP_HEADERS) {
    const value = req.headers.get(header)
    if (value) {
      const ip = value.split(',')[0]?.trim()
      if (ip) return ip
    }
  }

  try {
    const nodeReq = (req as any).request
    if (nodeReq?.socket?.remoteAddress) {
      return normalizeIP(nodeReq.socket.remoteAddress)
    }
    const conn = (req as any).socket?.remoteAddress
    if (conn) {
      return normalizeIP(conn)
    }
  } catch {}

  return 'unknown'
}

function normalizeIP(ip: string): string {
  if (ip === '::1' || ip === '::ffff:127.0.0.1') return '127.0.0.1'
  if (ip.startsWith('::ffff:')) return ip.slice(7)
  return ip
}
