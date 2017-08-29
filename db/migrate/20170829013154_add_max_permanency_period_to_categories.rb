class AddMaxPermanencyPeriodToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :max_permanency_period, :int
  end
end
