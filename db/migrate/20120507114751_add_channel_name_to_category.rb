class AddChannelNameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :channel_name, :string
  end
end
