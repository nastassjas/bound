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

ActiveRecord::Schema.define(version: 2019_06_06_093033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_bookings_on_mission_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "phone_number"
    t.string "address"
    t.string "email"
    t.string "status"
    t.string "registration_nb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "charity_id"
    t.bigint "user_id"
    t.string "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_enrollments_on_charity_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "volunteers_count"
    t.bigint "charity_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.index ["charity_id"], name: "index_missions_on_charity_id"
    t.index ["project_id"], name: "index_missions_on_project_id"
    t.index ["skill_id"], name: "index_missions_on_skill_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "address"
    t.string "category"
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["charity_id"], name: "index_projects_on_charity_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.text "description"
    t.string "mobile_phone"
    t.integer "birth_year"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "missions"
  add_foreign_key "bookings", "users"
  add_foreign_key "enrollments", "charities"
  add_foreign_key "enrollments", "users"
  add_foreign_key "missions", "charities"
  add_foreign_key "missions", "projects"
  add_foreign_key "missions", "skills"
  add_foreign_key "projects", "charities"
  add_foreign_key "user_skills", "skills"
  add_foreign_key "user_skills", "users"
end
