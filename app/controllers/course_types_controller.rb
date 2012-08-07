class CourseTypesController < ApplicationController
  def index
    @course_types = CourseType.all

    respond_to do |format|
      format.html
    end
  end
end
