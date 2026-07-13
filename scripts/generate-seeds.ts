/**
 * Comprehensive Seed Data Generator
 * Generates SQL INSERT statements for A1-C2 German course content.
 *
 * Run: npx tsx scripts/generate-seeds.ts
 * Output: supabase/seeds/seed_*.sql files
 */

import * as fs from 'fs'
import * as path from 'path'
import type { ModuleDef } from './curriculum/types'
import { A1_MODULES } from './curriculum/a1'
import { A2_MODULES } from './curriculum/a2'
import { B1_MODULES } from './curriculum/b1'
import { B2_MODULES } from './curriculum/b2'
import { C1_MODULES } from './curriculum/c1'
import { C2_MODULES } from './curriculum/c2'

const OUT_DIR = path.join(__dirname, '..', 'supabase', 'seeds')
fs.mkdirSync(OUT_DIR, { recursive: true })

// ================================================================
// LEVEL DEFINITIONS
// ================================================================

// A1_MODULES imported from './curriculum/a1' above

// ================================================================
// SQL GENERATOR
// ================================================================

function json(arr: any[]): string {
  return JSON.stringify(arr).replace(/'/g, "\\'")
}

function sqlStr(s: string | undefined | null): string {
  if (!s) return ''
  return s.replace(/'/g, "''").replace(/\\'/g, "''")
}

function generateLevelSQL(levelId: string, title: string, modules: ModuleDef[]): string {
  let sql = `-- ============================================================================\n`
  sql += `-- SEED: ${levelId} (${title}) - ${modules.length} modules\n`
  sql += `-- Generated curriculum following CEFR standards\n`
  sql += `-- ============================================================================\n\n`
  sql += `do $$\n`
  sql += `declare\n`
  sql += `  m_id uuid;\n`
  sql += `  l_id uuid;\n`
  sql += `begin\n\n`

  let moduleIndex = levelId === 'A1' ? 2 : 1 // A1 module 1 already seeded

  for (const mod of modules) {
    const modObjectivesStr = json(mod.objectives)
    const modTitle = sqlStr(mod.title)
    const modDesc = sqlStr(mod.description)

    sql += `  -- Module ${moduleIndex}: ${mod.title}\n`
    sql += `  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)\n`
    sql += `  values ('${levelId}', '${modTitle}', '${modDesc}', '${modObjectivesStr}', ${moduleIndex}, 5.0, true)\n`
    sql += `  returning id into m_id;\n\n`

    for (let li = 0; li < mod.lessons.length; li++) {
      const lesson = mod.lessons[li]
      const lessonTitle = sqlStr(lesson.title)
      const lessonDesc = sqlStr(lesson.description)
      const lessonObjs = json((lesson.objectives || ['Learn key vocabulary', 'Practice grammar structures', 'Build comprehension skills', 'Apply in context', 'Review and reinforce']).slice(0, 5))

      sql += `  -- Lesson ${moduleIndex}.${li + 1}: ${lesson.title}\n`
      sql += `  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)\n`
      sql += `  values (m_id, '${lessonTitle}', '${lessonDesc}', '${sqlStr(lesson.topic)}', '${lesson.lesson_type}', '${lessonObjs}', ${lesson.duration_minutes}, ${li + 1}, true)\n`
      sql += `  returning id into l_id;\n\n`

      // Vocabulary
      if (lesson.vocab.length > 0) {
        sql += `  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values\n`
        const vocabValues = lesson.vocab.map((v, vi) => {
          const article = v.article ? `'${v.article}'` : 'NULL'
          const plural = v.plural ? `'${sqlStr(v.plural)}'` : 'NULL'
          return `  (l_id, '${sqlStr(v.word)}', '${sqlStr(v.arabic)}', '${sqlStr(v.english)}', ${article}, ${plural}, '${v.pos}', '${sqlStr(v.example)}', '${sqlStr(v.exampleEn)}', ${vi + 1})`
        })
        sql += vocabValues.join(',\n') + ';\n\n'
      }

      // Grammar
      for (const g of lesson.grammar) {
        const rulesStr = json(g.rules)
        const examplesStr = json(g.examples)
        const mistakesStr = json(g.mistakes)
        sql += `  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values\n`
        sql += `  (l_id, '${sqlStr(g.title)}', '${sqlStr(g.explanation)}', '${rulesStr}', '${examplesStr}', '${mistakesStr}', 1);\n\n`
      }

      // Exercises
      if (lesson.exercises.length > 0) {
        sql += `  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values\n`
        const exValues = lesson.exercises.map((ex, ei) => {
          const optionsStr = json(ex.options)
          return `  (l_id, '${ex.type}', '${sqlStr(ex.question)}', '${optionsStr}', '${sqlStr(ex.correct_answer)}', '${sqlStr(ex.explanation)}', ${ex.points}, ${ei + 1})`
        })
        sql += exValues.join(',\n') + ';\n\n'
      }

      // Test Questions
      if (lesson.testQuestions.length > 0) {
        sql += `  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values\n`
        const tqValues = lesson.testQuestions.map((tq, ti) => {
          const optionsStr = json(tq.options)
          return `  (l_id, '${tq.type}', '${sqlStr(tq.question)}', '${optionsStr}', '${sqlStr(tq.correct_answer)}', ${tq.points}, ${ti + 1})`
        })
        sql += tqValues.join(',\n') + ';\n\n'
      }
    }
    moduleIndex++
  }

  sql += `end $$;\n`
  return sql
}

// ================================================================
// WRITE FILES
// ================================================================

console.log('Generating seed SQL files...')

// A1 (Modules 2-6)
const a1SQL = generateLevelSQL('A1', 'Beginner', A1_MODULES)
fs.writeFileSync(path.join(OUT_DIR, 'seed_a1.sql'), a1SQL)
console.log(`  ✓ seed_a1.sql (${(a1SQL.length / 1024).toFixed(0)} KB, ${A1_MODULES.length} modules)`)

// A2 (full curriculum with 6 modules)
const a2SQL = generateLevelSQL('A2', 'Elementary', A2_MODULES)
fs.writeFileSync(path.join(OUT_DIR, 'seed_a2.sql'), a2SQL)
console.log(`  ✓ seed_a2.sql (${(a2SQL.length / 1024).toFixed(0)} KB, ${A2_MODULES.length} modules)`)

// B1-C2 (full curriculum with 6 modules each)
const levelConfigs: Array<{ level: string; title: string; modules: ModuleDef[] }> = [
  { level: 'B1', title: 'Intermediate', modules: B1_MODULES },
  { level: 'B2', title: 'Upper Intermediate', modules: B2_MODULES },
  { level: 'C1', title: 'Advanced', modules: C1_MODULES },
  { level: 'C2', title: 'Mastery', modules: C2_MODULES },
]

for (const cfg of levelConfigs) {
  const sql = generateLevelSQL(cfg.level, cfg.title, cfg.modules)
  const filename = `seed_${cfg.level.toLowerCase()}.sql`
  fs.writeFileSync(path.join(OUT_DIR, filename), sql)
  console.log(`  ✓ ${filename} (${(sql.length / 1024).toFixed(0)} KB, ${cfg.modules.length} modules)`)
}

// Generate exam prep seed
const examPrepSQL = generateExamPrepSQL()
fs.writeFileSync(path.join(OUT_DIR, 'seed_exam_prep.sql'), examPrepSQL)
console.log(`  ✓ seed_exam_prep.sql (${(examPrepSQL.length / 1024).toFixed(0)} KB)`)

// Generate achievements seed
const achievementsSQL = generateAchievementsSQL()
fs.writeFileSync(path.join(OUT_DIR, 'seed_achievements.sql'), achievementsSQL)
console.log(`  ✓ seed_achievements.sql (${(achievementsSQL.length / 1024).toFixed(0)} KB)`)

console.log('\nAll seed files generated successfully!')
console.log(`Output directory: ${OUT_DIR}`)

function generateExamPrepSQL(): string {
  const exams: Array<{ type: string; name: string; levels: string[] }> = [
    { type: 'goethe', name: 'Goethe', levels: ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] },
    { type: 'telc', name: 'TELC', levels: ['A1', 'A2', 'B1', 'B2', 'C1'] },
    { type: 'osterreich', name: 'ÖSD', levels: ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] },
  ]

  const moduleTypes = ['lesen', 'hoeren', 'schreiben', 'sprechen', 'full_mock']
  const moduleTypeLabels: Record<string, string> = {
    lesen: 'Reading', hoeren: 'Listening', schreiben: 'Writing',
    sprechen: 'Speaking', full_mock: 'Full Mock Exam'
  }

  // Real questions per module type (level-agnostic base, adapted per level)
  const lesenQuestions: Array<{ q: string; opts: string[]; ans: string; exp: string; type: string }> = [
    { q: 'Was ist das Hauptthema des Textes?', opts: ['Der Umweltschutz in Deutschland', 'Die deutsche Wirtschaft', 'Das deutsche Bildungssystem', 'Die deutsche Kultur'], ans: 'Der Umweltschutz in Deutschland', exp: 'Der Text handelt hauptsächlich von Umweltschutzthemen.', type: 'multiple_choice' },
    { q: 'Laut dem Text: Welche Aussage ist richtig?', opts: ['Die meisten Deutschen reisen gern ins Ausland', 'Die Mehrheit der Deutschen lebt in Mietwohnungen', 'Die Deutschen essen am liebsten Fast Food', 'Die Deutschen arbeiten am meisten in Europa'], ans: 'Die Mehrheit der Deutschen lebt in Mietwohnungen', exp: 'Im Text wird erklärt, dass über 50% der Deutschen zur Miete wohnen.', type: 'multiple_choice' },
    { q: 'Was bedeutet das Wort "nachhaltig" im Kontext des Textes?', opts: ['umweltfreundlich und zukunftsorientiert', 'schnell und effizient', 'teuer und exklusiv', 'traditionell und konservativ'], ans: 'umweltfreundlich und zukunftsorientiert', exp: '"Nachhaltig" bedeutet im Deutschen, dass etwas die Umwelt schont und langfristig angelegt ist.', type: 'multiple_choice' },
    { q: 'Der Text behauptet, dass Recycling in Deutschland freiwillig ist.', opts: ['Richtig', 'Falsch'], ans: 'Falsch', exp: 'Recycling ist in Deutschland gesetzlich vorgeschrieben und wird durch das Verpackungsgesetz geregelt.', type: 'true_false' },
    { q: 'Welche dieser Aussagen trifft laut Text zu?', opts: ['Die Nutzung erneuerbarer Energien nimmt zu', 'Die Nutzung erneuerbarer Energien nimmt ab', 'Erneuerbare Energien spielen keine Rolle', 'Nur Solarenergie wird genutzt'], ans: 'Die Nutzung erneuerbarer Energien nimmt zu', exp: 'Laut Text steigt der Anteil erneuerbarer Energien in Deutschland kontinuierlich.', type: 'multiple_choice' },
    { q: 'Der Autor des Textes ist skeptisch gegenüber technologischem Fortschritt.', opts: ['Richtig', 'Falsch'], ans: 'Falsch', exp: 'Der Text zeigt technologischen Fortschritt als positive Entwicklung.', type: 'true_false' },
    { q: 'Was ist das Ziel des beschriebenen Projekts?', opts: ['Die CO2-Emissionen zu reduzieren', 'Die Arbeitslosigkeit zu senken', 'Die Digitalisierung voranzutreiben', 'Den Tourismus zu fördern'], ans: 'Die CO2-Emissionen zu reduzieren', exp: 'Das Hauptziel des Projekts ist die Reduzierung von Treibhausgasen.', type: 'multiple_choice' },
    { q: 'Wie viele Personen haben an der Studie teilgenommen?', opts: ['Über 1000', 'Weniger als 100', 'Etwa 500', 'Mehr als 5000'], ans: 'Über 1000', exp: 'Die Studie basiert auf einer Befragung von mehr als tausend Teilnehmern.', type: 'multiple_choice' },
  ]

  const hoerenQuestions: Array<{ q: string; opts: string[]; ans: string; exp: string; type: string }> = [
    { q: 'Was ist der Hauptgrund für den Anruf?', opts: ['Eine Terminabsage', 'Eine Terminvereinbarung', 'Eine Beschwerde', 'Eine Bestellung'], ans: 'Eine Terminvereinbarung', exp: 'Der Anrufer möchte einen Termin beim Arzt vereinbaren.', type: 'multiple_choice' },
    { q: 'Welche Uhrzeit wird für den Termin vorgeschlagen?', opts: ['Um 10:30 Uhr', 'Um 14:00 Uhr', 'Um 09:00 Uhr', 'Um 16:30 Uhr'], ans: 'Um 10:30 Uhr', exp: 'Die Sprechstundenhilfe schlägt 10:30 Uhr als nächsten freien Termin vor.', type: 'multiple_choice' },
    { q: 'Der Kunde ist mit der Dienstleistung zufrieden.', opts: ['Richtig', 'Falsch'], ans: 'Falsch', exp: 'Der Kunde beschwert sich über die lange Wartezeit und den schlechten Service.', type: 'true_false' },
    { q: 'Was wird am Ende des Gesprächs vereinbart?', opts: ['Ein Rückruf am Nachmittag', 'Eine E-Mail mit den Details', 'Ein persönliches Treffen', 'Eine schriftliche Bestätigung'], ans: 'Ein Rückruf am Nachmittag', exp: 'Die Mitarbeiterin verspricht, am Nachmittag zurückzurufen.', type: 'multiple_choice' },
    { q: 'Woher kennt der Anrufer die Firma?', opts: ['Durch eine Empfehlung', 'Aus dem Internet', 'Aus einer Zeitungsanzeige', 'Durch einen Werbebrief'], ans: 'Durch eine Empfehlung', exp: 'Ein Freund hat ihm die Firma empfohlen.', type: 'multiple_choice' },
    { q: 'Wie lange muss der Kunde ungefähr warten?', opts: ['Etwa zwei Wochen', 'Bis zum nächsten Tag', 'Etwa einen Monat', 'Nur wenige Stunden'], ans: 'Etwa zwei Wochen', exp: 'Der nächste freie Termin ist in zwei Wochen.', type: 'multiple_choice' },
    { q: 'Welche Zahlungsmethode wird akzeptiert?', opts: ['Nur Barzahlung', 'Kreditkarte und Lastschrift', 'Nur Überweisung', 'Alle gängigen Methoden'], ans: 'Kreditkarte und Lastschrift', exp: 'Die Firma akzeptiert Kreditkartenzahlung und Lastschriftverfahren.', type: 'multiple_choice' },
    { q: 'Der Anrufer möchte die Bestellung stornieren.', opts: ['Richtig', 'Falsch'], ans: 'Falsch', exp: 'Der Anrufer möchte lediglich die Lieferadresse ändern, nicht stornieren.', type: 'true_false' },
  ]

  const schreibenQuestions: Array<{ q: string; opts: string[]; ans: string; exp: string; type: string }> = [
    { q: 'Schreiben Sie eine formelle E-Mail an Ihren Vorgesetzten mit der Bitte um Urlaub.', opts: [], ans: 'Essay must include: Betreffzeile, höfliche Anrede, Grund des Urlaubs, Zeitraum, höfliche Grußformel', exp: 'Beurteilt wird: formelle Struktur, Höflichkeitsformen, Begründung, korrekte Grammatik.', type: 'essay' },
    { q: 'Sie haben ein Problem mit Ihrer neuen Wohnung. Schreiben Sie eine Beschwerde an den Vermieter.', opts: [], ans: 'Essay must include: Problembeschreibung, Bitte um Reparatur, Frist, höflicher Ton', exp: 'Beurteilt wird: klare Problemdarstellung, angemessener Ton, korrekte Satzstrukturen.', type: 'essay' },
    { q: 'Schreiben Sie eine Einladung zu Ihrer Geburtstagsfeier.', opts: [], ans: 'Essay must include: Datum/Uhrzeit, Ort, Programmpunkte, Bitte um Rückmeldung', exp: 'Beurteilt wird: vollständige Angaben, freundlicher Ton, korrekte Zeitangaben.', type: 'essay' },
    { q: 'Sie haben einen Kurs besucht. Schreiben Sie eine Bewertung.', opts: [], ans: 'Essay must include: Kursbeschreibung, Bewertung des Inhalts, Lob/Kritik, Empfehlung', exp: 'Beurteilt wird: strukturierte Argumentation, passender Wortschatz, Begründung der Meinung.', type: 'essay' },
    { q: 'Schreiben Sie eine Antwort auf eine Stellenanzeige als Verkäufer/in.', opts: [], ans: 'Essay must include: Bezug auf Anzeige, eigene Qualifikationen, Motivation, Verfügbarkeit', exp: 'Beurteilt wird: Inhalt, formeller Briefaufbau, berufsspezifischer Wortschatz.', type: 'essay' },
    { q: 'Ihr Nachbar macht jeden Abend laute Musik. Schreiben Sie einen höflichen Brief.', opts: [], ans: 'Essay must include: Problembeschreibung, Bitte um Rücksichtnahme, Lösungsvorschlag', exp: 'Beurteilt wird: höflicher Ton, Konfliktlösungsstrategien, korrekter Satzbau.', type: 'essay' },
    { q: 'Schreiben Sie einen Blogeintrag über Ihr letztes Reiseerlebnis.', opts: [], ans: 'Essay must include: Reiseziel, Erlebnisse, persönliche Bewertung, Empfehlung', exp: 'Beurteilt wird: Erzählstruktur, lebendige Beschreibung, persönlicher Stil.', type: 'essay' },
    { q: 'Sie möchten einen Sprachkurs buchen. Schreiben Sie eine Anfrage per E-Mail.', opts: [], ans: 'Essay must include: Kursinteresse, Niveau, Zeitrahmen, Fragen zu Kosten', exp: 'Beurteilt wird: formelle Anfragestruktur, vollständige Informationen, höflicher Ton.', type: 'essay' },
  ]

  const sprechenQuestions: Array<{ q: string; opts: string[]; ans: string; exp: string; type: string }> = [
    { q: 'Stellen Sie sich bitte vor. Nennen Sie Ihren Namen, Ihr Alter, Ihren Beruf und Ihre Hobbys.', opts: [], ans: 'Kriterien: flüssige Vorstellung, korrekte Satzstrukturen, klare Aussprache', exp: 'Bewertet wird: Aussprache, Satzmelodie, grammatikalische Korrektheit.', type: 'speaking' },
    { q: 'Beschreiben Sie Ihr Wohnviertel. Was gibt es dort? Was gefällt Ihnen gut/nicht gut?', opts: [], ans: 'Kriterien: detaillierte Beschreibung, Begründung der Meinung, relevanter Wortschatz', exp: 'Bewertet wird: Wortschatz, Beschreibungsfähigkeit, Meinungsäußerung.', type: 'speaking' },
    { q: 'Erzählen Sie von Ihrem letzten Urlaub. Wo waren Sie? Was haben Sie erlebt?', opts: [], ans: 'Kriterien: zusammenhängende Erzählung, Zeitformen, Erlebnisse detailliert schildern', exp: 'Bewertet wird: Erzählfähigkeit, korrekte Zeitformen, Detailreichtum.', type: 'speaking' },
    { q: 'Was sind Ihre Pläne für die Zukunft? Beruflich und privat.', opts: [], ans: 'Kriterien: Zukunftspläne, Begründungen, Verwendung von Futur/Konjunktiv', exp: 'Bewertet wird: Futurformen, Begründungsstrukturen, Kohärenz.', type: 'speaking' },
    { q: 'Diskutieren Sie: Sollte man im Ausland studieren? Nennen Sie Vor- und Nachteile.', opts: [], ans: 'Kriterien: Argumentation, Pro/Contra-Struktur, differenzierte Meinung', exp: 'Bewertet wird: Argumentationsfähigkeit, Diskursmarker, differenzierte Sprache.', type: 'speaking' },
    { q: 'Beschreiben Sie ein Foto: Eine Familie beim Abendessen. Was sehen Sie?', opts: [], ans: 'Kriterien: Bildbeschreibung, Positionsangaben, Personen- und Gegenstandsbeschreibung', exp: 'Bewertet wird: Beschreibungswortschatz, Präpositionen, Detailgenauigkeit.', type: 'speaking' },
    { q: 'Was bedeutet für Sie ein gesunder Lebensstil?', opts: [], ans: 'Kriterien: Definition Gesundheit, eigene Gewohnheiten, Tipps für andere', exp: 'Bewertet wird: themenspezifischer Wortschatz, Meinungsäußerung, Satzverbindungen.', type: 'speaking' },
    { q: 'Verhandeln Sie mit Ihrem Gesprächspartner: Planen Sie gemeinsam einen Ausflug.', opts: [], ans: 'Kriterien: Vorschläge machen, auf Vorschläge reagieren, Kompromiss finden', exp: 'Bewertet wird: interaktive Kommunikation, Reaktionsfähigkeit, Verhandlungsstrategien.', type: 'speaking' },
  ]

  function getLevelModifier(level: string): number {
    const levels = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
    return levels.indexOf(level) + 1
  }

  let sql = `-- ============================================================================\n`
  sql += `-- SEED: Exam Preparation (Goethe / TELC / ÖSD)\n`
  sql += `-- Real exam-style questions for all levels\n`
  sql += `-- ============================================================================\n\n`
  sql += `do $$\n`
  sql += `declare\n`
  sql += `  ex_id uuid;\n`
  sql += `begin\n\n`

  for (const exam of exams) {
    for (const level of exam.levels) {
      for (const mt of moduleTypes) {
        const levelMod = getLevelModifier(level)
        const title = `${exam.name} ${level} — ${moduleTypeLabels[mt]}`
        const timeLimit = mt === 'full_mock' ? 90 + levelMod * 10 : mt === 'schreiben' ? 45 + levelMod * 5 : 20 + levelMod * 5
        const totalPoints = mt === 'full_mock' ? 150 + levelMod * 25 : mt === 'schreiben' ? 30 + levelMod * 10 : 50 + levelMod * 15
        const passThreshold = 60
        const description = `${exam.name}-Vorbereitung: ${moduleTypeLabels[mt].toLowerCase()} für Niveau ${level}. Dauer: ${timeLimit} Min., ${totalPoints} Punkte, Bestehen ab ${passThreshold}%.`

        sql += `  insert into public.exam_prep_modules (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)\n`
        sql += `  values ('${exam.type}', '${level}', '${sqlStr(title)}', '${sqlStr(description)}', '${mt}', ${timeLimit}, ${totalPoints}, ${passThreshold}, true, ${moduleTypes.indexOf(mt) + 1})\n`
        sql += `  returning id into ex_id;\n\n`

        if (mt !== 'full_mock') {
          const questions = mt === 'lesen' ? lesenQuestions : mt === 'hoeren' ? hoerenQuestions : mt === 'schreiben' ? schreibenQuestions : sprechenQuestions

          for (let qi = 0; qi < questions.length; qi++) {
            const q = questions[qi]
            const optsStr = json(q.opts)
            // Adapt difficulty by slightly modifying questions for higher levels
            let questionText = q.q
            if (levelMod >= 5) {
              questionText = questionText.replace('?', ' — analysieren und begründen Sie Ihre Antwort:')
            } else if (levelMod >= 3) {
              questionText = questionText.replace('?', '? Begründen Sie Ihre Antwort kurz.')
            }
            sql += `  insert into public.exam_prep_questions (module_id, question_type, question, options, correct_answer, explanation, points, order_index) values\n`
            sql += `  (ex_id, '${q.type}', '${sqlStr(questionText)}', '${optsStr}', '${sqlStr(q.ans)}', '${sqlStr(q.exp)}', ${1 + Math.floor(levelMod / 2)}, ${qi + 1});\n`
          }
          sql += `\n`
        }
      }
    }
  }

  sql += `end $$;\n`
  return sql
}

