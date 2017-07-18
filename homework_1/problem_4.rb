# Problem 4
# What’s the difference between calling the method puts and returning a value from a method?

# Puts is a predefined method in Ruby which prints something out. However, when puts prints something out, this does not change the return value of puts. The return of puts is always nil.

# In the add method we put out the value of a then we add a + b. Puts will print the value of a to the terminal screen but it does nothing to pus nor to the returned value of the add method. The returned value of the add method is the last line of the method, a + b. While this code will dispaly a to the screen the returned value of add will be a + b.
def add(a, b)
	puts(a)
	a + b
end

# In order to 'see' the results of the add method we'll have to puts the returned value of add to the terminal screen. In this code I define a variable called test_1 that takes the add method with an argument of (1,2). Then I puts the reults of test_1. test_1 results in a + b so puts will show 3 as the result.
test_1 = add(1, 2)
puts(test_1)