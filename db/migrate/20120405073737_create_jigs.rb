class CreateJigs < ActiveRecord::Migration
  def change
    create_table :jigs do |t|
      t.string :title
      t.text :jignr
      t.string :author
      t.boolean :show
      t.integer :capid

      t.timestamps
    end
  end
end
