class AddOldIdToMessageChannels < ActiveRecord::Migration
  def change
    add_column :message_channels, :old_id, :string  
  end
end
