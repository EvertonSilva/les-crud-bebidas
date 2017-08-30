class AddMaxInventoryAndMinInventoryToDrink < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :max_inventory, :int
    add_column :drinks, :min_inventory, :int
  end
end
