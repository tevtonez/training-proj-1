class RemoveQuantityFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :quantity, :string
  end
end
