class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :responsibility
      t.string :author
      t.boolean :show
      t.integer :category_id
      t.string  :category_name

      t.timestamps
    end
  end
end
