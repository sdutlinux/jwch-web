class TeachingAchievement < ActiveRecord::Base
  attr_accessible :department, :name, :rank, :team, :year
  validates :department, :name, :rank, :team, :presence => true
end
