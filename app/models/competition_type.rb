class CompetitionType < ActiveRecord::Base
  attr_accessible :name
  has_many :competitions
  validates :name, :presence => true

end
