class ChangeTypeOfProductIdInItemsToInteger < ActiveRecord::Migration
  def change
    change_column :items, :product_id, :integer
  end
end
