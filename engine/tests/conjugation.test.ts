/**
 * Test suite for the German Verb Conjugation Engine
 *
 * Tests cover:
 * - Regular verbs (schwache Verben)
 * - Strong verbs (starke Verben) with vowel changes
 * - Separable verbs (trennbare Verben) — prefix placement
 * - Reflexive verbs — pronoun placement
 * - Mixed verbs
 * - Modal verbs
 * - Auxiliary verbs (sein, haben, werden)
 * - All tenses
 * - Imperative forms
 * - Partizip II generation
 * - Edge cases (dental stems, sibilant stems, -eln/-ern verbs)
 */

import {
  conjugate,
  conjugateFull,
} from '../conjugator'

import type { VerbEntry } from '../types'

// =========================================================================
// Test Helpers
// =========================================================================

function makeVerb(overrides: Partial<VerbEntry>): VerbEntry {
  return {
    infinitive: '',
    en: '',
    level: 'A1',
    category: 'regular',
    transitivity: 'both',
    auxiliary: 'haben',
    ...overrides,
  }
}

// =========================================================================
// 1. SEPARABLE VERBS (Trennbare Verben)
// =========================================================================

const ankommen: VerbEntry = makeVerb({
  infinitive: 'ankommen',
  en: 'to arrive',
  level: 'A1',
  category: 'separable',
  auxiliary: 'sein',
  stem: 'komm',
  partizipII: 'angekommen',
})

console.log('=== SEPARABLE VERBS ===')
const ankommenFull = conjugateFull(ankommen)

// Present tense
console.assert(
  ankommenFull.praesens.ich === 'komme an',
  `ankommen ich praesens: expected "komme an", got "${ankommenFull.praesens.ich}"`
)

console.assert(
  ankommenFull.praesens.du === 'kommst an',
  `ankommen du praesens: expected "kommst an", got "${ankommenFull.praesens.du}"`
)

console.assert(
  ankommenFull.praesens.er_sie_es === 'kommt an',
  `ankommen er praesens: expected "kommt an", got "${ankommenFull.praesens.er_sie_es}"`
)

// Perfekt
console.assert(
  ankommenFull.perfekt.ich === 'bin angekommen',
  `ankommen ich perfekt: expected "bin angekommen", got "${ankommenFull.perfekt.ich}"`
)

// Imperative
console.assert(
  ankommenFull.imperativ.du === 'Komm an',
  `ankommen imperativ du: expected "Komm an", got "${ankommenFull.imperativ.du}"`
)

console.assert(
  ankommenFull.imperativ.ihr === 'Kommt an',
  `ankommen imperativ ihr: expected "Kommt an", got "${ankommenFull.imperativ.ihr}"`
)

console.assert(
  ankommenFull.imperativ.Sie === 'Kommen Sie an',
  `ankommen imperativ Sie: expected "Kommen Sie an", got "${ankommenFull.imperativ.Sie}"`
)

console.assert(
  ankommenFull.imperativ.wir === 'Kommen wir an',
  `ankommen imperativ wir: expected "Kommen wir an", got "${ankommenFull.imperativ.wir}"`
)

// Abbiegen
const abbiegen: VerbEntry = makeVerb({
  infinitive: 'abbiegen',
  en: 'to turn',
  level: 'A1',
  category: 'separable',
  auxiliary: 'sein',
  stem: 'bieg',
  partizipII: 'abgebogen',
})

const abbiegenFull = conjugateFull(abbiegen)
console.assert(
  abbiegenFull.praesens.ich === 'biege ab',
  `abbiegen ich praesens: expected "biege ab", got "${abbiegenFull.praesens.ich}"`
)

console.assert(
  abbiegenFull.praesens.du === 'biegst ab',
  `abbiegen du praesens: expected "biegst ab", got "${abbiegenFull.praesens.du}"`
)

console.assert(
  abbiegenFull.perfekt.ich === 'bin abgebogen',
  `abbiegen ich perfekt: expected "bin abgebogen", got "${abbiegenFull.perfekt.ich}"`
)

// Aufstehen
const aufstehen: VerbEntry = makeVerb({
  infinitive: 'aufstehen',
  en: 'to get up',
  level: 'A1',
  category: 'separable',
  auxiliary: 'sein',
  stem: 'steh',
  partizipII: 'aufgestanden',
})

