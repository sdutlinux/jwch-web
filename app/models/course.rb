class Course < ActiveRecord::Base
  attr_accessible :book, :category_id, :introduction, :level, :major, :name, :number, :point, :pre_course, :references
  belongs_to :category

  validates :name, :point, :book, :introduction, :level, :category_id, :presence => true

end

=begin rdoc
  id :integer
  book :string
  introduction :text

=end
