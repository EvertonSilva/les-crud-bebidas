class AddDrinkToStocks < ActiveRecord::Migration[5.1]
  def change
    change_table :stocks do |t|
      t.references :drink, foreign_key: true
    end

    add_index :stocks, [:drink_id, :created_at]
  end
end
