class MessageChannel < ActiveRecord::Base
  attr_accessible :number
  has_many :message_types
  has_many :messages

  validates :number, :presence => true
  validates :number, :uniqueness => true

end

# == Schema Information
#
# Table name: message_channels
#
#  id         :integer          not null, primary key
#  number     :string 
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

