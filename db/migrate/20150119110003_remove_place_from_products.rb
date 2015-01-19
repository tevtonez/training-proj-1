class RemovePlaceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :place, :string
  end
end