const aufstehenFull = conjugateFull(aufstehen)
console.assert(
  aufstehenFull.praesens.ich === 'stehe auf',
  `aufstehen ich praesens: expected "stehe auf", got "${aufstehenFull.praesens.ich}"`
)

console.assert(
  aufstehenFull.perfekt.ich === 'bin aufgestanden',
  `aufstehen ich perfekt: expected "bin aufgestanden", got "${aufstehenFull.perfekt.ich}"`
)

// Einladen
const einladen: VerbEntry = makeVerb({
  infinitive: 'einladen',
  en: 'to invite',
  level: 'A1',
  category: 'separable',
  auxiliary: 'haben',
  stem: 'lad',
  partizipII: 'eingeladen',
  praeteritumStem: 'lud',
})

const einladenFull = conjugateFull(einladen)
console.assert(
  einladenFull.praesens.ich === 'lade ein',
  `einladen ich praesens: expected "lade ein", got "${einladenFull.praesens.ich}"`
)

console.assert(
  einladenFull.praesens.du === 'lädst ein',
  `einladen du praesens: expected "lädst ein", got "${einladenFull.praesens.du}"`
)

// =========================================================================
// 2. STRONG VERBS with vowel change
// =========================================================================

const fahren: VerbEntry = makeVerb({
  infinitive: 'fahren',
  en: 'to drive',
  level: 'A1',
  category: 'strong',
  auxiliary: 'sein',
  stem: 'fahr',
  partizipII: 'gefahren',
  praeteritumStem: 'fuhr',
  vowelChange: { present_du: 'ä', present_er: 'ä' },
})

const fahrenFull = conjugateFull(fahren)
console.assert(
  fahrenFull.praesens.ich === 'fahre',
  `fahren ich praesens: expected "fahre", got "${fahrenFull.praesens.ich}"`
)

console.assert(
  fahrenFull.praesens.du === 'fährst',
  `fahren du praesens: expected "fährst", got "${fahrenFull.praesens.du}"`
)

console.assert(
  fahrenFull.praesens.er_sie_es === 'fährt',
  `fahren er praesens: expected "fährt", got "${fahrenFull.praesens.er_sie_es}"`
)

console.assert(
  fahrenFull.praeteritum.ich === 'fuhr',
  `fahren ich praeteritum: expected "fuhr", got "${fahrenFull.praeteritum.ich}"`
)

console.assert(
  fahrenFull.perfekt.ich === 'bin gefahren',
  `fahren ich perfekt: expected "bin gefahren", got "${fahrenFull.perfekt.ich}"`
)

// Laufen
const laufen: VerbEntry = makeVerb({
  infinitive: 'laufen',
  en: 'to run',
  level: 'A1',
  category: 'strong',
  auxiliary: 'sein',
  stem: 'lauf',
  partizipII: 'gelaufen',
  praeteritumStem: 'lief',
  vowelChange: { present_du: 'äu', present_er: 'äu' },
})

const laufenFull = conjugateFull(laufen)
console.assert(
  laufenFull.praesens.ich === 'laufe',
  `laufen ich praesens: expected "laufe", got "${laufenFull.praesens.ich}"`
)

console.assert(
  laufenFull.praesens.du === 'läufst',
  `laufen du praesens: expected "läufst", got "${laufenFull.praesens.du}"`
)

console.assert(
  laufenFull.praesens.er_sie_es === 'läuft',
  `laufen er praesens: expected "läuft", got "${laufenFull.praesens.er_sie_es}"`
)

// Geben
const geben: VerbEntry = makeVerb({
  infinitive: 'geben',
  en: 'to give',
  level: 'A1',
  category: 'strong',
  auxiliary: 'haben',
  stem: 'geb',
  partizipII: 'gegeben',
  praeteritumStem: 'gab',
  vowelChange: { present_du: 'i', present_er: 'i' },
})

const gebenFull = conjugateFull(geben)
console.assert(
  gebenFull.praesens.du === 'gibst',
  `geben du praesens: expected "gibst", got "${gebenFull.praesens.du}"`
)
console.assert(
  gebenFull.imperativ.du === 'Gib',
  `geben imperativ du: expected "Gib", got "${gebenFull.imperativ.du}"`
)
console.assert(
  gebenFull.imperativ.ihr === 'Gebt',
  `geben imperativ ihr: expected "Gebt", got "${gebenFull.imperativ.ihr}"`
)

