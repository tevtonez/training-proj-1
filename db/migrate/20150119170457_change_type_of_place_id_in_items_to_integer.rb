class ChangeTypeOfPlaceIdInItemsToInteger < ActiveRecord::Migration
  def change
    change_column :items, :place_id, :integer
  end
end
