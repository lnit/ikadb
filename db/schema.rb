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

ActiveRecord::Schema.define(version: 20160410180937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "strong_power_id"
    t.integer  "weak_power_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string   "name"
    t.integer  "gear_type"
    t.integer  "slot"
    t.integer  "brand_id"
    t.integer  "power_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "released_version"
  end

  add_index "gears", ["brand_id"], name: "index_gears_on_brand_id", using: :btree
  add_index "gears", ["gear_type"], name: "index_gears_on_gear_type", using: :btree
  add_index "gears", ["name"], name: "index_gears_on_name", using: :btree
  add_index "gears", ["power_id"], name: "index_gears_on_power_id", using: :btree
  add_index "gears", ["slot"], name: "index_gears_on_slot", using: :btree

  create_table "link_blocks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "link_records", force: :cascade do |t|
    t.string   "name"
    t.text     "url"
    t.text     "description"
    t.integer  "link_block_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "link_records", ["link_block_id"], name: "index_link_records_on_link_block_id", using: :btree

  create_table "main_weapons", force: :cascade do |t|
    t.string   "name"
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
    t.float    "real_damage"
    t.float    "max_damage"
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

  create_table "powers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_weapons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "special_weapons", ["id"], name: "index_special_weapons_on_id", using: :btree

  create_table "sub_weapons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "real_damage"
    t.float    "max_damage"
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
    t.integer  "loss_special_rate"
  end

  add_index "weapons", ["main_weapon_id"], name: "index_weapons_on_main_weapon_id", using: :btree
  add_index "weapons", ["name"], name: "index_weapons_on_name", using: :btree
  add_index "weapons", ["special_weapon_id"], name: "index_weapons_on_special_weapon_id", using: :btree
  add_index "weapons", ["sub_weapon_id"], name: "index_weapons_on_sub_weapon_id", using: :btree

  add_foreign_key "gears", "brands"
  add_foreign_key "gears", "powers"
  add_foreign_key "link_records", "link_blocks"
  add_foreign_key "weapons", "main_weapons"
  add_foreign_key "weapons", "special_weapons"
  add_foreign_key "weapons", "sub_weapons"
end
