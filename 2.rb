#! /usr/bin/ruby

require_relative 'useful_methods'
include Useful_Methods

def generate_fibonacci(first_seed, second_seed, max_value)
	array = [first_seed, second_seed]
	while first_seed + second_seed < max_value
		array.push(first_seed + second_seed)
		second_seed = first_seed + second_seed
		first_seed = second_seed - first_seed
	end
	return array
end

def generate_even_fibonacci(first_seed, second_seed, max_value)
	even_fibonacci = []
	generate_fibonacci(first_seed, second_seed, max_value).each { |x| 
		if Useful_Methods.is_even?(x)
			even_fibonacci.push(x)
		end
	}
	return even_fibonacci
end

=begin
sum = 0
even_fibonacci = generate_even_fibonacci(1, 2, 35)
even_fibonacci.each { |a| sum += a }




puts "Even Fibonacci:"
even_fibonacci.each { |x| puts x}


puts "Sum of even Fibonacci:"
puts sum
=end
puts "Fibonacci:"
generate_fibonacci(1, 2, 35).each {|x| puts x}