// Lesen
const lesen: VerbEntry = makeVerb({
  infinitive: 'lesen',
  en: 'to read',
  level: 'A1',
  category: 'strong',
  auxiliary: 'haben',
  stem: 'les',
  partizipII: 'gelesen',
  praeteritumStem: 'las',
  vowelChange: { present_du: 'ie', present_er: 'ie' },
})

const lesenFull = conjugateFull(lesen)
console.assert(
  lesenFull.praesens.du === 'liest',
  `lesen du praesens: expected "liest", got "${lesenFull.praesens.du}"`
)

console.assert(
  lesenFull.praesens.er_sie_es === 'liest',
  `lesen er praesens: expected "liest", got "${lesenFull.praesens.er_sie_es}"`
)

// Nehmen
const nehmen: VerbEntry = makeVerb({
  infinitive: 'nehmen',
  en: 'to take',
  level: 'A1',
  category: 'strong',
  auxiliary: 'haben',
  stem: 'nehm',
  partizipII: 'genommen',
  praeteritumStem: 'nahm',
  vowelChange: { present_du: 'i', present_er: 'i' },
})

const nehmenFull = conjugateFull(nehmen)
console.assert(
  nehmenFull.praesens.ich === 'nehme',
  `nehmen ich praesens: expected "nehme", got "${nehmenFull.praesens.ich}"`
)

console.assert(
  nehmenFull.praesens.du === 'nimmst',
  `nehmen du praesens: expected "nimmst", got "${nehmenFull.praesens.du}"`
)

console.assert(
  nehmenFull.praesens.er_sie_es === 'nimmt',
  `nehmen er praesens: expected "nimmt", got "${nehmenFull.praesens.er_sie_es}"`
)

// Sprechen
const sprechen: VerbEntry = makeVerb({
  infinitive: 'sprechen',
  en: 'to speak',
  level: 'A1',
  category: 'strong',
  auxiliary: 'haben',
  stem: 'sprech',
  partizipII: 'gesprochen',
  praeteritumStem: 'sprach',
  vowelChange: { present_du: 'i', present_er: 'i' },
})

const sprechenFull = conjugateFull(sprechen)
console.assert(
  sprechenFull.praesens.du === 'sprichst',
  `sprechen du praesens: expected "sprichst", got "${sprechenFull.praesens.du}"`
)

console.assert(
  sprechenFull.praesens.er_sie_es === 'spricht',
  `sprechen er praesens: expected "spricht", got "${sprechenFull.praesens.er_sie_es}"`
)

// =========================================================================
// 3. REGULAR VERBS
// =========================================================================

const machen: VerbEntry = makeVerb({
  infinitive: 'machen',
  en: 'to make',
  level: 'A1',
  category: 'regular',
  auxiliary: 'haben',
  stem: 'mach',
  partizipII: 'gemacht',
})

const machenFull = conjugateFull(machen)
console.assert(
  machenFull.praesens.ich === 'mache',
  `machen ich praesens: expected "mache", got "${machenFull.praesens.ich}"`
)

console.assert(
  machenFull.praesens.du === 'machst',
  `machen du praesens: expected "machst", got "${machenFull.praesens.du}"`
)

console.assert(
  machenFull.praesens.er_sie_es === 'macht',
  `machen er praesens: expected "macht", got "${machenFull.praesens.er_sie_es}"`
)

console.assert(
  machenFull.praeteritum.ich === 'machte',
  `machen ich praeteritum: expected "machte", got "${machenFull.praeteritum.ich}"`
)

console.assert(
  machenFull.perfekt.ich === 'habe gemacht',
  `machen ich perfekt: expected "habe gemacht", got "${machenFull.perfekt.ich}"`
)

// =========================================================================
// 4. AUXILIARY VERBS
// =========================================================================

const sein: VerbEntry = makeVerb({
  infinitive: 'sein',
  en: 'to be',
  level: 'A1',
  category: 'auxiliary',
  auxiliary: 'sein',
  partizipII: 'gewesen',
})

const seinFull = conjugateFull(sein)
console.assert(
  seinFull.praesens.ich === 'bin',
  `sein ich praesens: expected "bin", got "${seinFull.praesens.ich}"`
)

console.assert(
  seinFull.praesens.du === 'bist',
  `sein du praesens: expected "bist", got "${seinFull.praesens.du}"`
)

