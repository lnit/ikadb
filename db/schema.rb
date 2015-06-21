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

ActiveRecord::Schema.define(version: 20150621085626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "main_weapons", force: :cascade do |t|
    t.integer  "weapon_type"
    t.integer  "range"
    t.integer  "attack"
    t.integer  "damage"
    t.integer  "charge"
    t.integer  "speed"
    t.integer  "rapid"
    t.integer  "mobility"
    t.integer  "weight"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "main_weapons", ["attack"], name: "index_main_weapons_on_attack", using: :btree
  add_index "main_weapons", ["charge"], name: "index_main_weapons_on_charge", using: :btree
  add_index "main_weapons", ["damage"], name: "index_main_weapons_on_damage", using: :btree
  add_index "main_weapons", ["id"], name: "index_main_weapons_on_id", using: :btree
  add_index "main_weapons", ["mobility"], name: "index_main_weapons_on_mobility", using: :btree
  add_index "main_weapons", ["range"], name: "index_main_weapons_on_range", using: :btree
  add_index "main_weapons", ["rapid"], name: "index_main_weapons_on_rapid", using: :btree
  add_index "main_weapons", ["speed"], name: "index_main_weapons_on_speed", using: :btree
  add_index "main_weapons", ["weapon_type"], name: "index_main_weapons_on_weapon_type", using: :btree
  add_index "main_weapons", ["weight"], name: "index_main_weapons_on_weight", using: :btree

  create_table "special_weapons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "special_weapons", ["id"], name: "index_special_weapons_on_id", using: :btree

  create_table "sub_weapons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sub_weapons", ["id"], name: "index_sub_weapons_on_id", using: :btree

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "main_weapon_id"
    t.integer  "sub_weapon_id"
    t.integer  "special_weapon_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "weapons", ["main_weapon_id"], name: "index_weapons_on_main_weapon_id", using: :btree
  add_index "weapons", ["name"], name: "index_weapons_on_name", using: :btree
  add_index "weapons", ["special_weapon_id"], name: "index_weapons_on_special_weapon_id", using: :btree
  add_index "weapons", ["sub_weapon_id"], name: "index_weapons_on_sub_weapon_id", using: :btree

  add_foreign_key "weapons", "main_weapons"
  add_foreign_key "weapons", "special_weapons"
  add_foreign_key "weapons", "sub_weapons"
end
