class CreateMessageChannels < ActiveRecord::Migration
  def change
    create_table :message_channels do |t|
      t.integer :nubmer

      t.timestamps
    end
  end
end
