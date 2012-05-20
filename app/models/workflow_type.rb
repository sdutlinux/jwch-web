class WorkflowType < ActiveRecord::Base
  attr_accessible :name
  has_many :workflows
  validates :name, :presence => true
end
