class CourseType < ActiveRecord::Base
  attr_accessible :college
  has_many :courses
end
