class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :channelname
      t.string :url
      t.integer :sort

      t.timestamps
    end
  end
end
