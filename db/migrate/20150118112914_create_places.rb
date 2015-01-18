class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title

      t.timestamps
    end
  end
end
