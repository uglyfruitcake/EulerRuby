require_relative "useful_methods"

number = 600851475143

array_of_primes = Useful_Methods.generate_primes(Math.sqrt(number)).reverse

factor_primes = []

array_of_primes.each do |prime|
	if number % prime == 0
		factor_primes.push(prime)
	end
end

puts factor_primes.max






