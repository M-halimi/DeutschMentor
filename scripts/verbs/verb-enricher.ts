import type { VerbEntry } from './types'

export interface VerbExampleRow {
  difficulty: 'beginner' | 'intermediate' | 'advanced'
  german: string
  english: string
  arabic: string
  french: string
}

export interface VerbCollocationRow {
  collocation: string
  english: string
  arabic: string
  french: string
}

export interface VerbQuestionRow {
  german: string
  english: string
  arabic: string
  french: string
}

export interface VerbMistakeRow {
  incorrect: string
  correct: string
  explanation: string
  arabic_explanation: string
  french_explanation: string
}

export interface VerbTipRow {
  tip_type: 'memory_trick' | 'usage_notes' | 'common_contexts' | 'formal_vs_informal'
  content: string
}

function p(verb: VerbEntry): string {
  return verb.infinitive.replace(/^sich\s+/, '')
}

function stem(infinitive: string): string {
  return infinitive.replace(/(en|n)$/, '')
}

function capitalize(s: string): string {
  return s.charAt(0).toUpperCase() + s.slice(1)
}

function infinitiveDisplay(verb: VerbEntry): string {
  if (verb.reflexive) return verb.infinitive
  return capitalize(verb.infinitive)
}

function duForm(st: string): string {
  if (/[dt]$/.test(st)) return `${st}est`
  if (/[sßz]$/.test(st)) return `${st}t`
  return `${st}st`
}

function erForm(st: string): string {
  if (/[dt]$/.test(st)) return `${st}et`
  return `${st}t`
}

function akkusativPrep(): string {
  const preps = ['für', 'ohne', 'durch', 'gegen', 'um', 'bis', 'entlang']
  return preps[Math.floor(Math.random() * preps.length)]
}

function dativPrep(): string {
  const preps = ['mit', 'nach', 'aus', 'zu', 'von', 'bei', 'seit', 'gegenüber']
  return preps[Math.floor(Math.random() * preps.length)]
}

export function generateExamples(verb: VerbEntry): VerbExampleRow[] {
  const base = p(verb)
  const st = stem(base)
  const capitalized = capitalize(st)
  const isSep = verb.type === 'separable'
  const prefix = verb.sep || ''
  const hasAkkusativ = verb.obj === 'akkusativ' || verb.obj === 'akkusativ_dativ'

  const results: VerbExampleRow[] = []

  const du = duForm(st)
  const er = erForm(st)

  if (verb.level === 'A1' || verb.level === 'A2') {
    if (verb.reflexive) {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${st}e mich.`,
        english: `I ${base} myself.`,
        arabic: `أنا ${verb.ar || 'أ' + base} نفسي.`,
        french: `Je me ${st}e.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du dich?`,
        english: `Do you ${base} yourself?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} نفسك؟`,
        french: `Est-ce que tu te ${st}es ?`,
      })
    } else if (verb.type === 'modal') {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${st}e das machen.`,
        english: `I ${base} to do that.`,
        arabic: `أنا ${verb.ar || 'أستطيع'} فعل ذلك.`,
        french: `Je ${st}e faire ça.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du Deutsch lernen?`,
        english: `Do you ${base} to learn German?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'تستطيع'} تعلم الألمانية؟`,
        french: `Est-ce que tu ${du} apprendre l'allemand ?`,
      })
    } else if (isSep) {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${prefix}${st}e.`,
        english: `I ${base} (${prefix}).`,
        arabic: `أنا ${verb.ar || base}.`,
        french: `Je ${st}e ${prefix}.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du ${prefix}?`,
        english: `Do you ${base}?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : verb.ar || 'ت' + base}؟`,
        french: `${capitalize(er)} du ${prefix} ?`,
      })
    } else if (hasAkkusativ) {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${st}e das.`,
        english: `I ${base} that.`,
        arabic: `أنا ${verb.ar || 'أ' + base} ذلك.`,
        french: `Je ${st}e ça.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du das?`,
        english: `Do you ${base} that?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} ذلك؟`,
        french: `Est-ce que tu ${du} ça ?`,
      })
    } else {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${st}e.`,
        english: `I ${base}.`,
        arabic: `أنا ${verb.ar || 'أ' + base}.`,
        french: `Je ${st}e.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du?`,
        english: `Do you ${base}?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base}؟`,
        french: `Est-ce que tu ${du} ?`,
      })
    }

    const auxVerb = verb.aux === 'sein' || verb.aux === 'both' ? 'ist' : 'hat'
    results.push({
      difficulty: 'intermediate',
      german: `Er ${auxVerb} gestern ${verb.p2}.`,
      english: `He ${verb.aux === 'sein' || verb.aux === 'both' ? 'went/has' : 'has'} ${verb.p2} yesterday.`,
      arabic: `هو ${verb.ar || ''} البارحة.`,
      french: `Il a ${st}é hier.`,
    })

    if (hasAkkusativ && !verb.reflexive) {
      results.push({
        difficulty: 'intermediate',
        german: `Ich ${st}e jeden Tag ${akkusativPrep()} meine Arbeit.`,
        english: `I ${base} every day for my work.`,
        arabic: `أنا ${verb.ar || 'أ' + base} كل يوم لعملي.`,
        french: `Je ${st}e tous les jours pour mon travail.`,
      })
    } else if (isSep) {
      results.push({
        difficulty: 'intermediate',
        german: `Ich muss heute ${prefix}${base}en.`,
        english: `I have to ${base} today.`,
        arabic: `يجب علي أن ${verb.ar || 'أ' + base} اليوم.`,
        french: `Je dois ${st}er aujourd'hui.`,
      })
    }
  }

  return results.slice(0, 5)
}

