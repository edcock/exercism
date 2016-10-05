class Prime
	def initialize(x)
		@num = x
	end
	
	def self.nth(num)
		array_of_prime_number = Array.new
		i = 1 
		loop do 
			raise 	ArgumentError, "LOL" if num == 0
			
			i =  i + 1
			
			if isPrime(i)
				array_of_prime_number.push(i)
			end
			
			break if ( array_of_prime_number.size == num )	
		end
		array_of_prime_number[num-1]
	end

	def self.isPrime(num)
		
		factor_array	=	divisors_of(num)
		
		if factor_array.include?(1) && factor_array.include?(num) && factor_array.size == 2
			true
		else
			false
		end
	end

	def self.divisors_of(num)
		(1..num).select { |n|num % n == 0}
	end
end