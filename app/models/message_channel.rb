class MessageChannel < ActiveRecord::Base
  attr_accessible :number
  has_many :message_types

  validates :number, :presence => true
  validates :number, :uniqueness => true

end
