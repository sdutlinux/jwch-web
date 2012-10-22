class CourseTypesController < ApplicationController
  def index
    @section = Section.find_by_section_key('kcjs')
    @course_types = @section.categories 

    respond_to do |format|
      format.html
    end
  end
end
