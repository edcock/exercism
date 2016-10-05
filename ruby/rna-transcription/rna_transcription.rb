class Complement
	

	def self.of_dna(rna)
		complement_nucleotide = { "G" => "C", "C" => "G", "T" => "A","A" => "U"}
		dna = ""

		rna.split("").each do |rna| 

			if complement_nucleotide[rna.to_s] != nil
				dna += complement_nucleotide[rna.to_s] 
			else
				dna = ''
				break
			end
		end

		dna
	end
end

module BookKeeping
	VERSION = 4
end
