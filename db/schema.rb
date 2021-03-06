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

ActiveRecord::Schema.define(version: 20150731052742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "criteria", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sort"
  end

  create_table "decisions", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "decisions", ["user_id"], name: "index_decisions_on_user_id", using: :btree

  create_table "options", force: :cascade do |t|
    t.string   "criteria"
    t.string   "rank"
    t.string   "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options_criteria", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "criterium_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "options_criteria", ["criterium_id"], name: "index_options_criteria_on_criterium_id", using: :btree
  add_index "options_criteria", ["option_id"], name: "index_options_criteria_on_option_id", using: :btree

  create_table "priorities", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort_order"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "priorities", ["user_id"], name: "index_priorities_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "decisions"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "decisions", "users"
  add_foreign_key "options_criteria", "criteria"
  add_foreign_key "options_criteria", "options"
  add_foreign_key "priorities", "users"
end
