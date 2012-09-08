class EducationProjectsController < ApplicationController
  layout "application"
  def index
    @education_projects_1 = EducationProject.where( :rank => "nation" )
    @education_projects_2 = EducationProject.where( :rank => "province" )
    @education_projects_3 = EducationProject.where( :rank => "school" )

    @education_projects = [ @education_projects_1, @education_projects_2, @education_projects_3 ]

    respond_to do |format|
      format.html
    end
  end
end