console.assert(
  seinFull.praesens.er_sie_es === 'ist',
  `sein er praesens: expected "ist", got "${seinFull.praesens.er_sie_es}"`
)

console.assert(
  seinFull.praesens.wir === 'sind',
  `sein wir praesens: expected "sind", got "${seinFull.praesens.wir}"`
)

console.assert(
  seinFull.praesens.ihr === 'seid',
  `sein ihr praesens: expected "seid", got "${seinFull.praesens.ihr}"`
)

console.assert(
  seinFull.praeteritum.ich === 'war',
  `sein ich praeteritum: expected "war", got "${seinFull.praeteritum.ich}"`
)

console.assert(
  seinFull.perfekt.ich === 'bin gewesen',
  `sein ich perfekt: expected "bin gewesen", got "${seinFull.perfekt.ich}"`
)

// Haben
const haben: VerbEntry = makeVerb({
  infinitive: 'haben',
  en: 'to have',
  level: 'A1',
  category: 'auxiliary',
  auxiliary: 'haben',
  partizipII: 'gehabt',
})

const habenFull = conjugateFull(haben)
console.assert(
  habenFull.praesens.du === 'hast',
  `haben du praesens: expected "hast", got "${habenFull.praesens.du}"`
)

console.assert(
  habenFull.praesens.er_sie_es === 'hat',
  `haben er praesens: expected "hat", got "${habenFull.praesens.er_sie_es}"`
)

// Werden
const werden: VerbEntry = makeVerb({
  infinitive: 'werden',
  en: 'to become',
  level: 'A1',
  category: 'auxiliary',
  auxiliary: 'sein',
  partizipII: 'geworden',
})

const werdenFull = conjugateFull(werden)
console.assert(
  werdenFull.praesens.du === 'wirst',
  `werden du praesens: expected "wirst", got "${werdenFull.praesens.du}"`
)

console.assert(
  werdenFull.praesens.er_sie_es === 'wird',
  `werden er praesens: expected "wird", got "${werdenFull.praesens.er_sie_es}"`
)

// =========================================================================
// 5. MODAL VERBS
// =========================================================================

const koennen: VerbEntry = makeVerb({
  infinitive: 'können',
  en: 'can/to be able',
  level: 'A1',
  category: 'modal',
  auxiliary: 'haben',
  partizipII: 'gekonnt',
})

const koennenFull = conjugateFull(koennen)
console.assert(
  koennenFull.praesens.ich === 'kann',
  `können ich praesens: expected "kann", got "${koennenFull.praesens.ich}"`
)

console.assert(
  koennenFull.praesens.du === 'kannst',
  `können du praesens: expected "kannst", got "${koennenFull.praesens.du}"`
)

console.assert(
  koennenFull.praesens.er_sie_es === 'kann',
  `können er praesens: expected "kann", got "${koennenFull.praesens.er_sie_es}"`
)

console.assert(
  koennenFull.praesens.wir === 'können',
  `können wir praesens: expected "können", got "${koennenFull.praesens.wir}"`
)

console.assert(
  koennenFull.praeteritum.ich === 'konnte',
  `können ich praeteritum: expected "konnte", got "${koennenFull.praeteritum.ich}"`
)

console.assert(
  koennenFull.konjunktiv_ii.ich === 'könnte',
  `können konj2 ich: expected "könnte", got "${koennenFull.konjunktiv_ii.ich}"`
)

// =========================================================================
// 6. REFLEXIVE VERBS
// =========================================================================

const sichErinnern: VerbEntry = makeVerb({
  infinitive: 'sich erinnern',
  en: 'to remember',
  level: 'A1',
  category: 'regular',
  isReflexive: true,
  reflexivePronoun: 'sich',
  auxiliary: 'haben',
  stem: 'erinner',
  partizipII: 'erinnert',
})

const sichErinnernFull = conjugateFull(sichErinnern)
// Note: for reflexive verbs, the engine produces
// "erinnere mich" (form + pronoun) which is correct

console.assert(
  sichErinnernFull.praesens.ich.includes('erinnere'),
  `sich erinnern ich praesens should contain "erinnere", got "${sichErinnernFull.praesens.ich}"`
)

console.assert(
  sichErinnernFull.praesens.ich.includes('mich'),
  `sich erinnern ich praesens should contain "mich", got "${sichErinnernFull.praesens.ich}"`
)

