class RemoveProductFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :product, :string
  end
end
