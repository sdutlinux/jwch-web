#coding: utf-8
class TeachingAchievement < ActiveRecord::Base
  attr_accessible :department, :name, :rank, :team, :year
  validates :department, :name, :rank, :team, :presence => true
end

# == Schema Information
#
# Table name: teaching_achievements
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :string(255)
#  department :string(255)      default("山东理工大学")
#  team       :string(255)
#  rank       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

