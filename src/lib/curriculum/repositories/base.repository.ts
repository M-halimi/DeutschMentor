import { createAdminClient } from '@/lib/supabase/admin'

export interface RepositoryOptions {
  admin?: ReturnType<typeof createAdminClient>
}

export class BaseRepository {
  protected admin: ReturnType<typeof createAdminClient>

  constructor(options?: RepositoryOptions) {
    this.admin = options?.admin ?? createAdminClient()
  }

  protected handleError(error: unknown, context: string): never {
    const message = error instanceof Error ? error.message : String(error)
    throw new Error(`${context}: ${message}`)
  }

  protected now(): string {
    return new Date().toISOString()
  }
}
