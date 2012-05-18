class RenameMessageType < ActiveRecord::Migration
  def change
   rename_column :message_types, :channel_type_id, :message_channel_id
  end
end
