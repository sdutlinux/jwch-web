#coding=utf-8
class Admin::CategoriesController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    #@categories = Category.where(:channel_name => params[:channel_name])
    @categories = Category.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @category = Category.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_path(:channel_name => @category.channel_name), notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to admin_categories_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to admin_categories_path }
    end
  end

end
