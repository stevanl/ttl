class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :number_of_people
      t.boolean :attendance
      t.string :donation
      t.string :name
      t.string :name_2
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
