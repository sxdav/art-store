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

ActiveRecord::Schema[7.1].define(version: 2023_12_13_142721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "photo_link", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "description", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "artist_id", null: false
    t.string "art_type", null: false
    t.string "paint_type", null: false
    t.string "surface_type", null: false
    t.integer "year", null: false
    t.integer "width", null: false
    t.integer "height", null: false
    t.text "description", null: false
    t.integer "price", null: false
    t.index ["artist_id"], name: "index_arts_on_artist_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.bigint "art_id", null: false
    t.bigint "costumer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_cart_items_on_art_id"
    t.index ["costumer_id"], name: "index_cart_items_on_costumer_id"
  end

  create_table "costumers", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_salt", null: false
    t.string "password_hash", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "born_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_costumers_on_email", unique: true
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "art_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_order_items_on_art_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status", null: false
    t.integer "price", null: false
    t.bigint "costumer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costumer_id"], name: "index_orders_on_costumer_id"
  end

  add_foreign_key "arts", "artists"
  add_foreign_key "cart_items", "arts"
  add_foreign_key "cart_items", "costumers"
  add_foreign_key "order_items", "arts"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "costumers"
end
