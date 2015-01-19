class RemoveItemIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :item_id, :integer
  end
end
