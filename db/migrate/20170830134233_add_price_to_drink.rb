class AddPriceToDrink < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :price, :real
  end
end
