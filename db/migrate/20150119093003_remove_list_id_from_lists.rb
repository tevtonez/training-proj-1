class RemoveListIdFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :list_id, :integer
  end
end
