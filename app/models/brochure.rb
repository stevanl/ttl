class Brochure < ActiveRecord::Base
  validates_presence_of :name, :address_1, :postcode, :telephone, :email
end
