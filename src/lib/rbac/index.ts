export {
  checkPermission,
  getUserPermissions,
  requirePermission,
  requireRole,
  isOwner,
  requireOwner,
  getRole,
  isAdminUser,
  permissionSlug,
  PermissionDeniedError,
} from './permissions'

export {
  logAudit,
} from './audit'

export type { AuditEntry } from './audit'

export {
  requireAuth,
  requireAdmin,
  requirePermissionSlug,
  requirePermission as requirePermissionMiddleware,
  requireRoleSlug,
  requireOwner as requireOwnerMiddleware,
  withAudit,
} from './middleware'

export type { RouteHandler } from './middleware'
