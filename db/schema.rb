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

ActiveRecord::Schema.define(version: 20140627095159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.decimal  "score1"
    t.decimal  "score2"
    t.decimal  "score3"
    t.decimal  "score4"
    t.decimal  "score5"
    t.decimal  "score6"
    t.decimal  "score7"
    t.decimal  "score8"
    t.decimal  "score9"
    t.decimal  "score10"
    t.decimal  "score11"
    t.decimal  "score12"
    t.decimal  "score13"
    t.decimal  "score14"
    t.decimal  "score15"
    t.decimal  "score16"
    t.decimal  "score17"
    t.decimal  "score18"
    t.decimal  "score19"
    t.decimal  "score20"
    t.decimal  "score21"
    t.decimal  "score22"
    t.decimal  "score23"
    t.decimal  "score24"
    t.decimal  "score25"
    t.decimal  "score26"
    t.decimal  "score27"
    t.decimal  "score28"
    t.decimal  "score29"
    t.decimal  "score30"
    t.decimal  "score31"
    t.decimal  "score32"
    t.decimal  "score33"
    t.decimal  "score34"
    t.decimal  "score35"
    t.decimal  "score36"
    t.decimal  "score37"
    t.decimal  "score38"
    t.decimal  "score39"
    t.decimal  "score40"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.decimal  "testscore"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
