class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :product
      t.string :quantity
      t.string :place

      t.timestamps
    end
  end
end
