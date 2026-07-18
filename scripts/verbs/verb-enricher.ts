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

/** Return the "full" infinitive (for display) */
function fullInf(verb: VerbEntry): string {
  return verb.infinitive.replace(/^sich\s+/, '')
}

/** Strip the separable prefix from the infinitive to get the bare verb string */
function baseInf(verb: VerbEntry): string {
  const inf = p(verb)
  return verb.sep ? inf.slice(verb.sep.length) : inf
}

/** Stem of the bare verb (no prefix) */
function baseStem(verb: VerbEntry): string {
  return baseInf(verb).replace(/(en|n)$/, '')
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
  const bSt = baseStem(verb)             // stem WITHOUT prefix
  const st = stem(base)                  // full infinitive stem (with prefix, for non-separable forms)
  const capitalized = capitalize(bSt)
  const isSep = verb.type === 'separable'
  const prefix = verb.sep || ''
  const hasAkkusativ = verb.obj === 'akkusativ' || verb.obj === 'akkusativ_dativ'

  const results: VerbExampleRow[] = []

  const du = duForm(bSt)                // conjugated du from BASE stem
  const er = erForm(bSt)

  if (verb.level === 'A1' || verb.level === 'A2') {
    if (verb.reflexive) {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${bSt}e mich.`,
        english: `I ${base} myself.`,
        arabic: `أنا ${verb.ar || 'أ' + base} نفسي.`,
        french: `Je me ${bSt}e.`,
      })
      results.push({
        difficulty: 'beginner',
        german: `${capitalize(du)} du dich?`,
        english: `Do you ${base} yourself?`,
        arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} نفسك؟`,
        french: `Est-ce que tu te ${bSt}es ?`,
      })
    } else if (verb.type === 'modal') {
      results.push({
        difficulty: 'beginner',
        german: `Ich ${bSt}e das machen.`,
        english: `I ${base} to do that.`,
        arabic: `أنا ${verb.ar || 'أستطيع'} فعل ذلك.`,
        french: `Je ${bSt}e faire ça.`,
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
        german: `Ich ${bSt}e ${prefix}.`,
        english: `I ${base} (${prefix}).`,
        arabic: `أنا ${verb.ar || base}.`,
        french: `Je ${bSt}e ${prefix}.`,
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
        german: `Ich ${bSt}e das.`,
        english: `I ${base} that.`,
        arabic: `أنا ${verb.ar || 'أ' + base} ذلك.`,
        french: `Je ${bSt}e ça.`,
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
        german: `Ich ${bSt}e.`,
        english: `I ${base}.`,
        arabic: `أنا ${verb.ar || 'أ' + base}.`,
        french: `Je ${bSt}e.`,
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
      french: `Il a ${bSt}é hier.`,
    })

    if (hasAkkusativ && !verb.reflexive) {
      results.push({
        difficulty: 'intermediate',
        german: `Ich ${bSt}e jeden Tag ${akkusativPrep()} meine Arbeit.`,
        english: `I ${base} every day for my work.`,
        arabic: `أنا ${verb.ar || 'أ' + base} كل يوم لعملي.`,
        french: `Je ${bSt}e tous les jours pour mon travail.`,
      })
    } else if (isSep) {
      results.push({
        difficulty: 'intermediate',
        german: `Ich muss heute ${verb.infinitive}.`,
        english: `I have to ${base} today.`,
        arabic: `يجب علي أن ${verb.ar || 'أ' + base} اليوم.`,
        french: `Je dois ${bSt}er aujourd'hui.`,
      })
    }
  }

  return results.slice(0, 5)
}

