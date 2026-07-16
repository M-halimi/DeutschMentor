'use client'

import { useEffect, useRef } from 'react'
import { motion, useAnimation } from 'framer-motion'

const COLORS = ['#3b82f6', '#10b981', '#f59e0b', '#ef4444', '#8b5cf6', '#ec4899', '#06b6d4']
const SHAPES = ['circle', 'square', 'triangle']

interface Particle {
  id: number
  x: number
  y: number
  color: string
  shape: string
  rotation: number
  scale: number
  delay: number
  duration: number
  driftX: number
}

export function Confetti({ active }: { active: boolean }) {
  const controls = useAnimation()
  const particlesRef = useRef<Particle[]>([])

  useEffect(() => {
    if (!active) return
    const particles: Particle[] = Array.from({ length: 60 }, (_, i) => ({
      id: i,
      x: Math.random() * 400 - 200,
      y: Math.random() * -600 - 100,
      color: COLORS[Math.floor(Math.random() * COLORS.length)],
      shape: SHAPES[Math.floor(Math.random() * SHAPES.length)],
      rotation: Math.random() * 720 - 360,
      scale: Math.random() * 0.5 + 0.5,
      delay: Math.random() * 0.3,
      duration: Math.random() * 1.5 + 1.5,
      driftX: Math.random() * 100 - 50,
    }))
    particlesRef.current = particles
    controls.start({
      opacity: 1,
      transition: { duration: 0.2 },
    })
    const timer = setTimeout(() => {
      controls.start({ opacity: 0, transition: { duration: 0.5 } })
    }, 3000)
    return () => clearTimeout(timer)
  }, [active, controls])

  if (!active && particlesRef.current.length === 0) return null

  return (
    <div className="pointer-events-none fixed inset-0 z-50 overflow-hidden">
      {particlesRef.current.map((p) => {
        const isCircle = p.shape === 'circle'
        const isSquare = p.shape === 'square'
        return (
          <motion.div
            key={p.id}
            className="absolute left-1/2 top-1/2"
            initial={{ opacity: 0, y: 0, x: 0, rotate: 0, scale: 0 }}
            animate={controls}
            style={{ position: 'absolute' }}
          >
            <motion.div
              className={`${isCircle ? 'rounded-full' : isSquare ? 'rounded-sm' : ''}`}
              style={{
                width: 8 * p.scale + 4,
                height: 8 * p.scale + 4,
                backgroundColor: p.color,
                clipPath: p.shape === 'triangle' ? 'polygon(50% 0%, 0% 100%, 100% 100%)' : undefined,
              }}
              initial={{ x: 0, y: 0, rotate: 0 }}
              animate={{
                x: p.driftX + p.x,
                y: p.y,
                rotate: p.rotation,
                opacity: [1, 1, 1, 0],
              }}
              transition={{
                duration: p.duration,
                delay: p.delay,
                ease: [0.25, 0.46, 0.45, 0.94],
              }}
            />
          </motion.div>
        )
      })}
    </div>
  )
}
