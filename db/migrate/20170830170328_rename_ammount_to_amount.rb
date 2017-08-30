class RenameAmmountToAmount < ActiveRecord::Migration[5.1]
  def change
  	rename_column :stocks, :ammount, :amount
  end
end
