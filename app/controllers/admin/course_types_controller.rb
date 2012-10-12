#coding: utf-8
class Admin::CourseTypesController < Admin::BaseController
  before_filter :find_section

  def index
    @course_types = Category.where(:section_key => @section_key).paginate(:per_page => 7, :page => params[:page])

    respond_to do |format|
      format.html
    end
  end

  private
  def set_section_key
    @section_key = 'kcjs'
  end 

  def find_section
    @section = Section.find_by_section_key('kcjs')
  end
end
