class Category < ActiveRecord::Base
  attr_accessible :channel_id, :name
  belongs_to :channel
  has_many :Competitions
end
