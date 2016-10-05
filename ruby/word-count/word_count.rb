class Phrase

  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase

  end
  def word_count
    words       =   @phrase.downcase.scan(/(?!\W)[\w']+(?<!\W)/)
    every_word  =   words.uniq

    every_word.each_with_object(Hash.new(0)){|word, hash|
      hash[word] = words.count(word)
    }


  end
end



module BookKeeping
  VERSION = 1
end