export function generateCollocations(verb: VerbEntry): VerbCollocationRow[] {
  const display = infinitiveDisplay(verb)
  const base = p(verb)
  const prefix = verb.sep || ''

  const results: VerbCollocationRow[] = []

  if (verb.reflexive) {
    results.push({
      collocation: `sich ${base}en + über ${verb.obj === 'akkusativ' ? 'Akkusativ' : 'Akkusativ'}`,
      english: `to ${base} about`,
      arabic: `أن ${verb.ar || 'ي' + base} عن`,
      french: `se ${base}er de`,
    })
  } else if (prefix) {
    results.push({
      collocation: `${prefix}${base}en + Dativ`,
      english: `to ${base} (sep.)`,
      arabic: `أن ${verb.ar || 'ي' + base} (منفصل)`,
      french: `${base}er (séparable)`,
    })
  } else if (verb.obj === 'akkusativ' || verb.obj === 'both') {
    results.push({
      collocation: `jdn./etw. ${base}en`,
      english: `to ${base} sb./sth.`,
      arabic: `أن ${verb.ar || 'ي' + base} شخصًا/شيئًا`,
      french: `${base}er qn./qc.`,
    })
  } else if (verb.obj === 'dativ') {
    results.push({
      collocation: `jdm. ${base}en`,
      english: `to ${base} sb. (dative)`,
      arabic: `أن ${verb.ar || 'ي' + base} لشخص`,
      french: `${base}er à qn.`,
    })
  } else {
    results.push({
      collocation: `${base}en`,
      english: `to ${base}`,
      arabic: `أن ${verb.ar || 'ي' + base}`,
      french: `${base}er`,
    })
  }

  if (verb.aux === 'sein') {
    results.push({
      collocation: `mit dem Auto ${base}en`,
      english: `to ${base} by car`,
      arabic: `أن ${verb.ar || 'ي' + base} بالسيارة`,
      french: `${base}er en voiture`,
    })
  }

  results.push({
    collocation: `${base}en + ${akkusativPrep()} + Akkusativ`,
    english: `to ${base} (with prep)`,
    arabic: `أن ${verb.ar || 'ي' + base} مع حرف جر`,
    french: `${base}er avec préposition`,
  })

  return results.slice(0, 4)
}

