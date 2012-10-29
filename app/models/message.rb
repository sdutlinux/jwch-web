class Message < ActiveRecord::Base
  attr_accessible :content, :message_channel_id, :message_type_id, :title
  belongs_to :message_channel
  belongs_to :message_type

  validates_presence_of :title, :message_type_id, :message_channel_id#, :content 
  #TODO comment content

end

# == Schema Information
#
# Table name: messages
#
#  id                 :integer          not null, primary key
#  message_type_id    :integer
#  title              :string(255)
#  content            :text
#  message_channel_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

