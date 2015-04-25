require 'sinatra'

get '/' do
	erb :home
end

get '/play_game' do
	user_choice = rand(1..3)
	comp_choice = rand(1..3)

if user_choice == 1
		  @user = "rock"
	elsif user_choice == 2
		  @user = "paper"
	else user_choice == 3
		  @user = "scissor"
end

if comp_choice == 1
		  @comp = "rock"
	elsif comp_choice == 2
		  @comp = "paper"
	else comp_choice == 3
		  @comp = "scissor"
end

	erb	:decision # use the environment html using views

	#"<h1>your</h1> roll: <b>#{roll}</b>" # => third iteration!!!
end

get '/go_home' do
	"<h1>Alright bye!</h1>" # => third iteration!!!
end