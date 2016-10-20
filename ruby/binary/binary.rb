class Binary
  def initialize(input)
     input.scan(/[^01*]/).empty? ? @input = input : raise(ArgumentError);
  end

  def to_decimal

    array_input = @input.split('')
    array_input_size = array_input.size
    result = 0
    array_input.each_index { |x| result = result + (array_input[x].to_i)*(2**(array_input_size - (x.to_i+1))) }
    p result
  end
end

module BookKeeping
  VERSION = 2
end

