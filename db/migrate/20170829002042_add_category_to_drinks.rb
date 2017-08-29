class AddCategoryToDrinks < ActiveRecord::Migration[5.1]
  def change
    change_table :drinks do |t|
      t.references :category, foreign_key: true
    end

    add_index :drinks, [:category_id, :created_at]
  end
end
