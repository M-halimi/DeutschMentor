'use client'

import { useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Badge } from '@/components/ui/badge'
import { motion } from 'framer-motion'
import { Volume2, ArrowLeft, ArrowRight, BookOpen, Pen, Info } from 'lucide-react'

const alphabet = [
  { letter: 'ا', name: 'Alif', trans: 'a / ā', isolated: 'ا', beginning: 'ـا', middle: 'ـا', end: 'ـا', sun: false, moon: true, example: 'أَسَد', meaning: 'lion' },
  { letter: 'ب', name: 'Bāʼ', trans: 'b', isolated: 'ب', beginning: 'بـ', middle: 'ـبـ', end: 'ـب', sun: false, moon: false, example: 'بَاب', meaning: 'door' },
  { letter: 'ت', name: 'Tāʼ', trans: 't', isolated: 'ت', beginning: 'تـ', middle: 'ـتـ', end: 'ـت', sun: true, moon: false, example: 'تَفَّاحَة', meaning: 'apple' },
  { letter: 'ث', name: 'Thāʼ', trans: 'th', isolated: 'ث', beginning: 'ثـ', middle: 'ـثـ', end: 'ـث', sun: true, moon: false, example: 'ثَلْج', meaning: 'snow' },
  { letter: 'ج', name: 'Ǧīm', trans: 'j', isolated: 'ج', beginning: 'جـ', middle: 'ـجـ', end: 'ـج', sun: false, moon: false, example: 'جَبَل', meaning: 'mountain' },
  { letter: 'ح', name: 'Ḥāʼ', trans: 'ḥ', isolated: 'ح', beginning: 'حـ', middle: 'ـحـ', end: 'ـح', sun: false, moon: false, example: 'حَقِيبَة', meaning: 'bag' },
  { letter: 'خ', name: 'Khāʼ', trans: 'kh', isolated: 'خ', beginning: 'خـ', middle: 'ـخـ', end: 'ـخ', sun: false, moon: false, example: 'خُبْز', meaning: 'bread' },
  { letter: 'د', name: 'Dāl', trans: 'd', isolated: 'د', beginning: 'ـد', middle: 'ـد', end: 'ـد', sun: true, moon: false, example: 'دَرْس', meaning: 'lesson' },
  { letter: 'ذ', name: 'Dhāl', trans: 'dh', isolated: 'ذ', beginning: 'ـذ', middle: 'ـذ', end: 'ـذ', sun: true, moon: false, example: 'ذَهَب', meaning: 'gold' },
  { letter: 'ر', name: 'Rāʼ', trans: 'r', isolated: 'ر', beginning: 'ـر', middle: 'ـر', end: 'ـر', sun: true, moon: false, example: 'رَجُل', meaning: 'man' },
  { letter: 'ز', name: 'Zāy', trans: 'z', isolated: 'ز', beginning: 'ـز', middle: 'ـز', end: 'ـز', sun: true, moon: false, example: 'زَهْرَة', meaning: 'flower' },
  { letter: 'س', name: 'Sīn', trans: 's', isolated: 'س', beginning: 'سـ', middle: 'ـسـ', end: 'ـس', sun: true, moon: false, example: 'سَمَك', meaning: 'fish' },
  { letter: 'ش', name: 'Šīn', trans: 'sh', isolated: 'ش', beginning: 'شـ', middle: 'ـشـ', end: 'ـش', sun: true, moon: false, example: 'شَمْس', meaning: 'sun' },
  { letter: 'ص', name: 'Ṣād', trans: 'ṣ', isolated: 'ص', beginning: 'صـ', middle: 'ـصـ', end: 'ـص', sun: true, moon: false, example: 'صَغِير', meaning: 'small' },
  { letter: 'ض', name: 'Ḍād', trans: 'ḍ', isolated: 'ض', beginning: 'ضـ', middle: 'ـضـ', end: 'ـض', sun: true, moon: false, example: 'ضَوْء', meaning: 'light' },
  { letter: 'ط', name: 'Ṭāʼ', trans: 'ṭ', isolated: 'ط', beginning: 'طـ', middle: 'ـطـ', end: 'ـط', sun: true, moon: false, example: 'طَبِيب', meaning: 'doctor' },
  { letter: 'ظ', name: 'Ẓāʼ', trans: 'ẓ', isolated: 'ظ', beginning: 'ظـ', middle: 'ـظـ', end: 'ـظ', sun: true, moon: false, example: 'ظَهِيرَة', meaning: 'afternoon' },
  { letter: 'ع', name: 'ʻAyn', trans: 'ʻ', isolated: 'ع', beginning: 'عـ', middle: 'ـعـ', end: 'ـع', sun: false, moon: false, example: 'عَيْن', meaning: 'eye' },
  { letter: 'غ', name: 'Ġayn', trans: 'gh', isolated: 'غ', beginning: 'غـ', middle: 'ـغـ', end: 'ـغ', sun: false, moon: false, example: 'غُرْفَة', meaning: 'room' },
  { letter: 'ف', name: 'Fāʼ', trans: 'f', isolated: 'ف', beginning: 'فـ', middle: 'ـفـ', end: 'ـف', sun: false, moon: false, example: 'فِيل', meaning: 'elephant' },
  { letter: 'ق', name: 'Qāf', trans: 'q', isolated: 'ق', beginning: 'قـ', middle: 'ـقـ', end: 'ـق', sun: false, moon: false, example: 'قَلَم', meaning: 'pen' },
  { letter: 'ك', name: 'Kāf', trans: 'k', isolated: 'ك', beginning: 'كـ', middle: 'ـكـ', end: 'ـك', sun: false, moon: false, example: 'كِتَاب', meaning: 'book' },
  { letter: 'ل', name: 'Lām', trans: 'l', isolated: 'ل', beginning: 'لـ', middle: 'ـلـ', end: 'ـل', sun: true, moon: false, example: 'لَيْمُون', meaning: 'lemon' },
  { letter: 'م', name: 'Mīm', trans: 'm', isolated: 'م', beginning: 'مـ', middle: 'ـمـ', end: 'ـم', sun: false, moon: false, example: 'مَاء', meaning: 'water' },
  { letter: 'ن', name: 'Nūn', trans: 'n', isolated: 'ن', beginning: 'نـ', middle: 'ـنـ', end: 'ـن', sun: true, moon: false, example: 'نَجْمَة', meaning: 'star' },
  { letter: 'ه', name: 'Hāʼ', trans: 'h', isolated: 'ه', beginning: 'هـ', middle: 'ـهـ', end: 'ـه', sun: false, moon: false, example: 'هَوَاء', meaning: 'air' },
  { letter: 'و', name: 'Wāw', trans: 'w / ū', isolated: 'و', beginning: 'ـو', middle: 'ـو', end: 'ـو', sun: false, moon: true, example: 'وَرْدَة', meaning: 'rose' },
  { letter: 'ي', name: 'Yāʼ', trans: 'y / ī', isolated: 'ي', beginning: 'يـ', middle: 'ـيـ', end: 'ـي', sun: false, moon: false, example: 'يَد', meaning: 'hand' },
]

