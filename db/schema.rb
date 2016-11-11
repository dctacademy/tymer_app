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

ActiveRecord::Schema.define(version: 20161111061144) do

  create_table "activities", force: true do |t|
    t.integer  "student_id"
    t.integer  "activity_type_id"
    t.datetime "activity_datetime"
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "is_completed"
    t.datetime "completed_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "topic_id"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level"
  end

  create_table "batch_assignments", force: true do |t|
    t.integer  "batch_id"
    t.integer  "assignment_id"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "batches", force: true do |t|
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.boolean  "status",           default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "instruction_type"
    t.integer  "course_id"
  end

  create_table "chapters", force: true do |t|
    t.string   "name"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.string   "website"
    t.string   "company_type"
    t.integer  "company_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
    t.integer  "city_id"
  end

  create_table "company_contacts", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_topics", force: true do |t|
    t.integer  "course_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_technologies", force: true do |t|
    t.integer  "job_id"
    t.integer  "technology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "posted_date"
    t.integer  "company_id"
    t.integer  "min_ex"
    t.integer  "max_ex"
    t.integer  "job_source_id"
    t.string   "job_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "body"
    t.integer  "batch_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "batch_id"
    t.integer  "student_id"
    t.date     "payment_date"
    t.string   "payment_type"
    t.integer  "payment_amount"
    t.text     "payment_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "student_id"
    t.date     "dob"
    t.string   "blood_group"
    t.text     "permanent_address"
    t.text     "current_address"
    t.string   "emergency_contact"
    t.string   "from"
    t.string   "college"
    t.string   "stream"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "solutions", force: true do |t|
    t.text     "body"
    t.integer  "assignment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_assignments", force: true do |t|
    t.integer  "student_id"
    t.integer  "batch_assignment_id"
    t.datetime "submitted_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "checked",             default: false
  end

  create_table "student_batches", force: true do |t|
    t.integer  "student_id"
    t.integer  "batch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_fee"
  end

  create_table "student_courses", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_notes", force: true do |t|
    t.text     "note"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.text     "about"
    t.string   "learning_style"
    t.integer  "student_source_id"
    t.string   "student_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "temperature",       default: "warm"
    t.string   "batch_type"
    t.string   "mac_address"
  end

  create_table "technologies", force: true do |t|
    t.string   "name"
    t.integer  "technology_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technology_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackers", force: true do |t|
    t.integer  "batch_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved"
    t.string   "user_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
