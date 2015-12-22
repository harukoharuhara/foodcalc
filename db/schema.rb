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

ActiveRecord::Schema.define(version: 20151220235450) do

  create_table "eatens", force: :cascade do |t|
    t.integer  "food_id"
    t.decimal  "portion_factor", precision: 5, scale: 2
    t.datetime "date"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "eatens", ["food_id"], name: "index_eatens_on_food_id"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.decimal  "protein",       precision: 5,  scale: 2
    t.decimal  "fat",           precision: 5,  scale: 2
    t.decimal  "carbs",         precision: 5,  scale: 2
    t.decimal  "portion_size",  precision: 10, scale: 2
    t.string   "portion_units"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
