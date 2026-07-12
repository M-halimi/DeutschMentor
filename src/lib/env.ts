export function readEnv(key: string, fallback: string = ''): string {
  try {
    if (typeof process !== 'undefined' && process.env) {
      return (process.env as Record<string, string | undefined>)[key] ?? fallback
    }
  } catch {}
  return fallback
}
