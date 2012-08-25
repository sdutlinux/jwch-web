class Category < ActiveRecord::Base
  attr_accessible :name, :section_id, :section_key
  validates_uniqueness_of :name
  validates_presence_of :name, :section_key, :section_id
end
