import { createAdminClient } from '@/lib/supabase/admin'

async function main() {
  console.log('Starting dictionary seed...')
  const supabase = createAdminClient()
  
  // Fetch all vocabulary
  const { data: vocab, error } = await supabase
    .from('vocabulary')
    .select('*')
  
  if (error) { console.error('Error fetching vocabulary:', error); process.exit(1) }
  if (!vocab || vocab.length === 0) { console.log('No vocabulary found'); process.exit(0) }
  
  console.log(`Found ${vocab.length} vocabulary entries to migrate`)
  
  let success = 0
  let failed = 0
  
  for (let i = 0; i < vocab.length; i++) {
    const v = vocab[i]
    
    // Strip article from german_word for singular
    const articlePrefix = v.article ? `${v.article} ` : ''
    const wordWithoutArticle = v.german_word.startsWith(articlePrefix)
      ? v.german_word.slice(articlePrefix.length)
      : v.german_word
    
    const entry = {
      german_word: v.german_word,
      word_type: v.word_type || 'noun',
      article: v.article || null,
      singular: wordWithoutArticle || null,
      plural: v.plural || null,
      infinitive: v.word_type === 'verb' ? wordWithoutArticle : null,
      verb_conjugation: v.verb_forms || {},
      cefr_level: v.level,
      english_translation: v.english_translation,
      french_translation: v.french_translation || null,
      arabic_translation: v.arabic_translation || null,
      pronunciation_url: v.pronunciation_url || null,
      ipa: v.ipa || null,
      example_sentences: v.example_sentence ? [v.example_sentence] : [],
      synonyms: v.synonyms || [],
      antonyms: v.antonyms || [],
      word_family: v.word_family || [],
      collocations: [],
      grammar_notes: null,
      common_mistakes: [],
      topic: v.theme || v.category || null,
      frequency_rank: null,
      tags: v.tags || [],
    }
    
    const { error: insertError } = await supabase
      .from('german_dictionary')
      .upsert(entry, { onConflict: 'german_word,word_type' })
    
    if (insertError) {
      console.error(`Error inserting "${v.german_word}":`, insertError.message)
      failed++
    } else {
      success++
    }
    
    if ((i + 1) % 100 === 0) {
      console.log(`Progress: ${i + 1}/${vocab.length} (${success} success, ${failed} failed)`)
    }
  }
  
  console.log(`\nDictionary seed complete!`)
  console.log(`Total: ${vocab.length}, Success: ${success}, Failed: ${failed}`)
  process.exit(0)
}

main()
