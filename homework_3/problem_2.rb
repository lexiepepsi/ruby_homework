# Problem 2

# Create a class called Animal.

# Add an instance method to Animal called sound that returns a string indicating the sound an animal makes.

# Add an instance method to Animal called speak that prints the string The animal says: followed by the string returned by the sound method.

# Now create two subclasses of Animal (that is, classes whose parent class is Animal).

# Override the sound method of each of your subclasses to return a string appropriate for that particular animal instead of the string returned by the parent class.

# Call the speak method on an instance of each of your subclasses.

class Animal

	def sound(animal)
		puts("noise")
	end

	def speak(animal)
		"I say things like"
		puts(sound(animal))
	end

end

class Sheep < Animal
	def sound(animal)
		puts("baahhhh")
	end
end

class Cow < Animal
	def sound(animal)
		puts("mooooooo")
	end
end
