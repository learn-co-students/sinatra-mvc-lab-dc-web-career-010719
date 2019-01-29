
class PigLatinizer

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def piglatinize

    first = @input[0].downcase
    @input[1..-1] + first + 'ay'

  end


end
