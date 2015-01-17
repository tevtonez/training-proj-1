class AddUserIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :User_id, :string
  end
end
