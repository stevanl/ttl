class TableBooking < ActiveRecord::Base
  validates_presence_of :name, :company, :email
end
