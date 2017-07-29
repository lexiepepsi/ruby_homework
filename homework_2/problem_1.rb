# Problem 1

# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.


# General Description: The fizzbuzz method checks if a number fed in as its argument is a multiple of 15, 3, or 5. It does this by dividing the argument integer by 15, 3, and/or 5 and checking if the remainder of the division equals 0. If the remainder = 0, the fizzbuzz method returns a specific string for each number to indicate the number is a multiple of either 15, 3, or 5. If the remainder is not 0 the method returns the argument number itself, indicating the argument is not a multiple of 15, 3, or 5.

# The fizzbuzz_to mehtod prints out the results of fizzbuzz so we can see which numbers are multiples of 15, 3, and 5. The fizzbuzz_to method takes a number as an argument which serves as the limit or last number the method will act on. For each number, starting from 1, going up to (and including) the argument-number, fizzbuzz_to will run fizzbuzz with that number as the argument and print out the result to the screen. After the argument limit number has run the method ends the action.


# Create a method called fizzbuzz that takes an argument called number.
def fizzbuzz(number)
  # Create a case statement. (Case statements test equality using 'when' clauses. The first 'when' clause to evaluate to true gets its code executed.)
  case
  	# When the argument number divides by 15 with a remainder equal to 0, return the string "Fizzbuzz". 
    # ((Note, 15 is tested before 5. Since the when statements are evaluated top-down a number such as 30, which is a multiple of all 3 numbers, will return Fizzbuzz because the first when statement will evaluate to true and get its code executed before we even get to 3 or 5 in the lines below it.))
    when number % 15 == 0 then 'Fizzbuzz'
    # When the argument number divides by 3 with a remainder equal to 0, return the string "Fizz".
    when number % 3  == 0 then 'Fizz'
    # When the argument number divides by 5 with a remainder equal to 0, return the string "Buzz".
    when number % 5  == 0 then 'Buzz'
    # Otherwise, that is if the argument number never divided by 15, 3, or 5 with a remainder equal to 0, return the argument number.
    else number
  # This is the end of the case statement.
  end
# Ends defining the creation of the fizzbuzz method.
end

# Create a method called fizzbuzz_to that takes an argument called limit.
def fizzbuzz_to(limit)
  # Start with the number 1 and perform an action for each number up to (and including) the number fed in as the limit argument. Pass each number into the code block as an argument called i. ((This section creates a loop starting with the number 1, then 2, then 3, and so on up to the number in the limit argument. It passes the current integer into the code block as 'i' and executes the code in the block until it reaches the 'end'.))
  1.upto(limit) do |i|
  	# Run the fizzbuzz method with an argument of i and print out the returned value of the fizzbuzz method.
    puts(fizzbuzz(i))
  # Ends the 'do' code block.
  end
# Ends defining the creation of the fizzbuzz_to method.
end

fizzbuzz_to(30)