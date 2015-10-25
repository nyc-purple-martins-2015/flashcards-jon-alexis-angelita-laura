get '/' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
 @deck = Deck.find(params[:id])
 @card= Card.find_by(deck_id: @deck.id)
 @round = Round.create(deck_id: @deck.id, user_id: 1)
 session[:round_id] = @round.id



 
 erb :'decks/show'
end

