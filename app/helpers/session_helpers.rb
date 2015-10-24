helpers do
  def login(user)
    session[:user_id] = user.id
    session[:user_name] = user.username
  end

  def logout!
    session.clear
  end

  def logged_in?
    !!current_user
  end

  def current_user
    if session[:user_id]
      cur ||= User.find(session[:user_id])
    end
    cur
  end
end
