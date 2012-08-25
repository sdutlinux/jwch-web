class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false, :unique => true
      t.integer :section_id, :null => false 
      t.string :section_key


      t.timestamps
    end
  end
end
