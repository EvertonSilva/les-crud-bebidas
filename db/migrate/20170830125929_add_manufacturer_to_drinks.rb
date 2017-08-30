class AddManufacturerToDrinks < ActiveRecord::Migration[5.1]
  def change
    change_table :drinks do |t|
      t.references :manufacturer, foreign_key: true
    end

    add_index :drinks, [:manufacturer_id, :created_at]
  end
end
