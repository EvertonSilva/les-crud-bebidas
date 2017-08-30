class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :ammount

      t.timestamps
    end
  end
end
