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

ActiveRecord::Schema.define(version: 2018_07_30_215717) do

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
  end

end
