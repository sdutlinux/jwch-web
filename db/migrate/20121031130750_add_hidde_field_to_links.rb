class AddHiddeFieldToLinks < ActiveRecord::Migration
  def change
    add_column :links, :show, :boolean, :default => true 
  end
end
