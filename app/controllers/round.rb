require 'pry'
get '/round-stats' do
  @round = Round.find_by(id: session[:round_id])
  @total_first = @round.total_first_guesses
  @deck = Deck.find_by(id: @round.deck_id)
  erb :'rounds/end-round-show'
end
