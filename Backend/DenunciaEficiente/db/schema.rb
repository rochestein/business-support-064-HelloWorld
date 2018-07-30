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

ActiveRecord::Schema.define(version: 2018_07_30_191634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "denuncias", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "incidencia_id", null: false
    t.bigint "unidad_policia_id", null: false
    t.string "ubicacion", null: false
    t.datetime "fecha_incidencia", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_denuncias_on_usuario_id"
  end

  create_table "evidencias", force: :cascade do |t|
    t.bigint "denuncia_id", null: false
    t.string "path_archivo"
    t.string "narracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidencias_testigos", force: :cascade do |t|
    t.bigint "testigos_id"
    t.string "path_archivo"
    t.string "narracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["testigos_id"], name: "index_evidencias_testigos_on_testigos_id"
  end

  create_table "incidencias", force: :cascade do |t|
    t.string "nombre", null: false
    t.text "descripcion", null: false
    t.bigint "incidencia_padre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testigos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "denuncia_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_testigos_on_usuario_id"
  end

  create_table "unidades_policia", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "login", null: false
    t.string "primer_nombre", null: false
    t.string "segundo_ombre"
    t.string "primer_apellido", null: false
    t.string "segundo_apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "denuncias", "incidencias"
  add_foreign_key "denuncias", "unidades_policia", column: "unidad_policia_id"
  add_foreign_key "denuncias", "usuarios"
  add_foreign_key "evidencias", "denuncias"
  add_foreign_key "evidencias_testigos", "testigos", column: "testigos_id"
  add_foreign_key "incidencias", "incidencias", column: "incidencia_padre_id"
  add_foreign_key "testigos", "denuncias"
  add_foreign_key "testigos", "usuarios"
end
