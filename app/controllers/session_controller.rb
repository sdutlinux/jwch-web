#coding: UTF-8
class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:name],params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "welcome #{@user.name}"
      redirect_to admin_dashboard_path
    else
      flash[:notice] = "登陆失败，请检查用户名和密码"
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

end
