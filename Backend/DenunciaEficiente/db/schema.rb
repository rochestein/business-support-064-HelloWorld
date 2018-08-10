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

ActiveRecord::Schema.define(version: 2018_07_31_020435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complaints", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "incident_id", null: false
    t.bigint "police_unit_id", null: false
    t.string "location", null: false
    t.datetime "date_incident", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "evidences", force: :cascade do |t|
    t.bigint "complaint_id", null: false
    t.string "path_file"
    t.string "narration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.bigint "incident_father_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "police_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password", null: false
    t.string "firstname", null: false
    t.string "secondname"
    t.string "firstsurname", null: false
    t.string "secondsurname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "witness_evidences", force: :cascade do |t|
    t.bigint "witness_id"
    t.string "path_file"
    t.string "narration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["witness_id"], name: "index_witness_evidences_on_witness_id"
  end

  create_table "witnesses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "complaint_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_witnesses_on_user_id"
  end

  add_foreign_key "complaints", "incidents"
  add_foreign_key "complaints", "police_units"
  add_foreign_key "complaints", "users"
  add_foreign_key "evidences", "complaints"
  add_foreign_key "incidents", "incidents", column: "incident_father_id"
  add_foreign_key "witness_evidences", "witnesses"
  add_foreign_key "witnesses", "complaints"
  add_foreign_key "witnesses", "users"
end
