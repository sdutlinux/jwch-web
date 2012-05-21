class Course < ActiveRecord::Base
  attr_accessible :book, :course_type_id, :introduction, :level, :major, :name, :number, :point, :pre_course, :references
  belongs_to :course_type

  validates :name, :point, :book, :introduction, :level, :presence => true

end

=begin rdoc
  id :integer
  book :string
  introduction :text

=end
