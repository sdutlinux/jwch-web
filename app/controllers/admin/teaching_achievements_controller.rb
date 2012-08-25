#coding=utf-8
class Admin::TeachingAchievementsController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key

  def index
    @teaching_achievements = TeachingAchievement.paginate :page=>params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def show
    @teaching_achievement = TeachingAchievement.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @teaching_achievement = TeachingAchievement.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @teaching_achievement = TeachingAchievement.find(params[:id])
  end

  def create
    @teaching_achievement = TeachingAchievement.new(params[:teaching_achievement])

    respond_to do |format|
      if @teaching_achievement.save
        format.html { redirect_to [:admin,@teaching_achievement], notice: 'TeachingAchievement was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @teaching_achievement = TeachingAchievement.find(params[:id])

    respond_to do |format|
      if @teaching_achievement.update_attributes(params[:teaching_achievement])
        format.html { redirect_to admin_teaching_achievement_path, notice: 'TeachingAchievement was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @teaching_achievement = TeachingAchievement.find(params[:id])
    @teaching_achievement.destroy

    respond_to do |format|
      format.html { redirect_to admin_teaching_achievements_path}
      format.json { head :no_content }
    end
  end

  private
  def set_section_key
    @section_key = 'jxcg'
  end
end
