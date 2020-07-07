# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_07_154711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "primary_contact"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "frequency"
    t.integer "duration"
    t.integer "base_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses_trainers", id: false, force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "trainer_id", null: false
    t.index ["course_id"], name: "index_courses_trainers_on_course_id"
    t.index ["trainer_id"], name: "index_courses_trainers_on_trainer_id"
  end

  create_table "event_courses", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_event_courses_on_course_id"
    t.index ["event_id"], name: "index_event_courses_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "client_name"
    t.text "course"
    t.string "renewal"
    t.string "format"
    t.integer "trainer_id"
    t.integer "num_students"
    t.string "requested_by"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "start_time"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_courses", "courses"
  add_foreign_key "event_courses", "events"
  add_foreign_key "events", "trainers"
end
