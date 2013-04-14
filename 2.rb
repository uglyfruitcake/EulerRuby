#! /usr/bin/ruby

require 'useful_methods'
include Useful_Methods

def generate_fibonacci(first_seed, second_seed, number_of_terms)
	
	return [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
end

def generate_even_fibonacci(first_seed, second_seed, number_of_terms)
	even_fibonacci = []
	generate_fibonacci(first_seed, second_seed, number_of_terms).each { |x| 
		if Useful_Methods.is_even?(x)
			even_fibonacci.push(x)
		end
	}
	return even_fibonacci
end

sum = 0
even_fibonacci = generate_even_fibonacci(1, 2, 6)
even_fibonacci.each { |a| sum += a }

=begin
puts "Fibonacci:"
generate_fibonacci(1,1,1).each {|x| puts x}

puts "Even Fibonacci:"
even_fibonacci.each { |x| puts x}
=end

puts "Sum of even Fibonacci:"
puts sum



