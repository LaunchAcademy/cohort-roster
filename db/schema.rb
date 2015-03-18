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

ActiveRecord::Schema.define(version: 20150318195006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohort_memberships", force: true do |t|
    t.integer "student_id"
    t.integer "cohort_id"
  end

  add_index "cohort_memberships", ["student_id", "cohort_id"], name: "index_cohort_memberships_on_student_id_and_cohort_id", unique: true, using: :btree

  create_table "cohorts", force: true do |t|
    t.date   "started_on"
    t.date   "ended_on"
    t.string "name",       null: false
  end

  add_index "cohorts", ["name"], name: "index_cohorts_on_name", unique: true, using: :btree

  create_table "students", force: true do |t|
    t.string "first_name", null: false
    t.string "last_name",  null: false
    t.string "email",      null: false
  end

end
