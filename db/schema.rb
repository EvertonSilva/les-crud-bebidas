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

ActiveRecord::Schema.define(version: 20170830134233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_permanency_period"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.datetime "expiration_date"
    t.datetime "manufacture_date"
    t.integer "alcoholic_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "supplier_id"
    t.bigint "manufacturer_id"
    t.integer "max_inventory"
    t.integer "min_inventory"
    t.float "price"
    t.index ["category_id", "created_at"], name: "index_drinks_on_category_id_and_created_at"
    t.index ["category_id"], name: "index_drinks_on_category_id"
    t.index ["manufacturer_id", "created_at"], name: "index_drinks_on_manufacturer_id_and_created_at"
    t.index ["manufacturer_id"], name: "index_drinks_on_manufacturer_id"
    t.index ["supplier_id", "created_at"], name: "index_drinks_on_supplier_id_and_created_at"
    t.index ["supplier_id"], name: "index_drinks_on_supplier_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.string "registry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "email"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "registry"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drinks", "categories"
  add_foreign_key "drinks", "manufacturers"
  add_foreign_key "drinks", "suppliers"
end
