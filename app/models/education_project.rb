#coding=utf-8
class EducationProject < ActiveRecord::Base
  RANK =  ["国家级教改立项", "省级教改立项", "校级教改立项"]
  attr_accessible :department, :name, :rank, :team, :year
  validates :department, :name, :team, :rank, :presence => true
end
