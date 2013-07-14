module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user

  end

  def current_user=(user)
    @current_user = user
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in?
    if @current_user != nil
      return true
    else
      return false
    end
  end

  def signed_in_user
    unless signed_in?
      redirect_to new_session_path, notice: "Please sign in."
    end
  end

  def is_admin?(user)
    user.role == "admin"
  end

  # def signed_in_as_role
  #   if is_admin?

  #   else
end
