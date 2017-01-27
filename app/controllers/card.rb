# display all cards
get '/cards' do
  @cards = Card.all
  erb :'cards/index'
end

# form for making a new card
get '/cards/new' do
  erb :'cards/new'

end

# return form to server
post '/cards' do
  @card = Card.new(params[:card])

  if @card.save
    redirect '/cards'
  else
    erb :'cards/new'
  end
end

# show a specific card
get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :'cards/show'
end

# return form to edit a card
get '/cards/:id/edit' do
  @card = Card.find(params[:id])
  erb :'cards/edit'
end

# send form to server
put '/cards/:id' do
  @card = Card.find(params[:id])
  @card.assign_attributes(params[:id])

  if @card.save
    redirect '/cards'
  else
    erb :'cards/edit'
  end

end

# delete selected card
delete '/cards/:id' do
  @card = Card.find(params[:id])
  @card.destroy

  redirect '/cards'

end
