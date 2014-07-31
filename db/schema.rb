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

ActiveRecord::Schema.define(version: 20140731145015) do

  create_table "intervals", force: true do |t|
    t.string   "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "orders", force: true do |t|
    t.string   "customer"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interval_id"
  end

  create_table "products", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.string   "volume"
    t.decimal  "mk_price"
    t.decimal  "sp_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end