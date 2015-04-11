
#Asks the user to input starting year
puts "What is the starting year ?"
# Converts the user input to integer, Remove the newline and saves to variable
start_year = gets.chomp.to_i
#Asks the user to input ending year
puts "What is the ending year ?"
# Converts the user input to integer, Remove the newline and saves to variable
end_year = gets.chomp.to_i

# check the range - start year has to be less than end year
if start_year >= end_year
	puts "Wrong year ranges! - Starting year is greater than Ending year"
elsif 
	# begin loop 
		while start_year != end_year + 1 # We will be looping through the year range till we have reached the last year
		# Referring to the year that is being checked
		puts "Starting with #{start_year} year"

			if start_year%4 == 0 # check to see if the year is divisible by 4 or not - if it is
				if start_year%100 == 0 # check to see if the year is divisible by 100 or not - if it is 
					if start_year%400 == 0 # check to see if the year is divisible by 400 or not 
					puts "#{start_year} is a leap year" # if it is - e.g. 1600 / 2000 (divisible by 100 and divisible by 400)
					else puts "#{start_year} is not a leap year" # if it is not - e.g. 1800/1900 (not divisible by 400 but divisible by 100)
					end
				else puts "#{start_year} is a leap year" # e.g. 1992/1996/2004 (divisible by 4 but not divisible by 100)
				end
			else puts "#{start_year} is not a leap year" # e.g. 1990/2001 (not divisible by 4)
			end

		start_year = start_year + 1 # increment the start year by 1

		if start_year==end_year + 1 # check the start year to see if we have reached the end year limit
			puts "Completed!"
		end # Indicate that we have gone through every year in year range
		
		end # Close the loop - this happens when starting year has exceeeded the ending year
end # Close the original check 