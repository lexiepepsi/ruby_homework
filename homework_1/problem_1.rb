# PROBLEM_1

# Define or create a method with the name "full_name" that takes 3 arguments or parameters. These parameters are variables called first_name, last_name, and title.
def full_name(first_name, last_name, title)
  # Set the variable called name to a value of nil.
  name = nil

  # If the variable title AND the variable first_name AND the variable last_name are set to a value, run the code below this line.
  if title && first_name && last_name
	   # Set the variable name to the value of the variable title, plus a space, plus the value of the variable first_name, plus a space, plus the value of the variable last name.
    name = title + ' ' + first_name + ' ' + last_name
  
  # Else, if ((which means if the first line did not evaluate to true)), if title AND last_name are set to a value, run the code below.
  elsif title && last_name
	   # Set the variable name to the value of the variable title, plus a space, plus the value of the variable last_name.
    name = title + ' ' + last_name
  
  # Else, if ((if the first two conditionals did not evaluate to true)), if first_name AND last_name are set to a value run the code below.
  elsif first_name && last_name
	   # Set the variable name to the value of the variable first_name, plus a space, plus the value of the variable last_name.
    name = first_name + ' ' + last_name
 
  # Else, if ((if the 3 above conditionals did not evaluate to true)), if first_name is set to a variable run the code below.
  elsif first_name
	 # Set the variable name to the value of the variable first_name.
    name = first_name
  
  # Else ((if none of the above conditionals evaluated to true)), if false, run the code below.
  else
  	# Create an exception error message that shows That doesn't look like a name! in a runtime error alert.
    raise "That doesn't look like a name!"
  
  # This marks the end of the conditional if statement. This end tells ruby the conditional statement is over.
  end


  # The method full_name should return the value of the variable name. The conditional statement above should have set the variable name to a combination of the arguments if they existed, or the method will return nil if all statements evalutated to false.
  return(name)

# Indicates to ruby that we are done defining the method. We defined a method called full_name that took 3 arguments. We set a variable called name to nil. We ran through a conditional statement that changed the value of the name variable if certain arguments were present. We returned the value of name at the end of the method and now we are at the end of the method.
end

first_name = "alexa" 
last_name = "kovachevich"
title = nil

puts(full_name(first_name, last_name, title))