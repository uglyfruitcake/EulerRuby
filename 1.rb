require_relative 'useful_methods'
include Useful_Methods

sum = 0

for a in 1...1000
	if Useful_Methods.is_multiple_of_x?(a, 3)
		sum = sum += a
	elsif
		Useful_Methods.is_multiple_of_x?(a, 5)
		sum = sum +=a
	end
end

puts sum
print "\n"
