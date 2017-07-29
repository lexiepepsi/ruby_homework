# Problem 2

# Create a class called Homework.

# Add a method to Homework called shout that takes a string as a parameter and returns the string in all caps. For example, shout('Hello') should return 'HELLO'.

# Add a method to Homework called repeat_string that takes two parameters, a string and an integer. The method should print the given string the number of times indicated by the given integer. For example, repeat_string('Hello', 3) should print:
# Hello
# Hello
# Hello

# Add a method to Homework called calendar that takes two arrays as parameters. The first array should be a list of names of holidays as strings and the second array should a list of the dates of those holidays as strings. The method should return a hash where the keys are the names of the holidays from the first array and the value for each key is the corresponding date from the second array. For example, calendar(['Independence Day', 'Halloween', 'Christmas'], ['4 July', '31 October', '25 December']) should return {'Independence Day' => '4 July', 'Halloween' => '31 October', 'Christmas' => '25 December'}.

# Create a new instance of the Homework class and call each of the previous methods.

class Homework

	def shout(shout_this)
		if (shout_this.is_a? (String)) 
			puts shout_this.upcase
		else
			puts("ruh roh, try again. hint: i like strings.")
		end
	end

	def repeat_string(repeat_this, this_number)
		1.upto(this_number) do
			puts(repeat_this)
		end
	end

	def calendar(a, b)
		combined = a.zip(b)
		puts(combined.to_h)
	end

end

test = Homework.new
test.shout("good morning alexa")
test.repeat_string("wake up", 3)
test.shout("i said good morning alexa!!!")

holidays = ["Christmas", "New Years Day", "My Birthday"]
dates = ["December 25th", "January 1st", "November 5th"]
test.calendar(holidays, dates)


