class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :product
      t.string :quantity
      t.string :place
      t.integer :list_id

      t.timestamps
    end
  end
end
