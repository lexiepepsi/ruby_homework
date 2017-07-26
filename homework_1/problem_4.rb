# Problem 4

# What’s the difference between calling the method puts and returning a value from a method?


# Answer:
# Puts is a predefined method in Ruby that prints something out to the terminal screen. It makes something visable but it does not change the value of what it shows or the value of the method puts itself. The return of puts is always nil.

# For example, in the add method below we put out the value of a, then we add a + b. 
# Puts will print the value of a to the terminal screen but it does not change the return value of puts and it does not change the returned value of the add method. The returned value of the add method is the last line of the method, a + b. While this add method will dispaly a to the terminal screen when we run it, the returned value of the add method is actually a + b.
def add(a, b)
	puts(a)
	a + b
end

# For example, if I run add(1,2):
# add(1,2)

# The result will look like this when running irb in terminal:
# >1
# => 3
# Here, 1 prints to the terminal screen but the returned value of the add method is 3


# To see the returned value of the add method we can use puts on the method itself to puts or print the returned value of the method. In this code I define a variable called result that takes the add method with an argument of (1,2). The returned value of add(1,2), or 3, will be stored in the result variable. Then I puts or print out result so we can see 3 (the returned value of add(1,2)) on our screeen.
result = add(1, 2)
puts(result)