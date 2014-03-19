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

ActiveRecord::Schema.define(version: 20140319150314) do

  create_table "active_admin_comments", force: true do |t|
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

  create_table "candidates", force: true do |t|
    t.string   "name",                            null: false
    t.integer  "Party_id",        default: 0,     null: false
    t.date     "date_party_join"
    t.text     "parties_past",                    null: false
    t.boolean  "deleted",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "candidates", ["Party_id"], name: "index_candidates_on_Party_id", using: :btree

  create_table "election_candidates", force: true do |t|
    t.integer  "Election_id",                  null: false
    t.integer  "Candidate_id",                 null: false
    t.integer  "Party_id",     default: 0,     null: false
    t.boolean  "deleted",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "election_candidates", ["Candidate_id"], name: "index_election_candidates_on_Candidate_id", using: :btree
  add_index "election_candidates", ["Election_id"], name: "index_election_candidates_on_Election_id", using: :btree
  add_index "election_candidates", ["Party_id"], name: "index_election_candidates_on_Party_id", using: :btree

  create_table "election_types", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elections", force: true do |t|
    t.integer  "ElectoralArea_id",                 null: false
    t.integer  "ElectionType_id",                  null: false
    t.integer  "Candidate_id",     default: 0
    t.integer  "Party_id",         default: 0
    t.string   "label",                            null: false
    t.date     "date_vote",                        null: false
    t.date     "date_result",                      null: false
    t.boolean  "deleted",          default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elections", ["Candidate_id"], name: "index_elections_on_Candidate_id", using: :btree
  add_index "elections", ["ElectionType_id"], name: "index_elections_on_ElectionType_id", using: :btree
  add_index "elections", ["ElectoralArea_id"], name: "index_elections_on_ElectoralArea_id", using: :btree
  add_index "elections", ["Party_id"], name: "index_elections_on_Party_id", using: :btree

  create_table "electoral_area_types", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electoral_areas", force: true do |t|
    t.string   "name",                                 null: false
    t.integer  "State_id",                             null: false
    t.integer  "Geometry_id",          default: 0,     null: false
    t.integer  "ElectoralAreaType_id",                 null: false
    t.integer  "ElectoralArea_id",     default: 0,     null: false
    t.boolean  "deleted",              default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "electoral_areas", ["ElectoralAreaType_id"], name: "index_electoral_areas_on_ElectoralAreaType_id", using: :btree
  add_index "electoral_areas", ["ElectoralArea_id"], name: "index_electoral_areas_on_ElectoralArea_id", using: :btree
  add_index "electoral_areas", ["Geometry_id"], name: "index_electoral_areas_on_Geometry_id", using: :btree
  add_index "electoral_areas", ["State_id"], name: "index_electoral_areas_on_State_id", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "geo_types", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geometries", force: true do |t|
    t.integer  "GeoType_id",                                   null: false
    t.binary   "coordinates", limit: 16777215,                 null: false
    t.boolean  "deleted",                      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "geometries", ["GeoType_id"], name: "index_geometries_on_GeoType_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "name",                        null: false
    t.string   "symbol_name",                 null: false
    t.text     "description",                 null: false
    t.boolean  "deleted",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "state_types", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name",                           null: false
    t.integer  "Geometry_id",    default: 0,     null: false
    t.integer  "StateType_id",                   null: false
    t.integer  "Candidate_id",   default: 0,     null: false
    t.integer  "Party_id",       default: 0,     null: false
    t.string   "capital",        default: "0",   null: false
    t.date     "formation_date"
    t.text     "formation_text"
    t.integer  "count_pc",       default: 0,     null: false
    t.integer  "count_ac",       default: 0,     null: false
    t.boolean  "deleted",        default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["Candidate_id"], name: "index_states_on_Candidate_id", using: :btree
  add_index "states", ["Geometry_id"], name: "index_states_on_Geometry_id", using: :btree
  add_index "states", ["Party_id"], name: "index_states_on_Party_id", using: :btree
  add_index "states", ["StateType_id"], name: "index_states_on_StateType_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",               default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.boolean  "locked",                 default: false, null: false
    t.string   "slug"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
