class AddUserAgentToHeros < ActiveRecord::Migration
  def change
    add_column :heros, :user_agent, :string 
  end
end
