export interface UaInfo {
  deviceType: 'desktop' | 'mobile' | 'tablet'
  os: 'Windows' | 'macOS' | 'Linux' | 'Android' | 'iOS' | 'Unknown'
  browser: 'Chrome' | 'Firefox' | 'Safari' | 'Edge' | 'Other'
}

export function parseUserAgent(ua: string): UaInfo {
  let deviceType: UaInfo['deviceType'] = 'desktop'
  if (/Tablet|iPad/i.test(ua)) deviceType = 'tablet'
  else if (/Mobi|Android/i.test(ua)) deviceType = 'mobile'

  let os: UaInfo['os'] = 'Unknown'
  if (/Windows/i.test(ua)) os = 'Windows'
  else if (/Macintosh|Mac OS/i.test(ua)) os = 'macOS'
  else if (/Android/i.test(ua)) os = 'Android'
  else if (/iPhone|iPad|iPod/i.test(ua)) os = 'iOS'
  else if (/Linux/i.test(ua)) os = 'Linux'

  let browser: UaInfo['browser'] = 'Other'
  if (/Edg/i.test(ua)) browser = 'Edge'
  else if (/OPR|Opera/i.test(ua)) browser = 'Other'
  else if (/Chrome/i.test(ua)) browser = 'Chrome'
  else if (/Firefox/i.test(ua)) browser = 'Firefox'
  else if (/Safari/i.test(ua)) browser = 'Safari'

  return { deviceType, os, browser }
}