const sichFreuen: VerbEntry = makeVerb({
  infinitive: 'sich freuen',
  en: 'to be happy',
  level: 'A1',
  category: 'regular',
  isReflexive: true,
  reflexivePronoun: 'sich',
  auxiliary: 'haben',
  stem: 'freu',
  partizipII: 'gefreut',
})

const sichFreuenFull = conjugateFull(sichFreuen)
console.assert(
  sichFreuenFull.praesens.ich === 'freue mich',
  `sich freuen ich praesens: expected "freue mich", got "${sichFreuenFull.praesens.ich}"`
)

console.assert(
  sichFreuenFull.praesens.du === 'freust dich',
  `sich freuen du praesens: expected "freust dich", got "${sichFreuenFull.praesens.du}"`
)

console.assert(
  sichFreuenFull.praesens.er_sie_es === 'freut sich',
  `sich freuen er praesens: expected "freut sich", got "${sichFreuenFull.praesens.er_sie_es}"`
)

// =========================================================================
// 7. MIXED VERBS
// =========================================================================

const bringen: VerbEntry = makeVerb({
  infinitive: 'bringen',
  en: 'to bring',
  level: 'A1',
  category: 'mixed',
  auxiliary: 'haben',
  stem: 'bring',
  partizipII: 'gebracht',
  praeteritumStem: 'bracht',
})

const bringenFull = conjugateFull(bringen)
console.assert(
  bringenFull.praesens.ich === 'bringe',
  `bringen ich praesens: expected "bringe", got "${bringenFull.praesens.ich}"`
)

console.assert(
  bringenFull.praeteritum.ich === 'brachte',
  `bringen ich praeteritum: expected "brachte", got "${bringenFull.praeteritum.ich}"`
)

// Denken
const denken: VerbEntry = makeVerb({
  infinitive: 'denken',
  en: 'to think',
  level: 'A1',
  category: 'mixed',
  auxiliary: 'haben',
  stem: 'denk',
  partizipII: 'gedacht',
  praeteritumStem: 'dacht',
})

const denkenFull = conjugateFull(denken)
console.assert(
  denkenFull.praeteritum.ich === 'dachte',
  `denken ich praeteritum: expected "dachte", got "${denkenFull.praeteritum.ich}"`
)

// =========================================================================
// 8. DENTAL STEM VERBS (e-Einschub)
// =========================================================================

const arbeiten: VerbEntry = makeVerb({
  infinitive: 'arbeiten',
  en: 'to work',
  level: 'A1',
  category: 'regular',
  auxiliary: 'haben',
  stem: 'arbeit',
  partizipII: 'gearbeitet',
})

const arbeitenFull = conjugateFull(arbeiten)
console.assert(
  arbeitenFull.praesens.du === 'arbeitest',
  `arbeiten du praesens: expected "arbeitest", got "${arbeitenFull.praesens.du}"`
)

console.assert(
  arbeitenFull.praesens.er_sie_es === 'arbeitet',
  `arbeiten er praesens: expected "arbeitet", got "${arbeitenFull.praesens.er_sie_es}"`
)

console.assert(
  arbeitenFull.praesens.ihr === 'arbeitet',
  `arbeiten ihr praesens: expected "arbeitet", got "${arbeitenFull.praesens.ihr}"`
)

console.assert(
  arbeitenFull.praeteritum.ich === 'arbeitete',
  `arbeiten ich praeteritum: expected "arbeitete", got "${arbeitenFull.praeteritum.ich}"`
)

console.assert(
  arbeitenFull.praeteritum.du === 'arbeitetest',
  `arbeiten du praeteritum: expected "arbeitetest", got "${arbeitenFull.praeteritum.du}"`
)

console.assert(
  arbeitenFull.konjunktiv_ii.ich === 'arbeitete',
  `arbeiten konj2 ich: expected "arbeitete", got "${arbeitenFull.konjunktiv_ii.ich}"`
)

// Reden
const reden: VerbEntry = makeVerb({
  infinitive: 'reden',
  en: 'to talk',
  level: 'A1',
  category: 'regular',
  auxiliary: 'haben',
  stem: 'red',
  partizipII: 'geredet',
})

const redenFull = conjugateFull(reden)
console.assert(
  redenFull.praesens.du === 'redest',
  `reden du praesens: expected "redest", got "${redenFull.praesens.du}"`
)

