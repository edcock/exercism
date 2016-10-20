class RunLengthEncoding
  def self.encode(input)
    length_of_each_char =  input.each_char.inject([]) { |memo, c|
      memo.last && c == memo.last.last ? memo.last[0] += 1 : memo << [1, c]
      memo
    }
    
    length_of_each_char.flatten.delete_if{|x| x==1}.join
  end


  def self.decode(input)
      input.scan(/\d*\D{1}/).map { |segment| expand(segment.chars) }.join
  end

  def self.expand(segment)
    data = segment.pop
    return data if segment.empty?
    data * segment.join.to_i
  end
end


module BookKeeping
  VERSION = 2
end
