#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :is_admin?, :logined?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_admin?
      current_user.admin
  end

  def require_admin
    if session[:user_id]
      unless is_admin?
        flash[:error] = "需要管理员权限"
        redirect_to admin_path
      end
    end
  end

  def require_logined
    unless logined?
      redirect_to login_url
    end
  end

  def logined?
    !!session[:user_id]
  end


  def logout
    session.delete(:user_id)
    @current_user = nil
  end
end
