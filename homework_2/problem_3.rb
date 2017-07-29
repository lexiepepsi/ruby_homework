# Problem 3

# What is an instance variable in Ruby? Try to find the answer via Google and explain it in your own words.

# Instance variaibles are tied to a particular instance of a class, that is, they are tied to particular objects. They are accessible and visible outside the method where they are defined. We can see and access instance variables when we call specific objects (even if we are outside defining the Class).

# Instance varialbes are different from local variables which are accessible only in the space they are defined. For example when we define the variable 'a' within the sum method, we can't access a to call sum outside the method.
def sum(entry)
	a = 1 # Here we defined a local variable a within the sum method. It can only be accessed within sum.
	puts(entry + 1)
end

sum(a) # This line of code will result in an error because a has not been defined in a place where sum can access it. Ruby thinks a has no value (not even nil) becuase local variables don't have the value of nil before they are created like instance variables do.

def sum(entry)
	puts(entry + 1)
end

a = 1
sum(a) # This version of the code works because the local variable a is defined outside the sum method where sum can access the value of the variable.


class Person
	# Here an instance variaible called name will be defined when we initialize a new Person object. Instance variables are defined by using @ before the name of the variable.
	def initialize(person_name)
		@name = person_name
	end

	# And now we set the name method of the Person class equal to the value inside the instance variable of name.
	def name
		@name
	end
end

alexa = Person.new("Alexa") # Here I create a new object of the Person class called alexa. When alexa is created, the value inside the argument after new, ("Alexa"), will be fed into initialize and the instance variable @name will be set to "Alexa". 

puts(alexa.name) # I can call the name method on the alexa object and return "Alexa". 

#Even though we're outside the Person class, the alexa object had the instance variable @name set to "Alexa" when it was initialized. Now, the name method calls the instance variable @name for the alexa object, which is "Alexa". Even though we are not inside the Person class, and have not specified what @name should be in this exact line of code, we can access the instance variable assocated with the particuar alexa object. Instance variables are tied to their unique objects and can be called on when we are working with the alexa object.

# The value of an instance variable is bound to its particular object. @name for the alexa object is "Alexa" but if I initialized a new Person object the @name variable would not be "Alexa". It would be whatever I fed into the Person.new() argument, or if I fed in nothing it would be nil.

# -------------------------------- #

# Use the Ruby documentation to choose a method from the Integer class and describe what it does in your own words.

