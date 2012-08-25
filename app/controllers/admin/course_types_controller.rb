#coding=utf-8
class Admin::CourseTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key

  def index
    @course_types = CourseType.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @course_type  = CourseType.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @course_type  = CourseType.new(params[:course_type])

    respond_to do |format|
      if @course_type.save
        format.html { redirect_to admin_course_types_path, notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @course_type = CourseType.find(params[:id])
  end

  def update
    @course_type = CourseType.find(params[:id])

    respond_to do |format|
      if @course_type.update_attributes(params[:course_type])
        format.html { redirect_to admin_course_types_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @course_type = CourseType.find(params[:id])
    @course_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_course_types_path }
    end
  end
  
  private
  def set_section_key
    @section_key = 'ccjs'
  end 
end
