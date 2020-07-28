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

ActiveRecord::Schema.define(version: 2020_07_13_204052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

# This table stores client data, which will be periodically wiped and re-populated via the client data
# import function at clients/index.erb
# name: client name, primary contact: primary contact taken from Quickbooks records, phone: primary phone
# for the client, email: primary email for the client- not every client has an email on file
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "primary_contact"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# This table stores the associations between trainers and the courses they are qualified
# to teach. This is used in a has-many-through association. As it stands, this table needs
# to be populated manually.
# course_id: the ID of the course (from Course table) that a given trainer is qualified to teach
# trainer_id: ID of the trainer (from Trainer table) of the trainer qualified to trach some course
  create_table "course_trainers", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "trainer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_trainers_on_course_id"
    t.index ["trainer_id"], name: "index_course_trainers_on_trainer_id"
  end

#This table keeps track of thr courses Harris Biomedical teaches
# name: name of the course, frequency: how long a certification lasts / how often a client needs
# to re-take the course in DAYS, duration: length of the course in MINUTES,
# base_price: price of the course for up to 12 people, stored as integers (i.e. 447.00 is stored as 44700)
  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "frequency"
    t.integer "duration"
    t.integer "base_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

#This table keeps track of the many-to-many relationship between courses and events. 
# This association may not be relevant at this point, but may become needed as functionality
# for multiple courses per event is added..
# event_id: ID of the event associated with a particular course
# course_id: ID of a course being taught in an event
  create_table "event_courses", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_event_courses_on_course_id"
    t.index ["event_id"], name: "index_event_courses_on_event_id"
  end

#This table keeps track of every event created.
# client name: name of the client- comes from Client data, course: ID of course
# being taught- comes from Course table, renewal: is the course being taught to the client for the first
# time, or is it renewing a certification (accepted values: renewal, initial), format:
# in-person or webinar, trainer_id: ID of trainer teaching the event- comes from Trainer data,
# num_students: number of students attending the event, requested_by: name of person calling 
# to schedule the event, email: email for the client
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

#This table just stores the name an auto-generated ID for each trainer
#name: name of the trainer
  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "course_trainers", "courses"
  add_foreign_key "course_trainers", "trainers"
  add_foreign_key "event_courses", "courses"
  add_foreign_key "event_courses", "events"
  add_foreign_key "events", "trainers"
end
