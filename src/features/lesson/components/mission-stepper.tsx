'use client'

import { motion } from 'framer-motion'
import { Check } from 'lucide-react'

export interface Step {
  id: string
  label: string
}

export function MissionStepper({
  steps,
  currentIndex,
  onSelect,
}: {
  steps: Step[]
  currentIndex: number
  onSelect: (index: number) => void
}) {
  return (
    <div className="flex items-center gap-0.5 mb-6 overflow-x-auto pb-1">
      {steps.map((step, i) => {
        const isCompleted = i < currentIndex
        const isCurrent = i === currentIndex
        return (
          <button
            key={step.id}
            onClick={() => onSelect(i)}
            className="flex items-center gap-1.5 group"
          >
            <motion.div
              layout
              className={`flex items-center justify-center w-7 h-7 rounded-full text-xs font-bold transition-all duration-300 ${
                isCompleted
                  ? 'bg-primary text-primary-foreground'
                  : isCurrent
                    ? 'bg-primary text-primary-foreground ring-2 ring-primary/30 ring-offset-2 ring-offset-background'
                    : 'bg-muted text-muted-foreground'
              }`}
            >
              {isCompleted ? (
                <motion.div
                  initial={{ scale: 0 }}
                  animate={{ scale: 1 }}
                  transition={{ type: 'spring', stiffness: 300, damping: 15 }}
                >
                  <Check className="h-3.5 w-3.5" />
                </motion.div>
              ) : (
                <span>{i + 1}</span>
              )}
            </motion.div>
            <span
              className={`hidden sm:block text-xs font-medium transition-colors ${
                isCurrent
                  ? 'text-foreground'
                  : isCompleted
                    ? 'text-muted-foreground/70'
                    : 'text-muted-foreground/40'
              }`}
            >
              {step.label}
            </span>
            {i < steps.length - 1 && (
              <div
                className={`h-px w-4 mx-0.5 transition-colors ${
                  i < currentIndex ? 'bg-primary' : 'bg-border'
                }`}
              />
            )}
          </button>
        )
      })}
    </div>
  )
}
