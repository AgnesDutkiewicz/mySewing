# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_03_100627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fabrics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.string "grammage"
    t.text "recommended"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_versions", force: :cascade do |t|
    t.string "size"
    t.string "color"
    t.bigint "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_item_versions_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.text "description"
    t.string "size"
    t.string "fabrics"
    t.text "subname"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "client_id"
    t.bigint "item_version_id"
    t.decimal "amount", precision: 10, scale: 2
    t.index ["client_id"], name: "index_orders_on_client_id"
    t.index ["item_version_id"], name: "index_orders_on_item_version_id"
  end

  add_foreign_key "item_versions", "items"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "item_versions"
end
