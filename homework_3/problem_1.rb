# Problem 1

# Create a class called Utility.

# Add a class method to Utility called count_words that takes a string as a parameter. The method should return a hash where the keys are words and the values are numbers indicating the number of times the key occurred in the input string. For example, Utility.count_words('the good and the bad and the ugly') should return:

# {"the" => 3, "good" => 1, "and" => 2, "bad" => 1, "ugly" => 1}

# Print the result of calling this method with the string it was the best of times, it was the worst of times.

class Utility
	# def count_words(string)
	# 	cleaned = string.delete(",")
	# 	array = cleaned.split(" ")
	# 	uniques = array.uniq

	# 	array.each do |x|
	# 		uniques.count(x)
		
	# 	end
	# end


	def count_em(string, substring)
  		puts(string.scan(/(?=#{substring})/).count)
	end

	# ary.count { |x| x%2 == 0 } #=> 3
end

sentence = "it was the best of times, it was the worst of times"
# uniques = ["it", "was", "the", "best", "of", "times", "worst"]

test = Utility.new
# test.count_words(sentence)

test.count_em(sentence, "it")