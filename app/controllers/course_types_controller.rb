class CourseTypesController < ApplicationController
  layout "application"
  def index
    @course_types = CourseType.all

    respond_to do |format|
      format.html
    end
  end
end
