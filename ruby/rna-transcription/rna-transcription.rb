class Complement
	complement_nucleotide = { "G" => "C", "C" => "G", "T" => "A","A" => "U"}

	def of_dna(rna)
		complement_nucleotide[rna]
	end
end