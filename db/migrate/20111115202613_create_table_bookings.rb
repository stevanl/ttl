class CreateTableBookings < ActiveRecord::Migration
  def change
    create_table :table_bookings do |t|
      t.integer :tables
      t.integer :corporate_packages
      t.integer :gold_packages
      t.string :name
      t.string :company
      t.string :address_1
      t.string :address_2
      t.string :postcode
      t.string :telephone
      t.string :email
      t.string :payment

      t.timestamps
    end
  end
end
