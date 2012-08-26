class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
