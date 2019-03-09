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

ActiveRecord::Schema.define(version: 2019_03_09_165032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captures", force: :cascade do |t|
    t.string "service"
    t.string "user_agent"
    t.string "source_ip"
    t.text "headers"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "method", limit: 10
    t.index ["service"], name: "index_captures_on_service"
  end

end
