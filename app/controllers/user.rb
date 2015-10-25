<<<<<<< HEAD
 get '/sign_up' do
=======
get '/sign_up' do
>>>>>>> 7479c5cc64202033b8c431014c65a36d5d3fdd27
  erb :'user/sign_up'
end

post '/sign_up' do
  @user = User.new(params[:user])
  @user_exists = false

  if User.find_by(username: @user.username)
    "A user already exists with this username, please choose another"
    @user_exists = true
<<<<<<< HEAD

    erb :'user/sign_up'
  else
    @user.save
    login(@user)

    redirect '/'
  end
=======
    return erb :'user/sign_up'
  end

  if @user.save
    login(@user)
    redirect '/'
  end

  "something went wrong"

>>>>>>> 7479c5cc64202033b8c431014c65a36d5d3fdd27
end

get '/login' do
  erb :'user/login'
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  @user_not_found = false

  if user && user.password == params[:user][:password]
    login(user)
    redirect '/'
  else
    @user_not_found = true
    erb :'user/login'
  end
end

get '/logout' do
  logout!
  redirect '/'
end

<<<<<<< HEAD
get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @total_first = @round.total_first_guesses
  #TODO: add appropriate working guess logic/stats here
  erb :'user/show'
end
=======
>>>>>>> 7479c5cc64202033b8c431014c65a36d5d3fdd27
