class Phrase

	attr_accessor :phrase

	def initialize(phrase)
		@phrase = phrase

	end
	def word_count
		words 	    = 	@phrase.downcase.scan(/(?!\W)[\w']+(?<!\W)/)
		every_word 	= 	words.uniq
		counts = Hash.new
		
    every_word.each_with_object(Hash.new(0)){||} |user, memo| {|x| 
			counts[x] = words.count(x)
		}

		counts
	end
end



module BookKeeping
	VERSION = 1
end



    each_word.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }