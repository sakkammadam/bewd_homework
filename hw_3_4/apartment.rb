# Tells user to provide response with Yes/No
puts "Please provide responses with Yes/No"
# Sets the initial variable to always loop
play = true
# Keep looping till "some" condition within the loop will set the play variable to false
while play != false
	# Asks the user if the apartment rent is less than 1/3 of monthly income
	puts "Is the apartment rent less than 1/3 of my monthly income ?"
	# User response is stored in resp1 - removed newline and converted to Uppercase
	resp1 = gets.chomp.upcase

	# Asks the user if the apartment has at least 1 bathroom per 1.5 bedrooms
	puts "Does it have at least 1 bathroom per 1.5 bedrooms ?"
	# User response is stored in resp2 - removed newline and converted to Uppercase
	resp2 = gets.chomp.upcase

	# Asks the user if the apartment has more than 5 bedrooms
	puts "Does it have more than 5 bedrooms ?"
	# User response is stored in resp3 - removed newline and converted to Uppercase
	resp3 = gets.chomp.upcase

	# Checks the responses
	if (resp1 == "YES") && (resp2 == "YES") && (resp3 == "NO")
		puts "You should move to this apartment !!!"	#If responses are correct
		play = false # reset the play variable so that looping stops
	else puts "You should skip this apartment" # If responses are incorrect - keep looping
	end # if the responses are correct - check succeeds and initial variable (play) gets set to false

end  # end the loop

