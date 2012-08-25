#coding: utf-8
class CreateCourseTypes < ActiveRecord::Migration

  def change
    create_table :course_types do |t|
      t.string :college

      t.timestamps
    end
  end
end
