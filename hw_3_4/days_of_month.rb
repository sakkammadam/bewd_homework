# 12 months in a year
months = 12
# Build an array for fun
months_array = ["January","February","March","April","May","June","July","August","September","October","November","December"]
# check to see which months have 31 days
i = 1 # initial variable to keep track of which month we are on (i=1 -- January, 2 -- February, 3--- March .. and so on)
while i != months + 1 # keep looping till variable (i) reaches more than 12 months!
	if (i <= 7) # if months less than 7 (July and prior)
		if (i%2 != 0) # if remainder is not zero 
			puts "The #{i}th month - #{months_array[i-1]} - has 31 days" # that month will have 31 days
		end # close if the if check
	elsif (i >= 8) # if months greater than 8 (August and onwards)
		if (i%2 == 0) # if remainder is zero
			puts "The #{i}th month - #{months_array[i-1]} - has 31 days"# that month will have 31 days
		end # close if the if check
	end # close if the if check
	i = i + 1 #increment the variable i till it reaches months (1,2,3,4......12 at 13 - the loop will stop)
end	# Close the loop
			