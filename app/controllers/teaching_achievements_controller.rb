class TeachingAchievementsController < ApplicationController
  def index
    @teaching_achievements = TeachingAchievement.all.group_by(&:rank)

    respond_to do |format|
      format.html
    end
  end
end
