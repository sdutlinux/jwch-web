class EducationProjectsController < ApplicationController
  def index

    @education_projects = EducationProject.all

    respond_to do |format|
      format.html
    end
  end
end
