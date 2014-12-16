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

ActiveRecord::Schema.define(version: 20141215193202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.string   "link"
    t.string   "category"
    t.string   "address"
    t.string   "zip_code"
    t.boolean  "booked",      default: false
    t.time     "time_period"
    t.datetime "proposed_on"
    t.datetime "booked_on"
    t.datetime "created_at"
    t.integer  "trip_id"
    t.float    "cost"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.float    "rating"
    t.string   "comment"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "trip_name"
    t.string   "primary_location_city"
    t.string   "primary_location_country"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "notes"
    t.string   "image"
    t.string   "weather"
    t.string   "people"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "password_digest"
    t.string   "fbid"
    t.string   "age"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
