#coding: utf-8
class Admin::CategoriesController < Admin::BaseController
 before_filter :find_section
 skip_before_filter :set_section_key 

  def new
    @category  = Category.new

    respond_to do |format|
      format.js
    end
  end

  def create
    @category  = Category.new(params[:category])
    @category.section_id = @section.id
    @category.section_key = @section.section_key

    respond_to do |format|
      if @category.save
        format.js { render :js => 'window.location.reload()' }
      else
        format.js {render :action => "new" } 
      end
    end
  end

  def edit
    @category = Category.find(params[:id])

    respond_to do |format|
      format.js 
    end
  end

  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.js { render :js => 'window.location.reload()' }
      else
        format.js {render :action => "edit" } 
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
    @section = Section.find(params[:section_id])
  end
end
