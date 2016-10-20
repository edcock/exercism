class Squares
	 
	attr_accessor :number

	def initialize(number)
		@number = number
	end

	def square_of_sum	
		sums = (0..number).inject(:+)
		sums**2
	end

	def sum_of_squares	
		(0..number).inject{|sum_of_squares, int| sum_of_squares + int ** 2}
	end
	def difference
		square_of_sum - sum_of_squares
	end
end


module BookKeeping
	VERSION = 3
end