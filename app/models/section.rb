class Section < ActiveRecord::Base
  attr_accessible :name, :parent_section_id
  has_many  :subsections, :class_name => "Section", :foreign_key => "parent_section_id"
  belongs_to :parent, :class_name => "Section", :foreign_key => "parent_section_id"
end
