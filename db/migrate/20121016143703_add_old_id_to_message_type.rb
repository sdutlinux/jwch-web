class AddOldIdToMessageType < ActiveRecord::Migration
  def change
    add_column :message_types, :old_id, :integer
  end
end
