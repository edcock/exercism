class Hamming
	def self.compute(strand1, strand2)

		array_strand1	= 	strand1.split("")
		array_strand2	= 	strand2.split("")
		length1 		=	array_strand1.length
		length2			=	array_strand2.length
		number_of_difference_between_strands = 0
		raise ArgumentError, 'Argument are not equals' unless length1 == length2  
	
		if length1 == length2
			
			for i in 0..length1
				if strand1[i] != strand2[i]
					number_of_difference_between_strands += 1
				end 
			end 
			return number_of_difference_between_strands
		end
	end
	
end
module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
