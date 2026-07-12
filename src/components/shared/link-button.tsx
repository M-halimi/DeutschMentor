import Link from 'next/link'
import type { ComponentProps } from 'react'
import { Button } from '@/components/ui/button'

type LinkButtonProps = ComponentProps<typeof Link> & {
  variant?: ComponentProps<typeof Button>['variant']
  size?: ComponentProps<typeof Button>['size']
  className?: string
}

export function LinkButton({ href, children, variant, size, className, ...props }: LinkButtonProps) {
  // Wrap a div with Link inside, using button's class styles applied via the link.
  // The `render` prop of Base UI Button can also work, but this is more explicit.
  return (
    <Link href={href} {...props}>
      <Button variant={variant} size={size} className={className} tabIndex={-1}>
        {children}
      </Button>
    </Link>
  )
}
