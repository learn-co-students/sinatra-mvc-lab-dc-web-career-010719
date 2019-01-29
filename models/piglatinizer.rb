class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize
    phrase = self.text.split(" ")
    if phrase.length == 1
      word(phrase)
    else
      sentence(phrase)
    end
  end

  def word(phrase)
    if phrase[0].match(/[AaEeIiOoUu]/)
      phrase << "way"
    else
      final = []
      sp = phrase.split(/(?=[aeiou])/)
      first = sp.shift
      final << sp
      final << first
      final << "ay"
      final.join
    end
  end

  def sentence(phrase)
    response = []
    phrase.each do |word|
      response << word(word)
      response << " "
    end
    response.join
  end

end
