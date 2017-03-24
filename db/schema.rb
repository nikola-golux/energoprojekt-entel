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

ActiveRecord::Schema.define(version: 20170324164712) do

  create_table "employees", force: :cascade do |t|
    t.string   "Ime",        limit: 255
    t.string   "Prezime",    limit: 255
    t.string   "Zanimanje",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "firm_id",    limit: 255
  end

  add_index "employees", ["firm_id"], name: "index_employees_on_firm_id", using: :btree

  create_table "employees_firms", force: :cascade do |t|
    t.integer "employee_id", limit: 4, null: false
    t.integer "firm_id",     limit: 4, null: false
    t.boolean "flag"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "ime_firme",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
