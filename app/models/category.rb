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

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  section_id  :integer          not null
#  section_key :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

