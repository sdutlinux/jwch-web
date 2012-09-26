class MessageType < ActiveRecord::Base
  attr_accessible :message_channel_id, :name
  has_many :messages
  belongs_to :message_channel

  validates :name, :message_channel_id, :presence => true
  validates :name, :uniqueness => true

end

# == Schema Information
#
# Table name: message_types
#
#  id                 :integer          not null, primary key
#  message_channel_id :integer
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

