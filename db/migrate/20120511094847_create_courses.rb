class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :engname
      t.string :number
      t.string :point
      t.string :pre_course
      t.string :book
      t.integer :category_id 
      t.text :introduction
      t.string :references
      t.string :major
      t.string :level
      t.string :college
      t.string :attribution

      t.timestamps
    end
  end
end
