#coding: utf-8
class Course < ActiveRecord::Base
  attr_accessible :book, :attribution, :category_id, :college, :engname, :introduction, :level, :major, :name, :number, :point, :pre_course, :references
  belongs_to :category

  validates :name, :category_id, :presence => true

end

# attribution 归属

