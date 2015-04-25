require 'sinatra'
require 'HTTParty'


get '/' do
#test url based on Greg's api key!
url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=3b9gz2tdj6ebm4ct9tbwcar9'
#use HTTParty and get json response
resp = HTTParty.get(url).parsed_response
#get the latest booklist
@latest = resp["BookLists"][0]["BookListEntries"]
#set an index to 0 initial value
@index = 0
erb :home
end