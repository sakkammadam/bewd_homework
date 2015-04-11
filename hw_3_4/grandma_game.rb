# Set the initial variable that governs the loop to true
play = true
# Say something to grandma
puts "Say something to Grandma"
# Begin loop till "some" condition within the loop will set the play variable to false
while play != false
# User input stored
input = gets.chomp
# We are going to convert the original user input to uppercase - going to be used for comparison
input_up = input.upcase
# If the user input is Bye - the loop should stop and Grandma should say Goodby 
	if input_up == "BYE"
		puts "GOODBYE SONNY!"
		play = false # sets the initial variable to false - this breaks the while loop
		elsif input == input_up # if the user input was not bye and was in Upper case
				random_number = rand(1930..1950)
				puts "NO, NOT SINCE #{random_number}" ## Grandma will respond with a random number 
		else
				puts "HUH?! SPEAK UP, SONNY!" # if the user input was not bye and in Lower case
	end  #If input was BYE - the if check succeeds and initial variable (play) gets set to false

end # loop ends as initial variable (play) gets set to false
