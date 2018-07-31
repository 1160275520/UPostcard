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

ActiveRecord::Schema.define(version: 2018_07_31_160906) do

  create_table "fronts", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
  end

  create_table "postcards", force: :cascade do |t|
    t.string "description"
    t.string "r_name"
    t.string "r_address_line1"
    t.string "r_address_line2"
    t.string "r_city"
    t.string "r_state"
    t.string "r_zip"
    t.string "s_name"
    t.string "s_address_line1"
    t.string "s_address_line2"
    t.string "s_city"
    t.string "s_state"
    t.string "s_zip"
    t.string "front"
    t.string "back"
    t.string "name"
    t.string "lobid"
    t.string "link"
    t.string "user"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
