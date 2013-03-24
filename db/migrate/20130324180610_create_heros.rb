class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :sex
      t.string :college
      t.text :desc

      t.timestamps
    end
  end
end
