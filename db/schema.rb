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

ActiveRecord::Schema.define(version: 2019_10_05_033622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.string "label"
    t.datetime "received_at"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_transactions", force: :cascade do |t|
    t.bigint "phone_id"
    t.bigint "transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_id"], name: "index_phone_transactions_on_phone_id"
    t.index ["transaction_id"], name: "index_phone_transactions_on_transaction_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "model", null: false
    t.string "capacity", null: false
    t.string "original_carrier"
    t.string "unlocked", default: "f"
    t.string "battery"
    t.string "screen_condition"
    t.string "frame_condition"
    t.bigint "imei", null: false
    t.string "serial"
    t.string "color"
    t.string "source"
    t.string "known_issues", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "batch_id"
    t.index ["batch_id"], name: "index_phones_on_batch_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.float "total"
    t.float "subtotal"
    t.float "insurance", default: 0.0
    t.float "shipping_cost"
    t.string "shipping_method"
    t.date "ship_date"
    t.string "tracking"
    t.string "buyer_name"
    t.string "buyer_address"
    t.string "buyer_address2"
    t.string "buyer_city"
    t.string "buyer_state"
    t.string "buyer_postal"
    t.string "buyer_email"
    t.string "source"
    t.datetime "sale_time"
    t.string "external_id"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "phones", "batches"
end
