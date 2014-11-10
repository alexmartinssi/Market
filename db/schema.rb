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

ActiveRecord::Schema.define(version: 20141103011051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "purchase_id"
  end

  add_index "items", ["product_id"], name: "index_items_on_product_id", using: :btree
  add_index "items", ["purchase_id"], name: "index_items_on_purchase_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "bar_code"
    t.string   "description"
    t.float    "price"
    t.integer  "unit_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["unit_id"], name: "index_products_on_unit_id", using: :btree

  create_table "purchases", force: true do |t|
    t.float    "total"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["supplier_id"], name: "index_purchases_on_supplier_id", using: :btree

  create_table "sales", force: true do |t|
    t.integer  "item_id"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["item_id"], name: "index_sales_on_item_id", using: :btree

  create_table "stocks", force: true do |t|
    t.integer  "item_id"
    t.integer  "supplier_id"
    t.integer  "quantity"
    t.float    "sale_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["item_id"], name: "index_stocks_on_item_id", using: :btree
  add_index "stocks", ["supplier_id"], name: "index_stocks_on_supplier_id", using: :btree

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.string   "cnpj"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "description"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
