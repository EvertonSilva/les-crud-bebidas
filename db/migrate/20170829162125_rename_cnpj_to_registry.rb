class RenameCnpjToRegistry < ActiveRecord::Migration[5.1]
  def change
  	rename_column :manufacturers, :cnpj, :registry
  end
end
