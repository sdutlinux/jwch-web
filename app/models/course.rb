class Course < ActiveRecord::Base
  attr_accessible :book, :course_type_id, :introduction, :level, :major, :name, :number, :point, :pre_course, :references
  belongs_to :course_type
end
