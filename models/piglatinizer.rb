require 'pry'

class PigLatinizer

  def initialize
  end

  def piglatinize(string)
    vowels = %w(a e i o u)
    latinized = []
    string.split(" ").each do |word|
      if vowels.include?(word[0].downcase)
        latinized << (word + "way")
      else
        indices = vowels.map {|v| word.index(v)}.select {|e| e.class == Fixnum}
        latinized << (word[(indices.min)..-1] + word[0..(indices.min-1)] + "ay")
      end
    end
    latinized.join(" ")
  end

end
