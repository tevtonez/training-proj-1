class RenameProductsToProductIdInItems < ActiveRecord::Migration
  def change
    rename_column :items, :product, :product_id
  end
end
