get '/sign_up' do
  erb :'user/sign_up'
end

post '/sign_up' do
  @user = User.new(params[:user])
  @user_exists = false

  if User.find_by(username: @user.username)
    "A user already exists with this username, please choose another"
    @user_exists = true
    erb :'user/sign_up'
  else
    @user.save
    login(@user)
    redirect '/'
  end
  erb :'user/sign_up'
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

get '/users/:id' do
  @user = User.find_by(id: session[:user_id])
  @rounds = @user.rounds
  erb :'user/show'
end
