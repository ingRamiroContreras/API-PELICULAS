# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_23_235914) do

  create_table "movies", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombre"
    t.text "descripcion"
    t.string "url_img"
    t.integer "dias_presentacion"
  end

  create_table "reservas", force: :cascade do |t|
    t.integer "cedula"
    t.text "correo"
    t.text "nombre"
    t.integer "movie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "fecha_reserva"
    t.index ["movie_id"], name: "index_reservas_on_movie_id"
  end

  add_foreign_key "reservas", "movies"
end
