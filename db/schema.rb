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

ActiveRecord::Schema.define(version: 2021_06_22_123410) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_offers_on_company_id"
  end

  create_table "postulants", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "aasm_state"
    t.index ["offer_id"], name: "index_postulants_on_offer_id"
    t.index ["user_id"], name: "index_postulants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "offers", "companies"
  add_foreign_key "postulants", "offers"
  add_foreign_key "postulants", "users"
end
