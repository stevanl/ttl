# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111115202613) do

  create_table "brochures", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "postcode"
    t.string   "telephone"
    t.string   "email"
    t.string   "package"
    t.string   "payment"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nominations", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "postcode"
    t.string   "telephone"
    t.string   "email"
    t.string   "website"
    t.string   "category"
    t.boolean  "notified_company"
    t.string   "nom_name"
    t.string   "nom_address_1"
    t.string   "nom_address_2"
    t.string   "nom_postcode"
    t.string   "nom_telephone"
    t.string   "nom_email"
    t.text     "reason"
    t.text     "hear_about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", :force => true do |t|
    t.integer  "number_of_people"
    t.boolean  "attendance"
    t.string   "amount"
    t.string   "donation"
    t.string   "name"
    t.string   "name_2"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "postcode"
    t.string   "telephone"
    t.string   "email"
    t.string   "payment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "table_bookings", :force => true do |t|
    t.integer  "tables"
    t.integer  "corporate_packages"
    t.integer  "gold_packages"
    t.string   "name"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "postcode"
    t.string   "telephone"
    t.string   "email"
    t.string   "payment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
