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
  belongs_to :supplier
  validates :name, :expiration_date, :manufacture_date, :alcoholic_content, presence: true
  validate :check_experiation_date

  private
    def check_experiation_date
      max_period = self.category.max_permanency_period
      if self.expiration_date > (self.manufacture_date.to_datetime >> max_period)
        self.errors[:expiration_date] << I18n.t("Date can be above #{max_period} months from #{manufacture_date.to_s}")
      end
    end

end
