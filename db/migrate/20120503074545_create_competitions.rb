class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :title
      t.string :rank
      t.string :year
      t.string :teacher
      t.string :member
      t.string :remark
      t.integer :category_id

      t.timestamps
    end
  end
end
