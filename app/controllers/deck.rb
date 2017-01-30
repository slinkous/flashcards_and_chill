# shows all decks
get "/decks" do
  @decks = Deck.all
  erb :'decks/index'
end


# returns a form to create a new deck
get "/decks/new" do
  erb :'decks/new'
end

# sends form data
post '/decks' do
  @deck = Deck.new(params[:deck])
  # if the deck was able to be created redirect to show all the decks
  if @deck.save
    redirect '/decks'
  else # otherwise go back to the create new deck page
    erb :'decks/new'
  end
end

#shows one deck, with all it's cards
get '/decks/:id' do
  @deck = Deck.find(params[:id])
  @cards = @deck.cards
  erb :'decks/show'
end

# returns a form to edit a specific deck
get '/decks/:id/edit' do
  @deck = Deck.find(params[:id])
  erb :'decks/edit'
end

# send form to server
put '/decks/:id' do
  @deck = Deck.find(params[:id])
  @deck.assign_attributes(params[:deck])

  if @deck.save
    redirect '/decks'
  else
    erb :'decks/edit'
  end
end

# deletes select deck
delete '/decks/:id' do
  #find deck
  deck = Deck.find(params[:id])
  #remove deck
  deck.destroy
  # go back to list of decks
  redirect '/decks'
end
