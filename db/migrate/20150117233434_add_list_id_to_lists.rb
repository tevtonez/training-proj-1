class AddListIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :list_id, :integer
  end
end
