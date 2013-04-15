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
end

include Useful_Methods