const containers = [
  { name: 'Sun Letters (الحروف الشمسية)', desc: 'Letters that assimilate the "l" of ال (al-). When preceded by ال, the ل is not pronounced and the letter is doubled.', letters: 'ت, ث, د, ذ, ر, ز, س, ش, ص, ض, ط, ظ, ل, ن' },
  { name: 'Moon Letters (الحروف القمرية)', desc: 'Letters that keep the "l" of ال (al-) pronounced clearly.', letters: 'ا, ب, ج, ح, خ, ع, غ, ف, ق, ك, م, ه, و, ي' },
  { name: 'Connectors', desc: 'Letters that connect to the following letter within a word. Most Arabic letters are connectors.', letters: 'ب, ت, ث, ج, ح, خ, س, ش, ص, ض, ط, ظ, ع, غ, ف, ق, ك, ل, م, ن, ه, ي' },
  { name: 'Non-Connectors', desc: 'Letters that do NOT connect to the following letter within a word. After these letters, the next letter starts in its beginning form.', letters: 'ا, د, ذ, ر, ز, و' },
]

export default function ArabicAlphabetPage() {
  const [currentIdx, setCurrentIdx] = useState(0)
  const [activeTab, setActiveTab] = useState('browse')

  const current = alphabet[currentIdx]
  const total = alphabet.length

  function playSound() {
    try {
      const utterance = new SpeechSynthesisUtterance(current.letter)
      utterance.lang = 'ar-SA'
      utterance.rate = 0.8
      window.speechSynthesis.speak(utterance)
    } catch {}
  }

  function playExample() {
    try {
      const utterance = new SpeechSynthesisUtterance(current.example)
      utterance.lang = 'ar-SA'
      utterance.rate = 0.7
      window.speechSynthesis.speak(utterance)
    } catch {}
  }

  return (
    <AppShell>
      <div dir="rtl" className="space-y-8">
        <div>
          <h1 className="text-3xl font-bold tracking-tight">Arabic Alphabet</h1>
          <p className="text-muted-foreground mt-1">
            Learn the 28 letters of the Arabic alphabet
          </p>
        </div>

        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <TabsList>
            <TabsTrigger value="browse"><BookOpen className="h-4 w-4 ml-2" />Browse Letters</TabsTrigger>
            <TabsTrigger value="forms"><Pen className="h-4 w-4 ml-2" />Letter Forms</TabsTrigger>
            <TabsTrigger value="rules"><Info className="h-4 w-4 ml-2" />Rules</TabsTrigger>
          </TabsList>

          <TabsContent value="browse" className="mt-6">
            <div className="grid gap-8 lg:grid-cols-3">
              <div className="lg:col-span-2">
                <Card>
                  <CardContent className="p-8">
                    <div className="flex flex-col items-center gap-6">
                      <div className="flex items-center justify-between w-full">
                        <Button variant="outline" size="icon" onClick={() => setCurrentIdx(i => Math.max(0, i - 1))} disabled={currentIdx === 0}>
                          <ArrowRight className="h-4 w-4" />
                        </Button>
                        <span className="text-sm text-muted-foreground">{currentIdx + 1} / {total}</span>
                        <Button variant="outline" size="icon" onClick={() => setCurrentIdx(i => Math.min(total - 1, i + 1))} disabled={currentIdx === total - 1}>
                          <ArrowLeft className="h-4 w-4" />
                        </Button>
                      </div>

                      <motion.div key={current.letter} initial={{ scale: 0.8, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} className="flex flex-col items-center gap-4">
                        <div className="flex h-32 w-32 items-center justify-center rounded-2xl bg-gradient-to-br from-emerald-500/20 to-emerald-600/20 text-7xl font-bold text-emerald-600 dark:text-emerald-400" style={{ fontFamily: '"Traditional Arabic", "Scheherazade New", serif' }}>
                          {current.letter}
                        </div>

                        <div className="text-center">
                          <p className="text-2xl font-bold">{current.name}</p>
                          <p className="text-lg text-muted-foreground">/{current.trans}/</p>
                          <p className="text-sm text-muted-foreground mt-1">Transliteration: /{current.trans}/</p>
                        </div>
                      </motion.div>

                      <div className="flex gap-2">
                        <Button onClick={playSound}>
                          <Volume2 className="h-4 w-4 ml-2" />Pronounce Letter
                        </Button>
                        <Button variant="outline" onClick={playExample}>
                          <Volume2 className="h-4 w-4 ml-2" />Say Example
                        </Button>
                      </div>

                      <div className="grid w-full grid-cols-2 gap-4 rounded-lg border p-4">
                        <div>
                          <p className="text-sm text-muted-foreground">Sun Letter</p>
                          <Badge variant={current.sun ? 'default' : 'secondary'}>{current.sun ? 'Yes' : 'No'}</Badge>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground">Moon Letter</p>
                          <Badge variant={current.moon ? 'default' : 'secondary'}>{current.moon ? 'Yes' : 'No'}</Badge>
                        </div>
                        <div className="col-span-2">
                          <p className="text-sm text-muted-foreground">Example</p>
                          <p className="text-xl text-right" style={{ fontFamily: '"Traditional Arabic", "Scheherazade New", serif' }}>{current.example}</p>
                          <p className="text-sm text-muted-foreground">{current.meaning}</p>
                        </div>
                      </div>
                    </div>
                  </CardContent>
                </Card>
              </div>

              <div>
                <Card>
                  <CardHeader>
                    <CardTitle className="text-lg">All Letters</CardTitle>
                    <CardDescription>Click to select a letter</CardDescription>
                  </CardHeader>
                  <CardContent>
                    <div className="grid grid-cols-4 gap-2" style={{ fontFamily: '"Traditional Arabic", "Scheherazade New", serif' }}>
                      {alphabet.map((a, i) => (
                        <button
                          key={a.letter}
                          onClick={() => setCurrentIdx(i)}
                          className={`flex h-12 w-full items-center justify-center rounded-lg text-xl transition-colors ${
                            i === currentIdx
                              ? 'bg-primary text-primary-foreground'
                              : 'bg-accent hover:bg-accent/80'
                          }`}
                        >
                          {a.letter}
                        </button>
                      ))}
                    </div>
                  </CardContent>
                </Card>
              </div>
            </div>
          </TabsContent>

          <TabsContent value="forms" className="mt-6">
            <Card>
              <CardHeader>
                <CardTitle>Letter Forms</CardTitle>
                <CardDescription>Each Arabic letter has up to 4 forms depending on its position in a word</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="overflow-x-auto">
                  <table className="w-full text-center" style={{ fontFamily: '"Traditional Arabic", "Scheherazade New", serif' }}>
                    <thead>
                      <tr className="border-b">
                        <th className="p-3 text-sm font-medium">Letter</th>
                        <th className="p-3 text-sm font-medium">Name</th>
                        <th className="p-3 text-sm font-medium">Isolated</th>
                        <th className="p-3 text-sm font-medium">Beginning</th>
                        <th className="p-3 text-sm font-medium">Middle</th>
                        <th className="p-3 text-sm font-medium">End</th>
                      </tr>
                    </thead>
                    <tbody>
                      {alphabet.map((a) => (
                        <tr key={a.letter} className="border-b last:border-0 hover:bg-accent/50">
                          <td className="p-3 text-2xl">{a.letter}</td>
                          <td className="p-3 text-sm">{a.name}</td>
                          <td className="p-3 text-2xl text-blue-600">{a.isolated}</td>
                          <td className="p-3 text-2xl text-emerald-600">{a.beginning}</td>
                          <td className="p-3 text-2xl text-amber-600">{a.middle}</td>
                          <td className="p-3 text-2xl text-purple-600">{a.end}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="rules" className="mt-6">
            <div className="grid gap-6 md:grid-cols-2">
              {containers.map((cat) => (
                <Card key={cat.name}>
                  <CardHeader>
                    <CardTitle>{cat.name}</CardTitle>
                    <CardDescription>{cat.desc}</CardDescription>
                  </CardHeader>
                  <CardContent>
                    <div className="flex flex-wrap gap-2" style={{ fontFamily: '"Traditional Arabic", "Scheherazade New", serif' }}>
                      {cat.letters.split(', ').map((l) => (
                        <Badge key={l} variant="secondary" className="text-lg px-3 py-1">{l}</Badge>
                      ))}
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
