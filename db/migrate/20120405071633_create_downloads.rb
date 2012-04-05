class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :filename
      t.string :url
      t.string :username
      t.string :category

      t.timestamps
    end
  end
end
