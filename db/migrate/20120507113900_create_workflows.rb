class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.string :title
      t.text :content
      t.integer :workflow_type_id

      t.timestamps
    end
  end
end
