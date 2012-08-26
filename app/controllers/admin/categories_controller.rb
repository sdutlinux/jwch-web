#coding: utf-8
class Admin::CategoriesController < ApplicationController
 layout "admin"
 before_filter :require_logined, :find_section

  def new
    @category  = Category.new

    respond_to do |format|
      format.js
    end
  end

  def create
    @category  = Category.new(params[:category])
    @category.section_id = @section.id 
 

    respond_to do |format|
      if @category.save
        format.js
      else
        format.js 
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
        format.html { redirect_to admin_section_categorys_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.js 
    end
  end

  private 
  def find_section
    @section = params[:section_id]
  end
end
