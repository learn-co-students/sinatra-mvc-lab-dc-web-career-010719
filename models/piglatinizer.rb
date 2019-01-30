class PigLatinizer

  def initialize
    @consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
    @vowels = %w(a e i o u)
  end

  def piglatinize(string)
    words = string.split(' ')

    words.collect do |word|
      if starts_with_vowel?(word)
        word + 'way'
      elsif starts_with_one_consonant?(word)
        letters = word.split('')
        first_letter = letters.shift
        letters.push(first_letter).join + 'ay'
      else
        letters = word.split('')
        first_letters = letters.slice!(0..find_consonant_index(letters))
        letters.push(first_letters).join + 'ay'
      end
    end.join(' ')

  end

  private

  def starts_with_vowel?(word)
    letters = word.split('')
    @vowels.include?(letters.first.downcase)
  end

  def starts_with_one_consonant?(word)
    @consonants.include?(word.split('')[0].downcase) && @vowels.include?(word.split('')[1].downcase)
  end

  def find_consonant_index(array)
    array.each_with_index do |elem, index|
      return index - 1 if @vowels.include?(elem)
    end
  end

end
