class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.string :name
      t.string :company
      t.string :address_1
      t.string :address_2
      t.string :postcode
      t.string :telephone
      t.string :email
      t.string :website
      t.string :category
      t.boolean :notified_company
      t.string :nom_name
      t.string :nom_address_1
      t.string :nom_address_2
      t.string :nom_postcode
      t.string :nom_telephone
      t.string :nom_email
      t.text :reason
      t.text :hear_about

      t.timestamps
    end
  end
end
