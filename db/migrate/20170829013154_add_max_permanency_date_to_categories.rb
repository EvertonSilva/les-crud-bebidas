class AddMaxPermanencyDateToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :max_permanency_date, :datetime
  end
end
