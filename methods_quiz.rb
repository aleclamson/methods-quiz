module MethodsQuiz
	
	def has_teen(a, b, c)
		if a >= 13 && a <= 19 || b >= 13 && b <= 19 || c >= 13 && c <= 19 
			true
		else
			false
		end
	end
	
	# TODO - write not_string
	
	def icy_hot(a, b)
		if a < 0 && b > 100
			true
		else
			false
		end
	end
	
	def closer_to(num, guess1, guess2)
		if (num - guess1) == (num - guess2)
			return 0
		elsif (num - guess1) <= (num - guess2)
			return guess2
		elsif (num - guess1) >= (num - guess2)
			return guess1
		end	
	end

	def two_as_one(a, b, c)
		if a + b == c || a + c == b || b + a == c || b + c == a || c + a == b
			true
		elsif false
		end
	end

	# TODO - write pig_latinify

end