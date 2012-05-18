class CreateMessageTypes < ActiveRecord::Migration
  def change
    create_table :message_types do |t|
      t.integer :channel_type_id
      t.string :name

      t.timestamps
    end
  end
end