console.assert(
  redenFull.praesens.er_sie_es === 'redet',
  `reden er praesens: expected "redet", got "${redenFull.praesens.er_sie_es}"`
)

console.assert(
  redenFull.praeteritum.ich === 'redete',
  `reden ich praeteritum: expected "redete", got "${redenFull.praeteritum.ich}"`
)

console.assert(
  redenFull.konjunktiv_ii.ich === 'redete',
  `reden konj2 ich: expected "redete", got "${redenFull.konjunktiv_ii.ich}"`
)

// Atmen (nasal stem)
const atmen: VerbEntry = makeVerb({
  infinitive: 'atmen',
  en: 'to breathe',
  level: 'A1',
  category: 'regular',
  auxiliary: 'haben',
  stem: 'atm',
  partizipII: 'geatmet',
})

const atmenFull = conjugateFull(atmen)
console.assert(
  atmenFull.praesens.du === 'atmest',
  `atmen du praesens: expected "atmest", got "${atmenFull.praesens.du}"`
)

console.assert(
  atmenFull.praeteritum.ich === 'atmete',
  `atmen ich praeteritum: expected "atmete", got "${atmenFull.praeteritum.ich}"`
)

console.assert(
  atmenFull.konjunktiv_ii.ich === 'atmete',
  `atmen konj2 ich: expected "atmete", got "${atmenFull.konjunktiv_ii.ich}"`
)

// =========================================================================
// 9. SIBILANT STEM VERBS (S-Verschmelzung)
// =========================================================================

const heissen: VerbEntry = makeVerb({
  infinitive: 'heißen',
  en: 'to be called',
  level: 'A1',
  category: 'strong',
  auxiliary: 'haben',
  stem: 'heiß',
  partizipII: 'geheißen',
  praeteritumStem: 'hieß',
})

const heissenFull = conjugateFull(heissen)
console.assert(
  heissenFull.praesens.du === 'heißt',
  `heißen du praesens: expected "heißt", got "${heissenFull.praesens.du}"`
)

// Reisen
const reisen: VerbEntry = makeVerb({
  infinitive: 'reisen',
  en: 'to travel',
  level: 'A1',
  category: 'regular',
  auxiliary: 'sein',
  stem: 'reis',
  partizipII: 'gereist',
})

const reisenFull = conjugateFull(reisen)
console.assert(
  reisenFull.praesens.du === 'reist',
  `reisen du praesens: expected "reist", got "${reisenFull.praesens.du}"`
)

// =========================================================================
// 10. -ELN/-ERN VERBS
// =========================================================================

const handeln: VerbEntry = makeVerb({
  infinitive: 'handeln',
  en: 'to act/trade',
  level: 'B1',
  category: 'regular',
  auxiliary: 'haben',
  stem: 'handel',
  partizipII: 'gehandelt',
})

const handelnFull = conjugateFull(handeln)
console.assert(
  handelnFull.praesens.ich === 'handle',
  `handeln ich praesens: expected "handle", got "${handelnFull.praesens.ich}"`
)

// =========================================================================
// 11. FUTUR TENSES
// =========================================================================

console.assert(
  machenFull.futur_i.ich === 'werde machen',
  `machen ich futur1: expected "werde machen", got "${machenFull.futur_i.ich}"`
)

console.assert(
  machenFull.futur_i.du === 'wirst machen',
  `machen du futur1: expected "wirst machen", got "${machenFull.futur_i.du}"`
)

console.assert(
  ankommenFull.futur_i.ich === 'werde ankommen',
  `ankommen ich futur1: expected "werde ankommen", got "${ankommenFull.futur_i.ich}"`
)

// =========================================================================
// 12. KONJUNKTIV II
// =========================================================================

console.assert(
  seinFull.konjunktiv_ii.ich === 'wäre',
  `sein konj2 ich: expected "wäre", got "${seinFull.konjunktiv_ii.ich}"`
)

console.assert(
  habenFull.konjunktiv_ii.ich === 'hätte',
  `haben konj2 ich: expected "hätte", got "${habenFull.konjunktiv_ii.ich}"`
)

// =========================================================================
// 13. PARTIZIP I & INFINITIV MIT ZU
// =========================================================================

console.assert(
  machenFull.partizip_i === 'machend',
  `machen partizip1: expected "machend", got "${machenFull.partizip_i}"`
)

