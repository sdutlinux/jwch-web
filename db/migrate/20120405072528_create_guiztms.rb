class CreateGuiztms < ActiveRecord::Migration
  def change
    create_table :guiztms do |t|
      t.string :title
      t.text :content
      t.integer :guizcap_id

      t.timestamps
    end
  end
end
