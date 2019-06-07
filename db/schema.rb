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

ActiveRecord::Schema.define(version: 2019_06_07_175316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "filters", force: :cascade do |t|
    t.string "age_range"
    t.string "income"
    t.string "school"
    t.string "population"
    t.string "zestimate"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_filters_on_user_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.float "school_score"
    t.integer "average_age"
    t.integer "median_income"
    t.integer "zestimate"
    t.string "NBRHD_NAME"
    t.integer "POPULATION_2010"
    t.float "PCT_HISPANIC"
    t.float "PCT_WHITE"
    t.float "PCT_BLACK"
    t.float "PCT_AMERIND"
    t.float "PCT_ASIAN"
    t.float "PCT_HAW_PACIS"
    t.float "PCT_OTHER_RACE"
    t.float "PCT_TWO_OR_MORE_RACES"
    t.integer "FEMALE"
    t.integer "MALE"
    t.float "PCT_LESS_18"
    t.float "PCT_65_PLUS"
    t.integer "FAMILIES"
    t.integer "HOUSING_UNITS"
    t.integer "HU_OWNED"
    t.integer "HU_RENTED"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "neighborhood_id"
    t.text "content"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_reviews_on_neighborhood_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.string "url"
    t.float "latitude"
    t.float "longitude"
    t.integer "current_rank"
    t.integer "last_year_rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.text "favorites", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "filters", "users"
  add_foreign_key "reviews", "neighborhoods"
  add_foreign_key "reviews", "users"
end
