class News < ActiveRecord::Base
  attr_accessible :author, :content, :department, :show, :title
  validates :content,:title, :presence => true 
end
