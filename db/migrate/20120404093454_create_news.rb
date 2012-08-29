class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :department
      t.boolean :show, :default => 1

      t.timestamps
    end
  end
end
