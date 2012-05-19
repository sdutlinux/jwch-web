class MessageType < ActiveRecord::Base
  attr_accessible :message_channel_id, :name
  has_many :messages
  belongs_to :message_channel

  validates :name, :message_channel_id, :presence => true
  validates :name, :uniqueness => true

end
