class Link < ActiveRecord::Base
  attr_accessible :name, :sort, :url
  validates :name,:url, :presence => true
end
