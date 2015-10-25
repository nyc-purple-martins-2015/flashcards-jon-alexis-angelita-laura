post '/guesses' do
  input = params[:choice]
  @card = Card.find_by(id: params[:card_id])
  @correct = @card.correct?(input)
  @guess = Guess.create(card_id:@card.id, round_id: session[:round_id], solved: @correct)

  unless @correct
    return erb :'card/card_question'
  end
    erb :'card/card_answer'
end
