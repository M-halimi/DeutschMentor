import type { VerbEntry, ReflexivePronounCase } from './types'

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

function baseInf(verb: VerbEntry): string {
  const inf = p(verb)
  return verb.sep ? inf.slice(verb.sep!.length) : inf
}

function baseStem(verb: VerbEntry): string {
  return baseInf(verb).replace(/(en|n)$/, '')
}

function stem(infinitive: string): string {
  return infinitive.replace(/(en|n)$/, '')
}

function capitalize(s: string): string {
  return s.charAt(0).toUpperCase() + s.slice(1)
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

function getReflexivePronoun(person: string, reflexiveCase: ReflexivePronounCase = 'akkusativ'): string {
  const akk: Record<string, string> = { ich: 'mich', du: 'dich', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }
  const dat: Record<string, string> = { ich: 'mir', du: 'dir', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }
  return reflexiveCase === 'dativ' ? dat[person] ?? 'sich' : akk[person] ?? 'sich'
}

// Verbs that MANDATORILY require a direct object (in addition to reflexive pronoun)
const VERBS_REQUIRING_OBJECT = new Set([
  'sich wünschen', 'sich abgewöhnen', 'sich angewöhnen', 'sich vorstellen', 'sich merken',
  'sich vornehmen',
]);

// Verbs that require BOTH a direct object AND a preposition
const VERBS_REQUIRING_OBJECT_AND_PREP = new Set([
  'sich gewöhnen',
]);

// Verbs that optionally take a body part/clothing object (changes reflexive to dativ)
const VERBS_WITH_OPTIONAL_BODY_PART = new Set([
  'sich waschen', 'sich rasieren', 'sich kämmen', 'sich anziehen', 'sich ausziehen',
]);

function getPlaceholder(verb: VerbEntry): string {
  if (VERBS_REQUIRING_OBJECT.has(verb.infinitive)) return 'etwas'
  if (VERBS_REQUIRING_OBJECT_AND_PREP.has(verb.infinitive)) return 'etwas'
  if (verb.objectPlaceholder) return verb.objectPlaceholder
  if ((verb.prep ?? verb.requiredPreposition)) return 'etwas'
  if (verb.obj === 'akkusativ' || verb.obj === 'both' || verb.obj === 'akkusativ_dativ') return 'etwas'
  if (verb.obj === 'dativ') return 'jemandem'
  return ''
}

function requiresDirectObject(verb: VerbEntry): boolean {
  return VERBS_REQUIRING_OBJECT.has(verb.infinitive) || (verb.obj !== undefined && verb.obj !== 'none')
}

function requiresObjectAndPrep(verb: VerbEntry): boolean {
  return false
  // Replaced by DB-driven prep field. Previously: VERBS_REQUIRING_OBJECT_AND_PREP.has(verb.infinitive)
}

function hasOptionalBodyPart(verb: VerbEntry): boolean {
  return VERBS_WITH_OPTIONAL_BODY_PART.has(verb.infinitive)
}

function getFullExample(verb: VerbEntry, person: string, tense: 'present' | 'perfekt' = 'present'): string {
  const base = p(verb)
  const bSt = baseStem(verb)
  const prefix = verb.sep || ''
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const reflPron = getReflexivePronoun(person, reflCase)
  
  // Build the verb form
  let verbForm = ''
  if (tense === 'present') {
    if (person === 'ich') verbForm = `${bSt}e`
    else if (person === 'du') verbForm = duForm(bSt)
    else if (person === 'er_sie_es') verbForm = erForm(bSt)
    else if (person === 'wir') verbForm = `${bSt}en`
    else if (person === 'ihr') verbForm = `${bSt}t`
    else if (person === 'Sie') verbForm = `${bSt}en`
  }
  
  const placeholder = getPlaceholder(verb)
  const prep = (verb.prep ?? verb.requiredPreposition) || ''
  
  let example = `Ich ${verbForm} ${reflPron}`
  const fullInf = verb.infinitive
  if (requiresDirectObject(verb) || requiresObjectAndPrep(verb)) {
    example += ` ${placeholder}`
  }
  if (prep) {
    example += ` ${prep} ${placeholder}`
  }
  if (prefix) {
    example += ` ${prefix}`
  }
  
  return example
}

export function generateExamples(verb: VerbEntry): VerbExampleRow[] {
  const base = p(verb)
  const bSt = baseStem(verb)
  const prefix = verb.sep || ''
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const placeholder = getPlaceholder(verb)
  const prep = (verb.prep ?? verb.requiredPreposition) || ''
  
  const results: VerbExampleRow[] = []

  const du = duForm(bSt)
  const er = erForm(bSt)

  // Beginner examples - present tense
  if (verb.level === 'A1' || verb.level === 'A2') {
    if (verb.reflexive) {
      const ichPron = getReflexivePronoun('ich', reflCase)
      const duPron = getReflexivePronoun('du', reflCase)
      
      // Build complete sentence
      let ichSentence = `Ich ${bSt}e ${ichPron}`
      let duSentence = `${capitalize(du)} du ${duPron}`
      
      const needsObj = requiresDirectObject(verb) || requiresObjectAndPrep(verb)
      if (requiresDirectObject(verb) || requiresObjectAndPrep(verb)) {
        ichSentence += ` ${placeholder}`
        duSentence += ` ${placeholder}`
      }
      if (prep) {
        ichSentence += ` ${prep} ${placeholder}`
        duSentence += ` ${prep} ${placeholder}`
      }
      if (prefix) {
        ichSentence += ` ${prefix}`
        duSentence += ` ${prefix}`
      }
      
      results.push({
        difficulty: 'beginner',
        german: ichSentence + '.',
        english: reflCase === 'dativ'
          ? `I ${base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
          : `I ${base} myself${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
        arabic: reflCase === 'dativ'
          ? `أنا ${verb.ar || 'أ' + base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
          : `أنا ${verb.ar || 'أ' + base} نفسي${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
        french: reflCase === 'dativ'
          ? `Je ${bSt}e${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
          : `Je me ${bSt}e${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
      })
      
      results.push({
        difficulty: 'beginner',
        german: duSentence + '?',
        english: reflCase === 'dativ'
          ? `Do you ${base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}?`
          : `Do you ${base} yourself${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}?`,
        arabic: reflCase === 'dativ'
          ? `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}؟`
          : `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + base} نفسك${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}؟`,
        french: reflCase === 'dativ'
          ? `Est-ce que tu ${bSt}es${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''} ?`
          : `Est-ce que tu te ${bSt}es${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''} ?`,
      })
    }
  }

  // Intermediate - Perfekt (correct word order: auxiliary + pronoun + object + participle)
  let perfekt = `Er hat`
  if (verb.reflexive) {
    // Reflexive pronoun goes after auxiliary, before object and participle
    perfekt += ` ${getReflexivePronoun('er_sie_es', reflCase)}`
  }
  if (requiresDirectObject(verb) || requiresObjectAndPrep(verb)) {
    perfekt += ` ${placeholder}`
  }
  if (prep) {
    perfekt += ` ${prep} ${placeholder}`
  }
  perfekt += ` ${verb.p2}`
  
  results.push({
    difficulty: 'intermediate',
    german: perfekt + '.',
    english: `He has ${verb.p2} yesterday.`,
    arabic: `هو ${verb.ar || ''} البارحة.`,
    french: `Il a ${bSt}é hier.`,
  })

  // Advanced - with object/preposition
  if (requiresDirectObject(verb) || requiresObjectAndPrep(verb) || prep) {
    let advSentence = `Ich ${bSt}e`
    if (verb.reflexive) advSentence += ` ${getReflexivePronoun('ich', reflCase)}`
    if (requiresDirectObject(verb) || requiresObjectAndPrep(verb)) advSentence += ` ${placeholder}`
    if (prep) advSentence += ` ${prep} ${placeholder}`
    if (prefix) advSentence += ` ${prefix}`
    
    results.push({
      difficulty: 'advanced',
      german: advSentence + '.',
      english: reflCase === 'dativ'
        ? `I ${base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
        : `I ${base} myself${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
      arabic: reflCase === 'dativ'
        ? `أنا ${verb.ar || 'أ' + base}${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
        : `أنا ${verb.ar || 'أ' + base} نفسي${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
      french: reflCase === 'dativ'
        ? `Je ${bSt}e${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`
        : `Je me ${bSt}e${requiresDirectObject(verb) || requiresObjectAndPrep(verb) ? ` ${placeholder}` : ''}${prep ? ` ${prep} ${placeholder}` : ''}.`,
    })
  }

  return results.slice(0, 5)
}

export function generateCollocations(verb: VerbEntry): VerbCollocationRow[] {
  const display = verb.infinitive.replace(/^sich\s+/, '')
  const inf = display
  const prefix = verb.sep || ''
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const placeholder = getPlaceholder(verb)
  const prep = (verb.prep ?? verb.requiredPreposition) || ''
  const prepCase = verb.prepositionCase || ''
  const hasBodyPart = hasOptionalBodyPart(verb)

  const results: VerbCollocationRow[] = []

  if (verb.reflexive) {
    const reflPron = reflCase === 'dativ' ? 'mir/dir/sich' : 'mich/dich/sich'
    
    if (requiresObjectAndPrep(verb)) {
      // Both object and preposition (e.g., sich gewöhnen an + Akk)
      // Structure: sich (Dat) + Akk-Objekt + Prep + Akk-Objekt
      results.push({
        collocation: `sich (${reflPron}) ${inf} ${placeholder} ${prep} ${placeholder}`,
        english: `to ${inf} ${placeholder} ${prep}`,
        arabic: `أن ${verb.ar || 'ي' + inf} ${placeholder} ${prep}`,
        french: `se ${inf}er ${placeholder} ${prep}`,
      })
    } else if (requiresDirectObject(verb)) {
      // Requires direct object (e.g., sich wünschen)
      results.push({
        collocation: `sich (${reflPron}) ${inf} ${placeholder}`,
        english: `to ${inf} ${placeholder}`,
        arabic: `أن ${verb.ar || 'ي' + inf} ${placeholder}`,
        french: `se ${inf}er ${placeholder}`,
      })
    } else if (prep) {
      // Requires preposition (e.g., sich interessieren für)
      results.push({
        collocation: `sich (${reflPron}) ${inf} ${prep} ${placeholder}`,
        english: `to ${inf} ${prep} ${placeholder}`,
        arabic: `أن ${verb.ar || 'ي' + inf} ${prep} ${placeholder}`,
        french: `se ${inf}er ${prep} ${placeholder}`,
      })
    } else {
      // Just reflexive, no object/prep needed
      results.push({
        collocation: `sich (${reflPron}) ${inf}`,
        english: `to ${inf} oneself`,
        arabic: `أن ${verb.ar || 'ي' + inf} النفس`,
        french: `se ${inf}er`,
      })
    }
  } else if (prefix) {
    results.push({
      collocation: `${inf} + Dativ`,
      english: `to ${inf} (sep.)`,
      arabic: `أن ${verb.ar || 'ي' + inf} (منفصل)`,
      french: `${inf}er (séparable)`,
    })
  } else if (verb.obj === 'akkusativ' || verb.obj === 'both' || verb.obj === 'akkusativ_dativ') {
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

  return results.slice(0, 4)
}

export function generateQuestions(verb: VerbEntry): VerbQuestionRow[] {
  const inf = verb.infinitive.replace(/^sich\s+/, '')
  const bSt = baseStem(verb)
  const du = duForm(bSt)
  const capitalized = capitalize(du)
  const prefix = verb.sep || ''
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const results: VerbQuestionRow[] = []

  results.push({
    german: `${capitalized} du gern${prefix ? ` ${prefix}` : ''}?`,
    english: `Do you like to ${inf}?`,
    arabic: `هل تحب ${verb.ar || 'أن ت' + inf}؟`,
    french: `Aimes-tu ${inf}er ?`,
  })

  if (verb.reflexive) {
    const duRefl = getReflexivePronoun('du', reflCase)
    results.push({
      german: `${capitalized} du ${duRefl}${prefix ? ` ${prefix}` : ''}?`,
      english: reflCase === 'dativ'
        ? `Do you ${inf} (for yourself)?`
        : `Do you ${inf} yourself?`,
      arabic: reflCase === 'dativ'
        ? `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf} (لنفسك)؟`
        : `هل ${verb.ar ? 'ت' + verb.ar.slice(1) : 'ت' + inf} نفسك؟`,
      french: reflCase === 'dativ'
        ? `Est-ce que tu ${bSt}es${prefix ? ` ${prefix}` : ''} (pour toi) ?`
        : `Est-ce que tu te ${bSt}es${prefix ? ` ${prefix}` : ''} ?`,
    })
  } else if (verb.obj !== 'none') {
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

  return results.slice(0, 3)
}

export function generateMistakes(verb: VerbEntry): VerbMistakeRow[] {
  const base = p(verb)
  const bSt = baseStem(verb)
  const display = verb.infinitive.replace(/^sich\s+/, '')
  const prefix = verb.sep || ''
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const placeholder = getPlaceholder(verb)
  const prep = (verb.prep ?? verb.requiredPreposition) || ''
  const hasDirectObj = requiresDirectObject(verb)
  const needsObj = hasDirectObj && !prep
  const results: VerbMistakeRow[] = []

  // Combined reflexiv + object + separable mistake (all in one)
  if (verb.reflexive) {
    const ichPron = getReflexivePronoun('ich', reflCase)
    let incorrect = `Ich ${bSt}e.`
    let correct = `Ich ${bSt}e ${ichPron}`
    if (needsObj) correct += ` ${placeholder}`
    if (prep) correct += ` ${prep} ${placeholder}`
    if (prefix) correct += ` ${prefix}`
    correct += '.'

    let explanation = `"${display}" is reflexive. Always include the reflexive pronoun (${reflCase === 'dativ' ? 'mir/dir/sich' : 'mich/dich/sich'})`
    if (needsObj) explanation += ` and a direct object (${placeholder})`
    if (prep) explanation += ` with the preposition "${prep}"`
    explanation += '.'
    results.push({ incorrect, correct, explanation,
      arabic_explanation: `"${display}" هو فعل انعكاسي. أضف دائماً الضمير الانعكاسي${needsObj || prep ? ' والمفعول به' : ''}.`,
      french_explanation: `"${display}" est un verbe réfléchi. Ajoutez toujours le pronom réfléchi${needsObj || prep ? ' et un objet' : ''}.`,
    })
  }

  if (prefix && !verb.reflexive) {
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
  const display = verb.infinitive.replace(/^sich\s+/, '')
  const reflCase = verb.reflexivePronounCase || 'akkusativ'
  const results: VerbTipRow[] = []

  if (verb.reflexive) {
    let pronounDesc = ''
    if (reflCase === 'dativ') {
      pronounDesc = 'Dativ (mir/dir/sich/uns/euch/sich)'
    } else if (reflCase === 'both') {
      pronounDesc = 'Akkusativ or Dativ depending on context: e.g., "Ich wasche mich" vs "Ich wasche mir die Hände"'
    } else {
      pronounDesc = 'Akkusativ (mich/dich/sich/uns/euch/sich)'
    }
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" is reflexive (${pronounDesc}).`,
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

  if (verb.requiresObject) {
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" requires an object (${verb.objectPlaceholder || 'etwas'}). Don't forget to include it in your sentences.`,
    })
  }

  if ((verb.prep ?? verb.requiredPreposition)) {
    results.push({
      tip_type: 'usage_notes',
      content: `"${display}" requires the preposition "${(verb.prep ?? verb.requiredPreposition)}" (+ ${verb.prepositionCase}). Always use it: sich ${p(verb)} ${(verb.prep ?? verb.requiredPreposition)} ${verb.objectPlaceholder || 'etwas'}.`,
    })
  }

  if (verb.reflexivePronounCase === 'dativ') {
    results.push({
      tip_type: 'memory_trick',
      content: `"${display}" has a TRUE dativ reflexive pronoun (mir/dir/sich). This happens when there's also an Akkusativ object: "Ich wünsche mir ein Auto." The pattern is: sich (Dat) + Akkusativ-Objekt.`,
    })
  }

  return results.slice(0, 3)
}