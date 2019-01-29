require 'pry'
class PigLatinizer
  def piglatinize(input)
    input.split(" ").map! do |word|
      if %w[a e i o u].include?(word[0].downcase)
        word + "way"
      else
        num = word.split("").find_index{|l| %w[a e i o u].include?(l)}
        word[num..-1] + word[0...num] + "ay"
      end
    end.join(" ")
  end
end
