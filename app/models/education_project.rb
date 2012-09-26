#coding=utf-8
class EducationProject < ActiveRecord::Base
  attr_accessible :department, :name, :rank, :team, :year
  validates :department, :name, :team, :rank, :presence => true
end

# == Schema Information
#
# Table name: education_projects
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :string(255)
#  department :string(255)
#  team       :string(255)
#  rank       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

