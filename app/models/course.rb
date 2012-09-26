#coding: utf-8
class Course < ActiveRecord::Base
  attr_accessible :book, :attribution, :category_id, :college, :engname, :introduction, :level, :major, :name, :number, :point, :pre_course, :references
  belongs_to :category

  validates :name, :category_id, :presence => true

end

# == Schema Information
#
# Table name: courses
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  engname      :string(255)
#  number       :string(255)
#  point        :string(255)
#  pre_course   :string(255)
#  book         :string(255)
#  category_id  :integer
#  introduction :text
#  references   :string(255)
#  major        :string(255)
#  level        :string(255)
#  college      :string(255)
#  attribution  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

