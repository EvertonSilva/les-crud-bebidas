# Class to persist a Category object
#
# table name: categories
# fields:type
#   name:String
#   desc:String
class Category < ApplicationRecord
  validates :name, presence: true

  has_many :drinks
end
