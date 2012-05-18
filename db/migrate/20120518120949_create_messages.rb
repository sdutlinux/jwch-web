class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_type_id
      t.string :title
      t.text :content
      t.integer :message_channel_id

      t.timestamps
    end
  end
end
