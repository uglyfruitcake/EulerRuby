require_relative 'useful_methods'

palindromes = []

for i in 100..999
	for j in 100..999
		number = i*j
		if Useful_Methods.is_palindrome?(number)
			palindromes.push(number)
		end
	end
end

print "The largest palindrome product of two 3 digit numbers is #{palindromes.max} " 