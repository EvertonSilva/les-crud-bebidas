# Class to persist a Manufacturer object
#
# table name: manufacturers
# fields:type
#   name:String
#   registry:String
#   phone:String
#   email:String
class Manufacturer < ApplicationRecord
	validates :name, :registry, :phone, :email, presence: true

	has_many :drinks
end
