# Problem 1

# Add a comment at the beginning of the following code describing in plain English what it does in general, then add a comment before each line explaining what that particular line does specifically.


# General Description: 


def fizzbuzz(number)
  case
    when number % 15 == 0 then 'Fizzbuzz'
    when number % 3  == 0 then 'Fizz'
    when number % 5  == 0 then 'Buzz'
    else number
  end
end

def fizzbuzz_to(limit)
  1.upto(limit) do |i|
    puts(fizzbuzz(i))
  end
end