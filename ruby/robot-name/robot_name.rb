class Robot
	def initialize
		@name = generate_name 
	end

	def name
		@name
	end


	def reset
		@name = generate_name 

	end
private
	def generate_name
	    Kernel.srand
		generated_name = ""
		generated_name << ('A'..'Z').to_a.shuffle[0..1].join
		generated_name << ('0'..'9').to_a.shuffle[0..2].join
		generated_name
	end
end

module BookKeeping
	VERSION = 2
end