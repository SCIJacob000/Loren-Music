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

ActiveRecord::Schema[7.1].define(version: 2024_11_22_060704) do
  create_table "inquiries", force: :cascade do |t|
    t.string "host_first_name"
    t.string "host_last_name"
    t.string "host_email"
    t.string "host_phone_number"
    t.string "event_name"
    t.string "event_location"
    t.date "event_date"
    t.time "start_time"
    t.integer "duration"
    t.integer "musician_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["musician_id"], name: "index_inquiries_on_musician_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.string "instruments"
    t.string "local_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inquiries", "musicians"
end
