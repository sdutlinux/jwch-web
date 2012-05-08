class CreateWorkflowTypes < ActiveRecord::Migration
  def change
    create_table :workflow_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
