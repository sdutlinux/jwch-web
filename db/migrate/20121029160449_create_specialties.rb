class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :name
      t.string :code
      t.string :college
      t.string :degree
      t.text :content

      t.timestamps
    end
  end
end
