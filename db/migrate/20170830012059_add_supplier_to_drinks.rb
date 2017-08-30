class AddSupplierToDrinks < ActiveRecord::Migration[5.1]
  def change
    change_table :drinks do |t|
      t.references :supplier, foreign_key: true
    end

    add_index :drinks, [:supplier_id, :created_at]
  end
end
