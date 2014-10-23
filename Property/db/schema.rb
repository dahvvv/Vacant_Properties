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

ActiveRecord::Schema.define(version: 20141023031639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: true do |t|
    t.integer "boro"
    t.string  "block"
    t.integer "lot"
    t.string  "parcel_name"
    t.string  "parcel_address"
    t.string  "juris"
    t.string  "jurisdiction_description"
    t.string  "rpad"
    t.string  "rpad_description"
    t.integer "prop_front"
    t.integer "prop_depth"
    t.integer "prop_sqft"
    t.boolean "irreg"
    t.integer "bld_front"
    t.integer "bld_depth"
    t.integer "bld_sqft"
    t.integer "num_bld"
    t.integer "floors"
    t.integer "cd"
    t.integer "council_district"
    t.string  "bbl"
    t.boolean "waterfront"
    t.boolean "urban_renewal_site"
    t.string  "agency"
    t.string  "owned_leased"
    t.string  "primary_use"
  end

  create_table "users", force: true do |t|
    t.string   "username",      null: false
    t.string   "password_hash", null: false
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
