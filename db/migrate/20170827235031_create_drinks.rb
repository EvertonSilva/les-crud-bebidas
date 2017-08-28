class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.datetime :expiration_date
      t.datetime :manufacture_date
      t.integer :alcoholic_content

      t.timestamps
    end
  end
end
