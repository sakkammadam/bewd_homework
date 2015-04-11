
#Asks the user to input starting number
puts "What is the starting number ?"
# Converts the user input to integer, Remove the newline and saves to variable
start_num = gets.chomp.to_i
#Asks the user to input ending number
puts "What is the ending number ?"
# Converts the user input to integer, Remove the newline and saves to variable
end_num = gets.chomp.to_i


# check the range - starting number has to be less than end number
if start_num >= end_num
	puts "Wrong number ranges! - Starting number is greater than Ending number"
elsif 
	# begin loop 
		while start_num != end_num + 1 # We will be looping through the number range till we have reached the last number
			
			if (start_num%15 == 0) # check to see if starting number is a multiple of 15 
				puts "FizzBuzz"
			elsif (start_num%3 == 0) # check to see if starting number is a multiple of 3 
				puts "Fizz"
			elsif (start_num%5 == 0) # check to see if starting number is a multiple of 5 
				puts "Buzz"
			else 
				puts "#{start_num}" # all else - print the number
			end

			start_num = start_num + 1 # increment the starting number

			if start_num == end_num + 1 # check the starting number to see if we have reached the ending number limit
			puts "Completed!"
			end # Indicate that we have gone through every number in the range
		
		end # Close the loop - this happens when starting number has exceeeded the ending number
end # Close the original check 
												