#coding=utf-8
class EducationProject < ActiveRecord::Base
  attr_accessible :department, :name, :rank, :team, :year
  validates :department, :name, :team, :rank, :presence => true
end
