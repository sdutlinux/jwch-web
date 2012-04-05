class CreateGongztms < ActiveRecord::Migration
  def change
    create_table :gongztms do |t|
      t.integer :gonzcap_id
      t.string :title
      t.string :img_url

      t.timestamps
    end
  end
end
