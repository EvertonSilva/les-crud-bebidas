class AddPhoneToManufacturer < ActiveRecord::Migration[5.1]
  def change
    add_column :manufacturers, :phone, :string
  end
end
