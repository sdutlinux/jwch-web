class Message < ActiveRecord::Base
  attr_accessible :content, :message_channel_id, :message_type_id, :title
end
