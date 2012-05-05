class FixCompotetitionCategoryName < ActiveRecord::Migration

  def change
    rename_column :competitions, :category_id, :competition_type_id
  end

end
