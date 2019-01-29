class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    words.split(' ').map do |word|
      if (word.downcase =~ /\A[^aeiou]/).nil?
        word + "way"
      elsif (word.downcase =~ /\A[^aeiou]/) == 0
        w = word.split(/([aeiou].*)/)
        m = w.shift
        w << m + "ay"
        w.join
      end
    end.join(' ')
  end

end