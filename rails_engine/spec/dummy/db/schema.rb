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

ActiveRecord::Schema.define(version: 20150927111044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "hstore"

  create_table "members_bounds", id: false, force: :cascade do |t|
    t.integer "admin_bounds.relation_id", null: false
    t.integer "admin_bounds.member_id",   null: false
    t.string  "member_type"
    t.string  "member_role"
    t.integer "sequence_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.integer "version"
    t.integer "user_id"
    t.time    "tstamp"
    t.integer "changeset_id"
    t.hstore  "tags"
  end

  create_table "nodes_bounds", id: false, force: :cascade do |t|
    t.integer "admin_bounds.way_id",  null: false
    t.integer "admin_bounds.node_id", null: false
    t.integer "sequence_id"
  end

  create_table "relations", force: :cascade do |t|
    t.integer "version"
    t.integer "user_id"
    t.time    "tstamp"
    t.integer "changeset_id"
    t.hstore  "tags"
  end

  create_table "schema_info", id: false, force: :cascade do |t|
    t.integer "version"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "ways", force: :cascade do |t|
    t.integer "version"
    t.integer "user_id"
    t.time    "tstmap"
    t.integer "changeset_id"
    t.hstore  "tags"
    t.integer "nodes"
  end

end
