class MessageType < ActiveRecord::Base
  attr_accessible :channel_type_id, :name
  has_many :messages
  belongs_to :message_channel
end
