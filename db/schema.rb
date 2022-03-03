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

ActiveRecord::Schema[7.0].define(version: 2022_03_03_181029) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "category"
    t.string "action"
    t.string "directions"
    t.string "submission_confirmation"
    t.integer "points"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaderboard_activities", force: :cascade do |t|
    t.bigint "leaderboard_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_leaderboard_activities_on_activity_id"
    t.index ["leaderboard_id"], name: "index_leaderboard_activities_on_leaderboard_id"
  end

  create_table "leaderboard_users", force: :cascade do |t|
    t.bigint "leaderboard_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leaderboard_id"], name: "index_leaderboard_users_on_leaderboard_id"
    t.index ["user_id"], name: "index_leaderboard_users_on_user_id"
  end

  create_table "leaderboards", force: :cascade do |t|
    t.text "description"
    t.boolean "deadline"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "zipcode"
    t.string "google_token"
    t.string "google_refresh_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "leaderboard_activities", "activities"
  add_foreign_key "leaderboard_activities", "leaderboards"
  add_foreign_key "leaderboard_users", "leaderboards"
  add_foreign_key "leaderboard_users", "users"
end
