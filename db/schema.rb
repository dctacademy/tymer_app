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

ActiveRecord::Schema.define(version: 20150316142201) do

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

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
