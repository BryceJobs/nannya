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

ActiveRecord::Schema.define(version: 20170502142157) do

  create_table "job_propositions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "ville"
    t.string   "quartier"
    t.string   "duree_contrat"
    t.boolean  "status_emmenagement"
    t.integer  "salaire"
    t.string   "disponibilite"
    t.string   "jour_travail"
    t.time     "heure_travail_debut"
    t.time     "heure_travail_fin"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.text     "principale_taches"
    t.string   "nom"
    t.string   "telephone"
    t.string   "email"
  end

  add_index "job_propositions", ["user_id"], name: "index_job_propositions_on_user_id"

  create_table "requete_candidats", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "ville"
    t.string   "quartier"
    t.string   "telephone"
    t.string   "email"
    t.boolean  "experience"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "etat",       default: false
  end

  create_table "requete_generales", force: :cascade do |t|
    t.string   "nom"
    t.string   "telephone"
    t.string   "email"
    t.string   "sujet"
    t.string   "message"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "etat",       default: false
  end

  create_table "talent_identification_informations", force: :cascade do |t|
    t.string   "cni_numero"
    t.date     "cni_delivrance"
    t.string   "cni_place"
    t.string   "cni_scan"
    t.string   "contact_nom"
    t.string   "contact_adresse"
    t.string   "contact_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "talent_informations", force: :cascade do |t|
    t.text     "presentation"
    t.string   "type_emplois"
    t.boolean  "status_emmenagement"
    t.integer  "salaire_min"
    t.boolean  "experience"
    t.boolean  "status_matrimonial"
    t.integer  "nombre_enfants"
    t.string   "niveau_scolaire"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "Status_emplois"
  end

  create_table "talents", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "dob"
    t.string   "telephone"
    t.string   "email"
    t.text     "adresse"
    t.string   "ville"
    t.string   "quartier"
    t.string   "image"
    t.string   "disponibilite"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "talent_information_id"
    t.integer  "talent_identification_information_id"
  end

  add_index "talents", ["talent_identification_information_id"], name: "index_talents_on_talent_identification_information_id"
  add_index "talents", ["talent_information_id"], name: "index_talents_on_talent_information_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fullname"
    t.string   "telephone"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
