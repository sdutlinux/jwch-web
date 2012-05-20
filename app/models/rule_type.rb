class RuleType < ActiveRecord::Base
  attr_accessible :name
  has_many :rules
  validates :name, :presence => true
end
