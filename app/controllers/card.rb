get '/cards/:id' do
  @card=Card.find(params[:id])
  erb :'card/card_question'
end

post '/cards/:id' do
  @card = Card.find(params[:card_id])
  unless  params[:choice].eql?(params[:answer])
    @incorrect = true
    return erb :'card/card_question'
  end
    erb :'card/card_answer'
end
