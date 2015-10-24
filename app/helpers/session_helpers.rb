helpers do
  def login(user)
    session[:user_id] = user.id
    session[:user_name] = user.username
  end

  def logout!
    session.clear
  end
end
