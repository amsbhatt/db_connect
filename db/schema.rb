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

ActiveRecord::Schema.define(version: 20130627221411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "batch_drivers", force: true do |t|
    t.string "job"
    t.string "key"
  end

  create_table "user_facts", force: true do |t|
    t.text    "graph_data"
    t.text    "likes"
    t.text    "books"
    t.text    "music"
    t.text    "movies"
    t.text    "games"
    t.text    "television"
    t.text    "posts"
    t.text    "links"
    t.string  "facebook_user_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "facebook_user_id"
    t.string "gender"
    t.string "city"
    t.string "state"
    t.string "country"
    t.date   "birthday"
    t.string "email"
    t.string "access_token"
    t.hstore "data"
  end

end
