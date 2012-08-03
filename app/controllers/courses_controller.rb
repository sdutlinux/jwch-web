class CoursesController < ApplicationController
  layout "application"
  before_filter :find_course_type

  def index
    @courses = @course_type.courses.paginate :page => params[:page], :order=> 'created_at desc',
      :per_page => 15

    respond_to do |format|
      format.html
    end
  end

  def show
    @course = @course_type.courses.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def find_course_type
    @course_type =  CourseType.find(params[:course_type_id])
  end
end
