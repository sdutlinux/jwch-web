class Specialty < ActiveRecord::Base
  attr_accessible :code, :college, :content, :degree, :name
  validates_presence_of :content, :name, :college
end

# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  college    :string(255)
#  degree     :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

