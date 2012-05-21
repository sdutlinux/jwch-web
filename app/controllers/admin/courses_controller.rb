#coding: utf-8
class Admin::CoursesController < ApplicationController
  layout "admin"
  before_filter :require_logined
  before_filter :find_course_type

  def index
    @courses = @course_type.courses.paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def new
    @course = @course_type.courses.build

    respond_to do |format|
      format.html
    end
  end

  def create
    @course = @course_type.courses.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to [:admin, @course_type,@course], notice: ' 更新成功' }
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
    @course_type = CourseType.find(params[:course_type_id])
  end

end
