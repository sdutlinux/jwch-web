class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :hashed_password
      t.string :salt
      t.string :department
      t.boolean :admin
      t.string :power

      t.timestamps
    end
  end
end
