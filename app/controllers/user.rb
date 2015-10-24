get '/sign_up' do
  erb :'user/sign_up'
end

post '/sign_up' do
  @user = User.new(params[:user])
  @user_exists = false

  if User.find_by(username: @user.username)
    "A user already exists with this username, please choose another"
    @user_exists = true
    return erb :'user/sign_up'
  end

  if @user.save
    return "go to profile"
  end

  "something went wrong"

end

get '/login' do
  erb :'user/login'
end



post '/login' do
  # erb :'user/login'
  "password".password
end
