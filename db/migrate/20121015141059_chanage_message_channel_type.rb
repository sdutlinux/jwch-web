class ChanageMessageChannelType < ActiveRecord::Migration
  change_column :message_channels, :number, :string
end
