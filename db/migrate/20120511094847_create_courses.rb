class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number
      t.integer :point
      t.string :pre_course
      t.integer :college_type_id
      t.string :book
      t.text :introduction
      t.string :references
      t.string :major
      t.string :level

      t.timestamps
    end
  end
end
