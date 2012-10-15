class Message < ActiveRecord::Base
  attr_accessible :content, :message_channel_id, :message_type_id, :title
  belongs_to :message_channel

  validates :content, :title, :message_type_id, :message_channel_id, :presence => true

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
