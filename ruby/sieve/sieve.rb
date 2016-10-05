class Sieve
	attr_accessor :limit
	
	def initialize(limit)
		@range = (2..limit)
	end


	def primes
		numbers  = @range.to_a
		primes 	= []

		until numbers.empty?
			y = numbers.shift
			primes << y
			numbers.reject!{|x| x%y == 0}
		end
		primes
	end
end