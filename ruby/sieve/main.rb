
# def primes(n)
# 	(2..n).to_a.select{|elem| ( elem % 2 != 0) }
# end

numbers  = (2..30).to_a
primes 	= []

until numbers.empty?
	y = numbers.shift
	primes << y
	numbers.reject!{|x| x%y == 0}
end

p primes