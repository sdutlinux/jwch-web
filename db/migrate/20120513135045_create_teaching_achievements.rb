#coding: utf-8
class CreateTeachingAchievements < ActiveRecord::Migration
  def change
    create_table :teaching_achievements do |t|
      t.string :name
      t.string :year
      t.string :department, :default => "山东理工大学"
      t.string :team
      t.string :rank

      t.timestamps
    end
  end
end
