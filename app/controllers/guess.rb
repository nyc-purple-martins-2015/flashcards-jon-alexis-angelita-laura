post '/guesses' do
  input = params[:choice]
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find(session[:round_id])
  @correct = @card.correct?(input)
  @guess = Guess.create(card_id:@card.id, round_id: session[:round_id], solved: @correct)

  if @correct
    erb :'card/card_answer'
  else
    erb :'card/card_question'
    redirect "/round/#{@round.id}/cards/#{@card.id}"
  end
end
