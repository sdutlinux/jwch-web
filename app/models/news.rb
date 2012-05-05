class News < ActiveRecord::Base
  attr_accessible :author, :content, :department, :show, :title
  validates :content,:title, :presence => true
end

=begin
      string :title
      string :content
      string :author
      string :department
      boolean :show
=end
