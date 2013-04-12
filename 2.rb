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

lower_seed = 1
upper_seed = 2
even_sum = 2

while upper_seed < 30
	next_in_series = lower_seed + upper_seed
	if is_even?(next_in_series)
		even_sum += next_in_series
	end
	lower_seed = upper_seed
	upper_seed = next_in_series
end

print even_sum


