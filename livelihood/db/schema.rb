# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_26_212259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "status"
    t.string "dateApplied"
    t.integer "user_id"
    t.integer "job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "associates", force: :cascade do |t|
    t.string "fullName"
    t.string "firstName"
    t.string "lastName"
    t.string "company"
    t.string "title"
    t.string "profileUrl"
    t.string "connectionDegree"
    t.string "email"
    t.boolean "linkedinPremium"
    t.string "message1"
    t.string "message2"
    t.string "message3"
    t.string "message4"
    t.string "message5"
    t.string "m2sent"
    t.string "m3sent"
    t.string "m4sent"
    t.string "m5sent"
    t.string "lastMessageSent"
    t.integer "linkedin_network_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.string "profileImageUrl"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "linkedinUrl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "interviewDescription"
    t.string "interviewDate"
    t.string "interviewTime"
    t.integer "user_id"
    t.integer "application_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "jobTitle"
    t.string "companyName"
    t.string "description"
    t.string "jobPostUrl"
    t.string "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "dateApplied"
  end

  create_table "linkedin_networks", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
