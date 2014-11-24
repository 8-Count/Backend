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

ActiveRecord::Schema.define(version: 20141124212143) do

  create_table "athletes", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "athletes", ["user_id"], name: "index_athletes_on_user_id"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: true do |t|
    t.string   "udid"
    t.integer  "athlete_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "devices", ["athlete_id"], name: "index_devices_on_athlete_id"
  add_index "devices", ["team_id"], name: "index_devices_on_team_id"

  create_table "impacts", force: true do |t|
    t.integer  "athlete_id"
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.float    "xrot"
    t.float    "yrot"
    t.float    "zrot"
    t.datetime "timeOccurred"
    t.integer  "concussionStatus"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "impacts", ["athlete_id"], name: "index_impacts_on_athlete_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.string   "sport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["client_id"], name: "index_teams_on_client_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "userType"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
