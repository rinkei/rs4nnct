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

ActiveRecord::Schema.define(version: 20141111221339) do

  create_table "features", force: true do |t|
    t.integer  "item_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "features", ["item_id"], name: "index_features_on_item_id", using: :btree

  create_table "items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year"
    t.string   "name"
    t.string   "english_name"
    t.integer  "grade"
    t.integer  "department"
    t.string   "term"
    t.integer  "credit_num"
    t.string   "credit_requirement"
  end

  create_table "opinions", force: true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "subject_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opinions", ["item_id"], name: "index_opinions_on_item_id", using: :btree
  add_index "opinions", ["subject_id"], name: "index_opinions_on_subject_id", using: :btree
  add_index "opinions", ["user_id"], name: "index_opinions_on_user_id", using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.float    "value",      limit: 24
    t.boolean  "prediction",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["item_id"], name: "index_ratings_on_item_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "similarities", force: true do |t|
    t.integer  "subject_id"
    t.integer  "target_id"
    t.float    "value",           limit: 24
    t.integer  "rated_items_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "similarities", ["subject_id"], name: "index_similarities_on_subject_id", using: :btree
  add_index "similarities", ["target_id"], name: "index_similarities_on_target_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "grade"
    t.integer  "department"
  end

end
