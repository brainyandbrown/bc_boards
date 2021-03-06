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

ActiveRecord::Schema.define(version: 20150307012253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
  end

  create_table "events", force: :cascade do |t|
  end

  create_table "friend_users", force: :cascade do |t|
    t.integer "users_id"
  end

  create_table "groups", force: :cascade do |t|
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.string   "body"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string  "picture_url"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "location"
    t.string  "positions"
    t.string  "headline"
    t.integer "messages_id"
    t.integer "groups_id"
    t.integer "articles_id"
    t.integer "events_id"
    t.integer "home_visits"
    t.string  "interests"
    t.string  "collaborate"
    t.string  "coding_school"
  end

  create_table "users_groups", force: :cascade do |t|
  end

end
