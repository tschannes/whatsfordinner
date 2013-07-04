module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in?
    puts "it is calling this method"
    # !@current_user.nil?
  end

  def signed_in_user
    unless signed_in?
      redirect_to new_session_path, notice: "Please sign in."
    end
  end

  def is_admin?(user)
    user.role == "admin"
  end

end
