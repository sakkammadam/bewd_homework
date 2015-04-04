
# Temporary variables used to build questions and sentences
var1 = "Enter an animal that makes a sound:"
var2 = "What sound does a " 
var3 = " make?"
var4 = "The "
var5 = " goes "
var6 = "What is your favorite delimiter (choose anything except Enter) ?"
var7 = "How many times should the " 
var8 = "? (integer values only)"

# Program asks user what delimiter (space, comma, exclaimation) should the animal sounds be delimited by  
puts var6
# User inputs the appropriate delimiter. 
#Gets method takes user input. Chomp removes the newline (enter). Downcase converts all the user input to lowercase
delim = gets.chomp.downcase

# Program asks user what animal do they like ?
puts var1
# User inputs the appropriate delimiter. 
#Gets method takes user input. Chomp removes the newline (enter). Downcase converts all the user input to lowercase
animal = gets.chomp.downcase

# Program asks user what sound does the animal make ?
puts var2 + animal + var3
#Gets method takes user input. Chomp removes the newline (enter). Downcase converts all the user input to lowercase
#Assigns the user input to a variable called "sound"
sound = gets.chomp.downcase 
#Adds the delimiter(comma,space,exclaimation) to the "sound"
sound1= sound + delim

#Program asks user how many times should the sound repeat?
puts var7 + animal + " go " + sound + var8
times1 = gets.chomp.downcase
#Converts numeric values to integer
times=times1.to_i

# Create a temp string that dictates "The #animal goes #sound"
temp = var4 + animal + var5 + sound1 * times

#Chop method removes the last character (e.g. quack,quack,quack,)
final = temp.chop

#Displays required sentence
puts final
