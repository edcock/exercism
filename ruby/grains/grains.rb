class Grains
	def self.square(number)
		2**(number-1)
	end


	def self.total
		(1..64).inject{|sum , x| sum + square(x)}
	end
end