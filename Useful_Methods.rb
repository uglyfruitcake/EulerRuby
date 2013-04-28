module Useful_Methods
	def is_multiple_of_x?(n, x)
		if n % x == 0
			return true
		else
			return false
		end
	end

	def is_even?(n)
		return is_multiple_of_x?(n, 2)
	end

	def generate_fibonacci(first_seed, second_seed, max_value)
		array = [first_seed, second_seed]
		while first_seed + second_seed < max_value
			array.push(first_seed + second_seed)
			second_seed = first_seed + second_seed
			first_seed = second_seed - first_seed
		end
		return array
	end

	def is_prime?(number)
		for i in 2..Math.sqrt(number).ceil
			if number == 2
				return true
			elsif number % i == 0
				return false
			end
		end
		return true
	end

	def generate_primes(ceiling)
		primes = []
		for i in 2...ceiling
			if is_prime?(i)
				primes.push(i)
			end
		end
		return primes
	end

	
end

include Useful_Methods