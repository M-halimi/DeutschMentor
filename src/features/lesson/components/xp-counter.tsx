'use client'

import { useEffect, useState, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { Sparkles } from 'lucide-react'

export function XPCounter({
  earned,
  show,
  onComplete,
}: {
  earned: number
  show: boolean
  onComplete?: () => void
}) {
  const [count, setCount] = useState(0)
  const [floating, setFloating] = useState(false)
  const hasRun = useRef(false)

  useEffect(() => {
    if (!show || hasRun.current) return
    hasRun.current = true
    setFloating(true)
    const duration = 1200
    const steps = 30
    const increment = earned / steps
    let current = 0
    const interval = setInterval(() => {
      current += increment
      if (current >= earned) {
        setCount(earned)
        clearInterval(interval)
        setTimeout(() => {
          setFloating(false)
          onComplete?.()
        }, 400)
      } else {
        setCount(Math.floor(current))
      }
    }, duration / steps)
    return () => clearInterval(interval)
  }, [show, earned, onComplete])

  return (
    <AnimatePresence>
      {floating && (
        <motion.div
          initial={{ opacity: 0, scale: 0.5, y: 20 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 0.8, y: -20 }}
          className="flex items-center gap-2 px-4 py-2 rounded-full bg-gradient-to-r from-amber-500 to-orange-500 text-white shadow-lg"
        >
          <Sparkles className="h-4 w-4" />
          <motion.span
            key={count}
            initial={{ scale: 1.3, opacity: 0.5 }}
            animate={{ scale: 1, opacity: 1 }}
            className="text-sm font-bold tabular-nums"
          >
            +{count}
          </motion.span>
          <span className="text-xs font-medium opacity-80">XP</span>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
