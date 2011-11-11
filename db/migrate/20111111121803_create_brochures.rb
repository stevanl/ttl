class CreateBrochures < ActiveRecord::Migration
  def change
    create_table :brochures do |t|
      t.string :name
      t.string :company
      t.string :address_1
      t.string :address_2
      t.string :postcode
      t.string :telephone
      t.string :email
      t.string :package
      t.string :payment
      t.text :comments

      t.timestamps
    end
  end
end
