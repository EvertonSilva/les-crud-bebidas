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
  validates :name, :expiration_date, :manufacture_date, :alcoholic_content, presence: true
end
