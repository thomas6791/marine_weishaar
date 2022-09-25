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

ActiveRecord::Schema.define(version: 2022_09_25_143443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annonces", force: :cascade do |t|
    t.string "titre"
    t.string "town"
    t.string "adress"
    t.string "type_bien"
    t.integer "surface"
    t.integer "nbre_chambre"
    t.integer "nbre_bain"
    t.boolean "balcon"
    t.integer "nbre_garage"
    t.text "description"
    t.integer "nbre_cave"
    t.string "cuisine"
    t.integer "surface_sejour"
    t.string "etat_general"
    t.integer "etage"
    t.integer "nbre_etage"
    t.string "type_chauffage"
    t.string "type_cuisine"
    t.integer "annee_construction"
    t.integer "nbre_piece"
    t.integer "nbre_toilette"
    t.integer "nbre_etage_annonce"
    t.string "mode_chauffage"
    t.boolean "ascenceur"
    t.boolean "vue_degagee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
