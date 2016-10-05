require 'prime'
class Raindrops
	def self.convert(int)
		    factors = Prime.prime_division(int).map {|x| x[0]}
		    ret = ""

		    ret << "Pling" if factors.include?(3)
   		    ret << "Plang" if factors.include?(5)
		    ret << "Plong" if factors.include?(7)

		    ret.empty? ?	int.to_s : ret
	end
end

module BookKeeping
	VERSION = 2
end
puts Raindrops.convert(105)