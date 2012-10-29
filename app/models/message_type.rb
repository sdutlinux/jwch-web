# == Schema Information
#
# Table name: message_types
#
#  id                 :integer          not null, primary key
#  message_channel_id :integer
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  old_id             :integer
#

class MessageType < ActiveRecord::Base
  attr_accessible :message_channel_id, :name, :old_id
  belongs_to :message_channel
  has_many :messages

  validates :name, :message_channel_id, :presence => true
  validates_uniqueness_of :name, :scope => :message_channel_id

end
