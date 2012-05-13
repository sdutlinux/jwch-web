class CreateEducationProjects < ActiveRecord::Migration
  def change
    create_table :education_projects do |t|
      t.string :name
      t.date :year
      t.string :department
      t.string :team
      t.string :rank

      t.timestamps
    end
  end
end
