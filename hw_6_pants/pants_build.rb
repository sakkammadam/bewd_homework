require "sinatra"
require 'httparty'

get "/" do 
	erb :home
end

post "/input_zip" do
	@str = params["input_zip"]
		if @str.empty?
			redirect "/"
		else
			redirect "/zip_temp?zip=#{@str}"
		end
			
end

get "/zip_temp" do
	@zip = params["zip"]
	#base url to get co-ordinates for the zipcode
	zip_url = "http://api.zippopotam.us/us/#{@zip}"
	#store the parsed json into a variable
	zip_parsed_data = HTTParty.get(zip_url).parsed_response
	#get latitude
	@lat = zip_parsed_data["places"][0]["latitude"]
	#get longitude
	@long = zip_parsed_data["places"][0]["longitude"]
	#now we are going to get the forecast
	forecast_url = "https://api.forecast.io/forecast/d7179982eae1c9ff3091e3639d405eb6/#{@lat},#{@long}"
	#store the parsed json into a variable
	forecast_data = HTTParty.get(forecast_url).parsed_response
	#parse the forecast data and get the temperature
	@current_temp = forecast_data["currently"]["temperature"]
	#max temp
	@max_temp = forecast_data["daily"]["data"].last["temperatureMax"]
	#min temp
	@min_temp = forecast_data["daily"]["data"].last["temperatureMin"]	
	erb	:process	

end
