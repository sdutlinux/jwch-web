class RenameMessageChannelNubmer < ActiveRecord::Migration
  def change
    rename_column :message_channels, :nubmer, :number
  end
end
