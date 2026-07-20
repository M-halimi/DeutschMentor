const SESSION_KEY = 'dm_session_id'

function generateId(): string {
  try {
    return crypto.randomUUID()
  } catch {
    // crypto.randomUUID is not available on Safari iOS < 15.4
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, (c) => {
      const r = (Math.random() * 16) | 0
      return (c === 'x' ? r : (r & 0x3) | 0x8).toString(16)
    })
  }
}

export function getSessionId(): string {
  if (typeof window === 'undefined') return ''
  try {
    let id = localStorage.getItem(SESSION_KEY)
    if (!id) {
      id = generateId()
      localStorage.setItem(SESSION_KEY, id)
    }
    return id
  } catch {
    return generateId()
  }
}
