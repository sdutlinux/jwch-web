class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :path
      t.string :author
      t.string :category_id 
      t.string :content_type

      t.timestamps
    end
  end
end
