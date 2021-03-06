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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150830171054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_orders", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",       default: 0
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "sub_category"
    t.text     "description"
    t.boolean  "is_available"
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "table_number"
    t.integer  "num_of_party"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",       default: 0
  end

end
