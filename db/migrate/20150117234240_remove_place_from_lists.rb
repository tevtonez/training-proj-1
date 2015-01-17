class RemovePlaceFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :place, :string
  end
end
