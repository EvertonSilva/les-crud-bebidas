# Class to persist a Supplier object
#
# table name: suppliers
# fields:type
#   name:String
#   registry:String
#   phone:String
#   email:String
class Supplier < ApplicationRecord
	validates :name, :registry, :phone, :email, presence: true
end
