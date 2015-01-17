class AddListNameToLists < ActiveRecord::Migration
  def change
    add_column :lists, :list_name, :string
  end
end
