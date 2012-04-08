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
      flash[:notice] = "login faild, name: #{params[:name]},passwd: #{params[:password]}"
      redirect_to login_path
    end
  end

  def destroy 
    logout
    redirect_to root_path
  end

end
