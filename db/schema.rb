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

ActiveRecord::Schema.define(version: 2021_10_14_113444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commands", force: :cascade do |t|
    t.decimal "entry"
    t.decimal "price"
    t.bigint "user_id", null: false
    t.bigint "serving_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["serving_id"], name: "index_commands_on_serving_id"
    t.index ["user_id"], name: "index_commands_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.decimal "rating"
    t.bigint "command_id", null: false
    t.bigint "serving_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "comment_ser"
    t.text "comment_com"
    t.index ["command_id"], name: "index_reviews_on_command_id"
    t.index ["serving_id"], name: "index_reviews_on_serving_id"
  end

  create_table "servings", force: :cascade do |t|
    t.decimal "serving_price"
    t.integer "serving_stock"
    t.string "serving_name"
    t.text "serving_description"
    t.text "serving_photo"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_servings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name"
    t.string "user_status"
    t.text "user_address"
    t.text "user_photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "commands", "servings"
  add_foreign_key "commands", "users"
  add_foreign_key "reviews", "commands"
  add_foreign_key "reviews", "servings"
  add_foreign_key "servings", "users"
end
