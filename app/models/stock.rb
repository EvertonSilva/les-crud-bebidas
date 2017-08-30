# Class to persist a Category object
#
# table name: categories
# fields:type
#   ammount:int
class Stock < ApplicationRecord
	validates :ammount, presence: true
end
