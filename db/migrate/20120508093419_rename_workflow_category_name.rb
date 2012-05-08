class RenameWorkflowCategoryName < ActiveRecord::Migration

  def change
    rename_column :workflows, :category_id, :workflow_type_id
  end

end
