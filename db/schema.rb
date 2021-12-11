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

ActiveRecord::Schema.define(version: 2021_12_09_175700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_communities_on_game_id"
    t.index ["user_id", "game_id"], name: "index_communities_on_user_id_and_game_id", unique: true
    t.index ["user_id"], name: "index_communities_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "plateform"
    t.integer "start_time_hours"
    t.integer "start_time_min"
    t.integer "game_number"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "plateform"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participations_on_event_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "last_name"
    t.string "first_name"
    t.string "player_type"
    t.string "country"
    t.string "description"
    t.string "gender"
    t.integer "age"
    t.string "discord_tag"
    t.string "steam"
    t.string "availablity"
    t.decimal "note"
    t.string "riot_games"
    t.string "uplay"
    t.string "psn"
    t.string "nintendo"
    t.string "epic_game"
    t.string "battlenet"
    t.string "origin"
    t.string "xbox"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["game_id"], name: "index_users_on_game_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end


  
  add_foreign_key "communities", "games"
  add_foreign_key "communities", "users"
  add_foreign_key "events", "games"
  add_foreign_key "events", "users"
end
