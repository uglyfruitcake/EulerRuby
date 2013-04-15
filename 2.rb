#! /usr/bin/ruby

require_relative 'useful_methods'

def generate_even_fibonacci(first_seed, second_seed, max_value)
	even_fibonacci = []
	Useful_Methods.generate_fibonacci(first_seed, second_seed, max_value).each { |x| 
		if Useful_Methods.is_even?(x)
			even_fibonacci.push(x)
		end
	}
	return even_fibonacci
end

sum = 0
even_fibonacci = generate_even_fibonacci(1, 2, 4000000)
even_fibonacci.each { |a| sum += a }

puts "Sum of even Fibonacci:"
puts sum
