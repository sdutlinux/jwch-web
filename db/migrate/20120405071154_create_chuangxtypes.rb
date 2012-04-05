class CreateChuangxtypes < ActiveRecord::Migration
  def change
    create_table :chuangxtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
