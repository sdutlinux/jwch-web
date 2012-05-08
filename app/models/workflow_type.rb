class WorkflowType < ActiveRecord::Base
  attr_accessible :name
  has_many :workflows
end
