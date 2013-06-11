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

ActiveRecord::Schema.define(:version => 20130610192216) do

  create_table "cars", :force => true do |t|
    t.string   "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drivers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "goods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lists", :force => true do |t|
    t.integer  "number"
    t.integer  "driver_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ttns", :force => true do |t|
    t.integer  "type_of"
    t.boolean  "visible"
    t.date     "date_in"
    t.date     "date_out"
    t.string   "good_id"
    t.string   "point_in"
    t.string   "point_out"
    t.integer  "invoice_in"
    t.integer  "invoice_out"
    t.string   "car_id"
    t.integer  "weight_in"
    t.integer  "weight_out"
    t.integer  "weight_difference"
    t.integer  "distance"
    t.integer  "diesel"
    t.integer  "transport_id"
    t.integer  "customer_id"
    t.integer  "organization_in_id"
    t.integer  "organization_out_id"
    t.integer  "realization_231"
    t.integer  "services_903"
    t.integer  "store_28"
    t.integer  "sto_233"
    t.boolean  "availability_ttn_in"
    t.boolean  "availability_ttn_out"
    t.integer  "driver_id"
    t.integer  "list_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.integer  "list_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
