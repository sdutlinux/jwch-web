class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin?
    if session[:user_id]
      return true if current_user.admin 
    end
  end

  def logined?
    return true if session[:user_id]
  end
  
  def require_login
    unless logined?
      redirect_to login_url
    end
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end

end
