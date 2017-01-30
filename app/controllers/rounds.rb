get '/rounds' do
	erb :'rounds/index'
end

get '/rounds/new' do
	erb :'rounds/new'
end

post '/rounds' do
	@round = Round.new(deck_id: params[:id])
	if @round.save
		redirect '/rounds/#{@round.id}'
	else
		redirect '/decks'
	end
end