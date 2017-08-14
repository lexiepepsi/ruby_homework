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

ActiveRecord::Schema.define(version: 20170814024002) do

  create_table "items", force: :cascade do |t|
    t.integer  "item_number"
    t.integer  "price"
    t.integer  "inventory_id"
    t.string   "name"
    t.string   "category"
    t.string   "size"
    t.string   "color"
    t.boolean  "for_sale"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "product_details"
  end

  create_table "items_orders", id: false, force: :cascade do |t|
    t.integer "item_id",  null: false
    t.integer "order_id", null: false
  end

  add_index "items_orders", ["item_id", "order_id"], name: "index_items_orders_on_item_id_and_order_id"
  add_index "items_orders", ["order_id", "item_id"], name: "index_items_orders_on_order_id_and_item_id", unique: true

  create_table "orders", force: :cascade do |t|
    t.string   "order_status"
    t.integer  "item_id"
    t.integer  "line_item_qty"
    t.integer  "tracking_number"
    t.integer  "user_id"
    t.datetime "shipped_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
