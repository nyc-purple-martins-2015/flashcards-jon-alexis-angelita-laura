post '/guesses' do
  @input = params[:choice]
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find(session[:round_id])
  @deck = Deck.find_by(id: @round.deck_id)
  @correct = @card.correct?(@input)
  @guess = Guess.create(card_id:@card.id, round_id: session[:round_id], solved: @correct)

  available_cards = (@deck.cards - @round.done_cards)
  
  if available_cards.empty?
    redirect "/round-stats"
  else
    @next_card = available_cards.sample
    erb :'card/card_answer'
  end
  erb :'card/card_answer'
end
