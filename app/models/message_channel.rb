class MessageChannel < ActiveRecord::Base
  attr_accessible :number
  has_many :message_types
end
