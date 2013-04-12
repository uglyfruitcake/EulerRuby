def is_multiple_of_x?(n, x)
	if n % x == 0
		return true
	else
		return false
	end
end

sum = 0

for a in 1...1000
	if is_multiple_of_x?(a, 3)
		sum = sum += a
	elsif
		is_multiple_of_x?(a, 5)
		sum = sum +=a
	end
end

puts sum
print "\n"
