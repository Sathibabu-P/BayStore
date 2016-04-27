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

ActiveRecord::Schema.define(version: 20160427161619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "condition_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_durations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "category_id"
    t.float    "price"
    t.integer  "qty"
    t.string   "brand"
    t.string   "description"
    t.integer  "store_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["store_id"], name: "index_products_on_store_id", using: :btree

  create_table "settings", force: :cascade do |t|
    t.string   "app_id"
    t.string   "dev_id"
    t.string   "cert_id"
    t.string   "run_name"
    t.string   "site_id"
    t.string   "user_token"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "settings", ["store_id"], name: "index_settings_on_store_id", using: :btree

  create_table "stores", force: :cascade do |t|
    t.string   "store_name"
    t.string   "county"
    t.string   "street"
    t.string   "country_code_type"
    t.string   "ebay_website"
    t.string   "postal_code"
    t.integer  "category_mapping"
    t.integer  "category_prefill"
    t.string   "currency_code"
    t.string   "item_location"
    t.integer  "dispatch_time"
    t.integer  "optimal_picturesize"
    t.integer  "out_of_stock_control"
    t.integer  "get_it_fast"
    t.integer  "include_prefilled"
    t.string   "shipping_profile"
    t.string   "return_profile"
    t.string   "payment_profile"
    t.string   "shipping_service"
    t.integer  "shippingservice_priority"
    t.float    "shippingservice_cost"
    t.float    "shippingservice_additionalcost"
    t.integer  "user_id"
    t.integer  "listing_duration_id"
    t.integer  "listing_type_id"
    t.integer  "condition_type_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "stores", ["condition_type_id"], name: "index_stores_on_condition_type_id", using: :btree
  add_index "stores", ["listing_duration_id"], name: "index_stores_on_listing_duration_id", using: :btree
  add_index "stores", ["listing_type_id"], name: "index_stores_on_listing_type_id", using: :btree
  add_index "stores", ["user_id"], name: "index_stores_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "auth"
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
    t.string   "name"
    t.string   "avatar_url"
    t.boolean  "admin",             default: false
    t.boolean  "blocked",           default: true
    t.boolean  "can_create_stores", default: true
    t.integer  "state",             default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
