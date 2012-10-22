class EducationProjectsController < ApplicationController
  def index
    @education_projects = EducationProject.all.group_by(&:rank)

    respond_to do |format|
      format.html
    end
  end
end
