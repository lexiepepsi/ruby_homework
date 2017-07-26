# Problem 1

# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.


# General Description: The fizzbuzz method checks if a number fed in as its argument is a multiple of 15, 3, or 5. It divides the argument by 15, 3, and/or 5 and checks if the remainder of the division equals 0. If the remaineder = 0, the fizzbuzz method returns a specific string for each number, and if the remainder is no 0 the method returns the argument number itself.

# The fizzbuzz_to method takes a number as an argument which serves as the limit or last number the method will act on. For each number, starting from 1 and going up to the argument-number, fizzbuzz_to will run fizzbuzz with that number as the argument and print out the result to the screen. When we reach the argument limit number the method ends the action.


# Create a method called fizzbuzz that takes an argument caleld number.
def fizzbuzz(number)
  #?????	
  case
  	# Anytime the argument number divides by 15 with a remainder equal to 0, return the string "Fizzbuzz".
    when number % 15 == 0 then 'Fizzbuzz'
    # Anytime the argument number divides by 3 with a remainder equal to 0, return the string "Fizz".
    when number % 3  == 0 then 'Fizz'
    # Anytime the argument number divides by 5 with a remainder equal to 0, return the string "Buzz".
    when number % 5  == 0 then 'Buzz'
    # Otherwise, that is if the argument number never divided by 15, 3, or 5 with a remainder equal to 0, return the argument number.
    else number
  # Ends the case clause.
  end
# Ends defining the creation of the fizzbuzz method.
end

# Create a method called fizzbuzz_to that takes an argument caleld limit.
def fizzbuzz_to(limit)
  # Start with the number 1 and go up to the argument number. For each number, from 1 to the argument number ???????? put the number in a code blocK?
  1.upto(limit) do |i|
  	# Print out the returned value of the fizzbuzz method with feeding in i as the argument.
    puts(fizzbuzz(i))
  # Ends the code block do????
  end
# Ends defining the creation of the fizzbuzz_to method.
end