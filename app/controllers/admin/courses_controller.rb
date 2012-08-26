#coding: utf-8
class Admin::CoursesController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key, :find_course_type

  def index
    @courses = Course.where(:category_id => params[:course_type_id] ).paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def new
    @course = Course.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @course = @course_type.courses.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to admin_course_type_courses_path(:course_type_id => @course_type.id ), notice: ' 更新成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @course = @course_type.courses.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @course = @course_type.courses.find(params[:id])
  end

  def update
    @course = @course_type.courses.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to admin_course_type_course_path, notice: 'Competition was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @course = @course_type.courses.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to admin_course_type_courses_path }
    end
  end

  private

  def find_course_type
    @course_type = Category.find(params[:course_type_id])
  end

  def set_section_key
    @section_key = 'ccjs'
  end
end
