class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :list_name
      t.integer :user_id

      t.timestamps
    end
  end
end
