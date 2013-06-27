class Hero < ActiveRecord::Base
  attr_accessible :college, :desc, :email, :name, :phone, :sex, :user_agent
  validates_presence_of :name, :email, :phone, :sex, :college, :desc
end
