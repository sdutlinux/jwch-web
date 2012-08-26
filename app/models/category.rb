class Category < ActiveRecord::Base
  attr_accessible :name, :section_id, :section_key
  validates_uniqueness_of :name
  validates_presence_of :name, :section_key, :section_id

  belongs_to :section 
  has_many :rules
  has_many :courses 
  has_many :workflows 
  has_many :competitions

end
