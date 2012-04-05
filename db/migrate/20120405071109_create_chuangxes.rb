class CreateChuangxes < ActiveRecord::Migration
  def change
    create_table :chuangxes do |t|
      t.string :title
      t.string :grade
      t.string :time
      t.string :teacher
      t.string :member
      t.string :remark
      t.integer :chuangxtype_id

      t.timestamps
    end
  end
end
