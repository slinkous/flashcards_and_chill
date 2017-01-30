get '/rounds' do
	@rounds = Round.all
	erb :'rounds/index'
end

get '/rounds/new' do
	erb :'rounds/new'
end

post '/rounds' do
	@round = Round.new(deck_id: params[:id])
	if session[:user_id]
		@round.user_id = sessions[:user_id]
	end
	if @round.save
		redirect "/rounds/#{@round.id}"
	else
		redirect '/decks'
	end
end

get '/rounds/:id' do
	@round = Round.find(:id)
	erb :'rounds/show'
	@round = Round.find(params[:id])
	erb :'rounds/show'
end