function generateAchievementsSQL(): string {
  let sql = `-- ============================================================================\n`
  sql += `-- SEED: Achievement Criteria & Certificate Rules\n`
  sql += `-- ============================================================================\n\n`
  sql += `do $$\n`
  sql += `declare\n`
  sql += `  a_id uuid;\n`
  sql += `begin\n\n`

  // Achievement criteria links to existing achievements
  const achievementCriteria: Array<{ titleMatch: string; criteriaType: string; threshold: number }> = [
    { titleMatch: 'Erste Schritte', criteriaType: 'lessons_completed', threshold: 1 },
    { titleMatch: 'Sprachenlerner', criteriaType: 'streak_days', threshold: 7 },
    { titleMatch: 'Wortmeister', criteriaType: 'vocab_mastered', threshold: 100 },
    { titleMatch: 'Hörverstehen', criteriaType: 'perfect_score', threshold: 1 },
    { titleMatch: 'Schriftsteller', criteriaType: 'lessons_completed', threshold: 10 },
    { titleMatch: 'Konversationsprofi', criteriaType: 'lessons_completed', threshold: 5 },
    { titleMatch: 'Goethe Bereit', criteriaType: 'exam_passed', threshold: 1 },
    { titleMatch: 'A1 Abgeschlossen', criteriaType: 'complete_level', threshold: 1 },
    { titleMatch: 'A2 Abgeschlossen', criteriaType: 'complete_level', threshold: 1 },
    { titleMatch: 'B1 Abgeschlossen', criteriaType: 'complete_level', threshold: 1 },
  ]

  sql += `  -- Match existing achievements by title and create criteria\n`
  for (const ac of achievementCriteria) {
    sql += `  select id into a_id from public.achievements where title = '${ac.titleMatch}' limit 1;\n`
    sql += `  if a_id is not null then\n`
    sql += `    insert into public.achievement_criteria (achievement_id, criteria_type, threshold)\n`
    sql += `    values (a_id, '${ac.criteriaType}', ${ac.threshold})\n`
    sql += `    on conflict do nothing;\n`
    sql += `  end if;\n\n`
  }

  sql += `end $$;\n`
  return sql
}
