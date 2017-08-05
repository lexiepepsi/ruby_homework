# Problem 1

# Download the file homework-4-problem-1.zip from Canvas and unzip it to use as the template for this problem.

# Create a class in triangle.rb called Triangle.

# Run the code in tests.rb. This file contains a series of tests that will verify the correctness of your Triangle class by calling the kind method for triangles with sides of various lengths and checking the value returned. When you run the tests, you will see a report of which tests failed. You haven’t written any code for Triangle yet, so all the tests will fail initially—your job is to make them all pass!

# Add a constructor to Triangle that takes three numbers as parameters representing the lengths of the sides of the triangle.

# Add a method to Triangle called kind that returns a symbol indicating whether the triangle is equilateral, isosceles, or scalene. The method should raise an exception for triangles with any side of length less than or equal to zero and for triangles whose sides violate the triangle inequality https://en.wikipedia.org/wiki/Triangle_inequality

class TriangleError < StandardError
end

class Triangle

	def initialize(side_one, side_two, side_three)
		@side_one = side_one
		@side_two = side_two
		@side_three = side_three
	end

	def kind
		if @side_one > 0 && @side_two > 0 && @side_three > 0
			if @side_one + @side_two > @side_three && @side_two + @side_three > @side_one && @side_three + @side_one > @side_two
				if @side_one == @side_two && @side_two == @side_three && @side_three == @side_one
					:equilateral
				elsif @side_one == @side_two || @side_two == @side_three || @side_three == @side_one
					:isosceles
				else @side_one != @side_two && @side_two != @side_three && @side_three != @side_one
					:scalene
				end
			else
				raise TriangleError
			end
		else
			raise TriangleError
		end
	end

end
