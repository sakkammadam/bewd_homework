require 'HTTParty'
#test url based on Greg's api key!
url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=3b9gz2tdj6ebm4ct9tbwcar9'
#use HTTParty and get json response
resp = HTTParty.get(url).parsed_response
#get the latest booklist
latest = resp["BookLists"][0]["BookListEntries"]
#set the index to zero
index = 0
#begin processing each hash value ...
latest.each do |book_hash| 
	if index == 20 # check if the index has reached 20
 		break # get out of the loop if 20 has reached
 	else
 		if book_hash["Class"] == "Fiction"
 				puts "Title: #{book_hash['Title']}" # display Title
 				puts "Author: #{book_hash["Author"]}"# display Author
 						if book_hash["BriefDescription"] != nil #if the description is not empty - show the description
 						puts "Description: #{book_hash["BriefDescription"]}"
 						end
 				puts "\n===================\n"
			index = index + 1 # increment the index
		end
	end
end