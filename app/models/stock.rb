# Class to persist a Category object
#
# table name: categories
# fields:type
#   ammount:int
class Stock < ApplicationRecord
	belongs_to :drink

	validates_associated :drink
	validates :amount, presence: true
	validate :check_amount_range

	private
    def check_amount_range
      # return false if any other validations fails
      return false if self.errors.any?

      if (self.amount < self.drink.min_inventory) or (self.amount > self.drink.max_inventory)
        self.errors[:amount] << I18n.t("The amount must be beetwen #{self.drink.min_inventory} and #{self.drink.max_inventory}")
      end
    end
end
