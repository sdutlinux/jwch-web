class CoursesController < ApplicationController
  before_filter :find_course_type

  def index
    @courses = @course_type.courses.paginate :page => params[:page], :order=> 'created_at desc',
      :per_page => 15

    respond_to do |format|
      format.html
    end
  end

  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  private 
  def find_course_type
    @course_type =  Category.find(params[:category_id])
  end
end
