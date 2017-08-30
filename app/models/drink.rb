# Class to persist a Drink object
#
# table name: drinks
# fields:type
#   name:String
#   expiration_date:DateTime
#   manufacture_date:DateTime
#   alcoholic_content:Integer
class Drink < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  belongs_to :supplier
  
  validates_associated :category, :supplier
  validates :name, :expiration_date, :manufacture_date, :min_inventory, :max_inventory,
          :alcoholic_content, :price, presence: true
  validate :check_experiation_date

  scope :from_supplier,
        ->(supplier) { where "supplier_id = ?",
                        Supplier.where("lower(name) like ?", "%#{supplier.downcase}%")[0].id }

  scope :from_category,
        ->(category) { where "category_id = ?",
                        Category.where("lower(name) like ?", "%#{category.downcase}%")[0].id }

  private
    def check_experiation_date
      # return false if any other validations fails
      return false if self.errors.any?

      max_period = self.category.max_permanency_period

      if self.expiration_date > (self.manufacture_date.to_datetime >> max_period)
        self.errors[:expiration_date] << I18n.t("Date can be above #{max_period} months from #{manufacture_date.to_s}")
      end
    end

end
