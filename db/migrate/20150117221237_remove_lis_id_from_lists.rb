class RemoveLisIdFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :list_id, :string
    remove_column :lists, :integer, :string
  end
end
