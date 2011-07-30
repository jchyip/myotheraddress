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

ActiveRecord::Schema.define(:version => 20110730063134) do

  create_table "confirmations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliveries", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.date     "order_date"
    t.date     "expected_date"
    t.string   "status"
  end

  create_table "logins", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receiver_profiles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "name"
    t.string   "address"
    t.integer  "rating"
  end

  create_table "select_receivers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
