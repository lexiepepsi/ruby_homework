# Problem 3

# Write a method called join_strings that takes two string values, joins them together with a space in between, and returns the result. For example, join_strings('Hello', 'Dolly!') should return "Hello Dolly!".

def join_strings(a, b)
	if (a.is_a? (String)) && (b.is_a? (String))
		puts(a + " " + b)
	else
		puts("ruh roh, try again. hint: i like strings.")
	end
end

join_strings("hello", "dolly!")
join_strings(1, "dolly!")