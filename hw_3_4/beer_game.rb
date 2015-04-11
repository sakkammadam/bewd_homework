# Set the initial variable that governs the loop to true
play = true
# Asks the users how many beers ?
puts "How many beers ?"
# Save user response to "beer" variable. Use to_i method to convert to integer
beer = gets.chomp.to_i
# Retain the original value to another variable
original_beer = beer
# Starting the game !
puts "Beginning with #{beer} beers"

while play # Begin loop

  puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer." # Start with user input of beers - string interpolations
  puts "Take one down and pass it around, #{beer-1} bottles of beer on the wall." # In the second statement, reduce the user input by 1

  beer = beer-1 # reduce the variable value by 1

  if beer == 1 # for the last beer ---- 
      puts "No more bottles of beer on the wall, no more bottles of beer. "
      puts "Go to the store and buy some more, #{original_beer} bottles of beer on the wall." ### here you will place the original user input value for reference
      play = false  # At the last beer the game has to stop
  else
      play = true   # If we have not reached the last beer - we can keep playing/producing statements
  end  # Close the if check for the last beer
end # End the loop 
