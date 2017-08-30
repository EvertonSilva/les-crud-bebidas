class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :cnpj

      t.timestamps
    end
  end
end
