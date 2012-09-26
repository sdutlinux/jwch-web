class Section < ActiveRecord::Base
  attr_accessible :name, :parent_section_id, :section_key

  has_many  :subsections, :class_name => "Section", :foreign_key => "parent_section_id"
  belongs_to :parent, :class_name => "Section", :foreign_key => "parent_section_id"
  has_many :categories

  validates_presence_of :name, :section_key
  validates_uniqueness_of :section_key 
end

# == Schema Information
#
# Table name: sections
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  section_key       :string(255)      not null
#  parent_section_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

