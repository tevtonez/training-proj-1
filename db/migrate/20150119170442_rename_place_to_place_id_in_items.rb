class RenamePlaceToPlaceIdInItems < ActiveRecord::Migration
  def change
    rename_column :items, :place, :place_id
  end
end
