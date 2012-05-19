class Message < ActiveRecord::Base
  attr_accessible :content, :message_channel_id, :message_type_id, :title
  belongs_to :message_type

  validates :content, :title, :message_type_id, :message_channel_id, :presence => true

end
