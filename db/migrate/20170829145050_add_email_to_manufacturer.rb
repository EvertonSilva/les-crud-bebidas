class AddEmailToManufacturer < ActiveRecord::Migration[5.1]
  def change
    add_column :manufacturers, :email, :string
  end
end
