class Admin::UsersController < ApplicationController
  layout "admin"
  before_filter :require_admin

  def index
    @users = User.all

    respond_to  do |format|
     format.html
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_user_path(@user),
          notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to  do |format|
      format.html
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to admin_user_path,
                      notice: 'News was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :action => :index
  end
end
