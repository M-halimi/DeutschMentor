'use client'

import { motion } from 'framer-motion'
import type { LucideIcon } from 'lucide-react'

export function StepHeader({
  icon: Icon,
  title,
  subtitle,
  step,
  total,
}: {
  icon: LucideIcon
  title: string
  subtitle?: string
  step: number
  total: number
}) {
  return (
    <motion.div
      initial={{ opacity: 0, y: -12 }}
      animate={{ opacity: 1, y: 0 }}
      className="mb-6"
    >
      <div className="flex items-center gap-3 mb-1">
        <div className="p-2 rounded-xl bg-primary/10 text-primary">
          <Icon className="h-5 w-5" />
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2 text-xs text-muted-foreground mb-0.5">
            <span className="font-medium text-primary">Step {step}</span>
            <span className="opacity-40">/</span>
            <span>of {total}</span>
          </div>
          <h2 className="text-lg font-bold truncate">{title}</h2>
        </div>
      </div>
      {subtitle && (
        <motion.p
          initial={{ opacity: 0, y: -4 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.1 }}
          className="text-sm text-muted-foreground ml-11"
        >
          {subtitle}
        </motion.p>
      )}
    </motion.div>
  )
}
