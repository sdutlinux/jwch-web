#coding: utf-8
class Admin::EducationProjectsController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key
  
  def index
    @education_projects = EducationProject.paginate :page=>params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def show
    @education_project = EducationProject.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @education_project = EducationProject.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @education_project = EducationProject.find(params[:id])
  end

  def create
    @education_project = EducationProject.new(params[:education_project])

    respond_to do |format|
      if @education_project.save
        format.html { redirect_to [:admin,@education_project], notice: 'EducationProject was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @education_project = EducationProject.find(params[:id])

    respond_to do |format|
      if @education_project.update_attributes(params[:education_project])
        format.html { redirect_to admin_education_project_path, notice: 'EducationProject was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @education_project = EducationProject.find(params[:id])
    @education_project.destroy

    respond_to do |format|
      format.html { redirect_to admin_education_projects_path }
    end
  end
  private
  def set_section_key
    @section_key = 'jglx'
  end

end
