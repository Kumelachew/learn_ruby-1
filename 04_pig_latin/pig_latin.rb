# write your code here
def translate(input)
  vowels = %w(a e i o u)

  # make an array of words from input
  words = input.split(' ')
  translated_words = []

  words.each do |word|
    # handle when first letter is a vowel
    if vowels.include? word[0]
      word += 'ay'
    # handle when the first 2 letters are constants
    elsif (!vowels.include? word[0]) &&
          (!vowels.include? word[1]) &&
          (vowels.include? word[2])  && # make sure the third word is not a vowel
          (!word.include? 'qu') # exclude words with 'qu'
      word = word[2..word.length] + word[0] + word[1] + 'ay'
    # handle when the first 3 letters are constants
    elsif (!vowels.include? word[0]) &&
          (!vowels.include? word[1]) &&
          (!vowels.include? word[2]) &&
          (!word.include? 'qu') # exclude words with 'qu'
      word = word[3..word.length] + word[0..2] + 'ay'
    # count 'qu' as a single phoneme
    elsif word.include? 'qu'
      word.slice! 'qu'
      if !vowels.include? word[0]
        word = word[1..word.length] + word[0] + 'qu' + 'ay'
      else
        word = word + 'qu' + 'ay'
      end
    # handle when the first letter is not a vowel
    else
      word = word[1..word.length] + word[0] + 'ay'
    end
    translated_words << word
  end
  translated_words.join(' ')
end
