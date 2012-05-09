class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :title
      t.text :content
      t.integer :rule_type_id

      t.timestamps
    end
  end
end
