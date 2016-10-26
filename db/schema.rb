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

ActiveRecord::Schema.define(version: 20161025224532) do

  create_table "events", force: :cascade do |t|
    t.integer  "local_id"
    t.integer  "organization_id"
    t.string   "name"
    t.text     "description"
    t.date     "date"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "lat"
    t.decimal  "long"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.bigint   "telephone"
    t.string   "email"
    t.string   "description"
    t.string   "logo"
    t.string   "url"
    t.integer  "local_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["local_id"], name: "index_organizations_on_local_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "role_id"
    t.string   "name"
    t.integer  "telephone"
    t.string   "email"
    t.boolean  "status"
    t.date     "last_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