export function generateQuestions(verb: VerbEntry): VerbQuestionRow[] {
  const base = p(verb)
  const st = stem(base)
  const du = duForm(st)
  const capitalized = capitalize(du)
  const prefix = verb.sep || ''
  const sepStr = prefix ? ` ${prefix}` : ''
  const results: VerbQuestionRow[] = []

  results.push({
    german: `${capitalized} du gern?`,
    english: `Do you like to ${base}?`,
    arabic: `هل تحب ${verb.ar || 'أن ت' + base}؟`,
    french: `Aimes-tu ${base}er ?`,
  })

  if (verb.obj !== 'none' && !verb.reflexive) {
    results.push({
      german: `Was ${du} du${sepStr}?`,
      english: `What do you ${base}?`,
      arabic: `ماذا ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base}؟`,
      french: `Qu'est-ce que tu ${du}${sepStr} ?`,
    })
  }

  if (verb.aux === 'sein') {
    results.push({
      german: `Wann ${du} du${sepStr}?`,
      english: `When do you ${base}?`,
      arabic: `متى ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base}؟`,
      french: `Quand ${du}-tu${sepStr} ?`,
    })
  } else {
    results.push({
      german: `Wie oft ${du} du${sepStr}?`,
      english: `How often do you ${base}?`,
      arabic: `كم مرة ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base}؟`,
      french: `À quelle fréquence ${du}-tu${sepStr} ?`,
    })
  }

  if (verb.reflexive) {
    results.push({
      german: `${capitalized} du dich?`,
      english: `Do you ${base} yourself?`,
      arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} نفسك؟`,
      french: `Est-ce que tu te ${st}es ?`,
    })
  } else if (prefix) {
    results.push({
      german: `Wann ${du} du ${prefix}?`,
      english: `When do you ${prefix}${base}?`,
      arabic: `متى ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} ${prefix}؟`,
      french: `Quand est-ce que tu ${st}es ${prefix} ?`,
    })
  }

  return results.slice(0, 3)
}

export function generateMistakes(verb: VerbEntry): VerbMistakeRow[] {
  const base = p(verb)
  const st = stem(base)
  const display = infinitiveDisplay(verb)
  const prefix = verb.sep || ''
  const results: VerbMistakeRow[] = []

  if (verb.reflexive) {
    results.push({
      incorrect: `Ich ${st}e.`,
      correct: `Ich ${st}e mich.`,
      explanation: `"${display}" is reflexive. Always include the reflexive pronoun (mich/dich/sich...).`,
      arabic_explanation: `"${display}" هو فعل انعكاسي. أضف دائماً الضمير الانعكاسي (mich/dich/sich...)`,
      french_explanation: `"${display}" est un verbe réfléchi. Ajoutez toujours le pronom réfléchi (mich/dich/sich...).`,
    })
  }

  if (prefix) {
    results.push({
      incorrect: `Ich ${st}e ${prefix}.`,
      correct: `Ich ${prefix}${st}e.`,
      explanation: `In main clauses, the prefix "${prefix}" moves to the end.`,
      arabic_explanation: `في الجمل الرئيسية، البادئة "${prefix}" تنتقل إلى النهاية.`,
      french_explanation: `Dans les propositions principales, le préfixe "${prefix}" se déplace à la fin.`,
    })
  }

  if (verb.aux === 'sein') {
    results.push({
      incorrect: `Ich habe ${verb.p2}.`,
      correct: `Ich bin ${verb.p2}.`,
      explanation: `"${display}" uses "sein" as auxiliary in Perfekt tense, not "haben".`,
      arabic_explanation: `"${display}" يستخدم "sein" كفعل مساعد في زمن Perfekt، ليس "haben".`,
      french_explanation: `"${display}" utilise "sein" comme auxiliaire au Perfekt, pas "haben".`,
    })
  } else if (verb.aux === 'haben' && !verb.reflexive) {
    results.push({
      incorrect: `Ich bin ${verb.p2}.`,
      correct: `Ich habe ${verb.p2}.`,
      explanation: `"${display}" uses "haben" as auxiliary in Perfekt tense, not "sein".`,
      arabic_explanation: `"${display}" يستخدم "haben" كفعل مساعد في زمن Perfekt، ليس "sein".`,
      french_explanation: `"${display}" utilise "haben" comme auxiliaire au Perfekt, pas "sein".`,
    })
  }

  const inseparablePrefixes = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss']
  const hasInsep = inseparablePrefixes.some(ip => base.startsWith(ip))
  if (hasInsep) {
    results.push({
      incorrect: `Ich habe ge${base}t.`,
      correct: `Ich habe ${base}t.`,
      explanation: `Verbs with inseparable prefixes don't add "ge-" in Partizip II.`,
      arabic_explanation: `الأفعال ذات البادئات غير المنفصلة لا تضيف "ge-" في Partizip II.`,
      french_explanation: `Les verbes à préfixe inséparable n'ajoutent pas "ge-" au Partizip II.`,
    })
  }

  return results.slice(0, 2)
}

export function generateTips(verb: VerbEntry): VerbTipRow[] {
  const display = infinitiveDisplay(verb)
  const base = p(verb)
  const results: VerbTipRow[] = []

  if (verb.reflexive) {
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" is reflexive. The reflexive pronoun changes based on the subject: mich (ich), dich (du), sich (er/sie/es/man), uns (wir), euch (ihr), sich (sie/Sie).`,
    })
  }

  if (verb.sep) {
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" is a separable verb. The prefix "${verb.sep}" separates in main clauses and goes to the end. In subordinate clauses (with "weil", "dass"), the whole verb stays together at the end.`,
    })
  }

  if (verb.type === 'regular') {
    results.push({
      tip_type: 'memory_trick',
      content: `"${display}" is a regular verb - it follows standard conjugation patterns. The past participle adds "ge-" + stem + "-t": ${verb.p2}.`,
    })
  }

  if (verb.type === 'irregular') {
    results.push({
      tip_type: 'memory_trick',
      content: `"${display}" is an irregular (strong) verb. You need to memorize the stem changes: especially the Präteritum and Partizip II forms. The past participle ends in "-en".`,
    })
  }

  if (verb.aux === 'sein') {
    results.push({
      tip_type: 'common_contexts',
      content: `"${display}" uses "sein" as auxiliary. These are typically verbs of movement (change of location) or state change. In Perfekt: ich bin ${verb.p2}.`,
    })
  }

  if (verb.type === 'modal') {
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" is a modal verb. It modifies other verbs and takes the infinitive at the end of the sentence.`,
    })
  }

  if (verb.obj === 'dativ') {
    results.push({
      tip_type: 'common_contexts',
      content: `"${display}" takes the dative case. This is important for object pronouns: mir (to me), dir (to you), ihm (to him), ihr (to her), uns (to us), euch (to you), ihnen (to them).`,
    })
  }

  return results.slice(0, 3)
}
