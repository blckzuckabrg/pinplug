class AddUserIdToPlugs < ActiveRecord::Migration
  def change
    add_column :plugs, :user_id, :integer
    add_index :plugs, :user_id
  end
end
