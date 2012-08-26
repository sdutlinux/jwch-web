class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
