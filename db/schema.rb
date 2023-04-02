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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_03_31_091741) do
  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.integer "year_of_manufacture"
=======
ActiveRecord::Schema[7.0].define(version: 2023_03_28_094048) do
  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.string "year_of_manufacture"
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
    t.string "transmission"
    t.string "fuel_type"
    t.integer "price"
    t.string "front_right_url"
    t.string "back_left_url"
    t.string "interior_url"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

<<<<<<< HEAD
  create_table "orders", force: :cascade do |t|
    t.integer "quality"
    t.float "total_price"
    t.string "status"
    t.integer "user_id", null: false
    t.integer "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_orders_on_car_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

=======
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id", null: false
    t.integer "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_reviews_on_car_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "users"
<<<<<<< HEAD
  add_foreign_key "orders", "cars"
  add_foreign_key "orders", "users"
=======
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
  add_foreign_key "reviews", "cars"
  add_foreign_key "reviews", "users"
end
