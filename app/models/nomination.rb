class Nomination < ActiveRecord::Base
  validates_presence_of :name, :company, :email, :category, :reason, :hear_about
end
