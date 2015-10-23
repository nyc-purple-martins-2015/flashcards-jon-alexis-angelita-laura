get '/' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
 @deck = Deck.find(params[:id])
 @card= Card.find_by(deck_id: @deck.id)
 erb :'decks/show'
end

