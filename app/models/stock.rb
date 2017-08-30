# Class to persist a Category object
#
# table name: categories
# fields:type
#   ammount:int
class Stock < ApplicationRecord
	belongs_to :drink

	validates :amount, presence: true
end
