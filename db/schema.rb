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

ActiveRecord::Schema.define(version: 20170513193406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "round_id"
    t.integer  "amount"
    t.string   "option"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "prize",      default: 0, null: false
    t.index ["player_id"], name: "index_bets_on_player_id", using: :btree
    t.index ["round_id"], name: "index_bets_on_round_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.string   "result"
    t.boolean  "over_25_degrees"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "bets", "players"
  add_foreign_key "bets", "rounds"
end
