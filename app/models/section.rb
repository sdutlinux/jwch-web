class Section < ActiveRecord::Base
  attr_accessible :name, :parent_section_id, :section_key
  has_many  :subsections, :class_name => "Section", :foreign_key => "parent_section_id"
  belongs_to :parent, :class_name => "Section", :foreign_key => "parent_section_id"

  validates_presence_of :name, :section_key
  validates_uniqueness_of :section_key 
end
