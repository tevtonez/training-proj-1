class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :article
      t.string :place

      t.timestamps
    end
  end
end
