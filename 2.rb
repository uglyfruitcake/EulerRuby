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

def generate_fibonacci(first_seed, second_seed, number_of_terms)
	return [1, 2, 3, 5, 8, 13, 21]
end

def generate_even_fibonacci(first_seed, second_seed, number_of_terms)
	even_fibonacci = []
	generate_fibonacci(1, 1, 1).each { |x| 
		if is_even?(x)
			even_fibonacci.push(x)
		end
	}
	return even_fibonacci
end

generate_even_fibonacci(1, 1, 1).each { |x| puts x}