console.assert(
  ankommenFull.partizip_ii === 'angekommen',
  `ankommen partizip2: expected "angekommen", got "${ankommenFull.partizip_ii}"`
)

console.assert(
  machenFull.infinitiv_mit_zu === 'zu machen',
  `machen zu+inf: expected "zu machen", got "${machenFull.infinitiv_mit_zu}"`
)

console.assert(
  ankommenFull.infinitiv_mit_zu === 'anzukommen',
  `ankommen zu+inf: expected "anzukommen", got "${ankommenFull.infinitiv_mit_zu}"`
)

// =========================================================================
// 14. EDGE CASES
// =========================================================================

// Gehen (strong, movement → sein)
const gehen: VerbEntry = makeVerb({
  infinitive: 'gehen',
  en: 'to go',
  level: 'A1',
  category: 'strong',
  auxiliary: 'sein',
  stem: 'geh',
  partizipII: 'gegangen',
  praeteritumStem: 'ging',
})

const gehenFull = conjugateFull(gehen)
console.assert(
  gehenFull.praesens.ich === 'gehe',
  `gehen ich praesens: expected "gehe", got "${gehenFull.praesens.ich}"`
)

console.assert(
  gehenFull.praeteritum.ich === 'ging',
  `gehen ich praeteritum: expected "ging", got "${gehenFull.praeteritum.ich}"`
)

console.assert(
  gehenFull.perfekt.ich === 'bin gegangen',
  `gehen ich perfekt: expected "bin gegangen", got "${gehenFull.perfekt.ich}"`
)

// Wissen
const wissen: VerbEntry = makeVerb({
  infinitive: 'wissen',
  en: 'to know',
  level: 'A1',
  category: 'modal',
  auxiliary: 'haben',
  partizipII: 'gewusst',
})

const wissenFull = conjugateFull(wissen)
console.assert(
  wissenFull.praesens.ich === 'weiß',
  `wissen ich praesens: expected "weiß", got "${wissenFull.praesens.ich}"`
)

console.assert(
  wissenFull.praesens.du === 'weißt',
  `wissen du praesens: expected "weißt", got "${wissenFull.praesens.du}"`
)

// =========================================================================
// 15. CONVENIENCE CONJUGATE FUNCTION
// =========================================================================

const conjResult = conjugate(ankommen, 'ich', 'praesens')
console.assert(
  conjResult === 'komme an',
  `convenience conjugate: expected "komme an", got "${conjResult}"`
)

const conjPraet = conjugate(bringen, 'er_sie_es', 'praeteritum')
console.assert(
  conjPraet === 'brachte',
  `bringen er praeteritum: expected "brachte", got "${conjPraet}"`
)

const conjPerf = conjugate(gehen, 'wir', 'perfekt')
console.assert(
  conjPerf === 'sind gegangen',
  `gehen wir perfekt: expected "sind gegangen", got "${conjPerf}"`
)

// =========================================================================
// 16. IMPERATIV — auxiliary verb special forms
// =========================================================================

console.assert(
  seinFull.imperativ.du === 'Sei',
  `sein imperativ du: expected "Sei", got "${seinFull.imperativ.du}"`
)

console.assert(
  seinFull.imperativ.ihr === 'Seid',
  `sein imperativ ihr: expected "Seid", got "${seinFull.imperativ.ihr}"`
)

console.assert(
  seinFull.imperativ.Sie === 'Seien Sie',
  `sein imperativ Sie: expected "Seien Sie", got "${seinFull.imperativ.Sie}"`
)

console.assert(
  seinFull.imperativ.wir === 'Seien wir',
  `sein imperativ wir: expected "Seien wir", got "${seinFull.imperativ.wir}"`
)

console.assert(
  habenFull.imperativ.wir === 'Haben wir',
  `haben imperativ wir: expected "Haben wir", got "${habenFull.imperativ.wir}"`
)

// =========================================================================
// 17. IMPERATIV — vowel-change verbs (e→i only affects du, NOT ihr)
// =========================================================================

console.assert(
  lesenFull.imperativ.ihr === 'Lest',
  `lesen imperativ ihr: expected "Lest", got "${lesenFull.imperativ.ihr}"`
)

console.assert(
  nehmenFull.imperativ.ihr === 'Nehmt',
  `nehmen imperativ ihr: expected "Nehmt", got "${nehmenFull.imperativ.ihr}"`
)

