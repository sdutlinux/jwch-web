class CreateGongzcaps < ActiveRecord::Migration
  def change
    create_table :gongzcaps do |t|
      t.string :category

      t.timestamps
    end
  end
end
