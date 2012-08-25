#encoding: utf-8
class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name, :null => false
      t.string :section_key, :null => false, :unique => true
      t.integer :parent_section_id

      t.timestamps
    end
      
  end
end

