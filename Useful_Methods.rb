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
end

include Useful_Methods