#coding: utf-8
class Admin::UsersController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key
  before_filter :require_admin, :except =>[:update]

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
          notice: '成功创建了用户' }
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
                      notice: '修改成功' }
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

  private
  def set_section_key
    @section_key = 'yhgl'
  end
end
