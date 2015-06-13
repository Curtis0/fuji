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

ActiveRecord::Schema.define(version: 20150606113757) do

  create_table "concerts", force: :cascade do |t|
    t.string   "artist"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.integer  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "foodfestivals", force: :cascade do |t|
    t.string   "what"
    t.string   "where"
    t.time     "when_time"
    t.date     "when_start"
    t.datetime "when_finish"
    t.string   "why"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "price"
    t.string   "publisher"
    t.date     "release_date"
    t.string   "ISBN"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "book_image"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "email_address"
    t.boolean  "tent_site"
    t.text     "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile_phone"
  end

end
