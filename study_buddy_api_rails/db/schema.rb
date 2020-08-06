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

ActiveRecord::Schema.define(version: 2020_08_01_213026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comprehensions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "concept_id", null: false
    t.integer "comprehension"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_id"], name: "index_comprehensions_on_concept_id"
    t.index ["user_id"], name: "index_comprehensions_on_user_id"
  end

  create_table "concepts", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "comprehension"
  end

  create_table "interviews", force: :cascade do |t|
    t.string "interview_type"
    t.string "company_name"
    t.date "interview_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "practice_problems", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "solution"
    t.string "difficulty"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "concept_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "status"
    t.string "action_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_one_id"
    t.integer "user_two_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.integer "study_availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "password"
  end

  add_foreign_key "comprehensions", "concepts"
  add_foreign_key "comprehensions", "users"
end
