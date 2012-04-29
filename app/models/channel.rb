class Channel < ActiveRecord::Base
  has_many :categorys
  attr_accessible :channelname, :sort, :url
  validates :channelname, :sort, :presence => true
end
