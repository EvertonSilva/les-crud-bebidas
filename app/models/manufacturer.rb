# Class to persist a Manufacturer object
#
# table name: manufacturers
# fields:type
#   name:String
#   cnpj:String
class Manufacturer < ApplicationRecord
	validates :name, :cnpj, :phone, presence: true
end
