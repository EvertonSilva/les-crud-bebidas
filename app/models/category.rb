# Class to persist a Category object
#
# table name: categories
# fields:type
#   name:String
#   desc:String
class Category < ApplicationRecord
  validates :name, :max_permanency_period, presence: true

  has_many :drinks
end