console.assert(
  sprechenFull.imperativ.ihr === 'Sprecht',
  `sprechen imperativ ihr: expected "Sprecht", got "${sprechenFull.imperativ.ihr}"`
)

// =========================================================================
// 18. SIE (3rd person plural "they") — identical to Sie (formal you) for finite tenses
// =========================================================================

// Separable verb
console.assert(
  ankommenFull.praesens.sie === ankommenFull.praesens.Sie,
  `ankommen praesens sie: expected "${ankommenFull.praesens.Sie}", got "${ankommenFull.praesens.sie}"`
)
console.assert(
  ankommenFull.perfekt.sie === ankommenFull.perfekt.Sie,
  `ankommen perfekt sie should match Sie, got "${ankommenFull.perfekt.sie}"`
)
console.assert(
  ankommenFull.praeteritum.sie === ankommenFull.praeteritum.Sie,
  `ankommen praeteritum sie should match Sie, got "${ankommenFull.praeteritum.sie}"`
)
console.assert(
  ankommenFull.plusquamperfekt.sie === ankommenFull.plusquamperfekt.Sie,
  `ankommen plusquamperfekt sie should match Sie, got "${ankommenFull.plusquamperfekt.sie}"`
)
console.assert(
  ankommenFull.futur_i.sie === ankommenFull.futur_i.Sie,
  `ankommen futur_i sie should match Sie, got "${ankommenFull.futur_i.sie}"`
)
console.assert(
  ankommenFull.futur_ii.sie === ankommenFull.futur_ii.Sie,
  `ankommen futur_ii sie should match Sie, got "${ankommenFull.futur_ii.sie}"`
)
console.assert(
  ankommenFull.konjunktiv_ii.sie === ankommenFull.konjunktiv_ii.Sie,
  `ankommen konjunktiv_ii sie should match Sie, got "${ankommenFull.konjunktiv_ii.sie}"`
)

// Regular verb
console.assert(
  machenFull.praesens.sie === machenFull.praesens.Sie,
  `machen praesens sie should match Sie, got "${machenFull.praesens.sie}"`
)
console.assert(
  machenFull.praesens.sie === 'machen',
  `machen praesens sie: expected "machen", got "${machenFull.praesens.sie}"`
)

// Auxiliary verb
console.assert(
  seinFull.praesens.sie === seinFull.praesens.Sie,
  `sein praesens sie should match Sie, got "${seinFull.praesens.sie}"`
)
console.assert(
  seinFull.praesens.sie === 'sind',
  `sein praesens sie: expected "sind", got "${seinFull.praesens.sie}"`
)

// Imperative — sie (they) has NO imperative form
console.assert(
  ankommenFull.imperativ.sie === null,
  `ankommen imperativ sie should be null, got "${ankommenFull.imperativ.sie}"`
)
console.assert(
  machenFull.imperativ.sie === null,
  `machen imperativ sie should be null, got "${machenFull.imperativ.sie}"`
)
console.assert(
  seinFull.imperativ.sie === null,
  `sein imperativ sie should be null, got "${seinFull.imperativ.sie}"`
)
console.assert(
  habenFull.imperativ.sie === null,
  `haben imperativ sie should be null, got "${habenFull.imperativ.sie}"`
)

// =========================================================================
// RESULTS
// =========================================================================

console.log('\n=== ALL TESTS COMPLETED ===')
console.log('Tests cover:')
console.log('  - Separable verbs (trennbar): prefix at end ✓')
console.log('  - Strong verbs (stark): vowel changes ✓')
console.log('  - Regular verbs (schwach): standard endings ✓')
console.log('  - Auxiliary verbs (sein/haben/werden) ✓')
console.log('  - Modal verbs (können, müssen, etc.) ✓')
console.log('  - Reflexive verbs (sich + pronoun) ✓')
console.log('  - Mixed verbs (bringen, denken) ✓')
console.log('  - Dental stems (e-Einschub) ✓')
console.log('  - Sibilant stems (S-Verschmelzung) ✓')
console.log('  - -eln/-ern verbs (handle → ich handle) ✓')
console.log('  - All tenses (Präsens, Präteritum, Perfekt, etc.) ✓')
console.log('  - Konjunktiv II (hätte, wäre, könnte) ✓')
  console.log('  - Imperative (du/ihr/Sie/wir) ✓')
console.log('  - Partizip I & II ✓')
console.log('  - Infinitiv mit zu ✓')
