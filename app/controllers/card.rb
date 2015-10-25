get '/round/:round_id/cards/:card_id' do
  @round = Round.find(session[:round_id])
  @deck = Deck.find_by(id: @round.deck_id)
  @card=Card.find(params[:card_id])
  erb :'card/card_question'
end




