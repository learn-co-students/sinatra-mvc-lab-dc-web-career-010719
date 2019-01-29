require 'pry'
class PigLatinizer
  attr_accessor :text

  def piglatinize(phrase)
    words = phrase.split(" ")
    words.map do |word|
      if word.start_with?(/[aeiouAEIOU]/)
        word << "way"
      else
        s = word.index(/[aeiou]/)
        word.insert(-1, word[0..s-1] + "ay")
        word.slice(s..-1)
      end
    end.join(" ")
  end
end