export function generateCollocations(verb: VerbEntry): VerbCollocationRow[] {
  const display = infinitiveDisplay(verb)
  const inf = fullInf(verb)
  const prefix = verb.sep || ''

  const results: VerbCollocationRow[] = []

  if (verb.reflexive) {
    results.push({
      collocation: `sich ${inf} + über ${verb.obj === 'akkusativ' ? 'Akkusativ' : 'Akkusativ'}`,
      english: `to ${inf} about`,
      arabic: `أن ${verb.ar || 'ي' + inf} عن`,
      french: `se ${inf}er de`,
    })
  } else if (prefix) {
    results.push({
      collocation: `${inf} + Dativ`,
      english: `to ${inf} (sep.)`,
      arabic: `أن ${verb.ar || 'ي' + inf} (منفصل)`,
      french: `${inf}er (séparable)`,
    })
  } else if (verb.obj === 'akkusativ' || verb.obj === 'both') {
    results.push({
      collocation: `jdn./etw. ${inf}`,
      english: `to ${inf} sb./sth.`,
      arabic: `أن ${verb.ar || 'ي' + inf} شخصًا/شيئًا`,
      french: `${inf}er qn./qc.`,
    })
  } else if (verb.obj === 'dativ') {
    results.push({
      collocation: `jdm. ${inf}`,
      english: `to ${inf} sb. (dative)`,
      arabic: `أن ${verb.ar || 'ي' + inf} لشخص`,
      french: `${inf}er à qn.`,
    })
  } else {
    results.push({
      collocation: `${inf}`,
      english: `to ${inf}`,
      arabic: `أن ${verb.ar || 'ي' + inf}`,
      french: `${inf}er`,
    })
  }

  if (verb.aux === 'sein') {
    results.push({
      collocation: `mit dem Auto ${inf}`,
      english: `to ${inf} by car`,
      arabic: `أن ${verb.ar || 'ي' + inf} بالسيارة`,
      french: `${inf}er en voiture`,
    })
  }

  results.push({
    collocation: `${inf} + ${akkusativPrep()} + Akkusativ`,
    english: `to ${inf} (with prep)`,
    arabic: `أن ${verb.ar || 'ي' + inf} مع حرف جر`,
    french: `${inf}er avec préposition`,
  })

  return results.slice(0, 4)
}

export function generateQuestions(verb: VerbEntry): VerbQuestionRow[] {
  const inf = fullInf(verb)
  const bSt = baseStem(verb)
  const du = duForm(bSt)
  const capitalized = capitalize(du)
  const prefix = verb.sep || ''
  const results: VerbQuestionRow[] = []

  results.push({
    german: `${capitalized} du gern${prefix ? ` ${prefix}` : ''}?`,
    english: `Do you like to ${inf}?`,
    arabic: `هل تحب ${verb.ar || 'أن ت' + inf}؟`,
    french: `Aimes-tu ${inf}er ?`,
  })

  if (verb.obj !== 'none' && !verb.reflexive) {
    const withSep = prefix ? ` ${prefix}` : ''
    results.push({
      german: `Was ${du} du${withSep}?`,
      english: `What do you ${inf}?`,
      arabic: `ماذا ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf}؟`,
      french: `Qu'est-ce que tu ${du}${withSep} ?`,
    })
  }

  const withSep = prefix ? ` ${prefix}` : ''
  if (verb.aux === 'sein') {
    results.push({
      german: `Wann ${du} du${withSep}?`,
      english: `When do you ${inf}?`,
      arabic: `متى ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf}؟`,
      french: `Quand ${du}-tu${withSep} ?`,
    })
  } else {
    results.push({
      german: `Wie oft ${du} du${withSep}?`,
      english: `How often do you ${inf}?`,
      arabic: `كم مرة ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf}؟`,
      french: `À quelle fréquence ${du}-tu${withSep} ?`,
    })
  }

  if (verb.reflexive) {
    results.push({
      german: `${capitalized} du dich${prefix ? ` ${prefix}` : ''}?`,
      english: `Do you ${inf} yourself?`,
      arabic: `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf} نفسك؟`,
      french: `Est-ce que tu te ${bSt}es${prefix ? ` ${prefix}` : ''} ?`,
    })
  } else if (prefix) {
    results.push({
      german: `Wann ${du} du ${prefix}?`,
      english: `When do you ${inf}?`,
      arabic: `متى ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf} ${prefix}؟`,
      french: `Quand est-ce que tu ${bSt}es ${prefix} ?`,
    })
  }

  return results.slice(0, 3)
}

export function generateMistakes(verb: VerbEntry): VerbMistakeRow[] {
  const base = p(verb)
  const bSt = baseStem(verb)
  const display = infinitiveDisplay(verb)
  const prefix = verb.sep || ''
  const results: VerbMistakeRow[] = []

  if (verb.reflexive) {
    results.push({
      incorrect: `Ich ${bSt}e.`,
      correct: `Ich ${bSt}e mich.`,
      explanation: `"${display}" is reflexive. Always include the reflexive pronoun (mich/dich/sich...).`,
      arabic_explanation: `"${display}" هو فعل انعكاسي. أضف دائماً الضمير الانعكاسي (mich/dich/sich...)`,
      french_explanation: `"${display}" est un verbe réfléchi. Ajoutez toujours le pronom réfléchi (mich/dich/sich...).`,
    })
  }

  if (prefix) {
    results.push({
      incorrect: `Ich ${prefix}${bSt}e.`,
      correct: `Ich ${bSt}e ${prefix}.`,
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
