#coding=utf-8
class Admin::TeachingAchievementsController < ApplicationController
  layout "admin"
  before_filter :require_logined
  def index
    @teaching_archievements = TeachingAchievement.paginate :page=>params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def show
    @teaching_archievement = TeachingAchievement.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @teaching_archievement = TeachingAchievement.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @teaching_archievement = TeachingAchievement.find(params[:id])
  end

  def create
    @teaching_archievement = TeachingAchievement.new(params[:news])

    respond_to do |format|
      if @teaching_archievement.save
        format.html { redirect_to [:admin,@teaching_archievement], notice: 'TeachingAchievement was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @teaching_archievement = TeachingAchievement.find(params[:id])

    respond_to do |format|
      if @teaching_archievement.update_attributes(params[:news])
        format.html { redirect_to admin_teaching_archievement_path, notice: 'TeachingAchievement was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @teaching_archievement = TeachingAchievement.find(params[:id])
    @teaching_archievement.destroy

    respond_to do |format|
      format.html { redirect_to admin_teaching_archievement_index_url }
      format.json { head :no_content }
    end
  end

end
